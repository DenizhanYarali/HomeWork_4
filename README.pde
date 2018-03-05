# HomeWork_4

float r = 200;
float petalLen =  200;
int resolution = 100;
float theta;
float x;
float y;
float k;
float n = 6;
float d = 8;
float c = 1;

float cFac;
float circle = 0.01;
void setup() {
  size(800,800);
  k = n / d;
}


void draw() {
  background(0);
  pushMatrix();
  translate(width*0.5,height*0.5);
  noFill();
  stroke(#FFD900);
  
  cFac = cFac + circle;
  
  c = map(cFac,0,2,0,1);
  
  if(cFac > 2) {
    circle = -0.01;
  }
  
  if(cFac < 0) {
    circle = 0.01;
  }
  beginShape();
  clear();
  for(int i = 0; i < resolution*d; i++) {
    
    theta = map(i,0,resolution,0,TWO_PI);
    
    petalLen = cos(k*theta) + c;
    x = r * petalLen * cos(theta);
    y = r * petalLen * sin(theta);
    point(x,y);
    vertex(x,y);
  }
  
  
  endShape(CLOSE);
  popMatrix();
  
 
}



