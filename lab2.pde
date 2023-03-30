import processing.serial.*;

Serial inoPort;  // Create object from Serial class
String val;     // Data received from the serial port

float x_cir = 600; //<>//
float y_cir = 300;
float easing = 0.05;
int score = 0;
int count = 0;
String more = "More light";
String less = "Less light";
FloatList lista = new FloatList();

void setup() {
  size(1200, 600); //make our canvas 1200 x 600 pixels big
  background(255, 0, 0);
  delay(1000);
  String portName = Serial.list()[3]; //change the 0 to a 1 or 2 etc. to match your port
  // println(portName);
  inoPort = new Serial(this, portName, 9600);
}

void draw() {
  if ( inoPort.available() >= 0) 
  {  // If data is available:
   val = inoPort.readStringUntil('\n');         // read it and store it in val
   // background(15, 140, 100);
  } 
  if (val != null)
  {
  if (val.equals(more))
  {
  background(0);
  println(val); //print it out in the console
  } 
  else if (val.equals(less))
  {
  background(255);     // background turns color
  println(val);
  }
  }
  }
  
//  if (count == score) 
//  {
//  rita_rektangel();    // draw a rectangle at a random location on the canvas.
//  count++;
//  } 
//  else 
//  {
//  rect(lista.get(0), lista.get(2), 100, 100);
//  }

//  float targetX = mouseX;
//  float dx = targetX - x_cir;
//  x_cir += dx * easing;

//  float targetY = mouseY;
//  float dy = targetY - y_cir;
//  y_cir += dy * easing;

//  circle(x_cir, y_cir, 70);

//  if (in_rec(x_cir, y_cir, lista)) {
//    background(255, 0, 0); // red background
//    // delay(100); // wait 
//    score++;
//  }
//}

//void rita_rektangel() {
//  // generates random x and y values for the rectangle
//  // stores the x, y, and width values in the 'lista' FloatList object.
//  Float x = random(50, width-50);
//  Float y = random(50, height-50);
//  x = map(x, 0, width, 0, 1200);
//  y = map(y, 0, height, 0, 600);
//  rect(x, y, 100, 100);

//  lista.append(x);
//  lista.append(y);
//  lista.append(100.0);
//}

//boolean in_rec(float x_cir, float y_cir, FloatList listo) {
//  // checks if the circle is within the boundaries of the rectangle by comparing its position with the values stored in the lista FloatList object.
//  if (listo.get(0) < x_cir && x_cir < listo.get(0) + listo.get(2) && listo.get(1) < y_cir && y_cir < listo.get(1) + listo.get(2)) {
//    return true;
//  }
//  return false;
//}
