void setup()
{
	
	size(450, 490);
	noLoop();
	fill(255);
	textSize(40);

	
}
void draw()
{	int sum = 0;
	background(255,192,203);
	for(int y= 3; y<= 333; y = y + 110)
	{
		for(int x = 10; x <= 340; x = x + 110)
		{	
			Die kay = new Die(x, y);
			kay.show();
			sum += kay.dots;
		}

	}
	fill(255);
	text("Sum: " + sum, 150, 480);
	
	
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, dots;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		//your code here
		dots = (int)(Math.random() * 6) + 1;
		
	}
	void show()
	{
		//your code here
		if(dots == 1){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 50,myY + 50,20,20);
		}
		if(dots == 2){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 15, myY + 15, 20, 20);
			ellipse(myX + 85, myY + 85, 20, 20);
		}
		if(dots == 3){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 15, myY + 15, 20, 20);
			ellipse(myX + 50, myY + 50, 20, 20);
			ellipse(myX + 85, myY + 85, 20, 20);
		}
		if(dots == 4){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 15, myY + 15, 20, 20);
			ellipse(myX + 85, myY + 85, 20, 20);
			ellipse(myX + 15, myY + 85, 20, 20);
			ellipse(myX + 85, myY + 15, 20, 20);
		}
		if(dots == 5){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 15, myY + 15, 20, 20);
			ellipse(myX + 85, myY + 85, 20, 20);
			ellipse(myX + 15, myY + 85, 20, 20);
			ellipse(myX + 85, myY + 15, 20, 20);
			ellipse(myX + 50, myY + 50, 20, 20);
		}
		if(dots == 6){
			fill(255);
			rect(myX, myY, 100, 100);
			fill(255,192,203);
			ellipse(myX + 15, myY + 15, 20, 20);
			ellipse(myX + 85, myY + 85, 20, 20);
			ellipse(myX + 15, myY + 85, 20, 20);
			ellipse(myX + 85, myY + 15, 20, 20);
			ellipse(myX + 15, myY + 50, 20, 20);
			ellipse(myX + 85, myY + 50, 20, 20);
		}


	}
	
}
