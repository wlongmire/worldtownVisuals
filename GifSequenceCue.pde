class GifSequenceCue extends Cue{
  String filename;
  int x, y, w, h, count;
  Animation anim;
  
  GifSequenceCue(String ifilename, int ix, int iy, int iw, int ih, int icount) {
    x = ix;
    y = iy;
    w = iw;
    h = ih;
    count = icount;
    filename = ifilename;
    anim = new Animation(filename, count);
  }
  
  String getFilename() {
    return filename;
  }
  
  Animation getAnim() {
    return anim;
  }
  
  int getX() {
    return x;
  }
  
  int getY() {
    return y;
  }
  
  void draw() {
    anim.display(x, y, w, h);
  }
}