
<html>
  
<head><title>Trainable Delay </title>

<meta name="author" content="Sean Moss">
<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
<script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
<link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>

  <body>
    
    
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody><tr>
      <td align="center" width="35%"><a href="index.cfm"><br></a></td>
      <td align="center" width="50%">
	<span class="TB-PROJECTTITLE">
	  <span class="TB-PROJECTTITLE">Project 6:<br>Trainable Delay</span>
	  
      </span>
      </td>
      <td align="center" width="15%">&nbsp;</td>
    </tr>
    <tr><td colspan="3" align="right"><hr><br><br></td></tr>
    </tbody>
    </table>
  
  
  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody><tr>
      <td valign="top"><span class="TB-H1">Introduction</span><hr hr="" color="#2c2c2c" size="15"><br></td>
      <td align="center" width="320">
      	&nbsp;<br><br>
        <div class="TB-FIGURES"></div>
      </td>
    </tr>
    <tr><td colspan="2"><br><br></td></tr>
  </tbody></table>
  
  
  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody><tr>
      <td valign="top">
	<p>In this project, you will set up a single button and external LED 
	much like the one in <a href="P04.cfm"> Project 4</a>.
	However, the LED will now blink at an adjustable rate.  
	Initially, the LED will blink at a rate of half a second.
	By pressing and holding down the button, you will set or “train” 
	the amount of delay between when the LED changes from
	on to off (and vice versa) by pressing the button for a corresponding 
	amount of time.  For example, holding down the button for
	three seconds would then cause the LED to blink intermittently at a rate of 3 seconds.   
	</p>
	<br>
	
	
      </td></tr>
      
      </tbody></table>
 

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    <tr><td>
    
    <span class="TB-H2">Inventory:</span><hr hr="" color="#2c2c2c" size="2">
	
    </td></tr>
  <tr><td>
	
	
	
	<!-- insert table of parts here -->
	<table class="TBLAYOUT" border="1" cellpadding="6" width= 700px>
	<tbody>
	  <tr>
	    <td >
	      
	      1 LED
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/LEDreal.jpg">
	    </td>
	  </tr>
	  <tr>
	      <td>
	      
	      1 Four Terminal Button
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/PLACEHOLDER.png">
	    </td>
	  </tr>
	  <tr>
	      <td>
	      
	      1 Breadboard
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/PLACEHOLDER.png">
	    </td>
	  </tr>
	  	  <tr>
	      <td>
	      
	      1 330 &Omega; Resistor
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/PLACEHOLDER.png">
	    </td>
	  </tr>
	  	  <tr>
	      <td>
	      
	      1 10 k&Omega; Resistor
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/PLACEHOLDER.png">
	    </td>
	  </tr>
		  	  	  <tr>
	      <td>
	      
	      5 Connecting Wires 
	    </td>
	    <td>
	      
	      <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P06files/PLACEHOLDER.png">
	    </td>
	  </tr>
	</table>
	
	
      </td></tr>
      
      
     
      
            </tbody></table>
 

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    <tr><td>
      
      <br><br>
      <span class="TB-H1">Step 1: Setting up the Circuit<hr hr="" color="#2c2c2c" size="15"></span>
	
	
	
      </td></tr>
      
      <tr>
      
      <td style="text-align: center;"><img style="width: 700px; height: 600px;" alt="LEDsetup" src="P06files/Overall Circuit_bb_new.png"><br>
	  <i>Fig.1: Trainable Delay Circuit </i>
	  <br>
	  <br>
      </td>
      </tr>
                  </tbody></table>
 

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
      
      <tr><td>
      <span class="TB-BODY">The circuit set up in this project will be 
	very similar to one in project 4,
      except now only one button will be set up instead of three. The setup 
	instructions will be somewhat brief,
      but for more in-depth instructions, review <i>project four</i>. 
	Figure 1 illustrates the individual steps to set up the circuit.
      
	<ol>
	<li>Connect the 5V pin from the chipKIT board to a bus strip; this strip will now be designated as the <b>5V bus strip</b>.</li>
	<li>Connect the GND pin from the chipkit board to a bus strip adjacent to the 5V bus strip. This strip will be designated as the <b>ground bus strip</b>.</li>
	<li>Place the LED into the breadboard, keeping note of which side is the anode and which side is the cathode (the anode has the longer lead).</li>
	<li>Using a wire, connect the anode of the LED to pin 12 of the chipKIT board.</li>
	<li>Connect the cathode of the LED to a 330 &Omega; resistor.</li>
	<li>Now, connect the other end of the resistor to the ground bus strip.</li>
	<li>Place a push button into the breadboard so that it spans the gap between columns in the breadboard. Remember that buttons used for this project are four-terminal devices,
	where the top and bottom pairs of terminals are electrically connected. </li>	
	<li>Using a wire, connect one of the top terminals of the button to the 5V bus strip. The button will be oriented so that the top terminals are pointing right.</li>
	<li>Connect the bottom terminal of the button to a 10k&Omega; resistor, and then connect the end of the resistor not connected to the button to the ground bus strip.</li>
	<li>Using a wire, connect from the bottom terminal of the button to pin 7 on the chipKIT board.</li>
	
	</ol>
	<br>
	<br>
      </span>
      
      
      </td></tr>
      
      
                        </tbody></table>
 

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
      
      
      <tr><td>
      <span class="TB-H1">Step 2: Setting up the Software<hr hr="" color="#2c2c2c" size="15"></span>
      <br>
      </tbody></table>
      
      
              <cf_box color= "green"
	      style="width:85%">
          <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
      
      
      <tr><td>
      

	<span class="TB-H2">Theory:<hr hr="" color="#2c2c2c" size="2"></span>
	<br>
	<span class="TB-BODY">
	<p>Before proceeding with the program code for this project a few new software concepts will be introduced.</p>
	</span>
	</td></tr>
      
      
                        </tbody></table>
 

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
	<tr><td>
	<ul>
	<li><code>millis()</code></li>
	<li><code>micros()</code> </li>
	<li><code>while </code></li>

	</ul>
	<br>
	
	
	
      </td></tr>
      
      <tr><td>
	<code>millis()</code>
	<br><br><span class="TB-BODY">
	  The first function we will use in this project is the millis() function.  When the millis() function is called, it
	  will return the number of milliseconds (as an integer value) since the program has started to run. We will use this function to capture the length of time that a button has been pressed. 
	  This can be done by calling millis() the first time the button has been pressed, and calling it again after the button has been released.
	  Subtracting the two returned values will give us the duration. 
	 
	  <br><br>
	  
	<code>micros()</code>
	<br><br>
	  While not used in this project, micros() is very similar to millis()
	  except that it instead returns the microsecond value since the program has been running. 
	  For calculating the duration of button presses, measuring in the millisecond range is perfectly adequate.
	  There are several instances when greater accuracy is needed, though. For instance, if we wanted to capture the duration that an external
	  signal produced by a sensor was asserted, we would want that measurement in milliseconds.  
	  It is common for sensors to change their output signal faster than a millisecond, so in order to
	  capture the duration of these events, more accuracy is necessary. 
	<br>

	<code>while()</code>
	<br><br>
	  The <code>while</code> control statement is a commonly used loop in C/C++ programs (and MPIDE sketches) to repeat a block of code multiple times, as long as a pre specified conditional is met.
	  The while loop differs from control statements like "for" loops, in that it will iterate indefinitely until it's conditional statement is evaluated as false,(as opposed to “for” loops that will only iterate for a set amount of times).
	  Conditional expressions used by the “<code>while</code>” loop
	  are the same expressions used by the “if” statement (to review these operators
	  reference project 4).
	  
	  <br><br>
	  If a conditional statement evaluates as true, the code between the brackets following the while statement will be run. Once this segment of code finishes executing, it
	  checks the conditional statement again.  If the statement is still true, it will
	  loop again through the segment of code within the brackets. It will to continue loop
	  in this way until the conditional statement evaluates to be false.
	  
	  <br>
	  <br>
	  Here is an example of a while loop:</span>
	  <br>
	  <br>
	    <pre class="brush: mpide; gutter: false; toolbar: false;">
	    int Sum = 0;
	    
	    while (Sum  != 100){
	    Sum++;
	    }</pre>
	  <br>

	    <span class="TB-BODY">After this segment of code has run Sum will be equal to 100.
	    The variable Sum starts at 0 so the conditional statement in the while loop evaluates to true. The code between the loop's brackets is then executed adding 1 to Sum. (In C/C++ syntax , Sum++ is 
	    equivalent to writing Sum = Sum + 1). The conditional statement is checked again and the process repeats  until Sum is equal to 100, exiting the loop.
	    
	    <br>
	    <br>
	    
	      A while loop is useful when a block of code has to be repeated, but the exact number of iterations is unknown.  
		For example, the following code illustrates this.
	      When the buttonState (the variable that stores the HIGH/LOW state of a button) is in the LOW state, the <code>while</code> loop will increment a variable called count. Once the button is pressed (setting buttonState to HIGH with the digitalRead function called for pin 10),
	      the while condition will be proven false and then exit the loop. The count variable will represent the millisecond value prior to the button being pressed.
	      Since this statement is dependent on an external signal it will run for unknown length of time.</span>
	      <br>
	      <br>
	    
	    <pre class="brush: mpide; gutter: false; toolbar: false;">
	      int buttonState = LOW;
	      unsigned int count = 0;
	      
	      while(buttonState != HIGH){
	        buttonState = digitalRead(10);
	        count++;
	        delay(1);
	      }
	    </pre>
	      <br>
	      
	  
      </td></tr>
      
      </tbody></table>
 
