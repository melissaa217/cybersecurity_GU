int xPos;
int yPos;
int xSpeed;
int ySpeed;

void setup(){
  size(800,800);
  background(250,182,182);
  xPos = int(random(300,700));
  yPos = int(random(0,700));
  xSpeed = int(random(2,5));
  ySpeed = int(random(2,5));
}

void draw(){
  background(250,182,182);
  line(100, 0, 100, 300);
  line(100, 500, 100, 800);
  fill(182,191,250);
  square(xPos, yPos, 100);
  xPos+=xSpeed;
  yPos+=ySpeed;
  if(xPos<=100 && yPos>300 && yPos<400){
    xSpeed=0;
    ySpeed=0;
    textSize(100);
    fill(0);
    textAlign(CENTER);
    stroke(2);
    text("yay!!!", 400, 380);
  }
  else if (!(xPos<=100 && yPos>300 && yPos<400)){
    if(xPos>=700||xPos<=100)
      xSpeed*=-1;
    if(yPos>=700||yPos<=0)
      ySpeed*=-1; 
  }
}
  
