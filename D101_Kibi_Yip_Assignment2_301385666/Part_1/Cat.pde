class Cat{
  int x,y,xSpeed,ySpeed;
  float legAngle=0;
  float legRate=0.1;
  float tailAngle=0;
  float tailRate=0.01;
  float catBodySize=80;
  float catBodySizeH=40;
  float catHeadW=50;
  float catHeadH=40;

  


  
  Cat(){
  x=(int)random(0,800);
  y=(int)random(0,600);
  xSpeed=4;
  ySpeed=4;
  }
  void update(){
    drawCat();
    move();
    //edgeDetect();
    
    
  }
void move(){
  
 //if (clickDetect ==true) x-=speed*1.5;
 if (x<0 ||x>width) xSpeed*=-1;
  x+=xSpeed;
 if (y<0||y>height)ySpeed*=-1;
 y+=ySpeed;
}

//void edgeDetect(){
//  if (x<0) removeCat=true;
//  else if (x>width) x=1;
//}



void drawCat(){

  
  legAngle+=legRate;
  if (legAngle<=-1||legAngle>=1) legRate*=-1;
  
  tailAngle+=tailRate;
  if (tailAngle<=-0.5||tailAngle>=0.5) tailRate*=-1;
    pushMatrix();
    translate(x,y);
    scale(0.8);
    if (xSpeed<0){
      scale(-1,1);
    }
    fill(0);
    stroke(0);
    
    
    //tail
     pushMatrix();
    translate(catBodySize/-2,catBodySizeH/-10);
    rotate(tailAngle);
    ellipse(0,catBodySizeH/-3,catBodySize/20,catBodySizeH);
    popMatrix();
    
    //legs,b1
    pushMatrix();
    translate(catBodySize/-3,catBodySizeH/2);
    rotate(legAngle);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    popMatrix();
    //leg,b2
    pushMatrix();
    translate(catBodySize/-4,catBodySizeH/2);
    rotate(-legAngle);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    popMatrix();
    //leg,f1
    pushMatrix();
    translate(catBodySize/3,catBodySizeH/2);
    rotate(legAngle);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    popMatrix();
    //leg,f2
    
    pushMatrix();
    translate(catBodySize/4,catBodySizeH/2);
    rotate(-legAngle);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    popMatrix();
    
    
    
    //body
    ellipse(0,0,catBodySize,catBodySizeH);
    
 
    
    
   //head
    pushMatrix();
    translate(catBodySize/2,-catBodySizeH/2);
    ellipse(0,0,catHeadW,catHeadH);
    triangle(catHeadW/-2,0,catHeadW/-1.5,catHeadH*-0.75,catHeadW/-5,catHeadH/-2);
    triangle(catHeadW/2,0,catHeadW/1.5,catHeadH*-0.75,catHeadW/5,catHeadH/-2);
    
    //face
    stroke(255);
    strokeWeight(7);
    //eyes
    point(catHeadW/-4.5,catHeadH/-6);
    point(catHeadW/4.5,catHeadH/-6);
    
    
    strokeWeight(2);
    line(catHeadW/-2.5,0,catHeadW/-1.5,0);
    line(catHeadW/2.5,0,catHeadW/1.5,0);
    line(catHeadW/-2.5,catHeadH/9,catHeadW/-1.5,catHeadH/10);
    line(catHeadW/2.5,catHeadH/9,catHeadW/1.5,catHeadH/10);
    line(catHeadW/-2.5,catHeadH/6,catHeadW/-1.5,catHeadH/5.5);
    line(catHeadW/2.5,catHeadH/6,catHeadW/1.5,catHeadH/5.5);
    
    //nose
    noStroke();
    fill(255,149,229);
    triangle(0,catHeadH/20,catHeadW/-10,catHeadH/-20,catHeadW/10,catHeadH/-20);

    popMatrix();
    popMatrix();
  }
}
