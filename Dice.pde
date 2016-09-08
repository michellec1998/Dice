void setup()
{
	size (500, 500);
	noLoop();
}

void draw()
{
	background(204, 255, 229);
	int numDots = 0;

	for (int d = 30; d < 450; d = d + 50)
	{
		Die hey = new Die(d, d); 
		hey.roll();
		hey.show();
	}

	//text
	textSize(15);
	text("There are " + numDots + " dots!", 30, 450);
}

void mousePressed()
{
	redraw();
}

class Die //models one single dice cube
{
	int myX, myY;
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
		//points
		fill(0);
		strokeWeight(5);
		
	}
}

class Dots 
{
	int myX, myY;
	Dots(int x, int y)
	{
		
	}
	void show()
	{
				//one
		//point(myX + 20, myY +20);
		//two
		/*point(myX + 15, myY + 15);
		point(myX + 25, myY + 25); */
		//three
		/*point(myX + 20, myY + 15);
		point(myX + 15, myY + 25);
		point(myX + 25, myY + 25);*/
		//four
		/*point(myX + 15, myY + 15);
		point(myX + 15, myY + 25);
		point(myX + 25, myY + 15);
		point(myX + 25, myY + 25);*/
		//five
		/*point(myX + 15, myY + 15);
		point(myX + 15, myY + 25);
		point(myX + 25, myY + 15);
		point(myX + 25, myY + 25);
		point(myX + 20, myY + 20);*/
		//six
		/*point(myX + 15, myY + 10);
		point(myX + 15, myY + 20);
		point(myX + 15, myY + 30);
		point(myX + 25, myY + 10);
		point(myX + 25, myY + 20);
		point(myX + 25, myY + 30);*/
	}
}

