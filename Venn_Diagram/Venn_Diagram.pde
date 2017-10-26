
void setup(){
  background(255,255,255);
  size(800,600);
}
void draw(){
  if(mousePressed){
    println(mouseX+" "+mouseY);
  }
  textSize(15);
  fill(0,0,0);
  text("Adventurous",206,342);
  fill(250,5,177,50);
  ellipse(266,298,200,200);
  fill(0,0,0);
  text("Athletic",306,174);
  fill(0,255,240,50);
  ellipse(338,230,200,200);
  fill(0,0,0);
  text("Active",405,342);
  
  fill(254,255,0,50);
  ellipse(415,294,200,200);
}