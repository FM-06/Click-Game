int moleX;
int moleY;
int moleLocation;
int score;
int time;


void setup(){
 
    size(900,900);
    score=0;
  time=60;
    moleLocation=(int)random(0,9);
    
   
 }
 
 


void draw() {
 
 ground();
 holes();
 mole();
 time();
 score();
 gameOver();
}

void ground(){
  //GROUND
    fill(222,184,135);
    rect(175,300,250,250);
}

void holes(){
   //HOLES
  for(int i=0;i<200;i+=90){
   for(int j=0;j<200;j+=90){
     
    fill(111, 78, 55);
    ellipse(210+i,330+j,50,22);
    fill(0);
    ellipse(210+i,334+j,50,20); 
   }
}
}
void mole() {
 
  if(time>0){
    fill(128,128,128);
    if(frameCount%50==0){
   moleLocation=(int)random(0,9);
    }
  } 
   //TOP ROW
 
    if(moleLocation==0){
      moleX=210;
      moleY=340;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==1){
      
   moleX=300;
   moleY=340;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==2){
       
   moleX=390;
   moleY=340;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }
    
    //BOTTOM ROW
    if( moleLocation==3){
     moleX=210;
     moleY=520;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==4){
      moleX=300;
     moleY=520;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==5){
      moleX=390;
     moleY=520;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }
    
    //MIDDLE ROW
    if( moleLocation==6){
     moleX=210;
     moleY=430;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==7){
     moleX=300;
     moleY=430;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }if( moleLocation==8){
      moleX=390;
     moleY=430;
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
    }
   
}

void time(){
  textAlign(CENTER);
   textSize(50);
   fill(0);
   text("Time:"+time,200,100);
  if(time>0&&frameCount%60==0){
   time=time-1;
   
  }

}
void score(){
 fill(0);
 textSize(80);
 text("Score:"+score,350,200);
}



void mouseClicked(){
  if(mouseX>=moleX-40&&mouseX<=moleX+40&&mouseY>=moleY-20&&mouseY<=moleY+240&&time>0){
    score=score+1;
    if(time<=60){
      time=time+1;
    }
      moleLocation=(int)random(0,9);
  }
 
}

void gameOver(){
  if(time==0){
    fill(255);
    textSize(100);
    text("Game Over press any key to restart", 300,300);
      if(keyPressed){
        setup();
      }
  
}
}
