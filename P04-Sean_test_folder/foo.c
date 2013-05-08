/***************************************************************
 * The first step will be setting up constants to associate names with
 * the various digital I/O ports used for this project.  each pin on
 * chipKIT boards are referenced by an integer number for functions
 * calls. Assigning a constant name allows you to use that name in the
 * read and write function.
 */
        
const int ledA = 12; 
const int ledB = 11; 
const int ledC = 8; 
const int btnA = 7;
const int btnB = 6;
const int btnC = 5;
        
        
void setup() {
  /* Each digital I/O port needs to be set up before use, to designate
   * it as ether an input or output port Ports used for LED are set to
   * OUTPUT.
   */
        
  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  // Ports used for Buttons are set to INPUT
  pinMode(btnA, INPUT);
  pinMode(btnB, INPUT);
  pinMode(btnC, INPUT);
}
        
        
void loop()
{
  /* Start of the button scanning.
   *
   * Read the value of each digital input pin associated with the push
   * buttons, and then determine through "if" statements whether to
   * turn on the digital output port associated with the LEDs.
   *    
   * the digitalRead function will output a HIGH constant if voltage
   * is detected at that particular pin else the function will return
   * LOW. High and LOW are predefined constants which are associated
   * with integer values High is equal to the integer value 1 (0x01)
   * Low is equal to the integer value 0 (0x00).
   *
   * If the digitalRead function returns value HIGH then the corresponding LED is set to
   * output High, if not then the LED is set to output LOW.
   */
        
  if ( digitalRead(btnA) == HIGH ){
    digitalWrite(ledA, HIGH);
  }
  else {
    digitalWrite(ledA, LOW);
  }
  
  // Read and Compare Button B
  if ( digitalRead(btnB) == HIGH ) {
    digitalWrite(ledB, HIGH);
  }
  else {
    digitalWrite(ledB, LOW);
  }
  
  // Read and Compare Button C
  if ( digitalRead(btnC) == HIGH ) {
    digitalWrite(ledC, HIGH);
  }
  else {
    digitalWrite(ledC, LOW);
  }
  
}
