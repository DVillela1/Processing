PImage mustache;
PImage friend;

void setup(){
  friend = loadImage("king.jpg");
size(800, 600);
friend.resize(width,height);
background(friend);
mustache = loadImage("mustache.png");
mustache.resize(150, 0);

}
void draw(){
  if(mousePressed){
    background(friend);
  image(mustache, mouseX-74, mouseY-25);
  }
}