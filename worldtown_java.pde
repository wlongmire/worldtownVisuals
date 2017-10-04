import java.util.HashMap;

HashMap<Character, Cue> cues = new HashMap<Character, Cue>();
Cue curCue = null;

void setup() {
  cues.put('1', new HoopsCue());
  cues.put('2', new MandallaCue());
  //cues.put('3', new CrazyCurlsCue());
  cues.put('3', new StarSystemCue());
  cues.put('4', new TalkingHeadCue(-120, 50));
  cues.put('5', new GifSequenceCue("animations/torus/frame_", 0, 0, width, height, 36));
  cues.put('6', new ImageCue("image1.png", 0, 0, width, height));
  
  //set initial cue
  curCue = cues.get('1');
  curCue.init();
  
  size(800, 800);
  frameRate(1000);
}

void draw() {
  if (curCue != null){
    curCue.draw();
  }
}

void keyPressed() {
  if (cues.get(key) != null){
    curCue = cues.get(key);
    curCue.init();
  }
  
  if (curCue != null)
    curCue.keyPressed();
}

void keyReleased() {
  if (curCue != null)
    curCue.keyReleased();
}

void mouseMoved() {
  if (curCue != null)
    curCue.mouseMoved();
}

void mouseReleased() {
  if (curCue != null)
    curCue.mouseReleased();
}