// Parameters 
int items = 2000;

void setup() {
  size(600, 600);
  background(50);

  noStroke();
  fill(220, 100);
  noLoop();
}

void draw() {

  for (int i=0; i < items; i++) {      
    float n = randomGaussian();
    float m = randomGaussian();
    float x = 300 + n*50;
    float y = 300 + m*100;
    ellipse(x, y, 10, 10);
  }
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
