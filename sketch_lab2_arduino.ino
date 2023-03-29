const int ldr = A0;

void setup() {
// Initializing serial communication at a 9600 baud rate
 
pinMode(ldr, INPUT);

Serial.begin(9600);
}

void loop()
{
//send a message
if (analogRead(ldr) >= 70){
Serial.println(analogRead(ldr));
Serial.println("More light");
}
else {
Serial.println(analogRead(ldr));
Serial.println("Less light");
}

//wait 1 second
delay(1000);
}
