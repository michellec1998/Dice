int numDots;

void setup()
{
 size (500, 500);
 noLoop();
}

void draw()
{
    background(204, 255, 229);
    for (int d = 30; d < 500; d += 80)
    {
      for (int i = 30; i < 400; i += 50)
      {
      Die heyDice = new Die(d, i); 
      heyDice.roll();
      heyDice.show();
      numDots = numDots + heyDice.pips;
      }
 }
     
     //text
      textSize(15);
      text("There are " + numDots + " dots!", 30, 450);

}
//redrawing
void mousePressed()
{
 redraw();
}

//models one single dice cube
class Die 
{
  int myX, myY;
  int pips;
  Die(int x, int y) //constructor
 {
    
    myX = x;
    myY = y;
    roll();
  //variable initializations here
 }
 void roll()
 {
  //use math.random
  pips = (int)(Math.random()*6)+1;

 }
 void show()
 {
  fill(255);
  strokeWeight(1);
  rect(myX, myY, 40, 40, 10);
  //points
  fill(0);
  strokeWeight(5);
  
  //pips or dots
    if (pips == 1)
    {
      point(myX + 20, myY +20);
    }
    if (pips == 2)
    {
      point(myX + 15, myY + 15);
      point(myX + 25, myY + 25);
    }
    if (pips == 3)
    {
    point(myX + 20, myY + 15);
    point(myX + 15, myY + 25);
    point(myX + 25, myY + 25);
    }
    if (pips == 4)
    {
    point(myX + 15, myY + 15);
    point(myX + 15, myY + 25);
    point(myX + 25, myY + 15);
    point(myX + 25, myY + 25);
    }
    if (pips == 5)
    {
    point(myX + 15, myY + 15);
    point(myX + 15, myY + 25);
    point(myX + 25, myY + 15);
    point(myX + 25, myY + 25);
    point(myX + 20, myY + 20);
    }
    if (pips == 6)
    {
    point(myX + 15, myY + 10);
    point(myX + 15, myY + 20);
    point(myX + 15, myY + 30);
    point(myX + 25, myY + 10);
    point(myX + 25, myY + 20);
    point(myX + 25, myY + 30);
    }
  }
  }