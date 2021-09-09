int endY;
int direction;
int stepSize;

void setup() {
  size(400,400);
  endY=0;
  direction=1;
  stepSize=10;
}

void draw() {
  background(255);
  int y=0;
  strokeWeight(3);
  while(y<endY) {
    y=y+(1*stepSize);
    println(y);
    line(0,y,width,y);
  }
  endY=endY+1;
}
