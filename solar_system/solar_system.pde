float _angle = 0;
int nPlanets = floor(random(2,30));

float[] distance = new float[nPlanets];
float[] size = new float[nPlanets];
float[] speed = new float[nPlanets];
float[] col = new color[nPlanets];

void setup()
{
  size(800,600,P3D);
  
  for (int i = 0; i<nPlanets;i = i + 1)
  {
  distance[i]=random(200,550);
  size[i]=random(30,100);
  speed[i] = random(-2.0,2.0);
  col[i] = color(random(255),random(255),random(255),50);
  }
}

void draw()
{
  clearScreen();
  translate(width/2,height/2);
  scale(0.5);
  
  aCircle(0,0,200,color(255,255,255));
  
  for (int i = 0; i<nPlanets;i = i + 1)
  
  pushMatrix();
    rotate(radians(_angle*speed[0]));
    println(size[0]);
    translate(distance[0],0);
    aCircle(0,0,size[0],col[0]);
    popMatrix();
      
    pushMatrix();  
      rotate(radians(_angle*speed[1]));
      translate(distance[1],0);
      aCircle(0,0,size[1],col[1]);
    popMatrix();
   
    PushMatrix();
      rotate(radians(_angle*3));
      translate(150,0);
      aCircle(0,0,30,55,200,50);
    popMatrix();
   popMatrix();
}
void clearScreen()
{
  noStroke();
  fill(color(0,0,0,6));
  rect(0,0,width,height);
}
void aCircle(float x,float y, float d, color,col)
{
  noStroke();
  fill(col);
  circle(x,y,d);
