class Player{

  int x;
  int y;
  int xvel;
  int yvel;
  boolean up;
  boolean down;

  
  Player(){
    x = 0;
    y = 475;
    xvel = 0;
    yvel = 0;
    up = false;
    down = true;
  }
  
  void draw(){
    fill(255, 0, 0);
    rect(x, y, 25, 25);
  }
  
}