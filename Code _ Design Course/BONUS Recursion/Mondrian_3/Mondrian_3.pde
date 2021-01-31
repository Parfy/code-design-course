//int n = 2;  //Number of recursive steps
float p = 0.7; //Probability the block will not be filled
int padding = 50; //Padding width
color bk = color(220); //Background colour
color fg1 = color(0,162,217,200); //Stroke and fill colour
color fg2 = color(255,222,75,180); //Stroke and fill colour


void setup() {
  size(600, 720);
  //fullScreen();
  background(bk);
  noLoop();
}

void draw() {
  background(bk);
  rec(padding, padding, width - padding, height - padding, 4, fg1, 3);
  rec(padding, padding, width - padding, height - padding, 3, fg2, 3);
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
  void rec(int x0, int y0, int x1, int y1, int n, color c, float sw) {
    if (n == 0) {
      if (random(1)>p) {
        fill(c);
      } else {
        noFill();
      }
      stroke(c);
      strokeWeight(sw);
      rect (x0, y0, x1-x0, y1-y0, 15);
    } else {
      //Recursive step -- recursively break the current rectangle into 4 new random rectangles
      int i = int(random(x0, x1)); //Pick a random x coordinate inside the current rectangle
      int j = int(random(y0, y1)); //Pick a random y coordinate inside the current rectangle
      rec(x0, y0, i, j, n-1, c, sw); // Recurse on upper left rectangle
      rec(i, y0, x1, j, n-1, c, sw); // Recurse on upper right rectangle
      rec(x0, j, i, y1, n-1, c, sw); // Recurse on lower left rectangle
      rec(i, j, x1, y1, n-1, c, sw); // Recurse on lower right rectangle
    }
  }
