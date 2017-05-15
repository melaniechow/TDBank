/*
Melanie Chow, Truc Dao
APCS2 pd4
HW40 -- All That Bouncin'
2017-05-15
*/

Ball[] balls;

boolean reactionStarted;

void setup(){
    size(600,600);
    background(0,0,0);
    reactionStarted=false;
    
    //set up balls
    balls=new Ball[25];
    for (int i=0; i<balls.length; i++){
      balls[i]=new Ball();
    }
}

void draw(){
    background(0);
   for (Ball a: balls){
     a.move();
          fill(a.c);
     ellipse(a.x,a.y,a.rad,a.rad);
   }
   if (mousePressed){
       reactionStarted=true;
   }
   if (reactionStarted==true){
     for (Ball a: balls){
       touch(a);
     }
   }
   }
   
void touch(Ball b){
     for (int i=0; i<balls.length; i++){
       if (others[i].x == b.x){
         b.state=1;
         b.state=2;
         b.state=3;
       }
      }
    }   