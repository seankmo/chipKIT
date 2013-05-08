<html>
<head>
	<meta name="author" content="Thor Steingrimsson">
	<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
	<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
	<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
	<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>
<body>
	<cf_box Color="White">
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
				<span class="TB-PROJECTTITLE">
					Project 5:<br/>
					Button Controlled LED with Serial Output
				</span>
				<hr/>
			</td>
		</tr>
	</table>
	<br/>
	<table class="TBLAYOUT">
		<tr>
			<td valign="top">
					<span class="TB-H1">Introduction</span>
					<span class="TB-BODY">
					<br/><br/>
						In Project 4, the use of a button was introduced. In
						this project, a button will be used to control an onboard LED and send a message
						to the computer at the same time. The focus will be on the communication aspects,
						as the button was cover in-depth in the last project.
					</span>
				</p>
			</td>
			<!-- MOVE THIS TO A MORE LOGICAL PLACE!
			<td width="320" align="center">
				<img src="P05files/serial_monitor.svg" height="200" /> <br/><br/>
				<div class="TB-FIGURES">Figure 1. MPIDE Serial Monitor.</div>
			</td> -->
		</tr>
	</table>
	<br/>
	<table class="TBLAYOUT">
		<tr>
			<td valign="top">
				<span class="TB-H2">Parts List</span>
				<br/><br/>
				<div align="center">
				<table id="CT3">
				<thead>
					<tr>
						<th width="10%">Qty.</th>
						<th width="60%">Description</th>
						<th width="30%">&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="qty">1</td>
						<td>Button</td>
						<td align="center" class="image"><img src="P05files/Button.svg" height="100"/></td>
					</tr>
					<tr>
						<td class="qty">1</td>
						<td>Resistor<br/>(10 k&#8486;)</td>
						<td align="center" class="image"><img src="P05files/R.svg" width="100"/></td>
					</tr>
					<tr>
						<td class="qty">3</td>
						<td>Wire</td>
						<td align="center" class="image"><img src="P05files/Wire.svg" height="100"/></td>
					</tr>
				</tbody>
				
				</div>
				<br/><br/>
				</table>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Circuit Setup</span>
				<span class="TB-BODY">
				<br/><br/>
					This circuit will require a 10 k&#8486; resistor, a button, and three wires.
					The 10 k&#8486; resistor will be used as a pull-down resistor with the button 
					so that the button outputs a <code>LOW</code> level normally and a <code>HIGH</code> 
					level when the button is pressed. Reference Project 4
					for a more in-depth explanation of buttons and pull-down resistors.
					<br/>
					<ol>
						<li>Place the button so that it bridges the gap in the breadboard.</li>
						<li>Then place the 10 k&#8486; resistor so that it connects to one of 
							the legs of the button.</li>
						<li>Use a wire to connect the other end of the resistor to the ground pin
							of the ChipKIT board.(shown as the black wire in Figure 1.)</li>
						<li>Use a wire to connect pin 4 to the leg of the button directly across 
							the gap from where the resistor is connected. (shown as the blue wire in Figure 1.)
							This is because of how buttons work, we want pin 4 to be electrical
							connected to ground when the button is not pressed.</li>
						<li>Finally, connect a wire from either the 5V0 pin or 3V3 pin (Figure 1. 
							is connected to 5V0 with the red wire) to the leg of the button that 
							is the other leg on the side side as the resistor.</li>
					</ol>
				</span>
			</td>
			<td align="center">
				<a href="P05files/P05_bbs.svg"><img src="P05files/P05_bbs.svg" height="250"/></a>
				<div class="TB-FIGURES">Figure 1. Circuit Setup.</div>
			</td>
		</tr>
	</table>
	<br/><br/>
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
		<tr>
			<td valign="top">
					<span class="TB-H1">Communicating Through the USB</span>
					<span class="TB-BODY">
					<br/><br/>
						Before serial communications can be discussed, the concept of the class must
						discussed first. For a quick overview of what classes are and how they work,
						click the red tab to the right. It will be assumed that there is at least a 
						working knowledge of classes moving forward.<br/>
						If you are curious about the specifics of how the computer sends messages through
						a wire click the blue tab to the right (This is completely optional and only 
						for those who are curious).
					</span>
			</td>
			<td width="8">&nbsp;</td>
			<td align="right" valign="top" width="234">
				<cf_TextbookTabs Mode="top" NextColor="red">
				<cf_TextbookTabs Mode="middle" NextColor="blue" Color="red" Title="Classes" TabURL="P05files/Classes.cfm">
				<cf_TextbookTabs Mode="bottom" Color="blue" Title="Serial Communications" TabURL="P05files/Serial.cfm">
			</td>
		</tr>
		<tr>
			<td>
					<span class="TB-BODY">
						The Uno32 has 2 serial ports and the Max32 has 4 serial ports. The first serial
						port, <code>Serial</code>,  does double duty in that it both communicates through
						the USB as well as through pins 0 and 1. The actual keywords that are used in a 
						sketch are actually variables that belong to either HardwareSerial or USBSerial.
						The specifics of this don't matter however, as both have the same methods and 
						means of communication (UART - Universal Asynchronous Receiver Transmitter).<br/>
						
						The first and most important method in Serial is <code>Serial</code>.<code>begin(speed)</code> 
						method. This method configures the hardware for serial communications at the 
						inputted speed (Baud rate, which is bits per second). If you want to communicate 
						to the computer use one of the following rates: 300, 1200, 2400, 4800, 9600, 14400, 
						19200, 28800, 38400, 57600, 115200. If you are communicating to other hardware, 
						then use the hardware's specified rate, if it has one.<br/>
						The next two methods are effectively the same. The <code>Serial</code>.<code>print(message)</code>
						and the <code>Serial</code>.<code>println(message)</code> methods both send some message, but
						<code>println()</code> adds a newline (enter or return) to the end of the message, whereas 
						<code>print()</code> only sends the message and nothing else. See Figures 2a and 2b to see 
						the effect of sending just one of the two repeatedly. Note how <code>print()</code> is on one 
						line with no space between the messages, and how <code>println()</code> has the message on 
						repeat on every line. This will allow for basic formatting of messages.
					</span>
			</td>
			<td width="8">&nbsp;</td>
			<td>
				<img src="P05files/hello.png" height="200"/>
				<div class="TB-FIGURES">Figure 2a. Looped Serial.print().</div>
				<img src="P05files/helloln.png" height="200"/>
				<div class="TB-FIGURES">Figure 2b. Looped Serial.println().</div>
			</td>
		</tr>
	</table>
	<br/><br/>
	<table class="TBLAYOUT">
		<tr>
			<td>
					<span class="TB-H1">Various Variables and Why They are Vital</span>
					<span class="TB-BODY">
					<br/><br/>
						We will need to store the states of the LED, the button, and the time
						to toggle the LED, determine when the button has been pressed, and
						calculate the difference in time to send to the computer. Also, another 
						variable will be needed if conversion from milliseconds to seconds is 
						desired.<br/>
						A variable will be needed to store the state of the LED, whether it is <code>HIGH</code>
						or <code>LOW</code>. This is because when the button is pressed, the LED should toggle to
						its other state, <code>LOW</code> to <code>HIGH</code> or <code>HIGH</code> to 
						<code>LOW</code>. This variable should be an integer, 
						and let it be called <code>stateLEDGlb</code>. Since this is a state variable
						for the LED and that this variable is global as well.<br/>
						Two variables are needed to determine if the button has been pushed. The 
						current button state and the last button state. Let's call these variables
						<code>buttonCurrentGlb</code> and <code>buttonLastGlb</code> respectively, since
						we are interested in both the current and last states of the button. Both of 
						these variables will be an integer value because either the button will be <code>HIGH</code>
						or it will be <code>LOW</code>.<br/>
						Two more variables will be needed to find the change in time from the last button
						press. The process to find the change in time is very similar to the button states,
						except instead of just looking for a difference, the actual difference is important. 
						Let these two varibles be called <code>timeCurrentGlb</code> and 
						<code>timeLastGlb</code>. 
						Both of these variables should be integers since <code>millis()</code> functions 
						returns an integer.<br/>
						Finally, if you wish to convert the time from milliseconds to seconds, another
						variable can help keep the code nice and clear. Since the conversion will have
						fractional parts, this variable should be a float, or floating point number. This
						is a number that can have a decimal point in it. 
						Lets call this variable <code>secondsGlb</code>.<br/>
						In order to convert a integer to float, we must use what is called explicit casting 
						to ensure that the number is converted to float. The actual way to do this is fairly
						straight forward, put <code>(float)</code> in front of the number, variable, or operation
						we want to convert. Thus, to convert milliseconds to seconds, we'd use a statement like so:
						<pre>seconds = (float) (timeCurrentGlb - timeLastGlb) / 1000;</pre>
						We also have the constant variables for the LED pin and the button pin. We will just
						call these variables ledGlb and btnGlb respectively.
					</span>
				
			</td>
		</tr>
	</table>
	<br/><br/>
	<table>
		<tr>
			<td>
					<span class="TB-H1">Putting It All Together</span>
					<span class="TB-H2"><br/>Variable Definition</span>
					<span class="TB-BODY">
					<br/><br/>
						Now that we have named the variables that will be used, and have a basic 
						understanding of how Serial works. We can start to assemble this project's code.<br/>
						Before we can define the <code>setup()</code> and <code>loop()</code> 
						functions, we need to define
						the variables we will use, and Since we have already covered what variables we 
						need,the type the variables should be, and the names of the variables.
						We can just write them in like so:

<pre class="brush:mpide;">
// The LED state, initially set to LOW
int stateLEDGlb = LOW;
// Button states
int buttonCurrentGlb;
int buttonLastGlb;
// Time variables
int timeCurrentGbl;
int timeLastGlb;
// Difference in time in seconds
float secondsGlb;
// Constant for the LED pin
const int ledGlb = 13;
// Constant for the button pin
const int btnGlb = 4;
</pre>
					<br/></span>
					<span class="TB-H2">The setup() Function</span>
					<span class="TB-BODY">
					<br/><br/>
						Now that the variables are taken care of, we can focus on how to use them in
						the <code>setup()</code> function. The first we should do is start the serial
						communications by calling <code>Serial</code>.<code>begin()</code>. The next step is to set
						the mode of the pins we are using and to set the LED to the current value of 
						the variable <code>stateLEDGlb</code>. The final step in the <code>setup()</code>
						function is to initialize the "last" variables for time and button state so that
						the <code>loop()</code> function doesn't try to compare to uninitialize variables
						which can have an unknown value. Thus, the <code>setup()</code> function should
						then look like:

<pre class="brush:mpide;">
void setup()
{
  // Start Serial Communications
  Serial.begin(9600);
  // Set the pins
  pinMode(btnGlb,INPUT);
  pinMode(ledGlb,OUTPUT);
  digitalWrite(ledGlb,stateLEDGlb);
  // Initialize state variables
  buttonLastGlb = digitalRead(btnGlb);
  timeLastGlb = millis();
}
</pre>
					</span>
					<span class="TB-H2">The loop() Function</span>
					<span class="TB-BODY">
					<br/><br/>
						Now we need to tackle the <code>loop()</code> function. This will require that
						we only send a message when the pin reading the state of the button sees a change
						and that the change is from LOW to HIGH. Using a conditional statement introduced
						in the last project, we can do this. Before the conditional statement, we need to
						read the current state of the button, which is simply assigning the value of a 
						<code>digitalRead()</code> to the <code>buttonCurrentGlb</code>. Then, in the 
						conditional, we check to see if the <code>buttonCurrentGlb</code> is <code>HIGH</code> and if
						it is different from <code>buttonLastGlb</code>. This conditional statement should
						look like the following:

<pre class="brush:mpide;">
buttonCurrentGlb = digitalRead(btnGlb);
if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
  // Message code in here...
}
</pre>
						Before we can use the message code we figure out earlier, we must find the time
						difference and convert it into seconds, and toggle the LED as well. The first 
						thing to do is to find the current time by calling <code>millis()</code> and 
						assigning <code>timeCurrentGlb</code> to it. Now that we have the current time and 
						the last time, we can find the difference in time and convert it to seconds. The
						last thing to do is toggling the LED, which is simply assigning it to its opposite.
						The code fragment to do this is shown here:

