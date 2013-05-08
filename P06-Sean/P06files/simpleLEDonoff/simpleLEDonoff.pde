// ChipKit Project 3: Button Controlled on/off LED's
//
//**************************************************************
// This project will outline how to use the chipkit board to
// read in digital data from external push buttons,
// and then compare that data that data to determine
// which externally connected LEDs to assert
//
// Device: Max32
// Data: 1/16/2013
//
//**************************************************************


// setting up constants to associate names with the
// various digital I/O ports used for this project.
// each pin on chipkit boards are referenced by an integer number
// for digital read and write functions.  assigning a constant name
// allows you to use that name in the read and write function.



const int LedA =  12;      

const int BtnA = 7;



void setup() {
  // Each digital I/O port needs to be set up before use, to designate
  // it as ether an input or output port
  // Ports used for LED are set to OUTPUT
  pinMode(LedA, OUTPUT); 

  
  // Ports used for Buttons are set to INPUT
  pinMode(BtnA, INPUT); 

}


// 
void loop()
{
  // Start of the button scanning
  //
  // This sketch will read the value of each digital input pin associated with the push buttons, and then
  // determine through  "if" statements weather to turn on the digital output port associated with the LEDs.
  //
  //
  //
  // the digitalRead function will output a HIGH constant if voltage is detected at that particular pin
  // else the function will return LOW. High and LOW are predefined constants which are associated with intiger values
  // High is equal to the integer value 1  (0x01)
  //  Low is equal to the integer value 0   (0x00)
  
  
  // ******************** Read Button A*************************************** 
  // if the digital Read function returns value HIGH then the corisponding LED is Set to output High, if not
  // then the LED is set to output LOW.
  
        if ( digitalRead(BtnA) == HIGH ){
                digitalWrite(LedA, HIGH);
        }
        else{
                digitalWrite(LedA, LOW);
        }
  
  
  

 
}

