float x_cir = 600; //<>//
float y_cir = 300;
float easing = 0.05;
int score = 0;
int count = 0;
FloatList lista = new FloatList();

void setup() {
  size(1200, 600); //make our canvas 200 x 200 pixels big
}

void draw() {
  background(400);

  if (count == score) {
    rita_rektangel();
    count++;
  }else{
  rect(lista.get(0), lista.get(2), 100, 100);
  }

  float targetX = mouseX;
  float dx = targetX - x_cir;
  x_cir += dx * easing;

  float targetY = mouseY;
  float dy = targetY - y_cir;
  y_cir += dy * easing;

  circle(x_cir, y_cir, 70);

  if (in_rec(x_cir, y_cir, lista)) {
    background(0, 0, 255); // blue background
    delay(1000); // wait for 1 second
    score++;
  }
}

void rita_rektangel() {
  Float x = random(50, width-50);
  Float y = random(50, height-50);
  x = map(x, 0, width, 0, 1200);
  y = map(y, 0, height, 0, 600);
  rect(x, y, 100, 100);

  lista.append(x);
  lista.append(y);
  lista.append(100.0);
}

boolean in_rec(float x_cir, float y_cir, FloatList listo) {
  if (listo.get(0) < x_cir && x_cir < listo.get(0) + listo.get(2) && listo.get(1) < y_cir && y_cir < listo.get(1) + listo.get(2)) {
    return true;
  }
  return false;
}
