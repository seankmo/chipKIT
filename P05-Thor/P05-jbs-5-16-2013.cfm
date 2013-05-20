<html>
<head>
	<meta name="author" content="Thor Steingrimsson">
	<title>Button-Controlled LED with Serial Output</title>
	<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
	<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
	<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
	<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>

<body>
<cf_Box Color="White">

  <table class="TBLAYOUT">
	  <tr>
	    <td align="center">
	      <span class="TB-PROJECTTITLE">
		      Project 5:<br>
		      Button-Controlled LED with Serial Output
	      </span><br><hr>
	    </td>
	  </tr>
	</table>

  <br><br><br>

  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <span class="TB-H1">Introduction</span>
			  <br/><br/>
			  <span class="TB-BODY">
				  In the <a href="P04.cfm">Button-Controlled LEDs project</a>, buttons were introduced.
				  In this project, we will use a button to control an on-board LED and send a message to
				  the computer.  This project focuses on the communication between the
				  board and computer.
			  </span>
		  </td>
			<!-- MOVE THIS TO A MORE LOGICAL PLACE!
			<td width="320" align="center">
				<img src="P05files/serial_monitor.png" height="200" /> <br/><br/>
				<div class="TB-FIGURES">Figure 1. MPIDE Serial Monitor.</div>
			</td> -->
	  </tr>
  </table>

  <br>

  <table class="TBLAYOUT">
	  <tr>
		  <td valign="top">
			  <span class="TB-H2">Inventory:</span>
			  <br><br>
			  <div align="center">
			  <table id="CT3">
				  <thead>
					  <tr>
							<th width="10%">Qty.</th>
							<th width="30%">Description</th>
							<th width="30%">&nbsp;</th>
							<th width="30%">
								<div align="center">Breadboard<br>Image</div>
							</th>
					  </tr>
				  </thead>
				  <tbody>
					  <tr>
						  <td class="qty">1</td>
							<td> Two-port buttons</td>
							<td align="center" class="image">
								<img width="95px" src="P04files/button.jpg">
							</td>
							<td align="center" style="background: white;">
								<img width="55px" src="../Parts/PushButton.svg">
							</td>
					  </tr>
					  <tr>
						  <td class="qty"> 1 </td>
						  <td> 10 k&Omega; resistor<br>
							  (10 k&Omega; = 10,000 &Omega;)
						  </td>
						  <td align="center">&nbsp;</td>
						  <td align="center" class="image">
							  <img width="100" src="../Parts/resistor_10k.svg"></td>
					  </tr>
				  </tbody>
			  </table>
			  </div>
		  </td>
	  </tr>   
  </table>
  
  <br><br>
  
  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <span class="TB-H1">Circuit Setup</span>
			  <br><br>
			  <span class="TB-BODY">
				  
				  <cf_imagebox
					   align="right"
					   path="P05files/P05_bbs.svg"
					   width="279px"
					   caption="Fig. 1. Initial circuit configuration.">

				  This circuit requires a 10 k&Omega; resistor, a button, and three wires.  The 10
				  k&Omega; resistor will be used as a pull-down resistor with the button so that the
				  button outputs a <code>LOW</code> level when the button is not pushed and
				  a <code>HIGH</code> level when the it is pushed.  Refer
				  to <a href="../P04/P04.cfm">Button-Controlled LEDs</a> for a more in-depth explanation
				  of buttons and pull-down resistors.

				  <br><br>

				  <ol>
					  <li>Place the button so that it bridges the valley in the breadboard.</li>
					  <li>Then place the 10 k&Omega; resistor so that it connects to one of 
						  the legs of the button.</li>
					  <li>Use a wire to connect the other end of the resistor to a ground pin
						  on the chipKIT board (shown as the black wire in Fig. 1).</li>
					  <li>Use a wire to connect pin 4 to the leg of the button directly across 
						  the gap from where the resistor is connected. (Shown in Fig. 1 as the blue wire.)
						  Because of how buttons work, we want pin 4 to be electrically
						  connected to ground when the button is not pressed.</li>
					  <li>Finally, connect a wire (Fig. 1 shows a red wire) from either the 3.3V pin to
					  the button's other leg on the same side of the valley as the resistor.</li>
				  </ol>
			  </span>
			  
			  <br><br>
			  
			  <span class="TB-H1">Communicating through the USB</span>
			  
			  <cf_TB-TabBox>
				  <cf_TB-Tab color="red" path="P05files/P05Classes.cfm" title="Classes">
					  <cf_TB-Tab color="blue" path="P05files/Serial.cfm" title="Serial Communications">
			  </cf_TB-TabBox>

			  <span class="TB-BODY">
				  Before we can talk about serial communications, the concept of the <i>class</i> must
				  be discussed first. For a quick overview of what classes are and how they work, click
				  the red tab to the right. From this point forward, we will assume you have at least a
				  working knowledge of the concept of classes.

				  <br><br>

				  If you are curious about the specifics of how the computer sends messages through a
				  wire, click the blue tab to the right. (This is completely optional and only for those
				  who are curious.)

				  <br><br>

				  The Uno32 has two serial ports and the Max32 has four serial ports. The first serial
				  port, <code>Serial</code>, does double duty in that it both communicates through the
				  USB as well as through pins 0 and 1.  The keywords that are used in a sketch are
				  actually variables that belong to either <code>HardwareSerial</code>
				  or <code>USBSerial</code>. <!--Do these belong in code tags? Are they libraries?-->
				  The specifics of this doesn't matter, however, as both have the same means of
				  communication (UART - universal asynchronous receiver/transmitter).

				  <br><br>
				  
				  <cf_imagebox
					   align="right"
					   path="P05files/hello.png"
					   width="309"
					   caption="Fig. 2. Looped Serial.print().">

				  The first and most important function in <code>Serial</code> is
				  the <code>Serial.begin(speed)</code> method. This method configures the hardware for
				  serial communications at the input speed (the Baud rate, which is bits per second). If
				  you want to communicate with the computer, use one of the following rates: 300, 1200,
				  2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600, 115200. If you are communicating
				  with other hardware, then use the hardware's specified rate, if it has one.

				  <br><br>

				  The next two methods are essentially the same. The <code>Serial.print(message)</code>
				  and the <code>Serial.println(message)</code> methods both send a message, but
				  println() adds a newline (enter or return) to the end of the message, whereas print()
				  only sends the message and nothing else. See Figures 2 and 3 to see the effect of
				  sending just one of the two repeatedly. Note that <code>print()</code> is on one line
				  with no space between the messages and that <code>println()</code> has the message on
				  repeat on every line. This will allow for basic formatting of messages.<br><br>

				  <cf_imagebox
					   align="right"
					   path="P05files/helloln.png"
					   width="309"
					   caption="Fig. 3. Looped Serial.println().">

			  </span>

			  <br><br>
			  
			  <span class="TB-H1">Variables and Their Importance</span>
			  <br><br>
			  <span class="TB-BODY">

				  We need a variable to store the state of the LED (whether it is <code>HIGH</code>
				  or <code>LOW</code>). This is because when the button is pressed, the LED should
				  toggle to its other state- from <code>LOW</code> to <code>HIGH</code>, or vice
				  versa. This variable should be an integer <!--Why?-->.  We'll call
				  it <code>stateLedGlb</code>. Since this is a state variable for the LED, this variable
				  is global as well <!--This sentence doesn't make sense. What are you trying to convey?
				  You're missing a key verb or phrase here. Or is this next sentence supposed to be
				  connected to this?-->.

				  <br><br>  

				  We will need two variables in order to determine whether the button has been
				  pushed. These two variables are the current button state and the last button
				  state. Let's call these variables <code>buttonCurrentGlb</code>
				  and <code>buttonLastGlb</code>, respectively, since we are interested in both the
				  current and last states of the button. Both of these variables will be an integer
				  value because the button will be either <code>HIGH</code> or <code>LOW</code>.

				  <br><br>

				  Additionally, we'll need two more variables to find the difference in time from the
				  last button press.  The process of finding the change in time is similar to the button
				  states.  However, instead of just noting that a difference is present, the value of
				  the difference is relevant.  Let these two varibles be
				  called <code>timeCurrentGlb</code> and <code>timeLastGlb</code>. Both of these
				  variables should be integers since the <code>millis()</code> function returns an
				  integer.

				  <br><br>
				 
				  Finally, if you wish to convert the time from milliseconds to seconds, another
				  variable can help us keep do this simply. Since the conversion will have fractional
				  parts, this variable should be a <i>float</i>, or floating point number. This is a
				  number that can have a decimal point in it.  Lets call this
				  variable <code>secondsGlb</code>.

				  <br><br>

				  In order to convert an integer to a float, we must use what is called explicit casting
				  to ensure that the number is converted to float. The actual way to do this is fairly
				  straightforward. Place <code>(float)</code> in front of the number, variable, or
				  operation you would like to convert. Thus, to convert milliseconds to seconds, we'd
				  use a statement like this one:<br>

				  <pre class="brush: mpide; gutter: false;">
