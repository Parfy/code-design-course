//libraries
import processing.pdf.*;

// Parameters
int f;

// Setup
void setup() {
  size(800, 600);
  //fullScreen();
  noLoop();
  f = 0;
}

// Draw
void draw() {
  // Your code goes below here

  
  // Your code goes above here
  endRecord();
}

// Draw again with 'n' or save a pdf with 's'
void keyPressed() { 
  if (key == 's') {
    f++;
  } else {
    if (key == 'n') { 
      beginRecord(PDF, "file"+str(f)+".pdf");
      redraw();
    }
  }
}
