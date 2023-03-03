void setup() {
  size(1000, 600);
  scale(.5);
  // +250
  // house(50, 235, 1);
  //house(300, 235, 2);
  //house(550, 235, 3);
  //house(800, 235, 3);
  //house(1050, 235, 3);
  //house(1300, 235, 3);
  //house(1550, 235, 3);
  //house(1800, 235, 3);
  //house(2050, 235, 3);
  for (int h = 1; h <= 9; h = h + 1) {
    house(h*250-200, 235, (int)random(1, 5));
  }
  
  for (int h = 1; h <= 9; h = h + 1) {
    house(h*250-200, 450, (int)random(1, 5));
  }
  
  for (int h = 1; h <= 9; h = h + 1) {
    house(h*250-200, 690, (int)random(1, 5));
  }
  
  for (int h = 1; h <= 9; h = h + 1) {
    house(h*250-200, 900, (int)random(1, 5));
  }
}



void house(float xLeft, float yTop, int numWindows) {
  float w = 130;
  // yTop is 235 right now!!!
  //house base
  rect(xLeft, yTop+65, 105, 95);
  rect(xLeft+100, yTop, w, 160);

  //house windows
  float step = w / (numWindows + 1);

  // windows : will replace next two lines
  for (int h = 1; h <= numWindows; h = h + 1) {
    rect (xLeft + 100 + h * step - 10, yTop+35, 20, 20);
  }



  rect(xLeft+105, yTop+110, 20, 20);
  rect(xLeft+195, yTop+110, 22, 20);
  //door
  rect(xLeft+145, yTop+100, 25, 39);

  //porch
  rect(xLeft+105, yTop+130, 90, 40);

  //roof
  triangle(xLeft+95, yTop+10, xLeft+240, yTop+10, xLeft+160, yTop-40);
  triangle(xLeft-5, yTop+70, xLeft+100, yTop+70, xLeft+100, yTop+15);

  //garage
  rect(xLeft+15, yTop+100, 70, 60);
  //garage window
  rect(xLeft+18, yTop+85, 60, 5);

  //steps
  rect(xLeft+120, yTop+130, 30, 15);
  rect(xLeft+110, yTop+145, 30, 15);
  rect(xLeft+100, yTop+155, 30, 15);
}
