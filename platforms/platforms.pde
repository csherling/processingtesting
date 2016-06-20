Player p;
int timer;

void setup(){
  size(500, 500);
  p = new Player();
}

void draw(){
  background(0);
  if(timer % 3 == 0){
    p.x += p.xvel;
    if(p.xvel > 0){
      p.xvel -= 5;
    }
    else if(p.xvel < 0){
      p.xvel += 5;
    }
    if(p.down == true){
      p.yvel += 5;
      p.y += p.yvel;
      if(p.y >= 475){
        p.yvel = 0;
        p.y = 475;
        p.down = false;
      }
    }
    else if(p.up == true){
      p.yvel += 5;
      p.y += p.yvel;
      if(p.yvel == 0){
        p.up = false;
        p.down = true;
      }
    }
    if(p.y > 475){
      p.y = 475;
      p.yvel = 0;
    }
    System.out.println(p.xvel);
  }
  if(timer == 59){
    timer = 0;
  }
  else{
    timer++;
  }
}

void keyPressed(){
  if(keyCode == RIGHT){
    if(p.xvel < 15){
      p.xvel += 5;
    }
  }
  else if(keyCode == LEFT){
    if(p.xvel > -15){
      p.xvel -= 5;
    }
  }
  if(keyCode == SHIFT){
    p.yvel = -25;
    p.up = true;
  }
}