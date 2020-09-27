int x = 0;
int y = 0;
int vitesseX = 5;
int vitesseY = 5;
int vitesse = 2;
int points = 0;

//joueur
int playerX = 0;
int playerY = 0;
int playerSpeed = 20;


void setup(){
 println(x);
 println(y);
 fullScreen();
 background(132, 0,0);
 vitesseX = vitesse;
 vitesseY = vitesse;
 
}
void draw(){
  if (points < 30){
  background(62, 50, 168);
  x += vitesseX;
  y += vitesseY;
ellipse(x, y, 100, 100); 
rect(playerX, playerY, 100, 100);
    textSize(47);
    text("points : ", 70, 50);
    text(points, 290, 50);


border();
playerover();
}
else { 
  gameOver();
    }
}
void playerover(){
  if (abs(playerX -x) < 50 && abs (playerY - y) < 50){
    x = (int) random(50, width - 50);
    y = (int) random(50, height - 50);
    points++;
    println("hit");
    fill((int)random(255), (int)random(255),(int)random(255));
    vitesse++;
    if (vitesseX <  0){
      vitesseX = -vitesse;
    }
    if (vitesseY < 0){
      vitesseY = -vitesse;
    }
    if (vitesseX > 0){
      vitesseX = +vitesse;
      }
    if (vitesseY > 0){
      vitesseY = +vitesse;
      }
  }
}
void border() {
  if (x < 0){
  vitesseX = vitesse;
}
if (x > width) {
  vitesseX = -vitesse;
}
if (y < 0){
  vitesseY = vitesse;
}
if (y > height){
  vitesseY = -vitesse;
}
}
void gameOver(){
  
    background(0,0,0);
    fill(255,0,0);
    text("PARTIE TERMIN&",width/ 2, height / 2);
   
}

void keyPressed(){
  if (key == 'a'){
    playerX -= playerSpeed;
  }
  if (key == 'w'){
    playerY -= playerSpeed;
  }
  if (key == 's'){
  playerY += playerSpeed;
  }
  if (key == 'd'){
    playerX += playerSpeed;
    }
}
  
  
