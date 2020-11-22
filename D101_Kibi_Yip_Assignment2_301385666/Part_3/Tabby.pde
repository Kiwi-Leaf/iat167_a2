class Tabby extends Cat{
  int health;
  color gray= color(155,153,148);
  color darkGray=color(89,87,85);
  color dark=color(79,71,63);
  Tabby(int x,int y,int speed){
    super(x,y,speed);
    health=9;
  }
  void update(){
    super.update();

  }
void isClicked(){
  if (mousePressed &&dist(mouseX,mouseY, x, y)<catBodySize/2&&health>=1){
    health-=1;
  }
  else if((mousePressed &&dist(mouseX,mouseY, x, y)<catBodySize/2)&&health==0){
    score.score+=1;
    health--;
    clickDetect=true;
  }
}

void edgeDetect(){
  if ((x<0-40&&clickDetect==false)||x>width+40) speed*=-1;
  else if (x<0&&clickDetect==true) removeCat=true;
}
void move(){
    x+=speed;
    if (clickDetect==true&&speed>0){
      x-=speed*2.5;
    }
    else if(clickDetect==true&&speed<0){
      x+=speed*1.5;
    }
    
  }
void drawCat(){
    
  legAngle+=legRate;
  if (legAngle<=-1||legAngle>=1) legRate*=-1;
  
  tailAngle+=tailRate;
  if (tailAngle<=-0.5||tailAngle>=0.5) tailRate*=-1;
    pushMatrix();
    translate(x,y);
    scale(0.8);
    if (speed<0||clickDetect==true){
      scale(-1,1);
    }
    else scale(1,1);
    fill(gray);
    //stroke(0);
    noStroke();
    
    //tail
     pushMatrix();
    translate(catBodySize/-2,catBodySizeH/-10);
    rotate(tailAngle);
    ellipse(0,catBodySizeH/-3,catBodySize/20,catBodySizeH);
    fill(darkGray);
    ellipse(0,0,catBodySize/20,10);
    ellipse(0,-16,catBodySize/20,10);
    ellipse(0,-32,catBodySize/20,10);
    
    popMatrix();
    
    //legs,b1
    pushMatrix();
    translate(catBodySize/-3,catBodySizeH/2);
    rotate(legAngle);
    fill(gray);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    fill(darkGray);
    ellipse(0,0,catBodySize/8,5);
    ellipse(0,catBodySizeH/5,catBodySize/8,5);
    ellipse(0,catBodySizeH/2.5,catBodySize/8,5);
    popMatrix();
    //leg,b2
    pushMatrix();
    translate(catBodySize/-4,catBodySizeH/2);
    rotate(-legAngle);
    fill(gray);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    fill(darkGray);
    ellipse(0,0,catBodySize/8,5);
    ellipse(0,catBodySizeH/5,catBodySize/8,5);
    ellipse(0,catBodySizeH/2.5,catBodySize/8,5);
    popMatrix();
    //leg,f1
    pushMatrix();
    translate(catBodySize/3,catBodySizeH/2);
    rotate(legAngle);
    fill(gray);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    fill(darkGray);
    ellipse(0,0,catBodySize/8,5);
    ellipse(0,catBodySizeH/5,catBodySize/8,5);
    ellipse(0,catBodySizeH/2.5,catBodySize/8,5);
    popMatrix();
    //leg,f2
    pushMatrix();
    translate(catBodySize/4,catBodySizeH/2);
    rotate(-legAngle);
    fill(gray);
    ellipse(0,catBodySizeH/5,catBodySize/8,catBodySize/2.5);
    fill(darkGray);
    ellipse(0,0,catBodySize/8,5);
    ellipse(0,catBodySizeH/5,catBodySize/8,5);
    ellipse(0,catBodySizeH/2.5,catBodySize/8,5);    
    popMatrix();
    
    
    
    //body
    fill(gray);
    ellipse(0,0,catBodySize,catBodySizeH);
    fill(darkGray);
    ellipse(-30,catBodySizeH/-4+6,5,catBodySizeH/2);
    ellipse(-20,catBodySizeH/-4+2,5,catBodySizeH/2);
    ellipse(-10,catBodySizeH/-4,5,catBodySizeH/2);
    ellipse(0,catBodySizeH/-4,5,catBodySizeH/2);
    ellipse(10,catBodySizeH/-4,5,catBodySizeH/2);
    ellipse(20,catBodySizeH/-4,5,catBodySizeH/2);
 
    
    
   //head
    pushMatrix();
    translate(catBodySize/2,-catBodySizeH/2);
    fill(gray);
    ellipse(0,0,catHeadW,catHeadH);
    triangle(catHeadW/-2,0,catHeadW/-1.5,catHeadH*-0.75,catHeadW/-5,catHeadH/-2);
    triangle(catHeadW/2,0,catHeadW/1.5,catHeadH*-0.75,catHeadW/5,catHeadH/-2);
    fill(darkGray);
    ellipse(0,-catHeadH/2.5,5,catHeadH/4);
    ellipse(-7,-catHeadH/2.5,5,catHeadH/4);
    ellipse(7,-catHeadH/2.5,5,catHeadH/4);
    
    ellipse(20,-catHeadH/2,5,catHeadH/4);
    ellipse(25,-catHeadH/1.8,5,catHeadH/4);
    
    ellipse(-20,-catHeadH/2,5,catHeadH/4);
    ellipse(-25,-catHeadH/1.8,5,catHeadH/4);
    //face
    stroke(dark);
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
    fill(dark);
    triangle(0,catHeadH/20,catHeadW/-10,catHeadH/-20,catHeadW/10,catHeadH/-20);   
    //mouth
    noFill();
    stroke(dark);
    strokeWeight(2);
    curve(catHeadW/8,-catHeadH/2,catHeadW/6,catHeadH/6,0,catHeadH/10,0,-catHeadH*2);
    curve(-catHeadW/8,-catHeadH/2,-catHeadW/6,catHeadH/6,0,catHeadH/10,0,-catHeadH*2);


    if (health<2){
      pushMatrix();
      scale(0.8);
      Fish fish=new Fish(0,20);
      fish.drawFish();
      popMatrix();
    }
    popMatrix();
    popMatrix();
  }
}
  
