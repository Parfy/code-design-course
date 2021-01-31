// Parameters
PShape logo; //Declare the PShape type here to use it later

// Setup
void setup() {
  size(800, 800);
  //fullScreen();
  
  //This will load the file as long as it's saved inside a folder called 'data' in your sketch folder
  //You can save the file somewhere else and specify the full (or relative) path if you like
  logo = loadShape("play.svg"); 
  noLoop();
}

// Draw
void draw() {
  background(255);
  shape(logo, 0, 0); //I make sure my svg content has no white space (drawn in top left) so placement is easier  
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
