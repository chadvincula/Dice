void setup()
{
	noLoop();
	size(400, 400);
}
void draw()
{
	//your code here
	background(0, 255, 0);
	for(int j = 0; j <= 400; j += 45)
	{
		for(int i = 0; i <= 400; i += 45)
		{
			Die dice = new Die(i, j);
			dice.show();
			dice.roll();
		}
	}
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, myRoll;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		myRoll = 6;
	}
	void roll()
	{
		//your code here
		myRoll = (int)(Math.random()*6)+1;
	}
	void show()
	{
		//your code here
		fill(255);
		rect(myX, myY, 40, 40, 5);
		fill(0);
		if(myRoll == 1)
		{
			ellipse(myX+20, myY+20, 7, 7);
		}
		if(myRoll == 2)
		{
			ellipse(myX+10, myY+10, 7, 7);
			ellipse(myX+30, myY+30, 7, 7);
		}
		if(myRoll == 3)
		{
			ellipse(myX+10, myY+10, 7, 7);
			ellipse(myX+20, myY+20, 7, 7);
			ellipse(myX+30, myY+30, 7, 7);
		}
		if(myRoll == 4)
		{
			ellipse(myX+10, myY+10, 7, 7);
			ellipse(myX+10, myY+30, 7, 7);
			ellipse(myX+30, myY+10, 7, 7);
			ellipse(myX+30, myY+30, 7, 7);
		}
		if(myRoll == 5)
		{
			ellipse(myX+10, myY+10, 7, 7);
			ellipse(myX+10, myY+30, 7, 7);
			ellipse(myX+30, myY+10, 7, 7);
			ellipse(myX+20, myY+20, 7, 7);
			ellipse(myX+30, myY+30, 7, 7);
		}
		if(myRoll == 6)
		{
			ellipse(myX+10, myY+10, 7, 7);
			ellipse(myX+10, myY+30, 7, 7);
			ellipse(myX+30, myY+10, 7, 7);
			ellipse(myX+10, myY+20, 7, 7);
			ellipse(myX+30, myY+20, 7, 7);
			ellipse(myX+30, myY+30, 7, 7);
		}
	}
}
