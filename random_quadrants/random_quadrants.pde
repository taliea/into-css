float x = 3;
float y = 6;

void setup() {
  size(600, 600);
}

void draw () {

  
  x = random(0, 600);
  y = random (0, 600);
  if (x <= 300 && y <= 300) {
    
 fill(255,0,0);
  } else if(x <= 300 && y >= 300) {
    fill(0, 255, 0);
  }  else if (x >= 300 && y <= 300)  {
    fill(255, 255, 0);
  } else {
    fill(0, 0, 255);
  }
 circle(x, y, 30);

}
