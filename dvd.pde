int[] horiz = new int [2];
int[] vertic = new int [2];
int a, b;
int time;
int alturaDaElipse = 80;
int larguraDaElipse = 100;

void setup() {
  //fullScreen();
  size(800, 600);
  noStroke();
  //randomSeed(69);
  a = int(random(50, 550));
  b = int(random(50, 350));
}

void draw() {
  background(0);

  fill(#212121);
  //if (mouseX >= width-20 || mouseX <= 20 || mouseY <= 20 || mouseY >= height-20) {
  //  fill(#4B0000);
  //}
  if (millis() <= time+100) {
    fill(#4B0000);
  }
  rect(0, 0, width/20, height);
  rect(0, 0, width, height/20);
  rect(width-width/20, 0, width/20, height);
  rect(0, height-height/20, width, height/20);

  if ((horiz[0] + horiz[1]) % 2 == 0) {
    a += 5;
    if (a >= (width-width/20)-larguraDaElipse/2) {
      time = millis();
      horiz[1]++;
    }
  } else {
    a -= 5;
    if (a <= (width/20)+larguraDaElipse/2) {
      time = millis();
      horiz[0]++;
    }
  }

  if ((vertic[0] + vertic[1]) % 2 == 0) {
    b += 5;
    if (b >= (height-height/20)-alturaDaElipse/2) {
      time = millis();
      vertic[1]++;
    }
  } else {
    b -= 5;
    if (b <= (height/20)+alturaDaElipse/2) {
      time = millis();
      vertic[0]++;
    }
  }

  fill(#643232);
  ellipse(a, b, larguraDaElipse, alturaDaElipse);

  //if (frameCount == 1420) {
  //  exit();
  //}

  //saveFrame("frames/dvd####.png");
}
