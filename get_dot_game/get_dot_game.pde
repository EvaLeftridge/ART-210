int nMover = 1000;
Mover[] m = new Mover[nMover];

void setup()
{
  size(800,600,P3D);
  fullScreen();
  for(int i = 0; i < m.length; i = i + 1)
  {
    m[i] = new Mover();
  }
}

void draw()
{ 
  background(255);
  for(int i = 0; i < m.length; i= i + 1)
  {
    m[i].update();
    m[i].check();
    m[i].show();
  }
  stroke(255,0,0);
  noFill();
  circle(mouseX,mouseY,1200);
}

void hud()
{
  translate(width/2,10);
  fill(255);
  textAlign(CENTER);
  text (counter,0,30);
  translate(-nMover/2,0);
  noStroke();
  fill(color(255,0,100));
  rect(0,0,counter,10);
  stroke(255);
  noFill();
  rect(0,0,nMover,10); 
}

void mouseClicked()
{
  for(int i = 0; i < m.leingth; i = i +1)
  {
    m[i].lifeCheck(mouseX,mouseY);
  }
}
