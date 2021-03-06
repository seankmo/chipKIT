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
    <p> <span class="TB-H1">Introduction</span></p>
    <hr hr="" align="left" color="#2c2c2c" size="2" width="75%"><br>
        <span class="TB-BODY"><p class="MsoNormal">
               For this project we will be writing a software sketch to identify and correct the effects of button bounce
               on the chipKIT microcontroller boards. Bounce is an inherent property of mechanical buttons and switches that
               occurs when they transition from the OFF to ON state (and vice versa, ON to OFF),causing  the transition to not
               be smooth or instantaneous.  These non-idealistic transitions can cause incorrect operation in microcontrollers
               and are a universal problem to all microcontrollers and digital devices, (not just chipKIT boards).  The circuit
               constructed in this project will be similar to that of Project 6: Trainable Delay. It will be comprised of a single
               button and external LED. The project will be extended to show a running count of how many times the button has been
               pressed (by counting rising edges) on the serial monitor.  The circuit will be run with and without debouncing so
               the user can notice the effects that button bounce can have on a circuit.  While there are several methods to
               accomplish de-bouncing, this project is aimed at using software to correct this problem.
				<br/><font color="red">Breaking this into paragraphs should improve readability. Some sentence rephrasing, making longer ones shorter/concise could help as well.</font>
        </p></span><br><br>
        </td>
            <td style="width: 320px; text-align: left; vertical-align: top;">
				<font color="red">Picture?<br/>Looks "off" because it doesn't line up with the title or
					inventory.</font>
            </td>
            </tr>
            <tr>
            </tr>
            </tbody>
    </table>
    
      <!--  Parts List -----------------------------   --->
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    
    
    <td valign="top"><span class="TB-H1">Inventory:</span>
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br>
    <span class="TB-BODY">
		<font color="red">I don't know if we need to list the board and cable in these later 
			projects. Probably something to bring up during a meeting, because we could assume
			that those are a given, but I don't know.</font>
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
        
