class Player {
  int compLives;
  int playerLives;
  int xpos; 
  int ypos;
  color paddlecolor = color(0, 255, 0);
  Player(int screen_y)
  {
    xpos=SCREENX/2;
    ypos=screen_y;
  }
  
  void setup()
  {
    compLives = 3;
    playerLives = 3;
    PFont myFont = loadFont("Impact-18.vlw");
    textFont(myFont);
  }
 
  void move(int x) {
    if (x>SCREENX-PADDLEWIDTH) xpos = SCREENX-PADDLEWIDTH;
    else xpos=x;
  }
  
  void draw()
  {
    fill(paddlecolor);
    rect(xpos, ypos, PADDLEWIDTH, PADDLEHEIGHT);
  }
  
  void moveComp(Ball b) {
    if (xpos > b.x) {
      xpos -= 5;
    } else if (xpos < b.x) {
      xpos += 5;
    }
    if (xpos>SCREENX-PADDLEWIDTH) 
      xpos = SCREENX-PADDLEWIDTH;
  }
}
