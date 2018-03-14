PImage donkey;
PImage tail;
void setup () {
donkey = loadImage("donkey.jpg");
tail = loadImage("tail.png");
size(630, 630); 
tail.resize(200, 100);
background (donkey);  
}
void draw() {
if (mousePressed) {
  println(mouseX+"(x) (y)"+mouseY);
}
if (mousePressed) {
 image (tail, mouseX-12, mouseY-12);
}
noFill();
// rect (330, 282, (397-330), (344-282));  

// Top left boundary (330, 282)
// Top right boundary (397, 280)
// Bottom left boundary (330, 344)
// Bottom right boundary (410, 346)
  
  
  

}