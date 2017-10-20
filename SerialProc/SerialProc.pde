import processing.serial.*;

Serial serial;
int data;
int test;
void setup()
{
  size(300, 300);
  String portName = Serial.list()[2];
  serial = new Serial(this, portName, 9600);
  println(portName);
}

void draw(){
  background(100, 150, 250);
  
  fill(data, data, data);
  ellipse(150, 150, 200, 200);
  println(data);
}

void serialEvent(Serial p){
  data = p.read();
}
