
#include <Wire.h> //include Wire.h library

#define AD5242_J1_ADDRESS 0x2F
#define AD5242_J2_ADDRESS 0x2C
#define PCAL6416A_ADDRESS 0x20

#define AS524X_RDAC0    0x00
#define AS524X_RDAC1    0x80

byte error=0;

uint8_t i=0;

unsigned long t=0;

void setup()
{
  Wire.begin(); // Wire communication begin
  
  Serial.begin(115200); 
  while (!Serial); // Waiting for Serial Monitor

  Serial.println("i2c test code.");

  //Configure P0.0 to P0.4 and P1.0 to P1.4 as outputs
  Wire.beginTransmission(PCAL6416A_ADDRESS);
  Wire.write(0x06); //Direction Register
  Wire.write(0b11100000);  //Port 0:  1 input, 0 output
  Wire.write(0b11100000);  //Port 1:  
  //Serial.println(Wire.endTransmission());

 
}

void loop()
{

  t=millis();

  for(i=0; i<255; i++) {
  
    Wire.beginTransmission(AD5242_J1_ADDRESS);
    Wire.write(AS524X_RDAC0);
    Wire.write(i);
    error = Wire.endTransmission();
    //Serial.println(error);
    
    Wire.beginTransmission(AD5242_J1_ADDRESS);
    Wire.write(AS524X_RDAC1);
    Wire.write(i);
    error = Wire.endTransmission();
    //Serial.println(error);
      
    Wire.beginTransmission(AD5242_J2_ADDRESS);
    Wire.write(AS524X_RDAC0);
    Wire.write(i);
    error = Wire.endTransmission();
    //Serial.println(error);
    
    Wire.beginTransmission(AD5242_J2_ADDRESS);
    Wire.write(AS524X_RDAC1);
    Wire.write(i);
    error = Wire.endTransmission();
    //Serial.println(error);
  
    Wire.beginTransmission(PCAL6416A_ADDRESS);
    Wire.write(0x02); //Output Register
    Wire.write(i);  //Port 0
    Wire.write(i);  //Port 1  
    error = Wire.endTransmission();
    //Serial.println(error);

  }

  Serial.println(millis()-t);

  delay(2000); // wait 2 to increment
}
