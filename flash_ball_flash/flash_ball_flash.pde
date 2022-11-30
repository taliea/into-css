int r;
int g;
int b;
void setup() {
  size(600, 600);
}

void draw () {
  background (0, 0, 0);
  r = (int)random (0, 256);
  g = (int)random (0, 256);
  b = (int)random (0, 256);
 fill(r, g, b);
 circle(100, 100, 100);
}
