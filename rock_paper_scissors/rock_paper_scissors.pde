String userChoice = "Not chosen";
int rand;
String computerChoice = "Not Chosen";
int wins;
int loses;
int ties;
void setup() {
  size(700, 700);
  textSize(30);
}

void draw() {
  background(255);
  if (userChoice == "Rock") {
    fill(#e0eae0);
  } else {
    fill(255);
  }
  rect(width / 3 - 100, 100, 100, 50); // rock
  if (userChoice == "Paper") {
    fill(#d1e0d1);
  } else {
    fill(255);
  }
  rect(width / 3 + 50, 100, 100, 50); //paper
  if (userChoice == "Scissors") {
    fill(#c2d6c2);
  } else {
    fill(255);
  }
  rect(width / 3 + 200, 100, 100, 50); //scissors
  fill(0);
  text("Rock", width / 3 - 100, 140);
  text("Paper", width / 3 + 50, 140);
  text("Scissors", width / 3 + 200, 140);

  // computer
  text("Computer:", width / 2 - 100, 300);
  text(computerChoice, width / 2 - 80, 350);

  text("wins: " + wins, width/2 - 150, 450);
  text("loses:" + loses, width/2 - 0, 450);
  text("ties:" + ties, width/2 - 70, 500);
}

void mousePressed() {
  if (
    mouseX > width /3 - 100 &&
    mouseX < width / 3 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Rock";
    rand = (int) random(3);
  } else if (
    mouseX > width / 3 + 50 &&
    mouseX < width / 3 + 150 &&
    mouseY > 100 && mouseY < 150
    ) {
    userChoice = "Paper";
    rand = (int) random(3);
  } else if (
    mouseX > width / 3 +200  &&
    mouseX < width / 3 +300 &&
    mouseY > 100 && mouseY < 150) {
    userChoice = "Scissors";
    rand = (int) random(3);
  } else {
    userChoice = "Not Chosen";
  }
  println(userChoice);
  println(rand);
  if (rand == 0) {
    computerChoice = "Rock";
  } else if (rand == 1) {
    computerChoice = "Paper";
  } else if (rand == 2) {
    computerChoice = "Scissors";
  } else {
    computerChoice = "Not Chosen";
  }
  
  if(userChoice == "Scissors" && computerChoice == "Paper"){
    wins = wins +1;
  }
    if(userChoice == "Paper" && computerChoice == "Scissors"){
    loses = loses +1 ;
  }
    if(userChoice == "Paper" && computerChoice == "Rock"){
    wins = wins +1;
  }
  if(userChoice == "Rock" && computerChoice == "Paper"){
    loses = loses +1 ;
  }
  if(userChoice == "Rock" && computerChoice == "Scissors"){
    wins = wins +1;
  }
  if(userChoice == "Scissors" && computerChoice == "Rock"){
    loses = loses +1 ;
  }
  if(userChoice == "Rock" && computerChoice == "Rock"){
    ties = ties +1 ;
  }
  if(userChoice == "Paper" && computerChoice == "Paper"){
    ties = ties +1 ;
  }
  if(userChoice == "Scissors" && computerChoice == "Scissors"){
    ties = ties +1 ;
  }
}
