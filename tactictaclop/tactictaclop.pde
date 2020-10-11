//joueurs
PImage xImage;
PImage oImage;
char symbol = 'x';



void setup(){
 size(900,900); 
}

void draw(){
  background(0, 255, 0);
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
