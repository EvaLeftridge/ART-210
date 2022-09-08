int nPlanet = 10;
Planet[] _Planet = new Planet[100];


void setup()
{
  size(800,600);
  for(int i = 0; i < nPlanet; i = i + 1)
  {
  _Planet[i] = new Planet(random (10,200));
  _Planet[i].speed = random(-2.2,2.0);
  _Planet[i].col = color (random(255),100,100);
  _Planet[i].size = random(10,50);
  }
}

void draw()
{
  background(0);
  translate(width/2,height/2);
  for(int i = 0; i < nPlanet; i = i + 1)
  {
   _Planet[i].show();
  }
}
