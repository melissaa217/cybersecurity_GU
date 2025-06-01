int screen;
int [] total = new int [12];
int e;
int s;
int t;
int j;

void setup(){
  size(800, 600);
  screen = 1;
}

void draw(){
  background(106, 126, 245);
  if (screen==1){
    startScreen();
  }
  if (screen==2){
    infoScreen();
  }
  if (screen==3){
    qScreen(screen);
    textSize(40);
    text("You like going to parties.", 400, 200);
  }
  if (screen==4){
    qScreen(screen);
    textSize(40);
    text("You have a lot of friends.", 400, 200);
  }
  if (screen==5){
    qScreen(screen);
    textSize(40);
    text("You are very talkative.", 400, 200);
  }
  if (screen==6){
    qScreen(screen);
    textSize(40);
    text("You are not willing to take a risk for things.", 400, 200);
  }
  if (screen==7){
    qScreen(screen);
    textSize(40);
    text("You are more likely to focus on details of things.", 400, 200);
  }
  if (screen==8){
    qScreen(screen);
    textSize(40);
    text("You like to think about things realistically.", 400, 200);
  }
  if (screen==9){
    qScreen(screen);
    textSize(40);
    text("You are not controlled by your feelings.", 400, 200);
  }
  if (screen==10){
    qScreen(screen);
    textSize(40);
    text("You like to think more than feel.", 400, 200);
  }
  if (screen==11){
    qScreen(screen);
    textSize(40);
    text("You take things logically than emotionally.", 400, 200);
  }
  if (screen==12){
    qScreen(screen);
    textSize(40);
    text("You are very organized.", 400, 200);
  }
  if (screen==13){
    qScreen(screen);
    textSize(40);
    text("You have a clear plan for your future.", 400, 200);
  }
  if (screen==14){
    qScreen(screen);
    textSize(40);
    text("You know your strengths and weaknesses.", 400, 200);
  }
  if(screen==15){
    resultScreen(total);
  }
}

void mousePressed(){
  if(screen==1){
    if((dist(mouseX, mouseY, 350, 450)<25)||(dist(mouseX, mouseY, 450, 450)<25)||(mouseX>=350&&mouseX<=450&&mouseY>=425&&mouseY<=475))
      screen=3;
    if(dist(mouseX, mouseY, 550, 450)<25)
      screen=2;
  }
  if(screen==2){
    if((dist(mouseX, mouseY, 350, 450)<25)||(dist(mouseX, mouseY, 450, 450)<25)||(mouseX>=350&&mouseX<=450&&mouseY>=425&&mouseY<=475))
      screen=3;
  }
  if(screen>=3&&screen<=14){
    int a = screen - 3;
    if((dist(mouseX, mouseY, 250, 350)<50)){
      total[a]=1;
      screen++;
    }
    if((dist(mouseX, mouseY, 400, 350)<50)){
      total[a]=2;
      screen++;
    }
    if((dist(mouseX, mouseY, 550, 350)<50)){
      total[a]=3;
      screen++;
    }
  }
} 

void keyPressed(){
  if(screen==15){
    screen=3;
    for (int i = 0; i<total.length; i++){
      total[i]=0;
    }
  }
}

void startScreen(){
  textAlign(CENTER);
  textSize(88);
  fill(0);
  strokeWeight(3);
  text("MBTI Test", 400, 150);
  textSize(30);
  strokeWeight(1);
  text("(12 questions)", 400, 200);
  textSize(35);
  text("Only takes 2 minutes!", 400, 260);
  text("maybe not so accurate", 400, 295);
  text("but definitely very fast", 400, 330);
  startButton();
  infoButton();
}

void startButton(){
  textSize(35);
  strokeWeight(2);
  stroke(0);
  fill(245, 106, 139);
  circle(350, 450, 50);
  circle(450, 450, 50);
  noStroke();
  rect(350, 425, 100, 50);
  strokeWeight(2);
  stroke(0);
  line(350, 425, 450, 425);
  line(350, 475, 450, 475);
  fill(0);
  text("start", 400, 460);
}

void infoButton(){
  textSize(35);
  strokeWeight(2);
  fill(245, 106, 139);
  circle(550, 450, 50);
  fill(0);
  text("i", 550, 460);
}

void infoScreen(){
  textSize(40);
  stroke(0);
  text("Information & Instructions", 400, 150);
  textSize(30);
  text("This MBTI test will give you 12 statements in total", 400, 230);
  text("For each question", 400, 260);
  text("you will get to choose one number from 1 - 3", 400, 290);
  text("With 1 being most unlike you and 3 being most like you", 400, 320);
  text("After you are done making all of your choices", 400, 350);
  text("The screen will give you the final result", 400, 380);
  text("of your MBTI", 400, 410);
  startButton();
}

void qScreen(int number){
  fill(245, 106, 139);
  noStroke();
  rect(0, 0, 150, 80);
  strokeWeight(2);
  stroke(0);
  circle(250, 350, 100);
  circle(400, 350, 100);
  circle(550, 350, 100);
  fill(0);
  strokeWeight(5);
  text("1", 250, 365);
  text("2", 400, 365);
  text("3", 550, 365);
  textSize(70);
  textAlign(CENTER);
  fill(0);
  text("Q"+ (number-2), 75, 60);
}

void resultScreen(int [] temp){
  fill(245, 106, 139);
  rect(200, 250, 400, 80);
  fill(0);
  textSize(50);
  text("Your MBTI is:", 400, 200);
  textSize(30);
  text("You may press any key to try again.", 400, 500);
  e = 0;
  s = 0;
  t = 0;
  j = 0;
  for(int b = 0; b < temp.length; b++){
    if(b<3)
      e=e+temp[b];
    else if (b<6)
      s=s+temp[b];
    else if (b<9)
      t=t+temp[b];
    else
      j=j+temp[b];
  }
  textSize(40);
  if (e>=6)
    text("E", 250, 300);
  else
    text("I", 250, 300);
  if (s>=6)
    text("S", 350, 300);
  else
    text("N", 350, 300);
  if (t>=6)
    text("T", 450, 300);
  else
    text("F", 450, 300);
  if (j>=6)
    text("J", 550, 300);
  else
    text("P", 550, 300);
}
