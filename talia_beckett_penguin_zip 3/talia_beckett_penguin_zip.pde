/*hi my name is talia, the date 10/9/22,im making a penguin that is black and white with 
yellow feet and a yellow beak. Along with a yellow sun and white artic backroumd. It is 
simple since i dont see a purpose in overcrowding a space that usually looks empty.
*/

size(300, 600);
//fullScreen();
background(#add8ed);

//sun cricle sun yay
fill(#dfaf51);
ellipse(60, 60, 100, 100);

//backround, icelcle with the uh snow covered floor that the penguin stands on
fill(#f8edd8);
rect(0, 300, 600, 300);
triangle(120, 300, 200, 80, 344, 300);

//bodystructure of pingüino black with flappers
stroke(#080602);
fill(#252023);
rect(65, 230, 55, 130);
rect(80, 200, 150, 230);
rect(70, 100, 145, 120);
rect(185, 230, 55, 125);

//belly white furry soft penguin (imagine texture)
fill(#f8edd8);
rect(85, 230, 80, 190);

/*feet(x, how far down, width, height)with directions on how to make feet rectangle. 
Yellow feet because they are cuter that way.
*/
noFill();
fill(#e6dd73);
rect(65, 415, 50, 15);
rect(145, 415, 48, 16);

/*beak yellow cause why not yellow it makes it look more like a cartoon also weird low line
in the bottom middle cause i couldnt figure out how to get it higher. Always admit to your
fualts faults" :D
*/
fill(#e6dd73);
noStroke();
rect(90, 150, 100, 50);
stroke(#6e5014);
strokeWeight(3);
line(90, 190, 190, 190);
