int x;
int y;
int xSpeed;
int ySpeed;

void setup(){
  size(500,500);
  background(250,162,229);
  x = int(random(50,450));
  y = int(random(50,450));
  xSpeed = 2;
  ySpeed = 3;
}

void draw(){
  background(250,162,229);
  fill(214,27,142);
  circleFunction();
  x+=xSpeed;
  y+=ySpeed;
  if(x>=450||x<=50)
    xSpeed*=-1;
  if(y>=450||y<=50)
    ySpeed*=-1;
}

void circleFunction(){
  circle(x, y, 100);
  fill(0);
  textSize(25);
  textAlign(CENTER);
  text("hey hey", x, y);
}
