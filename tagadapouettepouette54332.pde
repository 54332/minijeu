//VARIABLES JOUEUR
int playerX;
int playerY;
int playerSpeed;
int playerSize;
PImage avatar;
PImage pizza;
int pizzaX;
int pizzaY;

void setup(){
  avatar = loadImage("bonnoml54332.png");
  playerSize = 32;
  avatar.resize(playerSize, playerSize);
  pizza = loadImage("pizza3.png");
  pizzaX = 10 + (int) random(width-50);
  pizzaY = 10 + (int) random(height-50);
  pizza.resize(50,50);
 fullScreen();
 imageMode(CENTER);
}

void draw(){
  background( 255, 255, 255);
  image(avatar, mouseX, mouseY);
  image(pizza, pizzaX, pizzaY);
  collision();
}

void collision(){
  if((abs(mouseX - pizzaX)) < (playerSize/2 + 16)
  && abs (mouseY - pizzaY) < (playerSize/2 + 16)){
  pizzaX = (int) random(width);
  pizzaY = (int) random(width);playerSize += 10;
  avatar.resize(playerSize, playerSize);
}
}