seconds = (float) (timeCurrentGlb - timeLastGlb) / 1000;
				  </pre>

				  We also have constant variables for the LED pin and the button pin.  We will just call
				  these variables <code>ledGlb</code> and <code>btnGlb</code> respectively.

				  <br><br>
			  </span>
		  </td>
	  </tr>
  </table>
  
  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <cf_box color="putty">
				  <span class="TB-H2">Step 1: Defining the Variables</span>
				  <br><br>
				  <span class="TB-BODY">

					  Now that we have named the variables that we will be using and have a basic
					  understanding of how Serial works, we can start to assemble this project's code.
					  However, before we can define the <code>setup()</code> and <code>loop()</code>
					  functions, we need to define the variables we will use. Since we have already
					  discussed the names and types of the variables we need, we can just write them like
					  this:


					  <pre class="brush: mpide;">
// The LED state; initially LOW.
int stateLedGlb = LOW; 
// Current button state and last button state.
int buttonCurrentGlb;
int buttonLastGlb;
// The current time and last time.
int timeCurrentGlb;
int timeLastGlb;
// The difference in time (seconds) between changes.
float secondsGlb;

// Constant for the LED pin.
const int ledGlb = 13;
// Constant for the button pin.
const int btnGlb = 4;
					  </pre>

					  <br>
					  
					  <span class="TB-H2">Step 2: Using the <code>setup()</code> Function</span>

					  <br><br>

					  Now that the variables are taken care of, we can focus on how to use them in
					  the <code>setup()</code> function. First, we should start the serial communications
					  by calling <code>Serial.begin()</code>. The next step is to set the mode of the
					  pins we are using and to set the LED to the current value of the
					  variable <code>stateLedGlb</code>. The final step in the <code>setup()</code>
					  function is to initialize the &ldquo;last&rdquo; variables for time and button
					  state so that the <code>loop()</code> function doesn't try to compare to
					  uninitialize variables which can have an unknown value. <!--Please clarify the
					  previous sentence. Doesn't make much sense-->Thus, the <code>setup()</code>
					  function should then look like:

					  <pre class="brush: mpide;">
