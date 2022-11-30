int r;
int g;
int b;
float x = 6;
float y = 6;

void setup() {
  size(600, 600);
}

void draw () {
  r = (int)random (0, 256);
  g = (int)random (0, 256);
  b = (int)random (0, 256);
  x = random(0, 601);
  y = random (0, 601);
 fill(r, g, b);
 circle(x, y, 200);
}
