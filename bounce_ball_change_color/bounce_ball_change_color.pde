int x = 25;
int y = 25;

//dx = direction
int dx = 8;
int dy = 2;

int r = 255;
int g = 255;
int b = 255;
void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  circle(x, y, 50);
  x = x + dx;
  y = y + dy;
  fill(r, g, b); //change color when touch wall

  if (x > 600) {
    dx = -4;
//red
    r = 255;
    g = 0;
    b = 0;
    
  } else if (x < 0) {
    dx = -dx;
    
    //white
    r = 255;
    g = 255;
    b = 255;
  }
  if (y > height) {
    dy = -dy;

    //pink
    r = 220;
    g = 40;
    b = 110;
  } else if (y < 0) {
    dy = -dy;
    //coral
    r = 250;
    g = 180;
    b = 100;
  }
}
