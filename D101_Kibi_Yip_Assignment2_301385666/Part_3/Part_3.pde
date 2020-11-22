int windowWidth= 800;
int windowHeight=520;
int speed;
color neonPink=color(247,109,194);
color neonGreen= color(0,255,159);
Score score= new Score();
  
int minCat=5;
int respwanTimer=0;
int tabbySpawnTimer=600;

ArrayList <Cat> cats= new ArrayList<Cat>();
//Tabby tabbycat= new Tabby(0,100,5,2);

void setup(){
 size(800,520); 
 PFont arailRound= loadFont("ArialRoundedMTBold-48.vlw");
 textFont(arailRound);
 
}


void draw(){
  if (score.score<=20) speed=3;
  else if (score.score<=40) speed=6;
  else speed=10;

  Fish playerFish= new Fish(mouseX,mouseY); 
 background( 60,78,101);
  drawBackground();
  score.showScore();
  respwanTimer-=1;
  tabbySpawnTimer-=1;
  
   if (cats.size()<minCat&&respwanTimer<=0){
     addNewCat();
     respwanTimer=60;
   }
   if (tabbySpawnTimer<=0){
     addTabby();
     tabbySpawnTimer=600;
   }


for (int i=0;i<cats.size();i++){  
  Cat cat1= cats.get(i);
  cat1.update();


if(cat1.removeCat==true) cats.remove(i);
}
  //tabbycat.update();
playerFish.drawFish();
}

void addNewCat(){
  int x=0;
  int y=(int)random(150,500);
  cats.add(new Cat(x,y,speed));
}
void addTabby(){
  int x=0;
  int y=(int)random(150,500);
  cats.add(new Tabby(x,y,speed));
}
