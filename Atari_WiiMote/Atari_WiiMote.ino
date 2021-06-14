
#include <Wire.h> //include Wire.h library
#include <esp_types.h>

#include "ESP32Wiimote.h"
ESP32Wiimote wiimote;


#include <atomic>
using namespace std;

//i2c addresses
#define AD5242_J1_ADDRESS 0x2F
#define AD5242_J2_ADDRESS 0x2C
#define PCAL6416A_ADDRESS 0x20

//i2c commands/registers
#define AS524X_RDAC0         0x00
#define AS524X_RDAC1         0x80
#define PCAL6416A_OUTPUT_CFG 0x4F
#define PCAL6416A_DIRECTION  0x06
#define PCAL6416A_OUTPUT     0x02

byte error=0;
uint8_t i=0;
unsigned long t=0;

std::atomic<std::uint8_t> J1_btn;
std::atomic<std::uint8_t> J1_PotA;
std::atomic<std::uint8_t> J1_PotB;

std::atomic<std::uint8_t> J2_btn;
std::atomic<std::uint8_t> J2_PotA;
std::atomic<std::uint8_t> J2_PotB;


TaskHandle_t i2c_taskHandle;


//WiiMote buttons defined for vertical orientation
//Add  _H_ for horizonal orientation
#define BUTTON_H_DOWN     BUTTON_LEFT
#define BUTTON_H_UP       BUTTON_RIGHT
#define BUTTON_H_LEFT     BUTTON_UP
#define BUTTON_H_RIGHT    BUTTON_DOWN

//PCAL6416A button mapping
#define PCAL6416A_UP     0b00000001
#define PCAL6416A_DOWN   0b00000100
#define PCAL6416A_LEFT   0b00001000
#define PCAL6416A_RIGHT  0b00010000
#define PCAL6416A_TRIGR  0b00000010

void setup()
{
 J1_btn=0;
 J1_PotA=0;
 J1_PotB=0;
 J2_btn=0;
 J2_PotA=0;
 J2_PotB=0;

 
  //power up delay.
  delay(250);
  
  Wire.begin(); // Wire communication begin
  
  Serial.begin(115200); 
  //while (!Serial); // Waiting for Serial Monitor

  Serial.println("Atari WiiMote test code.");
  
  //Configure outputs as open-drain (default is push-pull)
  Wire.beginTransmission(PCAL6416A_ADDRESS);
  Wire.write(PCAL6416A_OUTPUT_CFG); 
  Wire.write(0b00000011);
  Wire.endTransmission();

  delay(100);

  //Configure P0.0 to P0.4 and P1.0 to P1.4 as outputs
  Wire.beginTransmission(PCAL6416A_ADDRESS);
  Wire.write(PCAL6416A_DIRECTION); 
  Wire.write(0b11100000);  //Port 0:  1 input, 0 output
  Wire.write(0b11100000);  //Port 1:  
  Wire.endTransmission();
  
  //create a task that will process i2c on core 0
  xTaskCreatePinnedToCore(
                    i2c_loop,       /* Task function. */
                    "i2c Loop",     /* name of task. */
                    10000,          /* Stack size of task */
                    NULL,            /* parameter of the task */
                    1,              /* priority of the task */
                    &i2c_taskHandle,/* Task handle to keep track of created task */
                    0);             /* pin task to core 0 */

    wiimote.init();
    //wiimote.addFilter(ACTION_IGNORE, FILTER_ACCEL); // optional
 
}