<br>
<br>
</td>
</tr>
    
    
    </tbody>
    </table>
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td valign="top"><span class="TB-H2">Prerequisite references:</span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    <tr>
    <td><span class="TB-BODY">
    <ul>
      
      <li>Project 4: Button Controlled LEDS; for setup of buttons and external LED</li>
      <li>Project 5: MPIDE Serial Output; using the Serial monitor in MPIDE </li>
      
      
      
      
    </ul>
    </td>
    </tr>
    
    </tbody>
    </table>
    
    
    <!--   Theory of Bounce   --->
                  <cf_box color="green"
	style="width:85%">
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td valign="top"><span class="TB-H2">Theory of Bounce:</span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    <tr>
    <td><span class="TB-BODY">
     As mentioned above, bounce is a mechanical property of switches and buttons that can
     potentially introduce problems into digital circuits. When a user presses a button or throws
     a switch, we would like to think of it as an ideal (perfect) transition where at the moment
     the switch or button is activated it is considered to be in a high voltage state.  In reality
     when a button is pressed or released (or switch thrown), there is a small amount of time
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
    Figure 1 is a graph of voltage over time of a button releasing (identical circuit configuration as in project 6.
    You can see that the button is at a steady voltage state of HIGH, and then as it is being released, a small period of turbulence
    occurs for about 400 microseconds just before cutting off.  Because the Max32 and Uno32 (and most microcontrollers in general)
    run at such a fast rate, they can potentially capture these fluctuations which is where the potential for incorrect circuit operation stems from.  
          </span>  
      </tr>
    </td>

      <tr>
        <td align="center"><br>
          <!-- Figure 2 -->
        <img style="width: 50%; height: 50%;" alt="Example of Button Bounce" src="P07files/buttonbounce3.png">
        <div class="TB-FIGURES">Fig 2. Voltage over time transition of button release, with output.</div>

          </tr>
    </td>
    
    <tr>
    <td><span class="TB-BODY"><br>
    Now in Figure 2 there are two different signals showing, (Yellow)  the voltage over time signal of the button input, and (Blue) the voltage
    over time signal of an external LED output (identical circuit and software configuration to project 6).  The circuit/sketch basically reads
    the input from the button and then if HIGH will drive the LED HIGH. Again like the previous figure, this is a close up of when the button
    has been released, except now the output from the LED is also shown. You can see that for most of the turbulence in the button input, the voltage
    level at the switch is high enough above a threshold level for the digitalRead function to register it as a logic level HIGH (in the Max32 and Uno32
    this is approximately 2.4V).  Note though, in this figure that there are points were the voltage drops below the threshold level long enough for the
    chipKIT board to register the button input as a logical level LOW( as you can see it then drives the LED LOW while the input level is in a dip below
    the threshold voltage).<br><br>

   Overall you can see that the output now fluctuates because of the bounce.  Instead of one fluid ON/OFF signal that correlates to a single press of a
   button or switch throw, the signal is now choppy on the ends. Without a solution to this effect, the microcontroller can potentially interpret this as
   multiple button presses, and cannot tell whether a human pressed the button for 1 second or for 100 microseconds (while the latter being physically
   impossible by human standards).<br><br>
    
   Which is where debouncing comes into place.<br><br>

  The basic concept of software debouncing is to take multiple samples of the input signal at a period longer than then the average period of button bounce.
  If all samples are say HIGH  ( and not mixed, for instances the first sample is HIGH, but the second is LOW),  it is safe to say that the button has been pressed
  (and likewise if all samples are LOW, it is safe to say that the button has been released).   With a long enough period of time between samples, generally only two
  samples need to be taken to accurately determine if a button or switch is truly asserted or not.
	<br/><font color="red">This paragraph could be rewritten to improve clarity.</font>
	<br><br>

    </span>


    </tr>
    </td>
    
          <tr>
        <td align="center"><br>
          <!-- Figure 2 -->
        <img style="width: 50%; height: 50%;" alt="Example of Button Bounce 3" src="P07files/DEBOUNCEdiagram.png">
        <div class="TB-FIGURES">Fig. 3 Voltage over time of input signal, and output signal of a button press example.</div>

          </tr>
    </td>
    
       <tr>
    <td><span class="TB-BODY"><br>
    <p>
      To implement debouncing we will need to read the state of the input signal at a set time interval, and for purposes of explanation
      we will denote this as period T.  The algorithm works by simply comparing the current state of the signal with the
      previous state.  If both the current and previous states are HIGH, then the output is driven HIGH.  Conversely if
      both current and previous states are LOW, the output signal is driven LOW.  (If both states differ the output signal
      remains in the state it was).   In Figure 3 you can see at samples T1 and T0, the signal at both sample points are LOW
      so the output signal is also LOW. Note that the signal is below the threshold until time point T3 and T2, when T3 is HIGH but T2 is LOW,
      so the output signal remains in its current state LOW.  At point T4 and T3, both signals are HIGH so then the output is driven HIGH.</p>

      <p>Now as long as the current time point and the time point previous are both HIGH the output signal will be driven HIGH.
      The output signal will not be driven LOW again until the current and previous states are both LOW.</p>
<br><br>
    </span>
    
        </tr>
    </td>
    
    </tbody>
    </table>
    </cf_box>
    <!-- Step 1 setting up the Circuit -->
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td valign="top"><span class="TB-H1">Step 1: setting up the circuit</span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    
          <tr>
        <td align="center"><br>
          <!-- Figure 3 -->
        <img style="width: 800px; height: 700px;" alt="Fig 3. Circuit setup" src="P07files/configdiagram.png">
        <div class="TB-FIGURES">Fig 4. Circuit setup.</div>

          </tr>
    </td>
    
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
	<br>
	<br>
      </span>
      
      
      </td></tr>
    </tbody>
    </table>
    

        
        <!-- Step 2 setting up the Circuit -->
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td valign="top"><span class="TB-H1">Step 2: Non debounced software example</span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    
    
    </tbody>
    </table>
    
    <!--   non-debounced   --->
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td><span class="TB-BODY">
    
    This step is simply designed to show the effects of button bounce, and allows the user to visually see when bounces occur in the circuit.
    If you feel you already have a firm understanding of bounce, this step can be skipped and you can proceed to step 3.</span>
    
    
    </td>
    </tr>
    
    
    </tbody>
    </table>
            <cf_box color="white"
	style="width:85%">
        
    <!--   non-debounced   --->
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td>
    
    <pre class ="brush: mpide; toolbox: false">
      
      
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
        </tbody>
    </table>
    </cf_box>
    
    
    
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td>
 <span class="TB-BODY">   
 <font color="red">Remember that the &lt;p&gt; tag alters the left alignment and text size.</font>
<p>The code  is fairly straight forward and all functions used have been covered in previous projects.   
The sketch reads the current state of the input button, while keeping track of the state of the button from the previous loop of the main program.
If the previous button state is LOW, and the current state is HIGH then this indicates a rising edge transition (i.e. the signal starting to assert HIGH).
The sketch will then increments a counter variable and outputs that value to the Serial port. You can view this count through the Serial monitor window
(if you are unfamiliar with this reference project 5). </p>
<p>Ideally the sketch will increment the counter every time you press the button, but after a few button presses
you will start to notice that it sometimes skips.  Meaning you will press the button once, but it will count multiple times (usually two).  This happens because
multiple rising edges have been detected in very close succession (i.e. a button bounce has occurred).</p>
 </span>
    </td></tr>
    </tbody>
    </table>
    
    
    <br>
    <br>
    <br>
    <!--  step 3  debouncing software  -->
        <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td valign="top"><span class="TB-H1">Step 3: debounced software </span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    
    
    </tbody>
    </table>
    
    
    
      <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td><span class="TB-BODY">
    
    <p>The following code now, when implemented will correct for button bounce, and is very similar to the code example listed in MPIDE examples,
      except now with the verification button press counter.</p>
      <p>This algorithm is only slightly different than our theory of debounceing explanation
      but not by very much.  In implementation we only look at the point when the input signal changes (for explanation sake will call this point A),
      and a set period of time after point A (we will call this point A - 1).  If the signal changes before the set period of time has elapsed, then
      point A becomes the point of time of this new change (ie the process starts all over again). If the signal doesn�t change and the set time elapses,
      then it means that point A, and point A -1 are the same (conjugate logic, if there not different then they have to be the same).  So like out theory
      of debounce if two sample points are both HIGH, or LOW, we drive the signal accordingly.</p>


    <p>The verification part of the code, now simply counts the rising edges of the output variable, instead of the rising edge of the input pin.</p>  

    <p></p>The code is run similar to step 2�s code.  The serial monitor will be used to observe the rising edge count as you press the button.
    Now though every button press will increment the count exactly once, and you can notice that skipping no longer occurs. </p> 
    </span>
    <font color="red">Code box isn't aligned, there might be some tags that aren't match or something.</font>
      </td>
    </tr>
        </tbody>
    </table>
    
    <br><br>
                <cf_box color="white"
	style="width:85%">
    <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <td>
    
     <pre class ="brush: mpide; toolbox: false">
    
    
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
    
    </td></tr>
    </tbody>
      </table>
    </cf_box>
    
    
        <!--  Summary -->
        <table class="TBLAYOUT" style="width: 85%; cellpadding="0">
    <tbody>
    <tr>
    <br><br>
    <td valign="top"><span class="TB-H1">Summary: </span> 
    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br> 
      
    </td>
    </tr>
    <tr>
      <td><span class="TB-BODY">
        <p>Software debouncing code is expected to always be used alongside other portions of code. Any segment of code can be placed
        within the �start� and �end� functional code comments of the project code and benefit from a software debounced signal.
        While this project just used a simple edge counting block of code, it could have been substituted for any function code
        that needed a debounced input signal.</p>
        
        <p>It is important to note that this is only one of several ways of correcting button bounce. There are various methods of
        correcting bounce, both hardware and software based solutions.  A handful of these methods will be introduced in subsequent projects.</p>
        <font color="red">The summary should summarize what was covered, a simple, quick retelling of the concepts.</font>
        </span>
      </td>
    </tr>
    
    <tr>
      <td>
        
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
        <tbody>
        <tr>
        <td>Core Concepts:</td>
        
        <td>
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
 
            </span>
    </tbody>
    </table>
        
        
        
        
        
      </td>
    </tr>
    
    </tbody>
    </table>
    
    
    
    
    
    
</body></html>  