<html>
<head>

<title>Software Debouncing</title>
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
  <cf_Box Color="White">
    <table class="TBLAYOUT">      
	<tr>
	  <td align="center"> <span class="TB-PROJECTTITLE">
	      Project 7: <br>Software Debouncing<hr></span>
	      <br><br>
	  </td>
	</tr>
    </table>
    
    
    <table class="TBLAYOUT">
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

	      Bounce can be corrected in several different ways and can include either hardware or software solutions, but for this project we will be focus solely on a software solution.
	      <br><br>	      
				
            </span>
	    <br><br>
          </td>
	  
        </tr>
    </table>
    
      <!--  Parts List -----------------------------   --->
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
          <td align="center" class="image"><img src="P07files/LED_red.svg"></td>
	  </tr>
               
	  <tr>
          <td class="qty">1</td>
          <td>Two Port Button</td>
          <td align="center" class="image"><img src="P07files/Pushbutton.svg"></td>
	  </tr>
	
	  <tr>
          <td class="qty">1</td>
          <td>330 &Omega; Resistor</td>
          <td align="center" class="image"><img src="P07files/resistor_330.svg"></td>
	  </tr>

	  <tr>
          <td class="qty">1</td>
          <td>10 k&Omega; Resistor</td>
          <td align="center" class="image"><img src="P07files/resistor_10Ka.svg"></td>
	  </tr>	  
	
	  <tr>
          <td class="qty">5</td>
          <td>Connecting Wires</td>
          <td align="center" class="image"><img src="P07files/FritzWire.svg"></td>
	  </tr>	


	  </tbody
	</table>
	
	<br><br>
      </td></tr>
  </tbody>
  </table>
  

  <br><br>
    
    
    <!--   Theory of Bounce   --->
    <cf_box color="putty">
    
      <table class="TBLAYOUT">
	  <tr>
	    <td valign="top"><span class="TB-H2">Bounce</span> 	      
	    </td>
	  </tr>
	  <tr>
	    <td><span class="TB-BODY"> As we previously mentioned,
		bounce is a mechanical property of switches and
		buttons that can potentially introduce problems into
		digital circuits. In a simple button circuit like
		those introduced in projects 4 or 6, we like to to
		think of the rising and falling edges of the signal
		that is produced when one presses a button as being
		perfectly crisp and instantaneous transitions.  In
		reality, when a button is pressed or released (or a
		switch thrown), there is a small amount of time (in
		the microsecond range) where the electrical signal can
		fluctuate anywhere from 0V to the <span class="TB-LITERAL1">HIGH</span>
		voltage level (typically 3.3V or 5V).  This is caused
		by the physical material of the switch or button
		reverberating and finally winding down to a steady
		state.  While the physical material is vibrating,
		bounce affects the voltage level of the output.  In
		general, this causes the transition edges not be as
		clean (ideal) as we would like.
	      </span>
	    </td>
	  </tr>
	  <tr>
	    <td align="center"><br>
	      <!--  Figure 1 -->
	      <img src="P07files/buttonbounce1.png">
	      <div class="TB-FIGURES">Fig 1. Voltage over when a button is released.</div>
	      
	    </td>
	  </tr>
	  <tr>
            <td>
              <span class="TB-BODY"><br> Figure 1 shows the voltage
		over time of a button releasing (using the same
		circuit configuration as in project
		4).  You can
		see that the button is at a steady voltage state of
		<span class="TB-LITERAL1">HIGH</span>. Then, as it is released, a brief
		period of turbulence occurs for about 400 microseconds
		just before cutting off.  Because the Max32 and Uno32
		(and most other microcontrollers) run at such a
		fast rate, they can potentially capture these
		fluctuations, causing the potential for
		incorrect circuit operation.
              </span>  
	    </td>	 
	  </tr>


	  <tr>
	    <td align="center"><br>
	      <!-- Figure 2 -->
	      <img src="P07files/buttonbounce3.png">
	      <div class="TB-FIGURES">Fig 2. Voltage over time
	      of a  button release, showing LED output.</div>
	    </td>
	  </tr>

	  <tr>
	    <td>
	      <span class="TB-BODY">
		<br>
		In Fig. 2, there are two different signals showing—the
		voltage over time signal of the button input (in yellow)
		and the voltage over time signal that is driving an external
		LED output (in blue). (This graph uses a simple button circuit
		and sketch like project  4). The circuit/sketch basically reads
		the input from the button, and then, if <LITERAL1>HIGH</LITERAL1>,
		will drive an LED <LITERAL1>HIGH</LITERAL1>. Like Fig. 1, this shows
		a close up of when the button has been released, except now the
		output from the LED is also depicted. Throughout most of the duration
		of the button's input signal, the
		voltage level is sufficiently higher than the input threshold level
		for the digitalRead function to register it as a logic level <LITERAL1>HIGH</LITERAL1>
		(in the Max32 and Uno32, this is approximately 2.4V). However,
		as you may note, there are points where the voltage drops below the
		threshold level long enough for the chipKIT board to register the
		button input as a logical level LOW.
		<br><br>
		
		The LED output now fluctuates because of bounce.
		Instead of one fluid ON/OFF signal that correlates to
		a single press of a button or switch throw, the signal
		is now choppy on the ends. Without a something to
		mitigate this effect, the microcontroller interprets
		this as multiple button presses, and cannot tell
		whether a human pressed the button for one second or for
		100 microseconds (the latter is physically impossible
		for humans).
		<br><br>
		
		This is where debouncing becomes useful.  Software
		debouncing is accomplished by taking multiple samples
		of the input signal and determining whether to assert
		an output signal (the debounced version of the
		signal) <LITERAL1>HIGH</LITERAL1>
		or <LITERAL1>LOW</LITERAL1> based on whether
		consecutive samples are received. For instance, if two
		samples are both <LITERAL1>HIGH</LITERAL1>, and the
		time between them is much longer than the average
		duration of noise introduced by a bounce, then it is
		safe to say that the signal is in
		a <LITERAL1>HIGH</LITERAL1> state.  (Similarly, the
		output signal is considered to be <span class="TB-LITERAL1">LOW</span> if
		the samples that are taken are
		both <LITERAL1>LOW</LITERAL1>.)  Generally, only two
		samples are ever needed to accurately debounce a
		signal, provided that the period between samples is long
		enough.

		<br><br>
	
	      </span>
	    </td>    
	  </tr>
	  
	  <tr>
	    <td align="center"><br>
	      
	      <img src="P07files/DEBOUNCEdiagram.svg">
	      <div class="TB-FIGURES">Fig. 3 Voltage over time of
	      input signal, and output signal of a button press
	      example.<!--Rephrase for clarity--></div>
	    </td>
	  </tr>

	  <tr>
	    <td>
	      <span class="TB-BODY">
		<br>
		
		Figure 3 shows a theoretical input signal and
		corresponding output signal (the input signal is the
		one in gray; the output signal is the one in
		blue). Note that the debounced output signal
		remains <span class="TB-LITERAL1">LOW</span> until time T4.  In this
		example, the point T4 and its previous point T3 are
		compared <!--by what? a program? the user?-->, and
		since both points are <span class="TB-LITERAL1">HIGH</span>, the output
		signal is driven <span class="TB-LITERAL1">HIGH</span>. (The output signal
		only changes on consecutive samples, so if samples
		differ, the output signal remains in the same state as
		it was.)
	      </span>
	      <br><br>
	    </td>
	  </tr>
	</tbody>
      </table>
    </cf_box>

 <br><br>

