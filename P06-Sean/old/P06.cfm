
<html>
  
<head>
    <title>Trainable Delay </title>

    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
  
    <style>
    LITERAL1 {font-family:"Courier";color:#0066ff}
    KEYWORD1 {font-family:"Courier";color:#ff0000}
    KEYWORD2 {font-family:"Courier";color:#ff8000}
    KEYWORD3 {font-family:"Courier";color:#8b308b}
    BLACK {font-family:"Courier";color:#000000}
    </style>
    
</head>


<body>
  
  
  <cf_Box Color="White"> 
    
    <table class="TBLAYOUT">
      <tr>      
      <td align="center">
	  <span class="TB-PROJECTTITLE">Project 6:<br>Trainable Delay</span>
	  <hr>
	  
      </td>
      </tr>
     
      
    </table>
    <br><br>
  
    <table class="TBLAYOUT">
      <tr>
	<td><span class="TB-H1">Introduction</span>
	<br><br>
      </td>
      </tr>
  </table>
  
  
  <table class="TBLAYOUT">
    <tr>
      <td><span class="TB-BODY">
	In this project, you will set up a single button and external LED 
	much like the one in <a href="P04.cfm"> Project 4</a>.
	However, the LED will now blink at an adjustable rate.  
	Initially, the LED will blink at a rate of half a second.
	By pressing and holding down the button, you will set or “train” 
	the amount of delay between when the LED changes from
	on to off (and vice versa) by pressing the button for a corresponding 
	amount of time.  For example, holding down the button for
	three seconds would then cause the LED to blink intermittently at a rate of 3 seconds.   
	</span>
	<br><br>
      </td>
    </tr>
      
  </table>
 

  <table class="TBLAYOUT">
    <tbody>
    <tr><td>
    
    <span class="TB-H2">Inventory:</span>
	
    </td>
    </tr>
    <tr>
    <td>
	
	<table id="CT3">
	<thead>
	  <tr>
          <th scope="col" width="10%">&nbsp;</th>
          <th scope="col" width="60%">&nbsp;</th>
          <th scope="col" width="30%">&nbsp;</th>
        </tr>
	
	</thead>
	<tbody>
	
	  <tr>
          <td class="qty">1</td>
          <td>LED</td>
          <td align="center" class="image"><img src="P06files/LEDreal.png"></td>
	  </tr>
               
	  <tr>
          <td class="qty">1</td>
          <td>Two Port Button</td>
          <td align="center" class="image"><img src="P06files/btnph.svg"></td>
	  </tr>
	
	  <tr>
          <td class="qty">1</td>
          <td>Breadboard</td>
          <td align="center" class="image"><img src="P06files/btnph.svg"></td>
	  </tr>
	
	  <tr>
          <td class="qty">1</td>
          <td>330 &Omega; Resistor</td>
          <td align="center" class="image"><img src="P06files/btnph.svg"></td>
	  </tr>

	  <tr>
          <td class="qty">1</td>
          <td>10 k&Omega; Resistor</td>
          <td align="center" class="image"><img src="P06files/btnph.svg"></td>
	  </tr>	  
	
	  <tr>
          <td class="qty">5</td>
          <td>Connecting Wires</td>
          <td align="center" class="image"><img src="P06files/btnph.svg"></td>
	  </tr>	


	  </tbody
	</table>
	
	<br><br>
      </td></tr>
  </tbody>
  </table>
      
     
      
           
 

  <table class="TBLAYOUT">
    <tr>
    <td>  
      <br><br>
      <span class="TB-H1">Step 1: Setting up the Circuit</span>
    </td>
    </tr>
      
    <tr>  
    <td style="text-align: center;">
      <img src="P06files/setup.svg">
      <br><br>
	  
      <div class="TB-FIGURES">Fig.1: Trainable Delay Circuit</div>
      <br><br>
      
    </td>
    </tr>
  </table>
 

  <table class="TBLAYOUT">

      <tr>
      <td>
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
	<br><br></span>
      
      </td>
      </tr>
      
      
    </table>
 

    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H1">Step 2: Setting up the Software</span>
      <br><br>
    </table>
      
      
    <cf_box color= "putty">  
    <table class="TBLAYOUT">
      <tr>
      <td>
      

	<span class="TB-H2">Theory:</span>
	<br><br>
	
      </tr>
      </td>
      <tr>
      <td>
	
	<span class="TB-BODY">
	Before proceeding with the program code for this project a few new software concepts will be introduced.
	</span>
      </td>
      </tr>
      
      
    </table>
 

    <table class="TBLAYOUT">
      <tr>
      <td>
	
	<ul>
	<li><KEYWORD2>millis</KEYWORD2><tt>()</tt></li>
	<li><KEYWORD2>micros</KEYWORD2><tt>()</tt> </li>
	<li><KEYWORD1>while </KEYWORD1></li>
	</ul>
	<br><br>
	
	
	
      </td>
      </tr>
      
      <tr>
      <td>
	<KEYWORD2>millis</KEYWORD2><tt>()</tt>
	<br><br><span class="TB-BODY">
	  The first function we will use in this project is the millis() function.  When the millis() function is called, it
	  will return the number of milliseconds (as an integer value) since the program has started to run. We will use this function to capture the length of time that a button has been pressed. 
	  This can be done by calling millis() the first time the button has been pressed, and calling it again after the button has been released.
	  Subtracting the two returned values will give us the duration. 
	 
	  <br><br>
	  
	<KEYWORD2>micros</KEYWORD2><tt>()</tt>
	<br><br>
	  While not used in this project, micros() is very similar to millis()
	  except that it instead returns the microsecond value since the program has been running. 
	  For calculating the duration of button presses, measuring in the millisecond range is perfectly adequate.
	  There are several instances when greater accuracy is needed, though. For instance, if we wanted to capture the duration that an external
	  signal produced by a sensor was asserted, we would want that measurement in milliseconds.  
	  It is common for sensors to change their output signal faster than a millisecond, so in order to
	  capture the duration of these events, more accuracy is necessary. 
	<br><br>

	<KEYWORD1>while</KEYWORD1><tt>()</tt>
	<br><br>
	  The <KEYWORD1>while</KEYWORD1> control statement is a commonly used loop in C/C++ programs (and MPIDE sketches) to repeat a block of code multiple times, as long as a pre specified conditional is met.
	  The while loop differs from control statements like "for" loops, in that it will iterate indefinitely until it's conditional statement is evaluated as false,(as opposed to “for” loops that will only iterate for a set amount of times).
	  Conditional expressions used by the “<KEYWORD1>while</KEYWORD1>” loop
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
	    }
      </pre>
	    
	    <br><br>

	    <span class="TB-BODY">After this segment of code has run Sum will be equal to 100.
	    The variable Sum starts at 0 so the conditional statement in the while loop evaluates to true. The code between the loop's brackets is then executed adding 1 to Sum. (In C/C++ syntax , Sum++ is 
	    equivalent to writing Sum = Sum + 1). The conditional statement is checked again and the process repeats  until Sum is equal to 100, exiting the loop.
	    
	    <br><br>
	    
	    A while loop is useful when a block of code has to be repeated, but the exact number of iterations is unknown.  
	    For example, the following code illustrates this.
	    When the buttonState (the variable that stores the HIGH/LOW state of a button) is in the LOW state, the <KEYWORD1>while</KEYWORD1> loop will increment a variable called count. Once the button is pressed (setting buttonState to HIGH with the digitalRead function called for pin 10),
	    the while condition will be proven false and then exit the loop. The count variable will represent the millisecond value prior to the button being pressed.
	    Since this statement is dependent on an external signal it will run for unknown length of time.</span>
	    <br><br>
	    
	    
	    
    
    <pre class="brush: mpide; gutter: false;">
	      int buttonState = LOW;
	      unsigned int count = 0;
	      
	      while(buttonState != HIGH){
	        buttonState = digitalRead(10);
	        count++;
	        delay(1);
	      }
    </pre>
	    <br><br>
	      
	  
	    </td>
	    </tr>
      
      
      </table> 
      </cf_box>



      <br><br><br>


              
    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H2">Code:</span>
      
      
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


      
      </td>
      </tr>
      
      
    </table>
    <br><br>
    
    
    <table class="TBLAYOUT">
      <tr>
      <td>
	<span class="TB-H1">Step 3: Implementation and Hazards</span>
	<br><br>
	
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
	When mechanical buttons or switches are pressed (or thrown), the transition from on/off (and likewise off/on) is not clean or instantaneous.
	This is because after being pressed the button vibrates and “bounces”, randomly making electrical contact. The random electrical variation (also referred to as electrical noise)
	caused by this bouncing action can sometimes be interpreted as a very fast button press.  

	<br><br>
	
	
	<tr>
	<td style="text-align: center;">
	  <img src="P06files/buttonbounce.png"><br>
	  <div class="TB-FIGURES">Fig.2: Trailing edge button bounce</div>
	  <br><br>
	  
	</td>
	</tr>
	
	<tr>
	<td>
	
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

      
      
    </table>
    <br><br>
    
  
	
	
      <table class="TBLAYOUT">
	  
	<tr>
	<td>
	  <br><br> 
	  <span class="TB-H2">Summary: </span>
	  
	    
	    
	</td>
	</tr>
      </table>
      
      
      <table>
	<tr>
	<td>
	  <table id="CT3">
          <thead>
            <tr>
            <th scope="col" width="20%">&nbsp;</th>
            <th scope="col" width="80%">&nbsp;</th>
            </tr>
          </thead>
	  <tbody>
            <tr>
            <td>Concepts introduced:</td>
            <td>
	    <ul>
              <li>Timing Functions</li>
              <li>Conditional Loops</li>
              <li>Button Bounce</li>    
            </ul>
            </td>
            </tr>
               
	    <tr>
            <td width="20%">Instructions introduced:</td>
            <td width="80%">
              <ul>
		     <li><KEYWORD2>millis</KEYWORD2><tt>()</tt>  Returns an int value in milliseconds representing the how long the program sketch has been running</li>
		     <li><KEYWORD2>micros</KEYWORD2><tt>()</tt>  Returns an int value in microseconds representing the how long the program sketch has been running</li>
		     <li><KEYWORD1>while</KEYWORD1> loop, a C/C++ syntax that for constructing a conditional loop within the program sketch</li>
	      </ul>
            </td>
            </tr>
            </tbody>
            </table>
            
            
         </td>
	 </tr>
	</table>
	    
	    
	   
  
  
  
  
  
</cf_Box>
</body>
</html> 