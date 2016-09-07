void setup()
{
	size (500, 500);
	noLoop();
}
void draw()
{
	//background ((int)Math.random()*255, (int)Math.random()*255, (int)Math.random()*255);
	for (int x = 30; x < 450; x = x + 50)
	{
		Die hey = new Die(x, 30); 
		hey.roll();
		hey.show();
	}
	for (int y = 30; y < 450; y = y + 50)
	{
		Die boo = new Die (30, y);
		boo.roll();
		boo.show();
	}

}

void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY;
	//variable declarations here
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		fill(255);
		strokeWeight(1);
		rect(myX, myY, 40, 40, 10);
		fill(0);
		strokeWeight(5);
		//one
		point(myX + 20, myY + 20);
		//two 
		point(myX + 15, myY + 15);

	}
}