</cf_box>
<br><br><br>
              <cf_box color= "white"
	      style="width:85%">
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
	
      
      
      
      
      <tr><td>
      </span>
      <span class="TB-H2">Code:<hr hr="" color="#2c2c2c" size="2"></span>
      
      
      
      
      
      <!--  intro to the code segment here -->
	<pre class="brush: mpide;">
	// Setting up constants to be used in the program
	
	int ledPin = 12; // Label Pin 25 ledPin.
	int buttonPin = 7; // Label Pin 4 buttonPin.
	
	// Setting up Initial Start Time and Delay
	
	int msDelay = 500; // 500 ms delay = 0.5 seconds
	unsigned int startTime = 0; // Time of last LED change.
	int ledState = LOW;
  
  
      void setup() {               			
      
      pinMode(buttonPin, INPUT); 			// Set buttonPin for input.
      pinMode(ledPin, OUTPUT);   			// Set ledPin for output.
      
      }

	  void loop() {                			// loop() this is the start of the main loop, which runs "forever".
	  
	  
	  
	  startTime = millis();   			// gets the current time at the beginning of the loop.
  
	 
	 
	  if (digitalRead(buttonPin) == HIGH) { 	// If the button is pressed "Learn" the amount of delay.
	    digitalWrite(ledPin, HIGH);
    
	    while (digitalRead(buttonPin) == HIGH) {}
	    
	    /*When the button is pressed, the program will enter a while loop,
	    *Since there is no code within the brackets, no instructions are executed during the while loop.
	    *The overall program will stay in this loop until the button has been released 
	    */
	   
	    msDelay = (millis() - startTime);
	    
	    /*Immediately after the button has been released,  millis() is called again to get the time,
	    *that value is then subtracted from the start time, to yield the duration of time from when the
	    *main program loop started to when the button was released.
	    */
    
	    ledState = LOW;
	    digitalWrite(ledPin, LOW);			//Turns the LED off
	  }
	  
	  else {
	
	  /* if the button not pressed.  Blink LED.
	  * Enter a while loop, and remain as long as the button is not pressed
	  */
	  
	    while (digitalRead(buttonPin) == LOW) {	
	    
	    
	    
	    /* if the amount of time since the main loop has started (or since the last delay period occurred) is greater 
	    * than the stored delay value
	    * Then this means that a period of time longer than the delay time has elapsed, so set the start time
	    * to the current time and
	    * Toggle the ledState (ie, if it was LOW it becomes HIGH, and HIGH becomes LOW)
	    */
	    
	      if ( (millis() - startTime) > msDelay) {	
							
		  startTime = millis();			
							
		  if (ledState == LOW)			
		    ledState = HIGH;
		  else
		    ledState = LOW;
	      }
	      digitalWrite(ledPin, ledState);		// Turn on/off the LED according to the ledState variable
          }						
        }   
	}