<!-- Step 1 setting up the Circuit -->
  <table class="TBLAYOUT">
      <tr>
	<td valign="top">
	  <span class="TB-H1">Step 1: Setting up the Circuit</span> 
	</td>
      </tr>
    
      <tr>
        <td align="center">
	  <br>
          
	  <!-- Figure 3 -->
          <img src="P07files/setup.svg">
          <div class="TB-FIGURES">Fig 4. Circuit with a button and an LED.</div>
	</td>	  
      </tr>

    
      <tr>
	<td>
	  <span class="TB-BODY">The circuit set up for this project will be identical to project 6 and the steps for setup will be simply reiterated.
            For a refresher on button and LED setup and theory Project 4: button controlled LEDs can be referenced.
      
      
            <ol>
	      <li>Connect the 5V pin from the chipKIT board to a bus
	      strip; we will now refer to this bus strip as the <i>5V
	      bus strip</i>.</li>
	      <li>Connect the ground pin on the chipKIT board to a bus
	      strip adjacent to the 5V bus strip. This strip will be
	      designated as the <i>ground bus strip</i>.</li>
	      <li>Place the LED into the breadboard, noting the anode
	      and cathode.</li>
	      <li>Use a wire to connect the anode of the LED to pin 12
	      of the chipKIT board.</li>
	      <li>Connect the cathode of the LED to a 330&Omega;
	      resistor.</li>
	      <li>Now, connect the other end of the resistor to the
	      ground bus strip.</li>
	      <li>Place a push button into the breadboard so that it spans the gap between columns in the breadboard. Remember that buttons used for this project are four-terminal devices,
	      where the terminals are grouped into sets of two, and each terminal in a set is electrically connected. For simplicity, figure 4 designates these groups as “A” terminals and “B” terminals. </li>	
	      <li>Using a wire, connect one of the “A” terminals of the button to the 5V bus strip.</li>
	      <li>Connect one of the “B” terminals of the button to a 10k&Omega; resistor, and then connect the end of the resistor not connected to the button to the ground bus strip.</li>
	      <li>Using a wire, connect from one of the "B" terminals of the button to pin 7 on the chipKIT board.</li>
	      
	    </ol>
	    
	    <br><br>
	 
	  </span>
	</td>
      </tr>
  </table>
  

        
        <!-- Step 2 setting up the Circuit -->
	<table class="TBLAYOUT">
	    <tr>
	      <td valign="top">
		<span class="TB-H1">Step 2: Non-debounced Software</span> 
		
		<br><br> 
		
	      </td>
	    </tr>
	</table>
	
	<!--   non-debounced   --->
	<table class="TBLAYOUT">
	    <tr>
	      <td><span class="TB-BODY">
		  
		  This step's purpose is to show the effects of button
		  bounce and allows the you to visualize when bounces
		  occur in the circuit.  If you feel you already have
		  a firm understanding of bounce, this step can be
		  skipped and you can proceed to step 3.  In other
		  words, the following code is only designed for the
		  user to observe bounce (it will not debounce the
		  circuit).</span>

		<br><br>
		
	      </td>
	    </tr>
	</table>
	
        
    <!--   non-debounced   --->
    <table class="TBLAYOUT">
	<tr>
	  <td>
	    <div align="center">
              <div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
