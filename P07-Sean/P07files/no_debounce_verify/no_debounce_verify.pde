
  const int btnPin = 7;     // the number of the pushbutton pin
  const int ledPin = 8;      // the number of the LED pin

  int ledState;
  int buttonState;
  int lastButtonState;
  
  int verLedState1;
  int verLedState2;
  int count;
  
  unsigned int lastDebounceTime;
  unsigned int debounceDelay;

 boolean output;
 
 
void setup() {
  pinMode(btnPin, INPUT);
  pinMode(ledPin, OUTPUT);
  
  
 verLedState1 = LOW;
 verLedState2 = LOW;
 count = 0;
 output = false;
 
  ledState = LOW;  // the current state of the output pin
  buttonState = LOW;             // the current reading from the input pin
  lastButtonState = LOW;   // the previous reading from the input pin
  lastDebounceTime = 0;  // the last time the output pin was toggled
  debounceDelay = 75;    // the debounce time;  
  Serial.begin(9600);

}
void verify();
void loop() {
  
    
 
   verLedState1 = digitalRead(btnPin);
   
  noInterrupts(); 
  if ((verLedState2 == LOW) && (verLedState1 ==HIGH)) {
    count++;
    output = true;
  }
  interrupts();
 
/************************************************/
  ledState = verLedState1;
  
  if(output){
  Serial.println(count);
  output = false;
  }
  
  verLedState2 = verLedState1; 
  digitalWrite(ledPin, ledState);
  lastButtonState = buttonState;
  
}



