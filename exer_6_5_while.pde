int y, endY, tmpEndY;
int direction;
int stepSize;
int speed;

void setup() {
  size(400, 400);
  endY=10;
  direction=1;
  speed=1;
  stepSize=10;
  y=0;
  tmpEndY=0;
}

void draw() {
  background(255);
  strokeWeight(3);
  
  if (endY <= width && endY >=0) {
    // sørg for at gemme endY i tempEndY inden den vokser 
    // ud over width.  
    tmpEndY=endY;
    endY=endY+((stepSize)*direction);
  } else {
    direction=direction*-1;
    endY=tmpEndY;
  }
  println(" EY:" + endY + " dir: "+direction + " y: "+y);
  
  y=0;
  while (y<=endY && y>=0-stepSize) {
    y=y+(stepSize);
    //println("  -> " +y + " " + endY + " " + direction);
    line(0, y, width, y);
  }
}
