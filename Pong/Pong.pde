Player thePlayer;
Player compPlayer;
Ball theBall;

void settings() {
  size(SCREENX, SCREENY);
}

void setup() {
  thePlayer = new Player(SCREENY-MARGIN-PADDLEHEIGHT);
  compPlayer = new Player(MARGIN);
  frameRate(70);
  theBall = new Ball();
  ellipseMode(RADIUS);
}

void draw() {
  background(0);
  thePlayer.move(mouseX);
  theBall.move();
  theBall.collide(thePlayer);
  theBall.collide(compPlayer);
  theBall.collideWalls();
  compPlayer.moveComp(theBall);
  thePlayer.draw();
  theBall.draw();
  compPlayer.draw();
  theBall.reset();
}
