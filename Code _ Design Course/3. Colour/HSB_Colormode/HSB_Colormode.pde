//Parameters
int n = 20;
float x, y, r;

void setup() {
  size(800, 800);
  
  colorMode(HSB); 
  
  background(50);
  noLoop();
}

void draw() {

  for (float i=0; i < n; i++) {

    x = random(width);
    y = random(height);
    r = random(50, 200);

    fill(200, 150, 80, 200); //Takes parameters for hue (max 360), saturation (max 100) and brightness (max 100), with an optional alpha (max 100)
    stroke(0); //Setting the stroke colour. 
    strokeWeight(10); //Sets pixel width of shape strokes. Use noStroke() for zero stroke width

    ellipse(x, y, r, r);
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
