
void setup() {
  size(800, 800);
  background(50);

  noStroke();
  fill(220);
  noLoop();
}

void draw() {
  fill(0, 255, 255, 100);
  sin_grid(8, 8, 60, 60, width/3-120, height/3-120, 50);
  fill(255, 0, 255, 50);
  sin_grid(12, 12, 60, 60, width/3+72, height/3+72, 60);
  fill(255, 255, 0, 200);
  sin_grid(12, 12, 60, 60, width/3+82, height/3+82, 30);
}


void sin_grid(int cols, int rows, int col_width, int row_height, int x, int y, int sz) {
  for (int i=0; i < cols; i++) {
    for (int j=0; j < rows; j++) {     
      //float s = sz * abs(sin(i+j));
      ellipse(i*col_width+x, j*row_height+y, sz, sz);
    }
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
