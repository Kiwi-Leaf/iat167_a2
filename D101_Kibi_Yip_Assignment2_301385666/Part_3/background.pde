
void drawBackground(){
color sky1= color(73,47,122);
color sky2= color(92,45,122);
color sky3= color(117,42,120);
color sky4= color(153,36,118);
color sky5= color(173,33,117);
color midground = color(60,78,101);
color bgBBuilding= color(134,147,157);
color bgFBuilding= color(110,121,130);
color mgSkyP = color (247,109,194,20);
color sign= color(50,51,54);
color neon= color(11,189,199,150);


  
  noStroke();
  pushMatrix();
  translate(0,-200);
   //skycolour
  fill(sky1);
  rect(0,50,800,50);
  fill(sky2);
  rect(0,100,800,50);
  fill(sky3);
  rect(0,150,800,50);
  fill(sky4);
  rect(0,200,800,50);
  fill(sky5);
  rect(0,250,800,50);
  
  //BG_back building(L to R)
  fill(bgBBuilding);
  rect(200,100,50,200);
  rect(290,30,80,300);
  rect(405,65,60,300);
  rect(500,70,60,300);
  rect(600,40,70,300);
  
  
  //BG_front building(L to R)
  fill(bgFBuilding);
  rect(100,40,100,300);
  rect(250,65,50,300);
  rect(320,50,80,300);
  rect(420,90,70,300);
  rect(550,60,80,300);
  rect(660,50,75,300);

  fill(mgSkyP);
  
  rect(0,0,800,800);
  rect(0,50,800,800);
  rect(0,100,800,800);
  rect(0,150,800,800);
  rect(0,200,800,800);
  rect(0,250,800,800);
  
  
  //midground
  fill(midground);
  rect(0,300,800,1000);
  
  fill(sign);
  rect(490,210,300,80);
  
  noFill();
  stroke(neon);
  strokeWeight(7);
  rect(495,215,290,70);
  stroke(255);
  strokeWeight(2);
  rect(495,215,290,70);
popMatrix();
}
