class TalkingHeadCue extends Cue {
  PImage top;
  PImage bottom;
  
  int topY;
  int topSpeed;
  int topAcc;
  
  int startX;
  int startY;
  
  int w;
  int h;
  
  TalkingHeadCue(int x, int y) {
    super();
    top = loadImage("heads/fela_top.png");
    bottom = loadImage("heads/fela_bottom.png");  
    
    startX = x;
    startY = y;
  }
  
  void setup() {
  }
  
  void init() {  
    topY = 0;
    topSpeed = 0;
    topAcc = 0;
  }
  
  void draw() {
    background(0);
    
    if (topY <= 0 && topY >= -50) {
      topY += topSpeed;
    }
    
    if (topY > 0) {
      topY = 0;
    }
    
    if (topY < -50) {
      topY = -50;
    }
    
    image(top, startX, startY + topY);
    image(bottom, startX, startY);
  }
  
  void keyPressed() {
    if (keyCode == 32){
      topSpeed = -5;
    }
  }
  
  void keyReleased() {
    if (keyCode == 32){
      topSpeed = 5;
    }
  }
   
  void mouseMoved() {
    if (mouseY < height/2) {
      topY = (mouseY - (height/2))/3;
      topSpeed = 0;
    }
    
    if (topY > 0) {
      topY = 0;
    }
    
    if (topY < -50) {
      topY = -50;
    }
  }
}