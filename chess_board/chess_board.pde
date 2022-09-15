void setup()
{
  size(800,800);

  for(int i = 0; i < 800;i = i +100)
  {
    println(i);
  }
   
}
 void draw()
{
   color white = color(255,255,255);
   color black = color(0,0,0);
   int counter = 0;

   for(int x = 0; x < 800; x=x+100)
   {
     for(int y = 0; y < 800; y=y+100)
     {        
     {  
       if(counter % 2 == 0)
       {
         fill(black);
       }
       else
       {
         fill(white);
       }
       counter = counter+1;
       rect(x,y,100,100); //Draws the rectangles
     }  
     } 
     counter = counter+1;
   }

}
