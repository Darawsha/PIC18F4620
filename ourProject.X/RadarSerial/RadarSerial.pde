import processing.serial.*;

final int BAUD_RATE = 9600;
final String PREFERRED_PORT = "COM3";
final int PORT_REFRESH_MS = 2000;
final int RADAR_RANGE_CM = 60;
final int RANGE_TICK_CM = 10;
final int NEAR_DISTANCE_CM = 10;
final int SWEEP_MOVE_MIN_MS = 120;
final int SWEEP_MOVE_MAX_MS = 420;
final int BLIP_LIFETIME_MS = 5200;
final int MAX_BLIPS = 48;
final int RING_COUNT = 4;

Serial pic;
String[] ports = new String[0];
String activePort = "";
String serialStatus = "Looking for PIC serial port...";

int readingAngle = 0;
int distance = 0;
int packetCount = 0;
int lastSerialMs = 0;
int lastPortRefreshMs = 0;
int sweepStartMs = 0;
int sweepTargetAngle = 0;
int sweepDurationMs = 320;

float sweepAngle = 0;
float sweepStartAngle = 0;
float visualSweepDirection = 1;

boolean mirrorDisplay = false;
boolean hasReading = false;

PFont hudFont;
ArrayList<Blip> blips = new ArrayList<Blip>();

void setup() {
  size(1100, 680);
  smooth(4);
  frameRate(60);

  hudFont = createFont("Consolas", 18, true);
  textFont(hudFont);

  refreshPorts();
  connectToBestPort();
}

void draw() {
  keepSerialConnected();
  updateSweepAngle();
  pruneBlips();

  drawBackground();

  float radius = radarRadius();
  float originX = width / 2.0;
  float originY = height - 72;

  drawRadarGrid(originX, originY, radius);
  drawSweep(originX, originY, radius);
  drawBlips(originX, originY, radius);
  drawReadout(originX, originY, radius);
}

void refreshPorts() {
  ports = Serial.list();
  lastPortRefreshMs = millis();

  println("Available serial ports:");
  for (int i = 0; i < ports.length; i++) {
    println(i + ": " + ports[i]);
  }
}

void keepSerialConnected() {
  if (pic == null && millis() - lastPortRefreshMs > PORT_REFRESH_MS) {
    refreshPorts();
    connectToBestPort();
  }
}

void connectToBestPort() {
  if (ports.length == 0) {
    serialStatus = "No serial ports found";
    return;
  }

  int portIndex = findPortIndex(PREFERRED_PORT);
  if (portIndex < 0) {
    portIndex = 0;
  }

  openPort(portIndex);
}

int findPortIndex(String portName) {
  for (int i = 0; i < ports.length; i++) {
    if (ports[i].equals(portName)) {
      return i;
    }
  }

  return -1;
}

void openPort(int portIndex) {
  closePort();

  if (portIndex < 0 || portIndex >= ports.length) {
    serialStatus = "Invalid serial port";
    return;
  }

  try {
    activePort = ports[portIndex];
    pic = new Serial(this, activePort, BAUD_RATE);
    pic.clear();
    pic.bufferUntil('\n');
    lastSerialMs = millis();
    serialStatus = activePort + " connected";
    println("Connected to " + activePort + " at " + BAUD_RATE + " baud");
  }
  catch (Exception e) {
    serialStatus = ports[portIndex] + " not available";
    activePort = "";
    pic = null;
    println(e.getMessage());
  }
}

void closePort() {
  if (pic != null) {
    pic.stop();
    pic = null;
  }
}

void keyPressed() {
  if (key == 'r' || key == 'R') {
    refreshPorts();
    connectToBestPort();
  }
  else if (key == 'n' || key == 'N') {
    refreshPorts();
    connectToNextPort();
  }
  else if (key == 'm' || key == 'M') {
    mirrorDisplay = !mirrorDisplay;
    visualSweepDirection *= -1;
  }
}

