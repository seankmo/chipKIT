
  const int btnPin = 7;     // the number of the pushbutton pin
  const int ledPin = 8;      // the number of the LED pin

  
  int currentLED;
  int previousLED;
  unsigned int count;
  


 
void setup() {
  pinMode(btnPin, INPUT);
  pinMode(ledPin, OUTPUT);
  
  
 currentLED = LOW;
 previousLED = LOW;
 count = 0;


  Serial.begin(9600);
  
}

void loop() {
  
    



   currentLED = digitalRead(btnPin);
   
  if ((previousLED == LOW) && (currentLED ==HIGH)) {
    count++;
    Serial.println(count);
  }
  

  previousLED = currentLED; 
  digitalWrite(ledPin, currentLED);


}



