 //declare bacteria variables here
 Bacteria [] colony;  
 PImage img;
 void setup()   
 {     
 	size(600,500);
 	frameRate(20);
 	img=loadImage("mattbomer.jpg");
 	colony = new Bacteria[50];
 	for(int i=0; i<colony.length; i++)
 	{
 	colony[i] = new Bacteria((int)(Math.random()*500),(int)(Math.random()*500));
 	}
 }   
 void draw()   
 {  
 	image(img,0,0,600,500);
 	for(int i=0; i<colony.length; i++)
 	{
 		colony[i].move();
 	    colony[i].show();
 	}
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX;
 	int myY;
 	int myColor;
 	int direction;
 	Bacteria(int x,int y)
 	{
 		myX=x;
 		myY=y;
 		myColor = (int)(Math.random()*255);
 	}   
 	void move()
 	{
 		if(myX<mouseX)
 		{
 			myX=myX+(int)(Math.random()*6-2);
 		}
 		else
 		{
 		    myX=myX+(int)(Math.random()*6-4);	
 		}
 		if(myY<mouseY)
 		{
 			myY=myY+(int)(Math.random()*6-2);
 		}
 		else
 		{
 		    myY=myY+(int)(Math.random()*6-4);	
 		}
 		if(myX==mouseX && myY==mouseY)
 		{
 			myX=myX+(int)(Math.random()*100-50);
 			myY=myY+(int)(Math.random()*100-50);
 			myColor = (int)(Math.random()*255);
 		}
 		
  	}
 	void show()
 	{
 		fill(myColor,myColor,myColor);
 		ellipse(myX,myY,10,10);
 	}
 } 