</pre>
      
      
      
      
      
      
      
      
      </td></tr>
      
      
           </tbody></table>
 </cf_box>

    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
      
    
    
    <tr>
      <td>
      <span class="TB-H1">Step 3: Implementation and Hazards<hr hr="" color="#2c2c2c" size="15"></span>
      <br>
	
      </td>
    </tr>
    <tr>
      <td>
	
	
	<span class="TB-BODY">
	Generally, when the sketch is downloaded to the chipKIT board, it should initially start to blink at a delay rate of .5 seconds.
	When the button is pressed, the delay value will be calculated from the moment the button is released. You can now observe the LED
	starting to blink at the new delay rate.<br>
	<br>
	One pitfall/condition of this circuit that needs to be mentioned is that on occasion pressing the button will cause the LED
	to glow very dimly and not blink as expected.  This happens because of the a physical characteristics of the button itself known as <i>“bounce”</i>.<br>  
	<br>
	When mechanical buttons or switches are pressed (or thrown), the transition from on/off (and likewise off/on) is not clean or instantaneous
	. This is because after being pressed the button vibrates and “bounces”, randomly making electrical contact. The random electrical variation (also referred to as electrical noise)
	caused by this bouncing action can sometimes be interpreted as a very fast button press.  

<br><br>
	
	
	      <tr>
      
      <td style="text-align: center;"><img style="width: 480px; height: 250px;" alt="LEDsetup" src="P06files/buttonbounce.png"><br>
	  <i>Fig.2: Trailing edge button bounce</i>
	  <br>
	  <br>
      </td>
      </tr>
	<tr><td>
	<span class="TB-BODY">Figure 2 is a graph of voltage over time, where every vertical division is represented by 100 microseconds. The graph shows the electrical noise created by a button (identical to the ones
	used in this project) being released. You can see that there is a period of about 400 microseconds where there is a slight amount of noise on
	the transitioning signal. The chipKIT board's main loop runs so quickly that 
	it can read the voltage fluctuations during this transition period and thus has a chance of misinterpreting them. In other words, a chipKIT board reading a digital input might read a sudden dip in the voltage on the input pin as a LOW signal,
	and then a few microseconds later read the signal as HIGH  (and then LOW again once the fluctuations finally settle) .
	The chipKIT could interrupt this as random button presses with a duration of only a few microseconds. This would end up setting the blink delay to
	an inordinately small amount.  When the LED is dim, it is actually trying to blink at an incredibly fast rate.  Between the LED not being able to keep up at this rate and human
	vision not being able to distinguish such a fast rate of change (much a motion pictures where our brains merge a sequence of images because it changes so fast), we observe the
	LED as being dim instead of constantly changing.<br>
	<br><br>
	While this does not happen with every single press of a button, it does happen often enough that one needs to be wary of it. Various hardware and software
	solutions for correcting button bounce will be introduced in subsequent projects. For this project is it enough to be aware that such a
	condition exists and how it can affect a circuit.</span>
	
      </td>
    </tr>
    <tr>
      <td>
	<br><br>
      <span class="TB-H2">Summary: </span><br>
	<span class="TB-BODY">
	<table border="1" class="TBLAYOUT">
	  <br>
	<tr>
	  
	  <td>
	    
	    Concepts introduced:
	    
	  </td>
	  <td>
	    
	    <table border="1">
	      <tr>
	      <td>
		Timing Functions
		
		
	      </td>
	      </tr>
	      <tr>
	      <td>
		Conditional Loops
	
	      </td>
	      </tr>
	      	      <tr>
	      <td>
		Button Bounce
	
	      </td>
	      </tr>
	      
	    </table>
	    
	  </td>
	  <tr>
	    <td>
	      
	      Instructions introduced:
	      
	      
	    </td>
	    <td>
	      <table border="1">
		
		<tr>
		  <td>
		    <code>millis()</code> ;  Returns an int value in milliseconds representing the how long the program sketch has been running
		  </td>
		</tr>
		<tr>
		  <td>
		    <code>micros()</code> ;  Returns an int value in microseconds representing the how long the program sketch has been running
		  </td>
		</tr>
		<tr>
		  <td>
		    <code>while</code> loop,   a C/C++ syntax that for constructing a conditional loop within the program sketch
		  </td>
		</tr>
		
		
	      </table>
	    </td>
	  </tr>
	  
	  
	  
	</tr>
	  
	  
	  
	</table>
	
	
	
      </td>
    </tr>
    
	</span>
    
    </tbody>
    </table>
  <br><br>
  
  
  
  
  
  
</body>
</html>