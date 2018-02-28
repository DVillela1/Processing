void setup() {
     PImage waldo = loadImage("waldo.jpg"); // 5. Change this to match your file name.
     waldo.resize(1000,667);
      size(1000, 667);
      background(waldo);
     doh = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-doh.wav");
     woohoo = minim.loadSample("/Users/League/Google Drive/league-sounds/homer-woohoo.wav");
}

void draw() {
  if(mousePressed) {
    println(mouseX+" "+mouseY);
  }

      if(mouseX<415) {
        mouseX=415;
      }
  
  
  
  
  
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