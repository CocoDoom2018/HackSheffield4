import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;
 
Minim minim;
AudioPlayer clip1, clip2, clip3, clip4, clip5;

int num1, num2, num3, num4;
 
void setup()
{
  size(400, 600);
  minim = new Minim(this);
  clip1 = minim.loadFile("clip1.mp3");
  clip2 = minim.loadFile("clip2.mp3");
  clip3 = minim.loadFile("clip3.mp3");
  clip4 = minim.loadFile("clip4.mp3");
  clip5 = minim.loadFile("clip5.mp3");
}
 
void draw() {
  
  background( num1, num2, num3, num4);
  stroke(255);
}
 
void keyPressed() {
  if (key == 'a') {
    doStuff(clip1, "AAAAAAA");
  }
  
  if (key == 'b') {
    doStuff(clip2, "BBBBBBBB");
  }
  
  if (key == 'c') {
    doStuff(clip3, "CCCCCCCC");
  }
  
  if (key == 'd') {
    doStuff(clip4, "DDDDDDDDD");
  }
  
  if (key == 'e') {
    doStuff(clip5, "EEEEEEEEEE");
  }
}


void doStuff(AudioPlayer clip, String message)
{
  clip.rewind();
  clip.play();
  print (message);
  num1 = int(random(255));
  num2 = int(random(255));
  num3 = int(random(255));
  num4 = int(random(255));
 
}