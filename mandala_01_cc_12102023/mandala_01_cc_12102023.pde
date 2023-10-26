//import processing.pdf.*;
PFont myfont;
String bomba="Boom";
void setup () {
  noFill();
  size (420, 595);
  //beginRecord(PDF, "boom-0-4.pdf");
  myfont=createFont ("IBMPlexMono-Regular.ttf", 14);
}

void expo (float px, float py) {
  push();
  textLeading(random (15, 40));
  for (int i=0; i<6500; i=i+1) {
    fill(0, 0, 0);
    text("∏", random (420), random (600));
    text("Г", random (420), random (600));
    text("∑", random (420), random (600));
    text("°", random (420), random (600));
    push();
    translate(width/2, height/2);
    noStroke();
    ellipse(0, -17, 100, 100);
    pop();
  }
  pop();
}


void draw () {
  background (255);
  randomSeed(mouseX);
  println(mouseX);
  textFont(myfont);
  textAlign(CENTER);
  boom(width/2, height/2, 40);
  for (int i=0; i<10; i=i+1);
  {
    expo (random (width/2), random (height/2));
    bomba(random (width), random (height));
    patro();
  }
  //noLoop();
}


void boom (float px, float py, float espai) {
  frameRate(1);
  push();
  translate (px, py);
  fill (255);
  for (int i=0; i<espai; i=i+1);
  {
  }
  pop();
}

void bomba (float px, float py) {
  push();
  translate(170, 270);
  fill(255, 255, 255);
  textLeading(random (15, 40));
  text(bomba, random (55), random (40));
  pop();
}

void patro () {
  push();
  translate(210, 280);
  for (int i=0; i<50; i=i+1) {
    rotate (radians(10));
    text("◊", 40, 40);
    text("∫", 50, 40);
    text("ф", 60, 40);
    text("Ω", 70, 40);
    text("Ж", 70, 40);
    text("◊", 80, 40);
    text("∫", 90, 40);
    text("ф", 100, 40);
    text("Ω", 110, 40);
    text("Ж", 120, 40);
    text("◊", 130, 40);
    text("∫", 140, 40);
    text("ф", 150, 40);
    text("Ω", 160, 40);
    text("Ж", 170, 40);
    text("◊", 180, 40);
    text("∫", 190, 40);
    text("ф", 200, 40);
    text("Ω", 210, 40);
    text("Ж", 220, 40);
  }
  pop();
  //endRecord();
  //exit();
}