//Standard loop handles wiiMote on Core 1
void loop()
{
    wiimote.task();
  if (wiimote.available() > 0) 
    {
      ButtonState  button  = wiimote.getButtonState();
      
      (button & BUTTON_H_UP)    ?    J1_btn |= PCAL6416A_UP     :  J1_btn &= ~PCAL6416A_UP;
      (button & BUTTON_H_DOWN)  ?    J1_btn |= PCAL6416A_DOWN   :  J1_btn &= ~PCAL6416A_DOWN;
      (button & BUTTON_H_LEFT)  ?    J1_btn |= PCAL6416A_LEFT   :  J1_btn &= ~PCAL6416A_LEFT;
      (button & BUTTON_H_RIGHT) ?    J1_btn |= PCAL6416A_RIGHT  :  J1_btn &= ~PCAL6416A_RIGHT;
      (button & BUTTON_TWO)     ?    J1_btn |= PCAL6416A_TRIGR  :  J1_btn &= ~PCAL6416A_TRIGR;
      
      J2_btn.store(J1_btn.load());

      

      if (button & BUTTON_HOME) {
        J1_PotA = 128;
        J1_PotB = 128;
        J2_PotA = 128;
        J2_PotB = 128;
      }

      if (J1_PotA < 253 && button & BUTTON_PLUS) {
        J1_PotA++;
        J1_PotB++;
        J2_PotA++;
        J2_PotB++;
      }

      if (J1_PotA > 3 && button & BUTTON_MINUS){
        J1_PotA--;
        J1_PotB--;
        J2_PotA--;
        J2_PotB--;
      }

    Serial.println(J1_btn);
    Serial.println(J1_PotA);

      
    }

}



void wiiMote_Debug(void)  {
  if (wiimote.available() > 0) 
    {
        ButtonState  button  = wiimote.getButtonState();
        AccelState   accel   = wiimote.getAccelState();
        NunchukState nunchuk = wiimote.getNunchukState();

        if (1)
        {
            char ca     = (button & BUTTON_A)     ? 'A' : '.';
            char cb     = (button & BUTTON_B)     ? 'B' : '.';
            char cc     = (button & BUTTON_C)     ? 'C' : '.';
            char cz     = (button & BUTTON_Z)     ? 'Z' : '.';
            char c1     = (button & BUTTON_ONE)   ? '1' : '.';
            char c2     = (button & BUTTON_TWO)   ? '2' : '.';
            char cminus = (button & BUTTON_MINUS) ? '-' : '.';
            char cplus  = (button & BUTTON_PLUS)  ? '+' : '.';
            char chome  = (button & BUTTON_HOME)  ? 'H' : '.';
            char cleft  = (button & BUTTON_LEFT)  ? '<' : '.';
            char cright = (button & BUTTON_RIGHT) ? '>' : '.';
            char cup    = (button & BUTTON_UP)    ? '^' : '.';
            char cdown  = (button & BUTTON_DOWN)  ? 'v' : '.';
      
            Serial.printf("button: %05x = ", (int)button);
            Serial.print(ca);
            Serial.print(cb);
            Serial.print(cc);
            Serial.print(cz);
            Serial.print(c1);
            Serial.print(c2);
            Serial.print(cminus);
            Serial.print(chome);
            Serial.print(cplus);
            Serial.print(cleft);
            Serial.print(cright);
            Serial.print(cup);
            Serial.print(cdown);
            Serial.printf(", wiimote.axis: %3d/%3d/%3d", accel.xAxis, accel.yAxis, accel.zAxis);
            Serial.printf(", nunchuk.axis: %3d/%3d/%3d", nunchuk.xAxis, nunchuk.yAxis, nunchuk.zAxis);
            Serial.printf(", nunchuk.stick: %3d/%3d\n", nunchuk.xStick, nunchuk.yStick);
        }
    }
}




//i2c loop runs on core 0
void i2c_loop( void * pvParameters ){
  //Serial.print("i2c running on core ");
  //Serial.println(xPortGetCoreID());

  for(;;){
    Wire.beginTransmission(AD5242_J1_ADDRESS);
    Wire.write(AS524X_RDAC0);
    Wire.write(J1_PotA);
    Wire.endTransmission();
    
    Wire.beginTransmission(AD5242_J1_ADDRESS);
    Wire.write(AS524X_RDAC1);
    Wire.write(J1_PotB);
    Wire.endTransmission();

      
    Wire.beginTransmission(AD5242_J2_ADDRESS);
    Wire.write(AS524X_RDAC0);
    Wire.write(J2_PotA);
    Wire.endTransmission();

    
    Wire.beginTransmission(AD5242_J2_ADDRESS);
    Wire.write(AS524X_RDAC1);
    Wire.write(J2_PotB);
    Wire.endTransmission();

    Wire.beginTransmission(PCAL6416A_ADDRESS);
    Wire.write(PCAL6416A_OUTPUT); //Output Register
    Wire.write(~J1_btn);  //Port 0
    Wire.write(~J2_btn);  //Port 1  
    Wire.endTransmission();

  }
}
