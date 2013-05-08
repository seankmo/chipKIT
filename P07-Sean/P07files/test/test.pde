
  const int btnPin = 7;     // the number of the pushbutton pin
  const int ledPin = 8;      // the number of the LED pin

  int ledState;
  int currentLED;
  int previousLED;
  volatile int count;
  volatile boolean output;


 
void setup() {
  pinMode(btnPin, INPUT);
  pinMode(ledPin, OUTPUT);
  
  
 currentLED = LOW;
 previousLED = LOW;
 count = 0;

 
output = false;



  ledState = LOW;  // the current state of the output pin 
  Serial.begin(9600);
  attachCoreTimerService(OutputCount);
}
void verify();
void loop() {
  
    
noInterrupts();


   currentLED = digitalRead(btnPin);
   
  if ((previousLED == LOW) && (currentLED ==HIGH)) {
    count++;
    output = true;
  }
  

  ledState = currentLED;
  previousLED = currentLED; 
  digitalWrite(ledPin, ledState);
  
  interrupts();
}

uint32_t OutputCount(uint32_t currentTime) {
if(output){
  Serial.println(count);
 output = false; 
}
  return (currentTime + CORE_TICK_RATE*100);
}

