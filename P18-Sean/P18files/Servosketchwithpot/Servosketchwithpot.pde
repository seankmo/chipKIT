#include <Servo.h>


Servo myServo;
int degreeGlb;

const int aPinGlb = 0;
const float scaleFactorGlb = .18;                           
                           
                          
void setup() 
{ 

// Setup the Servo object to output on pin 9.
myServo.attach(9); 

// Tell the chipKIT AD converter the max analog voltage will be the default value 3.3V.
analogReference(DEFAULT);


  
} 
 
void loop() 
{ 
  
      // Read the value from the analog pin connected to the potentiomiter, value will be between 0 and 1024.
      degreeGlb = analogRead(aPinGlb);   
      // Convert input value to a degree.
      degreeGlb = (int)((float)degreeGlb * scaleFactorGlb);
      // Write the input degree to the servo 
      myServo.write(degreeGlb);             
      // wait for the servo to move
      delay(10);                            
} 
