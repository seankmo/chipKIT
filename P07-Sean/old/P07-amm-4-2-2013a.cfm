<html><head><title>Software Debouncing</title>
<meta name="author" content="Sean Moss">
  <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
  <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
  <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
  <script type="text/javascript">SyntaxHighlighter.all();</script>
  <style>
    lit1 {font-family:"Courier";color:#0066ff}
    kw1 {font-family:"Courier";color:#ff0000}
    kw2 {font-family:"Courier";color:#ff8000}
    kw3 {font-family:"Courier";color:#8b308b}
  </style>

  <style>
  LITERAL1 {font-family:"Courier";color:#0066ff}
  KEYWORD1 {font-family:"Courier";color:#ff0000}
  KEYWORD2 {font-family:"Courier";color:#ff8000}
  KEYWORD3 {font-family:"Courier";color:#8b308b}
  BLACK {font-family:"Courier";color:#000000}
  </style>
</head>
    
    
  <body>
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
      <tbody>
	<tr>
	  <td align="center" width="35%"><a href="index.cfm"><br>
	  </a></td>
	  <td align="center" width="50%"> <span class="TB-PROJECTTITLE">
	      Project 7: <br>Software Debouncing</span> </td>
	  <td align="center" width="15%">&nbsp;</td>
	</tr>
	<tr>
	  <td colspan="3" align="right">
	    <hr><br>
	    <br>
	  </td>
	</tr>
      </tbody>
    </table>
    
    
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
      <tbody>
	<tr>
	  <td valign="top">
	    <!--  Intro portion -----------------------------   --->
	    <span class="TB-H1">Introduction</span>
	    <br><br>
            <span class="TB-BODY">
	      For this project, we will be writing a software sketch to identify and correct the effects of button bounce on the chipKIT microcontroller boards.
	      Bounce is an inherent property of mechanical buttons and switches that introduces electrical noise when they are turned on or off.
	      <br><br>
	      This noise associated with transitions is non-ideal and sometimes causes input signals to be read incorrectly. This type of error occurs in all microcontrollers
	      and digital devices, not just in chipKIT boards.
	      <br><br>
	      Like <a href="linkhere.cfm">Project 6: Trainable Delay</a>, this circuit includes a single button and external LED. However, in this project, the software will show a
	      running count of how many times the button has been pressed. It accomplishes this by counting rising edges. It is visible on your computer screen using MPIDE’s serial monitor.
	      We will run the circuit with and without debouncing so the user can observe how button bounce can affect a circuit.
	      <br><br>
	      HERE.HERE.HERE.
	      Debouncing can be corrected in various way, by using either hardware and software solutions, but for this project we will be focus solely on a software solution.
	      <br><br>	      
				
            </span>
	    <br><br>
          </td>
	  
        </tr>
	
      </tbody>
    </table>
    
      <!--  Parts List -----------------------------   --->
      <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
	<tbody>
	  <tr>
	    
	    
	    <td valign="top"><span class="TB-H1">Inventory</span>
	      <br><br>
	      <span class="TB-BODY">
		
		<table style="text-align: left; width: 100%;" border="1" cellpadding="0" cellspacing="0">
		  <tbody>
		    <tr>
		      <td>1 two-port buttons</td>
		      <td><img style="width: 111px; height: 69px;" alt="button" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		    <tr>
		      <td>1 LEDs</td>
		      <td><img style="width: 107px; height: 72px;" alt="LED" src="P07files/LEDreal.jpg"></td>
		    </tr>
		    <tr>
		      <td>1 330-ohm resistors</td>
		      <td><img style="width: 111px; height: 69px;" alt="button" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		    <tr>
		      <td>1 10k-ohm resistors</td>
		      <td><img style="width: 111px; height: 69px;" alt="button" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		    <tr>
		      <td>Max 32, uC32, Uno32 or other chipKIT board</td>
		      <td><img style="width: 111px; height: 69px;" alt="button" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		    <tr>
		      <td>7 connecting wires</td>
		      <td><img style="width: 111px; height: 69px;" alt="button" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		    <tr>
		      <td>USB A to mini B cable</td>
		      <td><img style="width: 111px; height: 69px;" alt="USB place holder" src="P07files/realbtnplaceholder.png"></td>
		    </tr>
		  </tbody>
		</table>
	      </span>       
              
	      <br><br>
	      
	    </td>
	  </tr>
	  
	  
	</tbody>
      </table>

    
    
    <!--   Theory of Bounce   --->
    <cf_box color="green"
	    style="width:85%">
      <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
	<tbody>
	  <tr>
	    <td valign="top"><span class="TB-H2">Bounce</span> 	      
	    </td>
	  </tr>
	  <tr>
	    <td><span class="TB-BODY">
		As mentioned above, bounce is a mechanical property of switches and buttons that can
		potentially introduce problems into digital circuits. Considering a simple button circuit like the ones introduced
		in project 4 or 6, when a user presses a button, we would like to think of the rising and falling edges of the produced
		signal as being a perfectly crisp and instantaneous transition.
		In reality when a button is pressed or released (or switch thrown), there is a small amount of time
		(in the microsecond range) where the electrical signal can fluctuate anywhere from 0 volts to
		the voltage level designated as logic level high (typically 3.3V or 5V).  This is caused by
		the physical material of the switch or button reverberating and finally winding down to a steady
		state.  You could think of it like having a metal rod that you strike against a hard surface, the
		rod will vibrate from the force of the impact. Eventually these vibrations will calm down
		(which is meant by winding down to a steady state).  In the same sense buttons and switches do
		the same thing, but on a very small scale.  While the physical material is vibrating, it affects
		the voltage level of the output.   

		<br><br>
		
		Overall this causes the transition edges, to not be as clean (ideal) as we would like.  
	      </span>
	    </td>
	  </tr>
	  <tr>
	    <td align="center"><br>
	      <!--  Figure 1 -->
	      <img style="width: 50%; height: 50%;" alt="Example of Button Bounce 2" src="P07files/buttonbounce1.png">
	      <div class="TB-FIGURES">Fig 1. Voltage over time transition of button release.</div>
	      
	    </td>
	  </tr>
	  <tr>
            <td>
              <span class="TB-BODY"><br>
		Figure 1 is a graph of voltage over time of a button releasing (identical circuit configuration as in project 6).
		You can see that the button is at a steady voltage state of HIGH, and then as it is being released, a small period of turbulence
		occurs for about 400 microseconds just before cutting off.  Because the Max32 and Uno32 (and most microcontrollers in general)
		run at such a fast rate, they can potentially capture these fluctuations which is where the potential for incorrect circuit operation stems from.  
              </span>  
	    </td>	 
	  </tr>


	  <tr>
	    <td align="center"><br>
	      <!-- Figure 2 -->
	      <img style="width: 50%; height: 50%;" alt="Example of Button Bounce" src="P07files/buttonbounce3.png">
	      <div class="TB-FIGURES">Fig 2. Voltage over time transition of button release, with output.</div>
	    </td>
	  </tr>

	  <tr>
	    <td>
	      <span class="TB-BODY">
		<br>
		Now in Figure 2 there are two different signals showing, (Yellow)  the voltage over time signal of the button input, and (Blue) the voltage
		over time signal that is driving an external LED output (identical circuit and software configuration to project 6).  The circuit/sketch basically reads
		the input from the button and then if <LITERAL1>HIGH</LITERAL1> will drive the LED <LITERAL1>HIGH</LITERAL1>. Again like the previous figure, this is a close up of when the button
		has been released, except now the output from the LED is also shown. You can see that for most of the turbulence in the button input signal, the voltage
		level at the switch is high enough above the input threshold level for the digitalRead function to register it as a logic level <LITERAL1>HIGH</LITERAL1> (in the Max32 and Uno32
		this is approximately 2.4V).  Note though, in this figure that there are points were the voltage drops below the threshold level long enough for the
		chipKIT board to register the button input as a logical level <LITERAL1>LOW</LITERAL1>(as you can see it then drives the LED <LITERAL1>LOW</LITERAL1> while the input level is in a dip below
		the threshold voltage).
		<br><br>
		
		Overall you can see that the output now fluctuates because of the bounce.  Instead of one fluid ON/OFF signal that correlates to a single press of a
		button or switch throw, the signal is now choppy on the ends. Without a solution to this effect, the microcontroller can potentially interpret this as
		multiple button presses, and cannot tell whether a human pressed the button for 1 second or for 100 microseconds (while the latter being physically
		impossible by human standards).
		<br><br>
		
		Which is where debouncing comes into place.
		
		<br><br>
		
		Software debouncing is accomplished by taking multiple samples of the input signal, and determining whether to assert an output signal
		(the debounced version of the signal) <LITERAL1>HIGH</LITERAL1> or <LITERAL1>LOW</LITERAL1> based on if consecutive samples are received. For instance if two samples are both <LITERAL1>HIGH</LITERAL1>, and the time
		between them is much longer than the average duration of noise introduced by a bounce, then it is safe to say the signal is in a <LITERAL1>HIGH</LITERAL1> state.
		(Likewise the output signal is asserted LOW if two samples are taken that are both <LITERAL1>LOW</LITERAL1>).  In general practice only two samples are ever needed
		to accurately debounce a signal (given that the period between samples is long enough).

		<br><br>
	
	      </span>
	    </td>    
	  </tr>
	  
	  <tr>
	    <td align="center"><br>
	      <!-- Figure 2 -->
	      <img style="width: 50%; height: 50%;" alt="Example of Button Bounce 3" src="P07files/DEBOUNCEdiagram.png">
	      <div class="TB-FIGURES">Fig. 3 Voltage over time of input signal, and output signal of a button press example.</div>
	    </td>
	  </tr>

	  <tr>
	    <td>
	      <span class="TB-BODY">
		<br>
		
		Figure 3 shows a theoretical input signal and corresponding output signal (the input signal is the one in gray;
		the output signal is the one in blue). You can notice that the debounced output signal remains LOW until time T4.
		In this example, the point T4 and its previous point T3 are compared, and since both points are HIGH, the output
		signal is driven HIGH. (Note that the output signal only changes on consecutive samples, so if samples differs,
		the output signal remains in the same state as it was).
	      </span>
	    </td>
	  </tr>
	</tbody>
      </table>
    </cf_box>

      <br><br>

<!-- Step 1 setting up the Circuit -->
  <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
    <tbody>
      <tr>
	<td valign="top">
	  <span class="TB-H1">Step 1: Setting up the Circuit</span> 
	</td>
    </tr>
    
      <tr>
        <td align="center">
	  <br>
          
	  <!-- Figure 3 -->
          <img style="width: 800px; height: 700px;" alt="Fig 3. Circuit setup" src="P07files/configdiagram.png">
          <div class="TB-FIGURES">Fig 4. Circuit setup.</div>
	</td>	  
      </tr>

    
      <tr>
	<td>
	  <span class="TB-BODY">The circuit set up for this project will be identical to project 6 and the steps for setup will be simply reiterated.
            For a refresher on button and LED setup and theory Project 4: button controlled LEDs can be referenced.
      
      
            <ol>
	      <li>Connect the 5V pin from the chipKIT board to a bus strip; this strip will now be designated as the <b>5V bus strip</b>.</li>
	      <li>Connect the GND pin from the chipkit board to a bus strip adjacent to the 5V bus strip. This strip will be designated as the <b>ground bus strip</b>.</li>
	      <li>Place the LED into the breadboard, paying attention to which side is the anode, and which side is the cathode (anode has the longer lead).</li>
	      <li>Using a wire connect the anode of the LED to pin 12 of the chipKIT board.</li>
	      <li>Connect the cathode of the LED to a 330 &Omega; resistor.</li>
	      <li>Now connect the other end of the resistor to the ground bus strip.</li>
	      <li>Place a push button into the breadboard so that it spans the gap between columns in the breadboard. Remember that buttons used for this project are four terminal devices,
		were the top and bottom pairs of terminals are electrically connected. </li>	
	      <li>Using a wire connect one of the top terminals of the button to the 5V bus strip. The button will be oriented so that the top terminals are pointing right.</li>
	      <li>Connect the bottom terminal of the button to a 10k&Omega; resistor, and the end of the resistor not connected to the button, connect to the ground bus strip.</li>
	      <li>Using a wire connect from the bottom terminal of the button to pin 7 on the chipKIT board.</li>
	      
	    </ol>
	    
	    <br><br>
	 
	  </span>
	</td>
      </tr>
    </tbody>
  </table>
  

        
        <!-- Step 2 setting up the Circuit -->
	<table class="TBLAYOUT" style="width: 85%; cellpadding=0">
	  <tbody>
	    <tr>
	      <td valign="top">
		<span class="TB-H1">Step 2: Non-debounced Software</span> 
		
		<br><br> 
		
	      </td>
	    </tr>
   	  </tbody>
	</table>
	
	<!--   non-debounced   --->
	<table class="TBLAYOUT" style="width: 85%; cellpadding=0">
	  <tbody>
	    <tr>
	      <td><span class="TB-BODY">
		  
		  This step is simply designed to show the effects of button bounce, and allows the user to visually see when bounces occur in the circuit.
		  If you feel you already have a firm understanding of bounce, this step can be skipped and you can proceed to step 3.</span>
	
		<br><br>

		The following code is only designed for the user to observe bounce (it will not debounce the circuit) 

		<br><br>
		
	      </td>
	    </tr>
	  </tbody>
	</table>
	
        
    <!--   non-debounced   --->
    <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
      <tbody>
	<tr>
	  <td>
	    <div align="center">
              <pre class="brush: mpide; toolbox: false">
		
		
		const int btnPin = 7;      // number of the pushbutton pin
		const int ledPin = 8;      // number of the LED pin
		
		int currentBtn;            // current state of the LED
		int previousBtn;           // state of the LED from the previous loop
		unsigned int count;        // running sum of rising edges
		
		void setup() {
		
		pinMode(btnPin, INPUT);
		pinMode(ledPin, OUTPUT);
		
		currentBtn = LOW;
		previousBtn = LOW;
		count = 0;
		
		Serial.begin(9600);
  
		}
		
		void loop() {
		
		currentBtn = digitalRead(btnPin);
		
		if ((previousBtn == LOW) && (currentBtn ==HIGH)) {  // check for transition from LOW to HIGH
		count++;
		Serial.println(count);
		}
		
		previousBtn = currentBtn; 
		digitalWrite(ledPin, currentBtn);
		
		
		}
	      </pre>
	    </div>
	  </td>
	</tr>
      </tbody>
    </table>
   
    
    
    
    <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
      <tbody>
	<tr>
	  <td>
	    <span class="TB-BODY">   
	      
	      The code  is fairly straight forward and all functions used have been covered in previous projects.   
	      The sketch reads the current state of the input button, while keeping track of the state of the button from the previous loop of the main program.
	      If the previous button state is <LITERAL1>LOW</LITERAL1>, and the current state is <LITERAL1>HIGH</LITERAL1> then this indicates a rising edge transition (i.e. the signal starting to assert <LITERAL1>HIGH</LITERAL1>).
	      The sketch will then increments a counter variable and outputs that value to the Serial port. You can view this count through the Serial monitor window
	      (if you are unfamiliar with this reference project 5).
	     
	      <br><br>
	      
	      Ideally the sketch will increment the counter every time you press the button, but after a few button presses
	      you will start to notice that it sometimes skips.  Meaning you will press the button once, but it will count multiple times (usually two).  This happens because
	      multiple rising edges have been detected in very close succession (i.e. a button bounce has occurred).
	      
	      <br><br>
	      
	    </span>
	  </td>
	</tr>
      </tbody>
    </table>
    
    
    <br><br>

    <!--  step 3  debouncing software  -->
    <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
      <tbody>
	<tr>
	  <td valign="top"><span class="TB-H1">Step 3: Debounced Software </span> 
	    
	    <br><br>
      
	  </td>
	</tr>
      </tbody>
    </table>
    
    
    
    <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
      <tbody>
	<tr>
	  <td><span class="TB-BODY">
	      
	      The following code now, when implemented will correct for button bounce, and is very similar to the code example listed in MPIDE examples,
	      except now with the verification button press counter.

	      <br><br>

	      This algorithm is only slightly different than our theory of debounceing explanation but not by very much.  In implementation we only look at the
	      point when the input signal changes (for explanation sake will call the point when the signal changes, point A), and a pre-defined period of time
	      after point A,  point ( A - 1).  The first time the signal changes point A will be set, If the signal changes again but before the set period of
	      time has elapsed, then point A becomes this new point (ie the process restarts).  If the signal doesn’t change and the set time has elapsed, then
	      it means that point A, and point A -1 are the same value (remember if they were different the algorithm would have reset), So like out theory
	      of debounce if two sample points are both HIGH, or LOW, we drive the signal accordingly.
	     
	      <br><br>
	      
	      The verification part of the code will count the rising edges of the output variable, instead of the rising edge of the signal on the input pin.
	      
	      <br><br>

	      The code is run similar to step 2’s code.  The serial monitor will be used to observe the rising edge count as you press the button.
	      Now though every button press will increment the count exactly once, and you can notice that skipping no longer occurs.
	      
	      <br><br>
    
	    </span>
	    
	  </td>
	</tr>
      </tbody>
    </table>
    
    <br><br>
               
		  
		  
    <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
      <tbody>
	<tr>
	  <td>
	    
	    <div align="center">
              <pre class="brush: mpide;">
		
		
		const int btnPin = 7;                                     // Number of the pushbutton pin
		const int ledPin =  8;                                    // Number of the LED pin
		
		int currentLedState;                                      // Current and previous states of output LED pin
		int previousLedState;               
		int currentBtnState;                                      // Current and previous states of input Button pin
		int previousBtnState;               
		
		
		unsigned int count;                                       // Rising edge count of LED state
		unsigned int lastDebounceTime;      
		unsigned int debounceDelay;                               // Delay time
		
		void setup() {
		
		pinMode(btnPin, INPUT);
		pinMode(ledPin, OUTPUT);
		
		currentLedState = LOW;  
		previousLedState = LOW;
		currentBtnState = LOW;            
		previousBtnState = LOW;
		
		count = 0;
		lastDebounceTime = 0;  
		debounceDelay = 50;   
		
		Serial.begin(9600);
		
		}
		
		void loop() {
  
		currentBtnState = digitalRead(btnPin);
		
		if (currentBtnState != previousBtnState) {            
		
		lastDebounceTime = millis();                           // every time the button state changes, get the time of that change
		} 
		
		if ((millis() - lastDebounceTime) > debounceDelay) {     // if the difference between the last time the button changed is greater
                // than the delay period, it is safe to say
                // the button is in the final steady state, so set the LED state to
                // button state.
		currentLedState = currentBtnState;
		
		}
		
		
		
		// ********************* start functional code **************************************
		
		
		
		
		
		// verification code, and a button press counter
		
		if ((previousLedState == LOW) && (currentLedState == HIGH)) {
		//count rising edges
		count++; 
		Serial.println(count);
		}
		
		
		
		
		// ********************* end functional code **************************************
		
		
		
		// set current states to previous states
		digitalWrite(ledPin, currentLedState);
		previousBtnState = currentBtnState;
		previousLedState = currentLedState;
		}
	      </pre>
	    </div>
	  </td>
	</tr>
      </tbody>
    </table>
    
    
    
    
    
        <!--  Summary -->
        <table class="TBLAYOUT" style="width: 85%; cellpadding=0">
	  <tbody>
	    <tr>
	      <br><br>
	      <td valign="top">
		<span class="TB-H1">Summary </span> 
		
		<br><br> 
		
	      </td>
	    </tr>
	    <tr>
	      <td><span class="TB-BODY">
		  Software debouncing code is always expected to be used alongside other portions of code. Using the project code,
		  any segment of code can be placed within the “start function code” and “end function code” comment lines and can benefit
		  from a debounced version of the input signal. While this project just used a simple edge counting block of code, it could
		  have been substituted for any other block of code.
		  
		  It is important to note that this is only one of several ways of correcting button bounce. There are various methods of correcting bounce, both hardware and software based solutions.  A handful of these methods will be introduced in subsequent projects.
		  
		  
		</span>
	      </td>
	    </tr>
	    
	    <tr>
	      <td>
		
		<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
		  <tbody>
		    <tr>
		      <td>Core Concepts</td>
		    </tr>
		 <table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
		   <tbody>
		     <tr>
		       <td style="text-align: left; vertical-align: top;">Theory of button/switch bounce</td>
		     </tr>
	
		     <tr>
		       <td>Effects of bounce of a digital system</td>
		     </tr>
		     <tr>
		       <td>Software method for correcting bounce </td>
		     </tr>
	
		   </tbody>
		 </table>
    
		
		
		
  </body>
</html>  
