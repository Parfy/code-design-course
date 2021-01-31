// Parameters for grid layout
int cols = 10;
int rows = 10;
int col_width = 40;
int row_height = 40;
// Border padding
int x_pad = 100;
int y_pad = 100;
float grid_x, grid_y;

void setup(){
  size(800, 800);
  background(50);
  
  grid_x = (width - ((cols - 1) * col_width))/2;
  grid_y = (height - ((rows - 1) * row_height))/2;
  
  noStroke();
  fill(220);
  noLoop();
}

void draw(){
 
  for(int i=0; i < cols; i++){
    for(int j=0; j < rows; j++){
      float n = noise(i,j);
      fill(n*255);
      ellipse(i*col_width+grid_x, j*row_height+grid_y, 10, 10);
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
