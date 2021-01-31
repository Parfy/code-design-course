

void setup(){
  size(400,400); //sets the canvas size in pixels (width, height)
}

void draw(){
  
  background(225); //sets the background colour each frame 
  stroke(255,255,0); //sets the shape stroke colour
  fill(255,0,200); //sets the shape fill colour
  
  // ellipse(mouseX, mouseY, 50, 50); //draws an ellipse at the live mouse position with radius 50 pixels
  // rect(mouseX, mouseY, 200, 100); //draws a rectangle with top corner at mouse position, width 200 and height 100 
  // line(mouseX, mouseY, 200, 100); //draws a line from mouse position to point 200, 100 <- not like the rectangle!
  // point(mouseX, mouseY); //draws a point at mouse position
  
  fill(0); //fills the next shape with colour
  text(str(mouseX)+", "+str(mouseY), mouseX, mouseY); //draws text containing the mouse x and y values, at the mouse position
}
