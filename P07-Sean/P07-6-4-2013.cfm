<html>
<head>

<title>Software Debouncing</title>
  <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
    
    <!--KEYWORDS
  bounce
  button bounce
  debouncing algorithm
  software debouncing
  theory of button/switch bounce
  effects of bounce on a digital system
    -->
    
</head>
    
    
  <body>
  <cf_Box Color="White">

  <table class="TBLAYOUT">      
	  <tr>
		  <td align="center"> <span class="TB-PROJECTTITLE">
				  <br><br>Software Debouncing</span><br><br>

		  </td>
	  </tr>
  </table>
    
    
  <table class="TBLAYOUT">
	  <tr>
		  <td>
	    <!--  Intro portion -----------------------------   --->
	       <span class="TB-H1">Introduction</span>

	       <br><br>
	       
	       <span class="TB-BODY">
		       In this project, we will write a software sketch to identify and correct the effects of button bounce on the chipKIT microcontroller boards.
		       Bounce is an inherent property of mechanical buttons and switches that introduces electrical noise when they are turned on or off.
		       <br><br>
		       This noise associated with transitions is non-ideal and sometimes causes input signals to be read incorrectly. This type of error occurs in all microcontrollers
		       and digital devices, not just in chipKIT boards.
		       <br><br>
		       As in the <a href="linkhere.cfm">Trainable Delay</a> project, this circuit includes a single button and external LED. However, in this project, the software will show a
		       running count of how many times the button has been pressed. It accomplishes this by counting rising edges. It is visible on your computer screen using MPIDE's serial monitor.
		       We will run the circuit with and without debouncing so that you can observe how button bounce can affect a circuit.
		       <br><br>
		       
		       Bounce can be corrected in several different ways and can include either hardware or software solutions, but in this project, we will focus exclusively on a software solution.
		       <br><br>	      
		       
	       </span>
		  </td>
	  </tr>
  </table>
  
  <br>

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
          <th scope="col" width="40%">&nbsp;</th>
          <th scope="col" width="25%">&nbsp;</th>
	  <th scope="col" width="25%">&nbsp;</th>
        </tr>
	
	</thead>
	<tbody>
	
	  <tr>
          <td class="qty">1</td>
          <td>LED</td>
		<td align="left" class="image">
		<cf_imagebox align="center" path="../Parts/LED_red.svg" width="30px"></td>
		<td align="left" bgcolor="white">
		<cf_imagebox align="center" path="../Parts_Schematic/LED_No_Text.svg" width="70px"></td>
	  </tr>
               
	  <tr>
          <td class="qty">1</td>
          <td>Two Port Button</td>
          <td align="left" class="image">
		<cf_imagebox align="center" path="../Parts/PushButton.svg" width="50px"></td>
		<td align="left" bgcolor="white">
		<cf_imagebox align="center" path="../Parts_Schematic/Button_No_Text.svg" width="200px"></td>
	  </tr>
	
	  <tr>
          <td class="qty">1</td>
          <td>220 &Omega; Resistor</td>
         <td align="left" class="image">
		<cf_imagebox align="center" path="../Parts/resistor_220.svg" width="90px"></td>
		<td align="left" bgcolor="white">
		<cf_imagebox align="center" path="../Parts_Schematic/Resistor_90deg.svg" width="120px"></td>
	  </tr>

	  <tr>
          <td class="qty">1</td>
          <td>10 k&Omega; Resistor</td>
          <td align="left" class="image">
		<cf_imagebox align="center" path="../Parts/resistor_10Ka.svg" width="90px"></td>
		<td align="left" bgcolor="white">
		<cf_imagebox align="center" path="../Parts_Schematic/Resistor_90deg.svg" width="120px"></td>
	  </tr>	  

	  </tbody
	</table>
	
	<br><br>
      </td></tr>
  </tbody>
  </table>
      
  

  <br><br>
    
    
    <!--   Theory of Bounce   --->
    
  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <span class="TB-H1">Bounce</span><br><br>

			  <span class="TB-BODY"> As we previously mentioned, bounce
				  is a mechanical property of switches and buttons that
				  can potentially introduce problems into digital
				  circuits. In a simple button circuit like those
				  introduced in previous projects, we like to think of the
				  rising and falling edges of the signal produced when one
				  presses a button as being perfectly crisp and
				  instantaneous transitions.  In reality, when a button is
				  pressed or released (or a switch thrown), there is a
				  small amount of time (in the microsecond range) where
				  the electrical signal can fluctuate anywhere from 0V to
				  the <span class="TB-LITERAL1">HIGH</span> voltage level (typically 3.3V or
				  5V).  This is caused by the physical material of the
				  switch or button reverberating and finally winding down
				  to a steady state.  While the physical material is
				  vibrating, bounce affects the voltage level of the
				  output.  In general, this causes the transition edges
				  not to be as clean (ideal) as we would like.

				  <br><br>

				  <div align="center">
					  <cf_imagebox align="center" path="P07files/buttonbounce1.png" width="500px"caption="Fig 1. Voltage over time when a button is released.">
				  </div>

				  Figure 1 shows the voltage over time of a button
				  releasing (using the same circuit configuration as in
				  project 4).  You can see that the button is at a steady
				  voltage state of <span class="TB-LITERAL1">HIGH</span>. Then, as it is
				  released, a brief period of turbulence occurs for about
				  400 microseconds just before cutting off.  Because the
				  Max32 and Uno32 (and most other microcontrollers) run at
				  such a fast rate, they can potentially capture these
				  fluctuations, possibly causing incorrect circuit
				  operation.

				  <br><br>

				  <div align="center">
					  <cf_imagebox align="center" path="P07files/buttonbounce3.png" width="500px"caption="Fig 2. Voltage over time of a button release, showing LED output.">
				  </div>

				  In Fig. 2, there are two different signals, the yellow
				  showing the voltage over time signal of the button input
				  and the blue showing the voltage over time signal that is
				  driving an external LED output. (This graph uses a
				  simple button circuit and sketch, like in project
				  4). The circuit/sketch basically reads the input from
				  the button, and then, if <span class="TB-LITERAL1">HIGH</span>, will drive
				  the corresponding LED <span class="TB-LITERAL1">HIGH</span>. Like Fig. 1,
				  this shows a close up of when the button has been
				  released, except now the output from the LED is also
				  depicted. Throughout most of the duration of the
				  button's input signal, the voltage level is sufficiently
				  higher than the input threshold level for the
				  <span class="TB-KEYWORD2">digitalRead</span> function to register it as a
				  logic level <span class="TB-LITERAL1">HIGH</span> (in the Max32 and Uno32,
				  this is approximately 2.4V). However, as you may notice,
				  there are points where the voltage drops below the
				  threshold level long enough for the chipKIT board to
				  register the button input as a logical
				  level <span class="TB-LITERAL1">LOW</span>.

				  <br><br>
		
				  The LED output now fluctuates because of bounce.
				  Instead of one fluid ON/OFF signal that correlates to
				  a single press of a button or switch throw, the signal
				  is now choppy on the ends. Without something to
				  mitigate this effect, the microcontroller interprets
				  this as multiple button presses and cannot tell
				  whether a human pressed the button for one second or for
				  100 microseconds (the latter is physically impossible
				  for humans).

				  <br><br>

				  
				  
				  <div align="center">
				  <cf_imagebox align="right" path="P07files/DEBOUNCEdiagram1.svg" width="513" caption="Fig. 3 Voltage over time of input signal and output signal of a button press.">
				  </div>
				  
				  This is where debouncing becomes useful.  Software
				  debouncing is accomplished by taking multiple samples of
				  the input signal and determining whether to assert an
				  output signal (the debounced version of the
				  signal) <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span> based on
				  whether consecutive samples are received. For instance,
				  if two samples are both <span class="TB-LITERAL1">HIGH</span>, and the time
				  between them is much longer than the average duration of
				  noise introduced by a bounce, then it is safe to say
				  that the signal is in a <span class="TB-LITERAL1">HIGH</span> state.
				  (Similarly, the output signal is considered to
				  be <span class="TB-LITERAL1">LOW</span> if the samples that are taken are
				  both <span class="TB-LITERAL1">LOW</span>.)  Generally, only two samples are
				  ever needed to accurately debounce a signal, provided
				  that the period between samples is long enough.

				  <br><br>
				  
				  Figure 3 illustrates this algorithmic method of
				  debouncing by showing a theoretical input signal and
				  corresponding output signal (the input signal is the one
				  in gray; the output signal is the one in blue).  In this
				  example, the debounced output signal
				  remains <span class="TB-LITERAL1">LOW</span> until time T4.  At this point
				  the output signal is driven <span class="TB-LITERAL1">HIGH</span> because T4
				  and the previous point T3 were both <span class="TB-LITERAL1">HIGH</span> .
			  </span>
		  </td>
	  </tr>
  </table>

 <br><br>

