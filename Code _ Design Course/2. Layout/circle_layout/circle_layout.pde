//Parameters
int c_elements = 10; //number of elements in circle layout
int r = 200; //circle radius
float x, y;

void setup() {
  size(800, 800);
  background(50);

  noStroke();
  fill(220);
  noLoop();
}

void draw() {

  for (float i=0; i < c_elements; i+=TWO_PI/c_elements) {

    x = r * sin(i) + width/2;
    y = r * cos(i) + height/2;

    ellipse(x, y, 20, 20);
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
