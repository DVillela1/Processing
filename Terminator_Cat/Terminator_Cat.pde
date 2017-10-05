PImage catPic;
int xPosition=356;
int yPosition=255;
int acceleration=5;
void setup(){
  size(700, 586);
  catPic = loadImage("wolf.jpg");
  catPic.resize(width, height);
  background(catPic);
}
void draw(){
  if(mousePressed) {
    println("Mouse's x-position: " + mouseX + "\n" +
    "Mouse's y-position: " + mouseY + "\n");}
    ellipse(xPosition, yPosition, 50, 50);
    ellipse(xPosition+125, yPosition+2, 50, 50);
    fill(255, 15, 172);
    if(xPosition>width){
      background(catPic);
      xPosition=365;
      yPosition=255;
}
}
void keyPressed(){
  xPosition-=2*acceleration;
yPosition+=2*acceleration;
noStroke();
}