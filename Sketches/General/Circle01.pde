/*
 *  Draw a Circle with a point
 *
 *  It uses simple function: a + sin(b) * c.
 *  a - center of the wave;
 *  b - location (angle) within the wave;
 *  c - size of the wave.
 *
 *  @note The angle is in radians. (360rad = 2PI, 180rad = PI, 90rad = PI/2)
*/

// Setup variables
float circleSize = 200;

// Variables for calculation
PVector canvasCenterLoc;  // Empty vector for Canvas center. Assign after init Canvas size.
float delta = 0;          // Delta between frames.

void setup(){
  size(1000,1000);                                   // Size of Canvas
  background(30);                                    // Color of Canvas.
  canvasCenterLoc = new PVector(width/2, height/2);  // Get center location of Canvas.
}

void draw() {
  stroke(255);  // Color of Point.
  
  float xFunction = sin(delta);  // X axis function agains delta.
  float yFunction = cos(delta);  // Y axis function agains delta.
  
  
  PVector pointLoc = new PVector(0,0);                      // Point vector.
  pointLoc.x = xFunction * circleSize + canvasCenterLoc.x;  // Get Point X location. Sin(delta) * Size + Offset.
  pointLoc.y = yFunction * circleSize + canvasCenterLoc.y;  // Get Point Y location. Cos(delta) * Size + Offset.
  point( pointLoc.x, pointLoc.y);                           // Draw a Point.
  
  delta += 0.01;  // Update delta. Animation speed.
  
  printScreen();
}

void printScreen(){
  if(keyPressed && key =='s'){
     saveFrame("Screenshot-####.png"); 
  }
}
