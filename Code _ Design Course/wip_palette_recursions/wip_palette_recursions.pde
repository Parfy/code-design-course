float sz, theta, ns, sw;
color[] palette = {
  #E08E79, #F1D4AF, #ECE5CE, #C5E0DC
};
 
void setup() {
  size(800, 600);
  background(#774F38);
  noFill();
  rectMode(CENTER);
  sw = 20;
  sz = width/3;
  ns = random(10);
  drawRect(width/2, height/2, sz, 4);
}
 
void drawRect(float x, float y, float sz, int num) {
  float nx, ny, nsz, cn;
  int nn;
  strokeWeight(sw);
  println(sw);
  fill(255, 50);
  stroke(palette[int(random(palette.length))], 200);
  //rect(x, y, sz, sz, sz/5 );
  ellipse(x, y, sz, sz);
  sw = 2;
  if (num > 0) {
    nn = num-1;
    nx = x;
    ny = y-sz/2;
    drawRect(nx, ny, sz/2, nn);
    nx = x +sz/2;
    ny = y ;
    drawRect(nx, ny, sz/2, nn);
    nx = x;
    ny = y +sz/2;
    drawRect(nx, ny, sz/2, nn);
    nx = x-sz/2;
    ny = y;
    drawRect(nx, ny, sz/2, nn);
  }
}
 
void draw() {
}
