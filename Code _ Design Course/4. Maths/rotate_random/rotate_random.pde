// Parameters for grid layout
int cols = 5;
int rows = 5;
int col_width = 100;
int row_height = 100;
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
  rectMode(CENTER); //NB Had to set this to draw the squares from their centre, not their corner
  noLoop();
}

void draw(){
 
  for(int i=0; i < cols; i++){
    for(int j=0; j < rows; j++){
      //float n = noise(i,j);
      float n = 1.5;
      pushMatrix(); //Wrap you translations in pushMatrix() and popMatrix() to keep it contained
      translate(i*col_width+grid_x, j*row_height+grid_y); //Moved the x and y coordinates to here. The x and y for the RECT are now 0, 0
      int k = int(random(2)); //Pick a random int between 0 and 1
      rotate(PI/4*k); // PI/4 radians = 45 degrees. This line rotates by either 45 degrees or zero degrees
      rect(0, 0, 40*n, 40*n); //Draw the sqaure
      popMatrix(); //Close the translation
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
