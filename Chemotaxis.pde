Walker[] cat;
void setup()
{
   size(500,500);
   cat = new Walker[50];
   for(int i = 0; i < cat.length; i++)
   {
     cat[i] = new Walker();
   }
}
void draw(){
  background(174,175,198); 
  for(int i = 0; i < cat.length; i++)
  {
  cat[i].show();
  cat[i].walk();
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
    noStroke();
    ellipse(myX, myY, 20,20);
  }
}
