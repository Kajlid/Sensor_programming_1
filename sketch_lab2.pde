//import processing.serial.*;

//Serial inoPort;  // Create object from Serial class
//String val;     // Data received from the serial port

//void setup() {
//size(200,200); //make our canvas 200 x 200 pixels big
//String portName = Serial.list()[3]; //change the 0 to a 1 or 2 etc. to match your port
//inoPort = new Serial(this, portName, 9600);
//}

//void draw() {
//  if ( inoPort.available() > 0) 
//  //  ** If the available data is greater than 0 bytes
//  // then the code reads the data from the serial port 
//  // until it reaches a newline character **
  
//  {  // If data is available:
//  val = inoPort.readStringUntil('\n');         // read it and store it in val
//  } 
 
//if (val == "More light")
//{
//println(val); //print it out in the console
//} 
//else
//{
//println(val);
//}}
