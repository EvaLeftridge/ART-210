import processing.sound.*;
Amplitude amp;
BeatDetector beat;
AudioIn in;

void setup()  {
  size(640,360);
  background(255);
  
  //Create an Input stream which is routed in the Ampilitude
  amp = new Amplitude(this);
  beat = new BeatDetector(this);
  beat.sensitivity(1);
  in = new AudioIn(this, 0);
  in.start();
  amp.input(in);
}

void draw() {
  background(255);
  circle(width/2,height/2,amp.analyze()*1000);
  println(beat.isBeat());
  if(beat.isBeat()) background(0);
  
}
