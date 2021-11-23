

void setup(){
    size(600,600);
    noLoop();

    //GROUND
    fill(222,184,135);
    rect(175,300,250,250);
    
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

void mousePressed() {
  redraw();
}


void draw() {
  clear();

  for (int i=0; i<200; i+=90){
    for(int j=0;j<200;j+=90){
    mole((int)random(i), (int) random(j));
  }
  }
}


void mole(int x, int y) {
  translate(x,y);
   fill(128,128,128);
   arc(210, 340, 40, 120, PI, TWO_PI);
   arc(210, 340, 40, 10, -TWO_PI,-PI);

  resetMatrix();
}
