//joueurs
PImage xImage;
PImage oImage;
char turn = 'x';
char[] occupied = {'0','0','0','0','0','0','0','0','0'};
int[] xPosition = {250, 450, 650, 250, 450, 650, 250, 450, 650};
int[] yPosition = {250, 250, 250, 450, 450, 450, 650, 650, 650}; 


void setup(){
 size(900,900); 
 
 xImage = loadImage("crox.png");
 oImage = loadImage("cercle.png");
 imageMode(CENTER);
 
 background(0, 255, 0);
  drawGrid();
}

void draw(){
 
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

void drawIcon(int x, int y, int index){
if(occupied[index] == '0'){
if (turn == 'x'){
image(xImage, x, y);
  turn = 'o';
  occupied[index] = 'x';
   }
else {
   image(oImage, x, y);
   turn ='x';
   occupied[index] = 'o';
   }
  }
}
void mousePressed(){
  int minDist = 1000;
  int currDist;
  int minIndex = -1;
 for(int i = 0; i < 9; i++){
   currDist = dist(xPosition[i], yPosition[i], mouseX, mouseY);
  if(currDist < minDist){
    minDist = currDist;
    minIndex = i;
   }
 }
 drawIcon(xPosition[minIndex], yPosition[minIndex], minIndex);
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
  
  void checkWin(char symbol){
    /*il existe 8 victoires possible au tic tac toe
    [0, 1, 2]
    [3, 4, 5]
    [6, 7, 8]
    
    [0, 3, 6]
    [1, 4, 7]
    [2, 5, 8]
    
    [0, 4, 8]
    [2, 4, 6]
    */
  }