void connectToNextPort() {
  if (ports.length == 0) {
    closePort();
    activePort = "";
    serialStatus = "No serial ports found";
    return;
  }

  int currentIndex = findPortIndex(activePort);
  int nextIndex = (currentIndex + 1) % ports.length;
  openPort(nextIndex);
}

void serialEvent(Serial port) {
  String line = port.readStringUntil('\n');

  if (line == null) {
    return;
  }

  line = trim(line);

  String[] motionParts = match(line, "^[Mm]\\s*,\\s*(\\d{1,3})(?:\\s*,\\s*(\\d{1,4}))?$");
  if (motionParts != null && motionParts.length >= 2) {
    int moveMs = SWEEP_MOVE_MIN_MS;

    if (motionParts.length >= 3 && motionParts[2] != null) {
      moveMs = int(motionParts[2]);
    }

    setSweepTarget(int(motionParts[1]), moveMs);
    lastSerialMs = millis();
    serialStatus = activePort + " sweeping";
    return;
  }

  String[] parts = match(line, "^(?:[Dd]\\s*,\\s*)?(\\d{1,3})\\s*,\\s*(\\d{1,3})$");
  if (parts != null && parts.length >= 3) {
    int newAngle = int(parts[1]);
    int newDistance = int(parts[2]);

    readingAngle = constrain(newAngle, 0, 180);
    setSweepTarget(readingAngle);

    if (newDistance >= 3 && newDistance <= RADAR_RANGE_CM) {
      distance = newDistance;
      addBlip(readingAngle, distance);
    }
    else {
      distance = 0;
    }

    hasReading = true;
    packetCount++;
    lastSerialMs = millis();
    serialStatus = activePort + " receiving";
  }
}

void dispose() {
  closePort();
}

void setSweepTarget(int newAngle) {
  int target = constrain(newAngle, 0, 180);
  int autoDuration = int(constrain(abs(target - sweepAngle) * 26, SWEEP_MOVE_MIN_MS, SWEEP_MOVE_MAX_MS));
  setSweepTarget(newAngle, autoDuration);
}

void setSweepTarget(int newAngle, int requestedDurationMs) {
  int target = constrain(newAngle, 0, 180);
  float currentVisual = displayAngle(sweepAngle);
  float targetVisual = displayAngle(target);

  if (abs(targetVisual - currentVisual) > 0.1) {
    visualSweepDirection = targetVisual > currentVisual ? 1 : -1;
  }

  sweepStartAngle = sweepAngle;
  sweepTargetAngle = target;
  sweepStartMs = millis();
  sweepDurationMs = int(constrain(requestedDurationMs, SWEEP_MOVE_MIN_MS, SWEEP_MOVE_MAX_MS));
}

void updateSweepAngle() {
  float progress = constrain((millis() - sweepStartMs) / float(sweepDurationMs), 0, 1);
  progress = progress * progress * (3 - 2 * progress);
  sweepAngle = lerp(sweepStartAngle, sweepTargetAngle, progress);
}

float displayAngle(float radarAngle) {
  if (mirrorDisplay) {
    return 180 - radarAngle;
  }

  return radarAngle;
}

float radarRadius() {
  return min(width * 0.43, height * 0.72);
}

void addBlip(int angleDeg, int cm) {
  blips.add(new Blip(angleDeg, cm, millis()));

  while (blips.size() > MAX_BLIPS) {
    blips.remove(0);
  }
}

void pruneBlips() {
  int now = millis();

  for (int i = blips.size() - 1; i >= 0; i--) {
    if (now - blips.get(i).bornMs > BLIP_LIFETIME_MS) {
      blips.remove(i);
    }
  }
}

void drawBackground() {
  background(3, 9, 8);

  for (int y = 0; y < height; y += 3) {
    float shade = map(y, 0, height, 15, 0);
    stroke(0, 38 + shade, 28 + shade, 18);
    line(0, y, width, y);
  }

  stroke(0, 95, 70, 16);
  for (int x = 0; x < width; x += 44) {
    line(x, 0, x, height);
  }
}