</cf_box>
</div>
	    </div>
	  </td>
	</tr>
    </table>
   
    
    
    
    <table class="TBLAYOUT">
	<tr>
	  <td>
	    <span class="TB-BODY">   
	      
	      The code is fairly straightforward and all functions we
	      use are from previous projects.  The sketch reads the
	      current state of the input button while keeping track of
	      the state of the button from the previous loop of the
	      main program.  If the previous button state
	      is <LITERAL1>LOW</LITERAL1> and the current state
	      is <LITERAL1>HIGH</LITERAL1>, then this indicates a
	      rising edge transition (i.e., the signal starting to
	      assert <LITERAL1>HIGH</LITERAL1>).  The sketch then
	      increments a counter variable and outputs that value to
	      the Serial Port. You can view this count through the
	      serial monitor window (if you are unfamiliar with this
	      reference project 5).<!--Make sure you're
	      capitalizing/using lower case consistently-->
	     
	      <br><br>
	      
	      Ideally, the sketch would increment the counter every
	      time you press the button. However, after a few button
	      presses, it sometimes skips.  Thus, you will press the
	      button once, but it <!--what is the 'it' you're talking
	      about?--> will count multiple times (usually two).  This
	      happens because multiple rising edges have been detected
	      in very close succession (i.e. a button bounce has
	      occurred) <!--detected by what?-->.
	      
	      <br><br>
	      
	    </span>
	  </td>
	</tr>
    </table>
    
    
    <br><br>

    <!--  step 3  debouncing software  -->
    <table class="TBLAYOUT">
      
	<tr>
	  <td valign="top"><span class="TB-H1">Step 3: Debounced Software </span> 
	    
	    <br><br>
      
	  </td>
	</tr>
      
    </table>
    
    
    
    <table class="TBLAYOUT">
	<tr>
	  <td><span class="TB-BODY">
	      
	      The following code corrects button bounce and is very
	      similar to the code example listed in MPIDE
	      examples <!--Do you mean from the examples provided
	      within MPIDE? If so, indicate that.-->. The main
	      differenc is that this code shows the verification
	      button press counter.

	      <br><br>

	      This algorithm is only slightly different than our
	      explanation of the theory of debouncing.  In
	      implementation<!--it isn't clear what you're talking
	      about-->, we only look at the point when the input
	      signal changes. Within this explanation, we will call
	      the point when the signal changes &ldquo;point A,&rdquo;
	      and a predefined period of time after point A will be
	      &ldquo;point (A - 1).&rdquo; The first time the signal
	      changes, point A will be set. If the signal changes
	      again before the set period of time has elapsed, then
	      point A becomes this new point (i.e., the process
	      restarts).  If the signal doesn’t change and the set
	      time has elapsed, then it means that point A and point
	      (A -1) have the same value. (Remember, if they were
	      different, the algorithm would have reset.) Thus, if two
	      sample points are both <span class="TB-LITERAL1">HIGH</span>
	      (or <span class="TB-LITERAL1">LOW</span>), we drive the signal
	      accordingly <!--Do you mean that the signal becomes HIGH
	      or LOW too? Not clear-->. The part of the code dealing
	      with verification will count the rising edges of the
	      output variable, instead of the rising edge of the
	      signal on the input pin.

	      <br><br>

	      The code is executed similary to the code in Step 2.  We
	      will use the serial monitord to observe the rising edge
	      count as we press the button.  Now, every button press
	      increments the count exactly once, and skipping no
	      longer occurs.
	      
	      <br><br>
    
	    </span>
	    
	  </td>
	</tr>
    </table>
    
    <br><br>
               
		  
		  
    <table class="TBLAYOUT">
	<tr>
	  <td>
	    
	    <div align="center">
              <div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
		
		lastDebounceTime = millis();
		// every time the button state changes, get the time of that change
		} 
		
		if ((millis() - lastDebounceTime) > debounceDelay) {
		
		/*
		*if the difference between the last time the button changed is greater
                *than the delay period, it is safe to say
                *the button is in the final steady state, so set the LED state to
                *button state.
		*/
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
</cf_box>
</div>
	    </div>
	  </td>
	</tr>
    </table>
    
    
    
    
    
        <!--  Summary -->
        <table class="TBLAYOUT">
	    <tr>
	      <td valign="top">
		<span class="TB-H1">Summary </span> 
		
		<br><br> 
		
	      </td>
	    </tr>
	    <tr>
	      <td><span class="TB-BODY"> Debouncing code is always
		  expected to be used in conjunction with other kinds
		  of code. Using the project code, any segment of code
		  can be placed within the &ldquo;start
		  function&rdquo; code and &ldquo;end function&rdquo;
		  code comment lines and can benefit from a debounced
		  version of the input signal. While this project uses
		  a simple edge counting block of code, we substituted
		  any other block of code.
		  
		  It is important to note that this is only one way to
		  correct button bounce. We will discuss some of the
		  other ways this can be done in subsequent projects.
		</span>
		<br><br>
	      </td>
	    </tr>
	    
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
                  <td>Core Concepts:</td>
                  <td>
                     <ul>
                     <li>Theory of button/switch bounce</li>
                     <li>Effects of bounce on a digital system</li>
                     <li>Software method for correcting bounce </li>
            
                     </ul>
                  </td>
               </tr>
            </tbody>
            </table>
		
	  </td></tr>
	  </table>
		
</cf_Box>
</body>
</html> 
