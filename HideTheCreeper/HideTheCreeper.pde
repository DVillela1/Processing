PImage creeper;
void setup() {
PImage tree = loadImage("tree.jpg");
size (1000, 1000);
background(tree);
creeper = loadImage("creeper.png");
creeper.resize(35, 35);
}
// Creeper Location: (57, 317)
// Corner Location: (78, 76)
void draw() {
int x = 57;
int y = 317;

image (creeper, x, y);

if (mousePressed) {
  fill (255, 0, 0);
  ellipse (mouseX, mouseY, 95, 95);
}
if (mouseX > 78 && mouseX < 0 && mouseY > 0 && mouseY < 76) {
  fill (0, 255, 0);
  ellipse (mouseX, mouseY, 95, 95);
}
}