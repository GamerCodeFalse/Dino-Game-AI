class Dino{
    float y = 0;
    float size = 50;
    float vel = 0;
    float gravity = 0.6;
    float x = 50;
    float hres = 45;
  Dino(){
  }
  void update(){
     y += vel;
    if (y >0) {
      vel -= gravity;
    } else {
      vel = 0;
      y = 0;
    }
  }
  void show(){
    fill(0);
    image(Dinoimg,x,height - 100 - (y+size)-17,size+25,size*2-hres+25);
  }
  boolean endgame(){
    return true;
  }
}
