int count = 0;
Sprite s;
void setup()
{
  size (800,600);
  s = new Sprite (50,150,100,300);
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  s.update();
  s.check();
  s.display();
}
