int n = 3;  //Number of recursive steps
float p = 0.7; //Probability the block will not be filled
int padding = 70; //Padding width
color bk = color(198, 90, 78); //Background colour
color fg = color(30, 29, 35); //Stroke and fill colour

void setup() {
  size(800, 600);
  //fullScreen();
  background(bk);
  strokeWeight(2);
  stroke(fg);
  noLoop();
}

void draw() {
  background(bk);
  rec(padding, padding, width - padding, height - padding, n);
}

//Redraw on keyboard press
void keyPressed() { 
  if (key == 's') {
    saveFrame("Mond-######.png");
  } else {
    if (key == 'n') { 
      redraw();
    }
  }
}

  // Draw a Mondarian-inspired image using recursion
  void rec(int x0, int y0, int x1, int y1, int n) {
    if (n == 0) {
      if (random(1)>p) {
        fill(fg);
      } else {
        noFill();
      }
      rect (x0, y0, x1-x0, y1-y0);
    } else {
      //Recursive step -- recursively break the current rectangle into 4 new random rectangles
      int i = int(random(x0, x1)); //Pick a random x coordinate inside the current rectangle
      int j = int(random(y0, y1)); //Pick a random y coordinate inside the current rectangle
      rec(x0, y0, i, j, n-1); // Recurse on upper left rectangle
      rec(i, y0, x1, j, n-1); // Recurse on upper right rectangle
      rec(x0, j, i, y1, n-1); // Recurse on lower left rectangle
      rec(i, j, x1, y1, n-1); // Recurse on lower right rectangle
    }
  }
