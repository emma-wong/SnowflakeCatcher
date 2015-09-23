Snowflake [] colony;
void setup()
{
  //your code here
  size(500,500);
  colony = new Snowflake[40];
  for(int i = 0; i<colony.length; i++) {
    colony[i] = new Snowflake();
  }
}
void draw()
{
  //your code here
    //background(0, 0, 0);
    fill(0, 0, 0);
    rect(-1000,-1000,2000,2000);
  for (int i = 0; i < colony.length; i++) {
    colony[i].erase();
      colony[i].show();
    colony[i].lookDown();
    colony[i].move();
    colony[i].wrap();
  
   } 
}
void mouseDragged()
{
  //your code here
  fill(255,0,0);
  ellipse(mouseX, mouseY, 10, 10);
}

class Snowflake
{
  //class member variable declarations
    int myX;
    int myY;
    boolean isMoving;  
  Snowflake()
  {
    //class member variable initializations
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    isMoving = true;
  }
  void show()
  {
    //your code here
    fill(255, 255, 255);
    ellipse(myX, myY, 6, 6);
    fill(255,0,0);
    rect(255,255,50,5);
  }
  void lookDown()
  {
    //your code here
    if ((myY > 500) || (myY < 0)) {
      isMoving = false;
    }
    else if (get(myX, (myY + 3)) == color(255,0,0)) {
      isMoving = false;
    }
    else {
      isMoving = true;
    }
  }
  void erase()
  {
    //your code here
    fill(0,0,0);
    ellipse(myX, myY, 7, 7);
  }
  void move()
  {
    //your code here
    if (isMoving == true) {
      myY++;
    }
  }
  void wrap()
  {
    //your code here
    if (myY > 500) {
      myY = 0;
      myX = (int)(Math.random()*500);
    }
  }
}


