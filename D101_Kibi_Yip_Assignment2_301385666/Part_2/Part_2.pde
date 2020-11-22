void setup(){
  size(800,600);
    for (int i=0;i<6;i++){
    cats.add(new Cat());
  }
}
ArrayList <Cat> cats= new ArrayList<Cat>();

void draw(){
  background(250);
  for (int i=0;i<cats.size();i++){
    Cat cat1= cats.get(i);
    cat1.update();
  }
  
}
