int x = 0;
int y = 0;
int vitesseX = 5;
int vitesseY = 5;
int vitesse = 2;


void setup(){
 println(x);
 println(y);
 fullScreen();
 background(132, 0,0);
 vitesseX = vitesse;
 vitesseY = vitesse;
 
}
void draw(){
  background(132, 0,0);
  x += vitesseX;
  y += vitesseY;
ellipse(x, y, 100, 100); 

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
void mousePressed(){
  if (abs(mouseX -x) < 50 && abs (mouseY - y) < 50){
    println("hit");
    fill((int)random(255), (int)random(255));
    vitesse++;
}
}
