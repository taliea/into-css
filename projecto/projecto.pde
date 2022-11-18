/*hi my name is talia, the date 10/9/22,im making a penguin that is black and white with 
yellow feet and a yellow beak. 
*/
int r = 0;
int u = 1;

void setup(){
size(300, 600);

}

void draw() {
background(#add8ed);

//y axis, x-axis, longer, height

push();
//sun cricle sun yay
translate(90, 130);
  rotate(radians(r));
  r = r + 1;
fill(#dfaf51);
ellipse(60, 60, 100, 100);
pop();

//backround
fill(#f8edd8);
rect(0, 300, 600, 300);
triangle(120, 300, 200, 80, 344, 300);

//extra rect
noStroke();
fill(#add8ed);
rect(0, 150, 90, 140);
stroke(3);

//bodystructure 
stroke(#080602);
fill(#252023);
rect(65, 230, 55, 130);
rect(80, 200, 150, 230);
rect(70, 100, 145, 120);


//belly white furry soft penguin (imagine texture)
fill(#f8edd8);
rect(85, 230, 80, 190);



//feet
noFill();
fill(#e6dd73);
rect(65, 415, 50, 15);
rect(145, 415, 48, 16);

//beak 
fill(#e6dd73);
noStroke();
rect(90, 150, 100, 50);
stroke(#6e5014);
strokeWeight(3);
line(90, 190, 190, 190);

//moving flipper
stroke(#080602);
translate(220, 250);
rotate(radians(r));
u +=-1;
//println("r: "+r);
fill(#252023);
rect(-25, -25, 55, 125);
}
