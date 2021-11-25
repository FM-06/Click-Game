int mode=0;
int moleX;
int moleY;
int moleLocation;
int score;
int time;
int interval=60;
PImage backgroundPic;


void setup(){
 backgroundPic=loadImage("background.png");
    textSize(50);

 
  
    size(900,900);
    score=0;
    moleLocation=(int)random(0,9);
    

 
 fill(255);
   rect(height/2-175, width/2-55,375,75);
   fill(0);
   textSize(75);
  text("Whack-A-Mole",height/2-250, width/2-200);
  
  textSize(20);
  text("by Felix",height/2-10, width/2-150);
  
  textSize(50);
  text("Press To Start",height/2-150, width/2);
  fill(255);
  

  
 }
 
 void end(){
  background(255);
  fill(0);
   text("Game Over",height/2-200, width/2);
   text("Score:"+score,height/2-200, width/2+100);
 }
 
void time(){
  if(mode==1){
   time=interval-int(millis()/1000); 
    if(time == 0){
    mode=2;
    
    }
   
   text("Time:"+time, 500, 400);
  }
}


void draw() {
  //after start button pressed
  if(mode==1){
 
  image(backgroundPic,0,0);
  
 time();
 ground();
 holes();
 mole();
 score();
  }
  //when time=0
  if(mode==2){
  end();
  }
  
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
 //draw random mole positions when time is greater than 0
  if(time>0){
    fill(128,128,128);
    if(frameCount%45==0){
   moleLocation=(int)random(0,9);
    }
  } 
   //TOP ROW
 
    if(moleLocation==0){
      moleX=210;
      moleY=340;
      
 fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==1){
      
   moleX=300;
   moleY=340;
   
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==2){
       
   moleX=390;
   moleY=340;
     
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }
    
    //BOTTOM ROW
    if( moleLocation==3){
     moleX=210;
     moleY=520;
     
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==4){
      moleX=300;
     moleY=520;
     
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==5){
      moleX=390;
     moleY=520;
    
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }
    
    //MIDDLE ROW
    if( moleLocation==6){
     moleX=210;
     moleY=430;
    
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==7){
     moleX=300;
     moleY=430;
    
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }if( moleLocation==8){
      moleX=390;
     moleY=430;
   
   fill(128,128,128);
   //body
   arc(moleX, moleY, 40, 120, PI, TWO_PI);
   arc(moleX, moleY, 40, 10, -TWO_PI,-PI);
   //eyes
   fill(0);
   ellipse(moleX-7,moleY-30,8,8);
    ellipse(moleX+7,moleY-30,8,8);
    //snout
    fill(255,218,185);
    ellipse(moleX,moleY-12,15,15);
    //mouth
   fill(0);
   ellipse(moleX,moleY-15,7,7);
   
    }
    
   
   
}




void score(){
  //score
 fill(0);
 textSize(80);
 text("Score:"+score,500,200);
}



void mouseClicked(){
  //if start button is pressed
  if ( mode==0&&mouseX>=height/2-175 &&mouseX<=height/2-175+375&&mouseY>=width/2-55&&mouseY<=width/2-55+75 ){
      mode=1;
  }
  //if mole is clicked
  if(moleLocation!=9&&mouseX>=moleX-40&&mouseX<=moleX+40&&mouseY>=moleY-20&&mouseY<=moleY+240&&time>0){
    score=score+1;

    if(time<=60){
      time=time+1;
    }
      moleLocation=(int)random(0,9);
  }
  
  //was going to do bomb but would take time making it pop up in ALL the possible positions
  //else if(moleLocation==9){
  //   score=score-1;
  //    if(time<=60){
  //    time=time+1;
  //  }
  //    moleLocation=(int)random(0,9);
  //}
 
}