void setup()
{
  // Start Serial communications.
  Serial.begin(9600);
  // Set pins and LED state.
  pinMode(btnGlb,INPUT);
  pinMode(ledGlb, OUTPUT);
  digitalWrite(ledGlb, stateLed);
  // Record the current time as the "last" time and the 
  // current button state as the "last" state.
  timeLastGlb = millis();
  buttonLastGlb = digitalRead(btnGlb);
}
					  </pre>

					  <br>
					  
					  <span class="TB-H2">Step 3: Using the <code>loop()</code> Function</span>

					  <br><br>

					  Now we need to tackle the <code>loop()</code> function.  This requires that we only
					  send a message when the pin reading the state of the button sees a change and that
					  the change is from <code>LOW</code> to <code>HIGH</code>.  We can do this by using
					  the conditional statement introduced in the last project.  Before the using
					  conditional statement, we need to read the current state of the button, which is
					  simply assigning the value of a <code>digitalRead()</code> to
					  the <code>buttonCurrentGlb</code>.  Then, in the conditional statement, we check to
					  see if the <code>buttonCurrentGlb</code> is <code>HIGH</code> and if it is
					  different from <code>buttonLastGlb</code>.  This conditional statement should look
					  like the following:

					  <pre class="brush: mpide;">
		    buttonCurrentGlb = digitalRead(btnGlb);
		    if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
		    // Message code in here...
		    }
					  </pre>

					  <br>

					  Before we can use the message code we figured out earlier, we must find the time
					  difference and convert it into seconds, and then toggle the LED. The first thing to
					  do is to find the current time by calling <code>millis()</code> and
					  assigning <code>timeCurrentGlb</code> to it. Now that we have the current time and
					  the last time, we can find the difference in time and convert it to seconds. The
					  last thing to do is toggle the LED, simply assigning it to its opposite <!--to its
					  opposite what? state?-->.  The code fragment to do is shown here:

					  <pre class="brush: mpide;">
		    // Get the time
		    timeCurrentGlb = millis();
		    // Find difference and convert to seconds
		    secondsGlb = (float) (timeCurrentGlb - timeLastGlb)/1000;
		    // Toggle the LED
		    // Remember that ! is a not, and when applied to a variable, it returns the inverse (true to false etc...)
		    stateLedGlb = !stateLedGlb; 
					  </pre>

					  <br>
		  
					  Since we already have the messaging code, we can now talk about the subsequent code
					  We will now write the new state to the LED and set the last time the button was
					  pressed to &ldquo;now.&rdquo; Also, right before the end of the <code>loop()</code>
					  function, we will set the last button state to the current one.  So the
					  final <code>loop()</code> function should look like:

					  <pre class="brush: mpide;">
		    void loop()
		    {
		    buttonCurrentGlb = digitalRead(btnGlb);
		    if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
		    timeCurrentGlb = millis();
		    secondsGlb = (float) (timeCurrentGlb - timeLastGlb)/1000;
		    stateLedGlb = !stateLedGlb;
		    Serial.print("The LED is now");
		    if(stateLedGlb == HIGH){
		    Serial.print("on.  ");
		    }else{
		    Serial.print("off. ");
		    }
		    Serial.print("It has been ");
		    Serial.print(secondsGlb);
		    Serial.println(" seconds since the LED changed last.");
		    digitalWrite(ledGlb, stateLedGlb);
		    timeLastGlb = timeCurrentGlb;
		    }
		    buttonLastGlb = buttonCurrentGlb;
		    }
					  </pre>
		   
					  <span class="TB-H2">Step 4: Uploading the code</span>

					  <br><br>

					  Now, simply upload this code into the board, start the serial monitor in MPIDE, and
					  press the button to see what happens in the serial monitor.  This project's code is
					  at the bottom of this page.

					  <pre class="brush: mpide;">
