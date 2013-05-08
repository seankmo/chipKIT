/*
* Programmer: Thor Steingrimsson
* Project 5: Button controlled LED with Serial communication.
* Date: 5-Feb-2013
*
* Description: When the button is pressed, the board will toggle its LED
* 			   and send a Serial message to the computer.
*/

int LED_state = LOW;
// time is the current time
// lastime is the last time the button was pressed
int time, last_time;
// btn_state is the current button state
// last_btn was the last button state
int btn_state, last_btn;
// sec is the conversion of milliseconds to seconds
float seconds;

void setup()
{
  // start the Serial communications
  Serial.begin(9600);
  pinMode(13,OUTPUT);
  digitalWrite(13,LED_state);
  pinMode(4,INPUT);
  digitalWrite(4,LOW); // disable pull-down register.
  // Initialize the time and button variables
  time = millis();
  last_time = time; 
  btn_state = digitalRead(4);
  last_btn = btn_state;
}

void loop()
{
  btn_state = digitalRead(4);
  // if the button is HIGH and different from last time
  if(HIGH == btn_state && btn_state != last_btn){
    time = millis(); // get the time
    seconds = (float)(time-last_time) / 1000.0; // convert the difference to seconds
    Serial.print("The LED was "); // send a message to the computer
    if(LED_state == HIGH){
      Serial.print("on  for ");
    }else{
      Serial.print("off for ");
    }
    Serial.print(seconds);
    Serial.println(" seconds since the LED changed last.");
	LED_state = !LED_state; // toggle the LED
    digitalWrite(13,LED_state);
    last_time = time; // Since now is the last time the button was pressed
  }
  last_btn = btn_state; // record the button state
}