void drawRadarGrid(float originX, float originY, float radius) {
  pushMatrix();
  translate(originX, originY);
  noFill();

  for (int i = 1; i <= RING_COUNT; i++) {
    float ringRadius = radius * i / RING_COUNT;
    stroke(0, 220, 120, i == RING_COUNT ? 135 : 68);
    strokeWeight(i == RING_COUNT ? 2.2 : 1.2);
    arc(0, 0, ringRadius * 2, ringRadius * 2, PI, TWO_PI);

    float labelA = radians(8);
    fill(95, 255, 165, 128);
    textAlign(RIGHT, CENTER);
    textSize(13);
    text((RADAR_RANGE_CM * i / RING_COUNT) + " cm", ringRadius * cos(labelA) - 8, -ringRadius * sin(labelA));
    noFill();
  }

  stroke(0, 230, 120, 128);
  strokeWeight(2);
  line(-radius, 0, radius, 0);

  for (int deg = 0; deg <= 180; deg += 15) {
    float a = radians(deg);
    float x = radius * cos(a);
    float y = -radius * sin(a);

    if (deg % 30 == 0) {
      stroke(0, 230, 120, 96);
      strokeWeight(1.3);
    }
    else {
      stroke(0, 190, 110, 42);
      strokeWeight(1);
    }

    line(0, 0, x, y);
  }

  for (int deg = 0; deg <= 180; deg += 30) {
    int labelAngle = mirrorDisplay ? 180 - deg : deg;
    float a = radians(deg);
    float x = (radius + 28) * cos(a);
    float y = -(radius + 28) * sin(a);

    fill(95, 255, 165, 150);
    textAlign(CENTER, CENTER);
    textSize(14);
    text(labelAngle, x, y);
  }

  for (int cm = RANGE_TICK_CM; cm <= RADAR_RANGE_CM; cm += RANGE_TICK_CM) {
    float tickX = map(cm, 0, RADAR_RANGE_CM, 0, radius);
    stroke(0, 210, 120, 72);
    strokeWeight(cm % 30 == 0 ? 1.4 : 1);
    line(tickX, 0, tickX, -8);
    line(-tickX, 0, -tickX, -8);
  }

  popMatrix();
}

void drawSweep(float originX, float originY, float radius) {
  pushMatrix();
  translate(originX, originY);

  float visibleAngle = displayAngle(sweepAngle);

  for (int i = 18; i >= 1; i--) {
    float trailAngle = visibleAngle - (visualSweepDirection * i * 1.75);
    if (trailAngle < 0 || trailAngle > 180) {
      continue;
    }

    float alpha = map(i, 18, 1, 8, 105);
    float a = radians(trailAngle);
    float x = radius * cos(a);
    float y = -radius * sin(a);
    stroke(0, 245, 125, alpha);
    strokeWeight(map(i, 18, 1, 1.0, 2.8));
    line(0, 0, x, y);
  }

  float a = radians(visibleAngle);
  float x = radius * cos(a);
  float y = -radius * sin(a);

  stroke(120, 255, 170, 250);
  strokeWeight(3.6);
  line(0, 0, x, y);

  noStroke();
  fill(120, 255, 170, 85);
  ellipse(x, y, 18, 18);
  fill(185, 255, 205, 220);
  ellipse(x, y, 6, 6);

  popMatrix();
}

void drawBlips(float originX, float originY, float radius) {
  pushMatrix();
  translate(originX, originY);

  int now = millis();
  for (int i = 0; i < blips.size(); i++) {
    Blip blip = blips.get(i);
    int age = now - blip.bornMs;
    float fade = constrain(1.0 - age / float(BLIP_LIFETIME_MS), 0, 1);
    float pulse = i == blips.size() - 1 ? 1.0 + 0.18 * sin(millis() * 0.018) : 1.0;
    PVector p = radarPoint(blip.angleDeg, blip.cm, radius);

    noStroke();
    fill(255, 36, 30, 38 * fade);
    ellipse(p.x, p.y, 34 * pulse, 34 * pulse);
    fill(255, 70, 45, 92 * fade);
    ellipse(p.x, p.y, 18 * pulse, 18 * pulse);
    fill(255, 205, 160, 230 * fade);
    ellipse(p.x, p.y, 7 * pulse, 7 * pulse);
  }

  popMatrix();
}