// The LED state; initially LOW.
int stateLedGlb = LOW; 
// Current button state and last button state.
int buttonCurrentGlb;
int buttonLastGlb;
// The current time and last time.
int timeCurrentGlb;
int timeLastGlb;
// The difference in time (seconds) between changes.
float secondsGlb;

// Constant for the LED pin.
const int ledGlb = 13;
// Constant for the button pin.
const int btnGlb = 4;

void setup()
{
  // Start Serial communications.
  Serial.begin(9600);
  // Set pins and LED state.
  pinMode(btnGlb,INPUT);
  pinMode(ledGlb, OUTPUT);
  digitalWrite(ledGlb, stateLed);
  // Record the current time as the "last" time and the 
  // current button state as the "last" state.
  timeLastGlb = millis();
  buttonLastGlb = digitalRead(btnGlb);
}

void loop()
{
  // Determine the button state.
  buttonCurrentGlb = digitalRead(btnGlb);

  // Check if the button is HIGH and different from last time.
  if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
	// Get the current time.
	timeCurrentGlb = millis();
	// Convert difference between current and last time to seconds.
	seconds = (float)(timeCurrentGlb - timeLastGlb) / 1000;
	// Toggle the LED.
	stateLedGlb = !stateLedGlb;

	// Send the message to the computer.
	Serial.print("The LED is now ");
	if(LED_state == HIGH){
	  Serial.print("on.  ");
	}else{
	  Serial.print("off. ");
	}

	Serial.print("It has been ");
	Serial.print(seconds);
	Serial.println(" seconds since the LED changed last.");
	// Change the LED to the new state.
	digitalWrite(ledGlb, stateLedGlb);
	// Record the current time as the "last time."
	timeLastGlb = timeCurrentGlb;
  }

  buttonLastGlb = buttonCurrentGlb;
}
					  </pre>
						  
				  </span>
			  </cf_box>
		  </td>
	  </tr>
  </table>

  <br><br>

  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <br>
			  <span class="TB-H1">Core Concepts</span>
			  <br>  
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
								  <li>Determining when a button is pressed</li>
								  <li>Calculating time differences</li>
								  <li>Serial messaging</li>
							  </ul>
						  </td>
					  </tr>
					  <tr>
						  <td width="20%">Functions Introduced:</td>
						  <td width="80%">
							  <ul>
								  <li><code>Serial.begin()</code></li>
								  <li><code>Serial.print()</code></li>
								  <li><code>Serial.println()</code></li>
								  <li><code>millis()</code></li>
								  <li><code>micros()</code></li>
							  </ul>
						  </td>
					  </tr>
				  </tbody>
			  </table>
		  </td>
	  </tr>
  </table>
  
</cf_box>
</body>
</html>
