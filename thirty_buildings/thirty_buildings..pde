void setup() {
  size(600, 600);
  house(100);

  house(350);
}



void house(float xLeft) {
  float w = 130;
  //house base
  rect(xLeft, 300, 105, 95);
  rect(xLeft+100, 235, w, 160);
  
  //house windows
  int numWindows = 2;
  
  float step = w / (numWindows + 1) ;
  int n = 1; 
  while (n<= numWindows) {
    rect (xLeft + 100 + n * step - 10, 270, 20, 20);
    n = n +1;
  }
  
  
  // windows : will replace next two lines 
  //rect(xLeft+115, 270, 23, 23);
  //rect(xLeft+185, 270, 23, 23);
  
  rect(xLeft+105, 325, 20, 20);
  rect(xLeft+195, 325, 22, 20);
  //door
  rect(xLeft+145, 325, 25, 39);

  //porch
  rect(xLeft+105, 365, 90, 40);

  //roof
  triangle(xLeft+95, 245, xLeft+240, 245, xLeft+160, 195);
  triangle(xLeft-5, 305, xLeft+100, 305, xLeft+100, 250);

  //garage
  rect(xLeft+15, 335, 70, 60);
  //garage window
  rect(xLeft+18, 320, 60, 5);

  //steps
  rect(xLeft+120, 365, 30, 15);
  rect(xLeft+110, 380, 30, 15);
  rect(xLeft+100, 390, 30, 15);
}
