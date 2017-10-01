class SpiroGraphCue extends Cue {
  float q=350f;
  float a,b,c,d;
  float x,y,X,Y;
  float u,v,U,V;
  float f,g;
  float ca,cb,sa,sb,qc;
  
  float fMultiplier;
  float gMultiplier;
  
  SpiroGraphCue() {
    super();
  }
  
  void setup() {
    fMultiplier = 18;
    gMultiplier = 100;
    
    a=PI;
    b=a/2;
    f=a/random(18,180);
    g=a/random(18,180);
    c=1f;
    
    background(255, 0, 0);
    noFill();
    smooth();
  }
  
  float getX() {
    return x;
  }
  
  float getY() {
    return y;
  }
  
  void init() {
    setup();
  }
  
  void draw() {
    stroke(0x15000000);
    
    qc= q-(c+=.01);
    x=q+(sb=sin(b+=g))*c;
    y=q+(cb=cos(b))*c;
    X=q-sb*qc;
    Y=q-cb*qc;
    u=q+(sa=sin(a+=f))*c;
    v=q+(ca=cos(a))*c;
    U=q-sa*qc;
    V=q-ca*qc;

    bezier(x,y,u,v,U,V,X,Y);
  }
  
  void keyPressed() {
    if (keyCode == 38){ //up
      gMultiplier += 1;
    } else if (keyCode == 40){ //down
      gMultiplier -= 1;
    } else if (keyCode == 32){
      init();
    }
  }
  
  void keyReleased() {
  }
  
}