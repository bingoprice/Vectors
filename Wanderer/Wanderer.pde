//declare variables
float  diam;
PVector loc, vel, acc;

void setup() {
  //set size of canvas
  size(800, 600);

  //initialize variables
  loc = new PVector (width/2,height/2);
  vel = new PVector (0,0);
  diam = 80;
  acc = new PVector(.0001,.0001);
}

void draw() {
  acc = PVector.random2D();
  acc.mult(.1);



  //draw ball
 
  ellipse(loc.x, loc.y, diam, diam);
  loc.add(vel);
  vel.add(acc);
  
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