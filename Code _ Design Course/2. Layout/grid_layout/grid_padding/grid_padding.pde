// Parameters for grid layout
int cols = 5;
int rows= 5;
//int col_width = 40; //Not required because we will calculate these later in setup()
//int row_height = 40; //Not required because we will calculate these later in setup()
// Border padding
int x_pad = 200;
int y_pad = 200;
//float grid_x, grid_y;
float col_width, row_height;

void setup(){
  size(800, 800);
  background(50);
  
  col_width = (width - 2*x_pad)/(cols - 1);
  row_height = (height - 2*y_pad)/(rows - 1);
  
  noStroke();
  fill(220);
  noLoop();
}

void draw(){
 
  for(int i=0; i < cols; i++){
    for(int j=0; j < rows; j++){
      ellipse(i*col_width+x_pad, j*row_height+y_pad, 10, 10);
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
