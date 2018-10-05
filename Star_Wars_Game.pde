//Download the Images
PImage TIE;
PImage XW;
PImage XWG;
PImage img;
PImage TIESV;

// Varible for the scrolling background
int x;

//Instructions for the Start for the Start screen
String TTS=("Click to Start");
String CA=("Press A First then");

//Instructions for the X wing Player Movement
String instructionsT=("Use the W key to move up/Use the X key to move Down");

//Instructions for the TIE Fighter
String instructions=("Use the I key to move up/Use the M key to move down");

//X Wing Starting Location
int XWGY=100;
int XWGX=100;

//TIE Fighter Start Location
int TIESVI=100;

// boolean for key pressed ( False)
boolean aKeyPressed = false;

//X Wing Shooting (Does Not Work)
boolean xWingShot = false;
int xWingShotX;
int xWingShotY;

//Mouse Clicked 
int mouseClicked= 0;

//For the button
boolean mainScreen = false;
float size=30;

void setup()
{
  //Sets the Window to full screen
  fullScreen();
  
  //Loads the images for the Start screen and the Game
  TIE=loadImage("Tie_Fighter.jpg");
  XW=loadImage("T70 X Wing Poe Dameron.png");
  XWG=loadImage("XWING SIDE View.jpg");
  TIESV=loadImage("TIE FIGHTER SIDE VIEW.png");
  img=loadImage("Blue and Pink Space Background resized remastered.jpg");
}

void draw() {
  if ((key != 'a' && key != 'w' && key != 'x' && key != 'm' && key != 'i' && key != 's' && key != 'd' && key != 'j') || mainScreen == true)
  {
       
    //sets the background
    background (#CCDEE3);
     image(TIE, 3, 3);
     
    //Loads the Images on the Start Screen
    image(TIE, 3, 3);
    image(XW, 1, 1);
    
    //Color for the Explosion
    fill(#FA7D35);
    
    //Adds the Circle (Mini Explosion)
    ellipse(325, 625, 150, 150);
    
    //Sets the Stroke Size
    stroke(10);
    
    //Sets the Text Size
    textSize(50);
    
    //Adds the text to the Loading Screen
    text(TTS, 750, 1500);
    text(CA, 750, 1400);
  } 
   if ( aKeyPressed == true && mouseClicked >= 2 )
  {
    //Sets the background
    background(#9E7EDB);
    image(TIE, 3, 3);
    
    //scrolling background
    int x = frameCount % img.width;
    for (int i = -x ; i < width ; i += img.width)
    {
      copy(img, 0, 0, img.width, height, i, 0, img.width, height);
    }
    
    
    //Adds the text to instuctions to the screen
    text(instructionsT,1,50);
    text(instructions,1350,1750);
    
    //Adds the images (X WING SIDE VIEW and TIE FIGHTER SIDE VIEW)
    image(XWG, 100, XWGY, 150, 150);
    image(TIESV, 2500, TIESVI,150,150);
    
    //adds the button at the 
    fill(#82DE5C);
    textAlign(CENTER,CENTER);
    text("Click the bottem right corner\nto go to title screen",width/2,height/2-100);
  }
}

void keyPressed() 
{
  if (aKeyPressed == false && (key=='a'||key=='A'))
  {
    //Sets the background
    background(#F05F2E);
    image(TIE,3,3);
  
    aKeyPressed = true;
  }

  if ( aKeyPressed == true && mouseClicked >= 2 )
  {
    if (key == 'w' || key == 'W')
    {
      //code to move x wing down
      XWGY -= 100;
    }
    if (key=='x'||key=='x')
    {
      //code to move x wing down
      XWGY += 100;
    }
    //Tie fighter move up coding
    if (key=='i'||key=='I')
    {
      TIESVI-= 100;
    }
    //TIE fighter move down coding
    if (key=='m'||key=='M')
    {
      TIESVI+=100;
    }
    //if (key == 'd'||key == 'D');
    //{
      //text("TIE FIGHTER Wins",height/2,width/2);
    //}
    //if (key == 'j'||key == 'J');
    //{
      //text( "X Wing Wins", height/2,width/2);
    //}
   }
}

void mousePressed()
{
  //adds the value of 1  to mouseClicked
  mouseClicked++;
  if(mouseX >= width-50 && mouseX <= width && mouseY >= height-50 && mouseY <= height)
  {
    mainScreen=true;
    aKeyPressed = false;
    mouseClicked = 0;
  }
}




//Start of a multi-line comment
/**
1. I have 2 different Tie Fighter, 2 different X Wings and 1 circle and a Galaxy background

2. I used a scrolling background that I found on the internet to create a more space feel https://forum.processing.org/two/discussion/20079/how-can-i-make-an-endless-scrolling-background

3. These were the the animations that I did not learn from online toturial. The First animation that you can do which repaints the background orange (Explosion) and adds the TIE Fghter again is a key press (a|A). The Second Animation you can do is click the    
mouse which also repaints the background and adds the X Wing Side View and TIE Fighter Side View onto the window. The 3rd and 4th animations you can do is move the X Wing and the TIE
Fighter up and down using w/x and i/m respectively.

4. When you click the a|A key the Start Screen X wing blows up into a fiery explosion. 

5.When you click the mouse, the game starts and you can now control the X Wing Side View and the TIE Fighter Side View

//End of a Multi-line comment
*/  
