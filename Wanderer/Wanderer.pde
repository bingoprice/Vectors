//declare variables
float  diam;
PVector loc = new PVector(width,height);
PVector vel = new PVector(random(-5,5),random(-5,5));

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  diam = 80;
  vel.x = random(-5, 5);
  vel.y= random(-5, 5);
}

void draw() {
  
  //draw background to cover previous frame
  background(0);

  //draw ball
  ellipse(loc.x, loc.y, diam, diam);
  loc.add(vel);
  //add velocity to position
  loc.x += vel.x;
  loc.y += vel.y;

  //wrap the ball's position
  if (loc.x  >= width) {
    loc.x = 0;     
  } else if (loc.x <= 0) {
    loc.x = width ;
  }
  if (loc.y  >= height) {
    loc.y = 0;
  } else if (loc.y<= 0) {
    loc.y = height ;
  }
}