// Parameters for grid layout
int cols = 3;
int rows = 4;
int col_width = 120; //Conveniently the same size as the logo file
int row_height = 120;
// Border padding
int x_pad = 100;
int y_pad = 100;
float grid_x, grid_y;

//Create an array of color types
//You can access elements via c[n] where n starts at 0
color[] c = {#006699, #8fff00, #334455, #002233};

PShape logo;

void setup(){
  size(595, 842);
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
      draw_logo(i*col_width+grid_x, j*row_height+grid_y);
    }
  }  
}

void draw_logo(float x, float y){ 
  for(int m = 0; m < 4; m++){
      pushMatrix(); //Wrap you transformations in pushMatrix() and popMatrix() to keep it contained
      translate(x, y); //Moved the x and y coordinates to here. The x and y for the RECT are now 0, 0
      int k = int(random(12)); //Pick a random int between 0 and 3
      rotate(PI/6*k); // PI/4 radians = 45 degrees. This line rotates by either 45 degrees or zero degrees
      fill(c[int(random(c.length))], 200); //Selects a random element in the c array
      shape(logo, 0, 0, 50, 50); //Draw the logo at it's current size
      popMatrix(); //Close the transformation  
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
