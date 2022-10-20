Walker[] mrchan;
void setup()
{
   size(500,500);
   mrchan = new Walker[20];
   for(int i = 0; i < mrchan.length; i++)
   {
     mrchan[i] = new Walker();
   }
}
void draw(){
  background(174,175,198); 
  for(int i = 0; i < mrchan.length; i++)
  {
  mrchan[i].show();
  mrchan[i].walk();
  }
}

class Walker
{
  int myX, myY;
  Walker()
  {
     myX = (int)(Math.random()*500);
     myY = (int)(Math.random()*500);
     
  }
  
  void walk()
  {
   if(mouseX>myX)
      myX = myX + (int)(Math.random()*5)-1;
    else
      myX = myX + (int)(Math.random()*5)-3;
    if(mouseY>myY)
      myY = myY + (int)(Math.random()*5)-1;
    else
      myY = myY + (int)(Math.random()*5)-3;
  }

  void show()
  {
  fill(255,192,203);
  arc(myX,myY-15,44,30,0,PI/1);
  
  stroke(0);
  fill(206,202,202);
  ellipse(myX,myY,43,35);
  fill(0,0,0);
  ellipse(myX-7,myY-3,5,10);
  ellipse(myX+7,myY-3,5,10);
  
  noFill();
  arc(myX+3,myY+5,5,7,0,PI);
  arc(myX-2,myY+5,5,7,0,PI);
  
  fill(255,255,255);
  ellipse(myX-6,myY-5,2,3);
  ellipse(myX+8,myY-5,2,3); 
  }
}