<pre class="brush:mpide;">
// Get the time
timeCurrentGlb = millis();
// Find difference and convert to seconds
secondsGlb = (float) (timeCurrentGlb - timeLastGlb)/1000;
// Toggle the LED
// Remember that ! is a not, and when applied to a variable, it returns the inverse (true to false etc...)
stateLEDGlb = !stateLEDGlb; 
</pre>
						Since we already have the messaging code, we will then talk about the code after
						the message code. Where we will only write the new state to the LED and set the 
						last time the button was pressed to "now." Also, right before the end of the 
						<code>loop()</code> function, we will set the last button state to the current one.
						So the final <code>loop()</code> function should look like:

<pre class="brush:mpide;">
void loop()
{
  buttonCurrentGlb = digitalRead(btnGlb);
  if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
    timeCurrentGlb = millis();
	secondsGlb = (float) (timeCurrentGlb - timeLastGlb)/1000;
	stateLEDGlb = !stateLEDGlb;
	Serial.print("The LED is now");
	if(stateLEDGlb == HIGH){
	  Serial.print("on.  ");
	}else{
	  Serial.print("off. ");
	}
	Serial.print("It has been ");
	Serial.print(secondsGlb);
	Serial.println(" seconds since the LED changed last.");
	digitalWrite(ledGlb,stateLEDGlb);
	timeLastGlb = timeCurrentGlb;
  }
  buttonLastGlb = buttonCurrentGlb;
}
</pre>
						Now, simply upload this code into the board, start the Serial Monitor in MPIDE, and
						press the button and see what happens in the Serial Monitor. This project's code
						is at the bottom of this page.
					</span>
				</p>
			</td>
		</tr>
	</table>
	<br/>
	<table class="TBLAYOUT">
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
							<li>Determining when a button is pressed.</li>
							<li>Finding how much time has passed.</li>
							<li>Sending messages through serial to the computer.</li>
							</ul>
						</td>
					</tr>
					<tr>
						<td width="20%">Functions Introduced:</td>
						<td width="80%">
							<ul>
								<li><code>Serial</code>.<code>begin(speed)</code></li>
								<li><code>Serial</code>.<code>print(message)</code></li>
								<li><code>Serial</code>.<code>print(value,format)</code></li>
								<li><code>Serial</code>.<code>println(message)</code></li>
								<li><code>Serial</code>.<code>println(value,format)</code></li>
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
	<br/><br/>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Project Code</span>
				<span class="TB-BODY">

