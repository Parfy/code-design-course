// Parameters for grid layout
int cols = 4;
int rows = 4;
int col_width = 100; //Conveniently the same size as the logo file
int row_height = 100;
// Border padding
int x_pad = 100;
int y_pad = 100;
float grid_x, grid_y;

//Create an array of color types
//You can access elements via c[n] where n starts at 0
color[] c = {#006699, #8fff00, #334455, #002233};

PShape logo;

void setup(){
  size(800, 800);
  background(220);
  
  grid_x = (width - ((cols - 1) * col_width))/2;
  grid_y = (height - ((rows - 1) * row_height))/2;
  
  logo = loadShape("untitled.svg"); //I made this 100x100px with no border for ease
  logo.disableStyle();
  
  noStroke();
  fill(220);
  shapeMode(CENTER); //Like rectMode 
  noLoop();
}

void draw(){
 
  background(220);
  for(int i=0; i < cols; i++){
    for(int j=0; j < rows; j++){
      //float n = noise(i,j);
      float n = 1.5;
      pushMatrix(); //Wrap you transformations in pushMatrix() and popMatrix() to keep it contained
      translate(i*col_width+grid_x, j*row_height+grid_y); //Moved the x and y coordinates to here. The x and y for the RECT are now 0, 0
      int k = int(random(4)); //Pick a random int between 0 and 3
      //rotate(PI/4*k); // PI/4 radians = 45 degrees. This line rotates by either 45 degrees or zero degrees
      fill(c[int(random(c.length))]); //Selects a random element in the c array
      shape(logo, 0, 0); //Draw the logo at it's current size
      popMatrix(); //Close the transformation
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
