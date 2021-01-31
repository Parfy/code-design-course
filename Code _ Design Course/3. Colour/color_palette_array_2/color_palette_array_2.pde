//Parameters
int n = 20;
float x, y, r;

//Create an array of color types
//You can access elements via c[n] where n starts at 0
color[] c = {#006699, #8fff00, #8fff00, #334455, #002233};

void setup() {
  size(800, 800);
  background(50);
  noLoop();
}

void draw() {
  background(50);
  for (float i=0; i < n; i++) {

    x = random(width);
    y = random(height);
    r = random(50, 200);
  
    fill(c[int(random(c.length))]); //Selects a random element in the c array
    
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
