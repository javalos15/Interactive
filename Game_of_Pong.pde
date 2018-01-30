int x;
int y;
int w;
int h;

int speedX;
int speedY;

int controlX;
int controlY;
int controlW;
int controlH;
int controlS;

boolean up,down;


void setup(){
  size(500,500);

  
  x = width/2;
  y = height/2;
  w = 50;
  h = 50;
  speedX = 2;
  speedY = 3;
  
  controlX = 30;
  controlY = height/2;
  controlW = 30;
  controlH = 100;
  controlS = 5;
  
}

void draw(){
  background(255);
  fill(0);
  ellipse(x,y,w,h);
  
  if( x > width - w/2){
    speedX = - speedX;
  }else if( x < 0 + w/2){
    speedX = - speedX;
  }
  
  if( y > height - h/2){
    speedY = - speedY;
  }else if( y < 0 + h/2){
    speedY = - speedY;
  }
  
  
  x += speedX;
  y += speedY;
  
  drawController();
  moveControl();
  stopControl();
 
  
    
    
  
}

void ballContact(){
  if(x > height/2 - h/2){
    speedX = + speedX;
  }
}

void drawController(){
  fill(0);
  rectMode(CENTER);
  rect(controlX,controlY,controlW,controlH);
}

void stopControl(){
  if(controlY - controlH/2 < 0){
    controlY = controlY + controlS;
  }
  if(controlY + controlH/2 > height){
    controlY = controlY - controlS;
  }
}

void moveControl(){
  if(up){
    controlY = controlY + controlS;
  }
  if(down){
    controlY = controlY - controlS;
  }
}

void keyPressed(){
  if(key == 'd'){
    up = true;
  }
  
  if(key == 'x'){
    down = true;
  }
}

void keyReleased(){
  if(key == 'd'){
    up = false;
  }
  
  if(key == 'x'){
    down = false;
  }
}
  