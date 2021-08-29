class Ball {
  float x; 
  float y;
  float dx; 
  float dy;
  int radius;
  int w = 0;
  color ballColor = color(786, 786, 786);
  
  Ball() {

    x = random(SCREENX/4, SCREENX/2);
    y = random(SCREENY/4, SCREENY/2);
    dx = random(2, 4); 
    dy = random(2, 4);
    radius=10;
  }
  
  void move() {
    x = x+dx; 
    y = y+dy;
  }
  
  void draw() {
    fill(ballColor);
    ellipse(int(x), int(y), radius, 
      radius);
  }
  
  void collide(Player tp) {
    if (y+radius >= tp.ypos &&
      y-radius<tp.ypos+PADDLEHEIGHT &&
      x >=tp.xpos && x <=
      tp.xpos+PADDLEWIDTH) {
      w = w +1;
      println("collided! " + w);
      dy=-dy;
    }
  }

  void collideWalls() {
    if (x-radius <=0) 
      dx=-dx;
    else if (x+radius>=SCREENX) 
      dx=-dx;
  }
  
  void reset()
  {
    if(y > SCREENY || y < 0)
    {
      x = random(SCREENX/4, SCREENX/4);
      y = random(SCREENY/4, SCREENY/4);
    }
  }
}