PVector radarPoint(float angleDeg, float cm, float radius) {
  float plottedDistance = constrain(cm, 0, RADAR_RANGE_CM);
  float plottedRadius = map(plottedDistance, 0, RADAR_RANGE_CM, 0, radius);
  float a = radians(displayAngle(angleDeg));

  return new PVector(plottedRadius * cos(a), -plottedRadius * sin(a));
}

void drawReadout(float originX, float originY, float radius) {
  boolean linkFresh = pic != null && millis() - lastSerialMs <= 1500;
  if (pic != null && !linkFresh) {
    serialStatus = "Waiting for Part2 data on " + activePort;
  }

  drawPanel(24, 22, 328, 154);
  drawPanel(width - 292, 22, 268, 154);

  textAlign(LEFT, TOP);
  textSize(20);
  fill(120, 255, 175, 235);
  text("RADAR LINK", 40, 36);

  if (linkFresh) {
    fill(90, 255, 140);
  }
  else {
    fill(255, 190, 70);
  }
  noStroke();
  ellipse(320, 48, 12, 12);

  textSize(15);
  fill(135, 255, 180, 205);
  text("Port", 40, 72);
  text("Status", 40, 98);
  text("Packets", 40, 124);

  fill(225, 255, 230, 235);
  text(activePort.length() > 0 ? activePort : "---", 132, 72);
  text(serialStatus, 132, 98);
  text(packetCount, 132, 124);

  fill(120, 255, 175, 235);
  textSize(20);
  text("SCAN DATA", width - 274, 36);

  textSize(15);
  fill(135, 255, 180, 205);
  text("Sweep", width - 274, 72);
  text("Reading", width - 274, 98);
  text("Distance", width - 274, 124);

  fill(225, 255, 230, 235);
  text(round(sweepAngle) + " deg", width - 170, 72);
  text(hasReading ? readingAngle + " deg" : "---", width - 170, 98);
  text(distance > 0 ? distance + " cm" : "---", width - 170, 124);

  drawRangeBar(originX, originY, radius);
}

void drawPanel(float x, float y, float w, float h) {
  noStroke();
  fill(0, 20, 16, 190);
  rect(x, y, w, h, 7);
  stroke(0, 235, 120, 95);
  strokeWeight(1);
  noFill();
  rect(x + 0.5, y + 0.5, w - 1, h - 1, 7);
}

void drawRangeBar(float originX, float originY, float radius) {
  float barW = min(340, width * 0.32);
  float barX = originX - barW / 2;
  float barY = originY + 28;

  stroke(0, 220, 120, 95);
  strokeWeight(1.4);
  line(barX, barY, barX + barW, barY);

  for (int cm = 0; cm <= RADAR_RANGE_CM; cm += RANGE_TICK_CM) {
    float x = map(cm, 0, RADAR_RANGE_CM, barX, barX + barW);
    float tickSize = cm % 30 == 0 ? 8 : 5;
    line(x, barY - tickSize, x, barY + tickSize);

    if (cm % 20 == 0 || cm == RADAR_RANGE_CM) {
      fill(110, 255, 170, 150);
      textAlign(CENTER, TOP);
      textSize(12);
      text(cm, x, barY + 10);
    }
  }

  if (distance > 0) {
    float markerX = map(distance, 0, RADAR_RANGE_CM, barX, barX + barW);
    noStroke();
    if (distance <= NEAR_DISTANCE_CM) {
      fill(255, 70, 45);
    }
    else {
      fill(120, 255, 170);
    }
    ellipse(markerX, barY, 12, 12);
  }
}

class Blip {
  int angleDeg;
  int cm;
  int bornMs;

  Blip(int angleDeg, int cm, int bornMs) {
    this.angleDeg = angleDeg;
    this.cm = cm;
    this.bornMs = bornMs;
  }
}
