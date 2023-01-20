int r = 0;
int dr = 1;
float rd = 118;
float g = 127;
float b = 148;
float x = 3;
float y = 6;


void setup() {
  size(600, 600);
  frameRate(15);
}

void draw() {
  //sky
  fill(rd, g, b);
  rect(0, 0, 700, 700);
  rd = rd - 1;
  g = g -1;
  b = b - 1;
  if (rd==0) {
    rd = 118;
    g = 127;
    b = 148;
  }

  //sun
  push();
  stroke(0);
  translate(100, 200);
  rotate(radians(r));
  r = r + dr;
  println(r);
  if (r == (90) && dr==5);
  ellipse(0, 100, 100, 100);
  pop();

  //ground
  noStroke();
  fill(#393D47);
  rect(0, 340, 600, 300);

  //mountains
  mountains();

  //river
  noFill();
  fill(#858994);
  stroke(4);
  triangle(283, 320, 600, 550, 600, 400);


  //outline for mountains edge
  stroke(4);
  strokeWeight(2);
  outlineMnt();

  //mouth of river
  stroke(1);
  fill(255, 255, 255);
  y = random(0, 300);
  triangle(283, y, 600, 550, 600, 400);


  fill(255, 255, 255);
  text("a little more altitude, a little LESS attitude.", width / 3 - 100, 100);
  text("what do fashionable mountains wear? AN ICE CAP!!", width / 3 + 50, 140);
  text("fancy a climb? MOUNT me in!", width / 3 + 200, 200);

  textSize(14);
  if ( y < 100) {
    text("a little more altitude, a little LESS attitude.", width / 3 - 100, 100);
  } else if ( y > 100 && y < 200) {
    text("what do fashionable mountains wear? AN ICE CAP!!", width / 3 + 50, 140);
  } else {
    text("fancy a climb? MOUNT me in!", width / 3 + 200, 200);
  }


  //eye
  circle(580, 450, 35);
  fill(0, 0, 0);
  circle(580, 450, 20);


  //snow
  // borrowed this from random_quadrants cause it was fun looking
  noStroke();
  x = random(0, 600);
  y = random (0, 600);
  if (x <= 600 && y <= 300) {
    fill(255, 255, 255);
  } else if (x <= 300 && y >= 300) {
    fill(255, 255, 255);
  }
  circle(x, y, 10);
}

void mountains(){
   triangle(250, 350, 400, 200, 550, 400);
  triangle(0, 400, 200, 80, 344, 500);
}
  void outlineMnt(){
  line(200, 80, 350, 250);
  line(200, 80, 320, 430);
  line(400, 200, 540, 340);
  }
