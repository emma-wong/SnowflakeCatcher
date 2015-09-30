Snowflake [] colony;

void setup()
{
  //your code here
  size(500,500);
  colony = new Snowflake[600];

  for(int i = 0; i<colony.length; i++) {
    colony[i] = new Snowflake();
        background(0, 0, 0); 
  }

}
void draw()
{
  //your code here

  //  fill(0, 0, 0);
    //rect(-1000,-1000,2000,2000);
  for (int i = 0; i < colony.length; i++) {
    colony[i].erase();
    colony[i].lookDown();   
    colony[i].move();
    colony[i].wrap();
    colony[i].show();
   } 

}

 void mouseDragged()
{
  //your code here
  if (mousePressed && mouseButton == LEFT) {
    fill(255,0,0);
    ellipse(mouseX, mouseY, 10, 10);
  }
  else if (mousePressed && mouseButton == RIGHT) {
    fill(0,0,0);
    ellipse(mouseX, mouseY, 15, 15);
  }
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
    noStroke();
    fill(255, 255, 255);
    ellipse(myX, myY, 6, 6);
  }
  void lookDown()
  {
    //your code here
    if ((myY > 500) || (myY < 0)) {
      isMoving = false;
    }
    if (get(myX, myY + 4) == color(255,0,0)) {
      isMoving = false;
    }
    else if (get(myX, myY + 4) == color(255,255,255)) {
      isMoving = false;
    }    
    else {
      isMoving = true;
    }
    }
  void erase()
  {
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