<!-- Step 1 setting up the Circuit -->
   <table class="TBLAYOUT">
	   <tr>
		   <td>
			   <cf_box color="putty">
				<span class="TB-H2">Step 1: Setting up the Circuit</span><br><br> 

				<div align="center">
					<cf_imagebox align="center" path="P07files/setupnew.svg" caption="Fig 4. Circuit with a button and an LED." width="800px">
				</div>

				<span class="TB-BODY">The circuit set up for this project
					is identical to that of <a href="P06.cfm">Blink LED
					with Trainable Delay</a>, and the steps for setup will
					be simply reiterated.  For a refresher on button and
					LED setup and theory, refer to <a href="P04.cfm">Button-Controlled LEDs</a>.
					
					<!--Replace this list with the one found in the P04 that's on the server.-->
					<ol>
						<li>Connect the 3.3V pin from the chipKIT board to a bus
							strip; we will now refer to this bus strip as the <i>3.3V
								bus strip</i>.</li>
						<li>Connect the ground pin on the chipKIT board to a bus
							strip adjacent to the 3.3V bus strip. This strip will be
							designated as the <i>ground bus strip</i>.</li>
						<li>Place the LED into the breadboard, noting the anode
							and cathode.</li>
						<li>Use a wire to connect the anode of the LED to pin 12
							of the chipKIT board.</li>
						<li>Connect the cathode of the LED to a 220&Omega;
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

				<span class="TB-H2">Step 2: Non-debounced Software</span> 
		
				<br><br> 

				<span class="TB-BODY">
					
					This step's purpose is to show the effects of button
					bounce and allows you to visualize when bounces
					occur in the circuit.  If you feel you already have
					a firm understanding of bounce, this step can be
					skipped and you can proceed to step 3.  In other
					words, the following code is only designed for the
					user to observe bounce (it will not debounce the
					circuit).
				
					<br><br>
		
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
					<br><br>
					The code is fairly straightforward and all functions we
					use are from previous projects.  The sketch reads the
					current state of the input button while keeping track
					of the state of the button from the previous loop of
					the main program.  If the previous button state
					is <span class="TB-LITERAL1">LOW</span> and the current state
					is <span class="TB-LITERAL1">HIGH</span>, then this indicates a rising edge
					transition (i.e., the signal starting to
					assert <span class="TB-LITERAL1">HIGH</span>).  The sketch then increments
					a counter variable and outputs that value to the serial
					port. You can view this count through the serial
					monitor window (if you are unfamiliar with this,
					reference project 5).
	     
					<br><br>
					
					Ideally, the sketch would increment the counter variable every
					time you press the button. However, after a few button presses,
					you will start to notice that sometimes the counter variable will
					increment multiple times.
					<br><br>
					I.e., you will press the button once, but
					you will see more than one counter value printed to the serial monitor.
					This happens because the program sketch has detected multiple rising edges
					in very close succession (this occurs because of a button bounce).

	      
				</span>

				<br><br>

				<span class="TB-H1">Step 3: Debounced Software </span> 
	    
				<br><br>

				<span class="TB-BODY">
					
					The following code corrects button bounce and is very similar
					to the code example that is provided within MPIDE examples
					(File->Example->Digital->Debounce). This code is extended
					to provide a button press counter capability (by counting
					rising edges) to verify the code is operating correctly.
					
					<br><br>
					
					The debouncing algorithm used for this sketch at first may appear
					slightly different than our theoretical explanation, but once
					examined you can see the differences are only marginal.
					
					<br><br>
					
					When analyzing the debouncing algorithm used for our sketch, we
					only look at the point when the input signal changes (as opposed
					to taking a periodic time sample like our theory explanation
					suggested). 
					
					<br><br>
					
					For this algorithm, we will call the point when the signal changes
					“point A,” and a predefined period of time after point A will be
					“point (A - 1).” Point A is set the first time the input signal changes,
					but If the input signal happens to change again before a set period of
					time has elapsed, then point A will become this new point (i.e., the
					process restarts). Now if the input signal doesn't change and the set
					time has elapsed, then it means that point A and point (A -1) have
					the same value. (If they were different, the algorithm would have
					already reset itself.) Thus,if A and (A-1) are both <span class="TB-LITERAL1">HIGH</span> ,
					the output variable is set HIGH accordingly . (Likewise if both points
					were <span class="TB-LITERAL1">LOW</span>, the output signal would be driven <span class="TB-LITERAL1">LOW</span>).
					
					<br><br>
					
					The portion of the code counting button presses will now look at the
					output variable instead of looking at the value of the input pin
					(as in step 2).
					
					<br><br>
					
					The code is executed identically to the code in step 2.  We will use
					the serial monitor to observe a running count of every time we press
					the button. Now, every button press increments the count
					exactly once and multiple counting no longer occurs.

	      
	      <br><br>
    
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
				</span>
			   </cf_box>
		   </td>
	   </tr>
   </table>
    
    
    <br><br>
    
    
        <!--  Summary -->
   <table class="TBLAYOUT">
	   <tr>
		   <td>
			   <span class="TB-H1">Summary </span> 
			   
			   <br><br> 
			   <span class="TB-BODY"> Debouncing code is always expected
				   to be used in conjunction with other kinds of
				   code. Using the project code, any segment of code can
				   be placed within the &ldquo;start function&rdquo; code
				   and &ldquo;end function&rdquo; code comment lines and
				   can benefit from a debounced version of the input
				   signal. While this project uses a simple edge counting
				   block of code, we can substitute any other block of
				   code.
		  
				   It is important to note that this is only one way to
				   correct button bounce. We will discuss some of the
				   other ways this can be done in subsequent projects.
				   
				   
				   
	    <cf_imagebox align="center" path="P07files/P07_schem.svg" width="900px">
	    <a href="P07files/P07_schem.pdf">Trainable Delay Project Schematic (PDF)</a> 
	    </span>
				   
				   
				   
				   
			   </span>
		   </td>
	   </tr>
   </table>

   <table clas="TBLAYOUT">	    
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
		
	     </td>
	   </tr>
	 </table>
		
</cf_Box>
</body>
</html> 
