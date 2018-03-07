void setup() {
     PImage waldo = loadImage("waldo.jpg"); // 5. Change this to match your file name.
     waldo.resize(1000,667);
      size(1000, 667);
      background(waldo);
     doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
     woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");
}
void draw() {
  if (mousePressed) {
    

  if(mouseX > 286 && mouseX < 306 && mouseY > 96 && mouseY < 120) {
    playWoohoo();
  }
  else{
   playDoh(); 
  }
  }
 /*     if(mouseX<415) {
        mouseX=415;
      }
      if(mouseY<327) {
        mouseY=327; 
      }
      if(mouseX>415) {
        mouseX=415;
      }
      if(mouseY>360) {
        mouseY=360;
      } */
  noFill();
// rect(346, 303, 376-346, 353-303);  
  
  
}

void playWoohoo() {
     woohoo.stop();
     woohoo.trigger();
}

void playDoh() {
     doh.stop();
     doh.trigger();
}

import ddf.minim.*;
Minim minim = new Minim(this); 
AudioSample doh;
AudioSample woohoo;