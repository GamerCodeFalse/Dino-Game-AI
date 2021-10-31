Dino dino;
PImage Dinoimg;
PImage Cactusimg;
int sy = 280;
int score;
ArrayList<smallCactus> smallcacti = new ArrayList<smallCactus>();

void setup(){
  size(800,400);
  dino = new Dino();
  smallcacti.add(new smallCactus());
  Dinoimg = loadImage("Assets/dino.png","png");
  Cactusimg = loadImage("Assets/cactus.png","png");
}
void draw(){
  background(255);
  stroke(0);
  line(0,height - 100,width,height - 100);
  for(int i = 0; i < smallcacti.size(); i++){
    smallcacti.get(i).show();
    smallcacti.get(i).move(5);
    if(smallcacti.get(i).offScreen){
      smallcacti.remove(1);
     }
     if(smallcacti.get(i).x == 650){
       actoin();
     }
    score+=1;
    if(dino.x+dino.size  == smallcacti.get(i).x && dino.y == 0){
      if(dino.endgame() == true){
        EndGameScreen();
      }
    }
    textSize(24);
    fill(225);
    text("Score: "+score,20,380);
  }
  if (frameCount % 100 == 0) {
    smallcacti.add(new smallCactus());
  }
  dino.show();
  dino.update();
}
void actoin(){
  if(dino.y == 0){
    dino.vel = 10;
  }
}
void EndGameScreen(){
  println("You lost");
  println("Your score is: "+score);
  background(255,0,0);
  textSize(128);
  text("You LOOSE!",40,220);
  textSize(36);
  text("Your score is: "+score,230,260);
  noLoop();  
}
