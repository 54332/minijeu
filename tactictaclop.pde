//joueurs
PImage xImage;
PImage oImage;
char turn = 'x';
char[] occupied = {'0','0','0','0','0','0','0','0','0'};
int[] xPosition = {250, 450, 650, 250, 450, 650, 250, 450, 650};
int[] yPosition = {250, 250, 250, 450, 450, 450, 650, 650, 650}; 


void setup(){
 size(900,900); 
 xImage = loadImage("cercle.png");
 oImage = loadImage("crox.png");
}

void draw(){
 // background(0, 255, 0);
 drawGrid();
 
}

void drawGrid(){
   strokeWeight(10);
   rectMode(RIGHT);
   rect(150,150, 750,750);
   //lignes horizontales
  line(150, 350, 750, 350);
  line(150, 550, 750, 550);
  //lignes verticales
  line(350, 150, 350, 750);
  line(550, 150, 550, 750);
}

void drawIcon(){
  imageMode(CENTER); 
  image(xImage, mouseX, mouseY);
}

void mousePressed(){
  int minDist = 1000;
  int currDist;
  int minIndex;
 for(int i = 0; i < 9; i++){
   currDist = dist(xPosition[i], yPosition[i], mouseX, mouseY);
 } 
}

int dist(int x1, int y1, int x2, int y2){
  int a;
  int b;
  int c;
  a = abs(x1 - x2);
  b = abs(y1 - y2);
c = floor(sqrt(a*a + b*b));
  return c;
  }
