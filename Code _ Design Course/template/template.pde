// Parameters

// Setup
void setup() {
  size(800, 600);
  //fullScreen();
  noLoop();
}

// Draw
void draw() {

}

// Draw again with 'n' or save a png with 's'
void keyPressed() { 
  if (key == 's') {
    saveFrame("Frame-######.png");
  } else {
    if (key == 'n') { 
      redraw();
    }
  }
}
