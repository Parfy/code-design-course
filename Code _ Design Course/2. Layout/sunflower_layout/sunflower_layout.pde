//Parameters
int c_elements = 200; //number of elements in circle layout
float r = 0; 
float x, y, n;
int c = 20;

void setup() {
  size(800, 800);
  background(50);

  noStroke();
  fill(220);
  noLoop();
}

void draw() {

  for (float i=0; i < c_elements; i++) {

    float a = radians(n * 137.5);
    r = c * sqrt(n);
    x = r * sin(a) + width/2;
    y = r * cos(a) + height/2;

    ellipse(x, y, 4, 4);
    n++;
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
