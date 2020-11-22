//fish
class Fish{
  int x,y; 
  
  Fish(int x, int y){
    this.x=x;
    this.y=y;
    
  }
void drawFish(){
  color fish= color(97,200,226);
   int fishLength= (800/5);
   int fishHeight=(520/10);
pushMatrix();
  translate(x,y);
  scale(0.5);
  fill(fish);
  stroke(0);
  strokeWeight(3);
  strokeCap(ROUND);
  curve(fishLength/-2,fishHeight*2,fishLength/-10,fishHeight/-2,fishLength/3,fishHeight/-3,fishLength/8,fishHeight*2);
  noStroke();
  triangle(fishLength/2-10,0,fishLength/2+fishLength/4,fishHeight/2,fishLength/2+fishLength/4,-fishHeight/2);
  ellipse(0,0,fishLength,fishHeight);

  
  //line
  stroke(0);
  strokeWeight(3);
  strokeCap(ROUND);
  curve(fishLength/-5,fishHeight*5,fishLength/-2,0,fishLength/2,fishHeight/-10,fishLength*2,fishHeight*5);
  curve(fishLength/-3,fishHeight*-4,fishLength/-2,0,fishLength/2,fishHeight/10,fishLength*2,fishHeight*-4);
  line(fishLength/2,fishHeight/-10,fishLength/2+fishLength/4,-fishHeight/2);
  line(fishLength/2+fishLength/4,-fishHeight/2,fishLength/2+fishLength/4,fishHeight/2);
  line(fishLength/2+fishLength/4,fishHeight/2,fishLength/2,fishHeight/10);
  curve(fishLength/-2,fishHeight/-2,fishLength/-20,fishHeight/-2,fishLength/-20,fishHeight/4,fishLength/-4,fishHeight/3);
  curve(-fishLength*1.5,-fishHeight/2,fishLength/10,fishHeight/-10,fishLength/10,fishHeight/-3,-fishLength,fishHeight/2);
  line(fishLength/-2,0,fishLength/-2.5,fishHeight/-10);
  
  //eye
  noStroke();
  fill(255);
  ellipse(fishLength/-4,fishHeight/-2.5,fishLength/4,fishHeight/3);
  //iris
  fill(0);
  ellipse(fishLength/-4,fishHeight/-2.5-4,fishLength/6,fishHeight/5);
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse(fishLength/-4,fishHeight/-2.5,fishLength/4,fishHeight/3);


  popMatrix();
}
}
