class smallCactus{
  float x;
  float y;
  int w = 30;
  int h = 50;
  boolean offScreen = false;

  smallCactus(){
    x = width;
    y =  height - 100 - (h/2);
    this.x = x;
  }
  
  void show(){
    fill(0);
    rectMode(CENTER);
    image(Cactusimg,this.x,y-20,w+10,h);
  }
  
  void move(float speed){
    this.x -= speed;
    if(x > width){
      offScreen = true;
    }   
  }

}
