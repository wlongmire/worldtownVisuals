class ImageCue extends Cue {
  String filename;
  int x, y, w, h;
  
  PImage image;
  
  ImageCue(String ifilename, int ix, int iy, int ih, int iw) {
    super();
    
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    
    filename = ifilename;
    
    setup();
  }
  
  void setup() {
    image = loadImage(filename);
  }
  
  void draw() {
    background(255);
    image(image, x, y, w, h);
  }
  
  String getFilename() {
    return filename;
  }
  
  PImage getImage() {
    return image;
  }
  
  int getX() {
    return x;
  }
  
  int getY() {
    return y;
  }
  
  void keyPressed() {
  }
  
  void keyReleased() {
  }
}