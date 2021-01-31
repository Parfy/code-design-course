//Parameters
int n = 20;
float x, y, r;
color c;

void setup() {
  size(800, 800);
  
  colorMode(RGB); 
  
  background(50);
  noLoop();
}

void draw() {

  for (float i=0; i < n; i++) {

    x = random(width);
    y = random(height);
    r = random(50, 200);
  
    c = color(200, 150, 0, 200);
    c = #006699; // Set hex codes like this (don't wrap in color function, don't use quotes)


    fill(c); //Takes parameters for hue (max 360), saturation (max 100) and brightness (max 100), with an optional alpha
    
    ellipse(x, y, r, r);
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
