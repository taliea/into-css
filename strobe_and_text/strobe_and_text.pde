void setup() { // called once
size(1000, 1000);
}

void draw() { //called in a loop
background(200, 0, 200);
strokeWeight(10);
square(400, 400, 200);
//noStroke();
stroke(0, 100, 0);
triangle(400, 400, 500, 300, 600, 400);
}

void mousePressed () {
  textSize(175);
text("srobe waning.", 5, 200);
}

void keyPressed() {
background(330, 4, 700);
}
