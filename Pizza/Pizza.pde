void setup(){
  
  size(800,600);
    PImage pizzaBox = loadImage("box.jpg");
pizzaBox.resize(width, height);  
background(pizzaBox);
  fill(234,226,133);
  ellipse(300,300,225,225);
  fill(232,63,63);
  ellipse(300,300,200,200);
  fill(255,175,0);
  ellipse(300,300,190,190);
}
void draw(){
  PImage pepperoni = loadImage("pepperoni.gif");
  PImage olive = loadImage("olive.gif");
  if(mouseButton == LEFT){
  image(pepperoni,mouseX,mouseY);
  }
  if(mouseButton == RIGHT){
  image(olive,mouseX,mouseY);
  }
}