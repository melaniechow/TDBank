class Ball{
  float x; //x position
  float y; //y position
  float rad; //size
  color c; //color
  float dx; //direction
  float dy;
  int state; //0-normal, 1-expanding 2-shrinking 3-dead
 
 Ball(){
    x=(int)random(width-rad/2);
    y=(int)random(height-rad/2);
    rad=20;
    c=color((int)random(256), (int)random(256), (int)random(256)); //random color
    dx=(int)random(8)-4;
    dy=(int)random(8)-4;
    state=0;
 }
 
 void move(){
  bounce();
   x+=dx;
   y+=dy;
 }
 
 void bounce(){
   if (x > width-rad || x < rad) {
    dx*=-1;
    x+=dx;
  }
  if (y>height-rad || y<height){
    dy*=-1;
    y+=dy;
  }
 }
 
  }