<pre class="brush:mpide;">
// The LED state, initially LOW
int stateLEDGlb = LOW; 
// Current button state and last button state
int buttonCurrentGlb;
int buttonLastGlb;
// The current time and last time
int timeCurrentGlb;
int timeLastGlb;
// What the change in time will be in seconds
float secondsGlb;
// Constant for the LED pin
const int ledGlb = 13;
// Constant for the button pin
const int btnGlb = 4;

void setup()
{
  // Start Serial communications
  Serial.begin(9600);
  // Set pins
  pinMode(ledGlb,OUTPUT);
  digitalWrite(ledGlb,stateLED);
  pinMode(btnGlb,INPUT);
  // Initialize variables, only the "last" variables matter when starting up
  timeLastGlb = millis();
  buttonLastGlb = digitalRead(btnGlb);
}

void loop()
{
  buttonCurrentGlb = digitalRead(btnGlb);
  // If the button is HIGH and different from last time
  if(HIGH == buttonCurrentGlb && buttonCurrentGlb != buttonLastGlb){
    // Get the time
    timeCurrentGlb = millis();
    // Convert the difference to seconds
    seconds = (float)(timeCurrentGlb - timeLastGlb) / 1000;
    // Toggle the LED
    stateLEDGlb = !stateLEDGlb;
    // Send the message to the computer
    Serial.print("The LED is now ");
    if(LED_state == HIGH){
      Serial.print("on.  ");
    }else{
      Serial.print("off. ");
    }
    Serial.print("It has been ");
    Serial.print(seconds);
    Serial.println(" seconds since the LED changed last.");
    // Change the LED to the new state
    digitalWrite(ledGlb,stateLEDGlb);
    // Now is the last time
    timeLastGlb = timeCurrentGlb;
  }
  buttonLastGlb = buttonCurrentGlb;
}
</pre>
				</span>
			</td>
		</tr>
	</table>
	</cf_box>
</body>
</html>
