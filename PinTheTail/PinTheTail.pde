import ddf.minim.*;          
AudioSample woohooSound;
boolean playSound = true;
int tailX = 0;
int tailY = 0;

PImage black;
PImage tail;
PImage donkey;
void setup () {
black = loadImage ("black.png");
donkey = loadImage("donkey.jpg");
tail = loadImage("tail.png");
size(630, 630); 
tail.resize(200, 100);
Minim minim = new Minim(this);
woohooSound = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");
}

void draw() {
background (black);

if (mousePressed) {
  println(mouseX+"(x) (y)"+mouseY);

  tailX = mouseX;
  tailY = mouseY;
}
//if (mousePressed) {
//image (tail, mouseX-12, mouseY-12);
//}
if (mouseX > 1 && mouseX < 23 && mouseY > 1 && mouseY < 19) {
  image(donkey, 0, 0);
}
if (tailX > 0) {
  
  image(donkey, 0, 0);
  image(tail, tailX, tailY); 

if (tailX > 330 && tailX < 397 && tailY > 282 && tailY < 344) {
  playWoohoo();
  
}  
}
}
// rect (330, 282, (397-330), (344-282));

// Top left boundary (330, 282)
// Top right boundary (397, 280)
// Bottom left boundary (330, 344)
// Bottom right boundary (410, 346)

// Corner top left boundary (1, 1)
// Corner top right boundary (23, 3)
// Corner bottom left boundary (1, 19)
// Corner bottom right boundary (24, 19)
  
  
void playWoohoo() {
if (playSound) {
     woohooSound.trigger();
     playSound = false;
}

}