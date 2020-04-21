PImage hats;
PImage heads;
PImage torsos;
PImage legs;

int x1 = 0;
int x2 = 0;
int x3 = 0;
int x4 = 0;

int s = 5;

void setup() {
  size(600, 640);

  hats = loadImage("hats.png");
  heads = loadImage("heads.png");
  torsos =loadImage("torso.png");
  legs = loadImage("legs.png");
}

void draw() {
  image(hats, x1, 0, 600, 112);
  image(hats, x1-600, 0, 600, 112);

  image(heads, x2, 112, 600, 137);
  image(heads, x2+600, 112, 600, 137);


  image(torsos, x3, 249, 600, 187);
  image(torsos, x3-600, 249, 600, 187);

  image(legs, x4, 361, 600, 278);
  image(legs, x4+600, 361, 600, 278);

  x1 +=5;
  if (x1 > 600) {
    x1 = 0;
  }

  x2 -=5;
  if (x2 < -600) {
    x2 = 0;
  }

  x3 +=10;
  if (x3 > 600) {
    x3 = 0;
  }

  x4 -=10;
  if (x4 < -600) {
    x4 = 0;
  }
}