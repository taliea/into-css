String shepard = "hello";
int n = 50;


void draw() { //called in a loop
size (1000,500);
background(55, 44, 77);
textSize(50);
text (shepard, 200, 300);
square(0, 0, n);
}

void mousePressed () {
  textSize(175);
text("hello", 5, 200);
}

void keyPressed() {
shepard = "Goodbye.";
}
