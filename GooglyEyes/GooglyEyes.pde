void setup(){
  PImage face = loadImage("pic.jpg");
size(800,1192);
face.resize(width,height);
background(face);
}
void draw(){
  fill(255,255,255);
  if(mousePressed){
    println(mouseX+" "+mouseY);
  }
    if(mouseX<309){
      mouseX=309;
    }
    if(mouseX>333){
      mouseX=333;
    }
    if(mouseY>293){
      mouseY=293;
    }
    if(mouseY<271){
      mouseY=271;
    }
  ellipse(320,280,40,40);
  fill(0,0,0);
  ellipse(mouseX,mouseY,5,5);
  fill(mouseX,mouseY,mouseX);
  ellipse(399,280,40,40);
  fill(0,0,0);
  ellipse(mouseX+79,mouseY,5,5);
  }
