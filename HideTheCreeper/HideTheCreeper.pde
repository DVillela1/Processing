PImage creeper;
void setup() {
PImage tree = loadImage("tree.jpg");
size (1000, 1000);
background(tree);
creeper = loadImage("creeper.png");
creeper.resize(35, 35);
noStroke();
}
// Creeper Location: (57, 317)
// Corner Top Left: (0, 0)
// Corner Bottom Right: (89, 89)
void draw() {
int x = 57;
int y = 317;

image (creeper, x, y);

if (mousePressed) {
  if (cc (mouseX, 75) && cc(mouseY, 335)) {
    fill (0, 255, 0);
  }
  else {
  fill (255, 0, 0);  
  }
  ellipse (mouseX, mouseY, 95, 95);
}

if (mouseX > 0 && mouseX < 89 && mouseY > 0 && mouseY < 89) {
  fill (0, 255, 0);
  ellipse (mouseX, mouseY, 95, 95);
}
}
boolean cc(int a, int b) {
  if (abs(a-b) < 10)
  return true;
  else
  return false;
}