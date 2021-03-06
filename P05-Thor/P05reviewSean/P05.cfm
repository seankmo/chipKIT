<html>
<head>
	<meta name="author" content="Thor Steingrimsson">
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
	<title>Serial Communications</title>
</head>
<body>
<cf_Box NoMargins="1">
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
		<tr>
			<td width="50%" align="center">
				<span class="TB-PROJECTTITLE" align="center">
					Project 5:<br/>
					Button Controlled LED with Serial Output When Button is Pressed.
				</span>
			</td>
		</tr></td></tr>
	</table></cf_box>
	<br/><br/>
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
		<tr>
			<td valign="top">
				<p>
					<cf_box color="putty">
					<span class="TB-H1">Introduction</span></cf_box><br/><br/>
					<span class="TB-BODY">
						This project will build off what was introducted in <a href="../P04/P04.cfm">project 4</a>, and 
						add some serial communication capability so that the board can send a message
						when the button is pushed that says how long it has been since the last time it 
						was pressed and what state the LED was in.
					</span>
				</p>
			</td>
			<td width="320" align="center">
				<img src="P05files/serial_monitor.png" height="200" /> <br/><br/>
				<div class="TB-FIGURES">Figure 1. MPIDE Serial Monitor.</div>
			</td>
		</tr>
	</table>
	
	<table class="TBLAYOUT" cellpadding="0">
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H1">Parts List</span></cf_box>
				<span class="TB-BODY">
				<table border="1" cellpadding="0" cellspacing="0" style="text-align:center;">
					<tr>
						<th>
							Part
						</th>
						<th>
							Quantity
						</th>
						<th>
							Picture
						</th>
					</tr>
					<tr>
						<td>
							Button
						</td>
						<td>
							1
						</td>
						<td align="center">
							<img src="P05files/Button.png" height="100"/>
						</td>
					</tr>
					<tr>
						<td>
							Resistor
						</td>
						<td>
							1
						</td>
						<td align="center">
							<img src="P05files/R.png" width="100"/>
						</td>
					</tr>
					<tr>
						<td>
							Wire
						</td>
						<td>	
							3
						</td>
						<td align="center">
							<img src="P05files/Wire.png" height="100"/>
						</td>
					</tr>
				</table>
				</span>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT" cellpadding="0">
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H1">Circuit Setup</span></cf_box><br/><br/>
				<span class="TB-BODY">
					This circuit will require a resistor, a button, and three wires.
					A pull-down resistor will be used with the button so that the 
					button is <lit1>LOW</lit1> normally and <lit1>HIGH</lit1> when 
					the button is pressed. This use of a button was introduced in 
					<a href="../P04/P04.cfm">project 4</a> through the use of a 
					pull-down resistor.
					<br/>
					To set the circuit up, start by placing the button onto the bread board, 
					bridging the gap in the middle of bread board. Just like in Figure 2, 
					place a resistor on one of the legs of the button and connect the other 
					end of resistor to the ground pin of the chipKIT board using another wire. 
					Use a wire to connect the other leg of the same side to the 5 volt voltage 
					source on the chipKIT board. Finally connect the final wire from pin 4 to 
					the leg of the button directly across from the resistor.
				</span>
			</td>
			<td align="center">
				<img src="P05files/P05_bbs.png" height="250"/>
				<div class="TB-FIGURES">Figure 2. Circuit Setup.</div>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
		<tr>
			<td valign="top">
				<p>
					<cf_box color="putty">
					<span class="TB-H1">Communicating Through the USB</span></cf_box>
					<br/><br/>
					<span class="TB-BODY">
						Now that the circuit is set up. The next step is to start programming the board 
						to respond to the button and send a message to the computer. There is a function 
						that is used to start serial communications to the computer.						
						That function is <kw2>Serial</kw2>.<kw2>begin</kw2><tt>()</tt>, and this 
						function has
						one input, the baud rate, and the function sets the serial module in the board 
						to that baud rate. The baud rate is the number of bits per second in the 
						transmission. It is very important for the baud rate to be the same on both 
						ends of the communication or errors will occur and cause all sorts of problems.<br/><br/>
						
						The most common baud rate is 9600. The MPIDE Serial Monitor can only support these following 
						baud rates: 300, 1200, 2400, 4800, 9600, 14400, 19200, 28800, 38400, 57600, or 115200. 
						Although, if communicating to something other than the computer, the baud rate can be 
						something inbetween those numbers, so long as both sides of communication are the same.
						Since this function needs only be run once, it should go into the 
						<kw3>setup</kw3><tt>()</tt> function.<br/><br/>
						
						Now that there is a way to start communications. The next step is on how to send messages.
						There are two primary functions that can send a message from the board to the computer. The 
						first is <kw2>Serial</kw2>.<kw2>print</kw2><tt>()</tt>, which sends whatever it has as 
						its input, and only
						that. The second function is <kw2>Serial</kw2>.<kw2>println</kw2><tt>()</tt>, which 
						sends whatever it has like <kw2>Serial</kw2>.<kw2>print</kw2><tt>()</tt>, but it 
						adds a newline to the end of what it sends. Figures
						2a and 2b show the results of each statement, when looped.<br/><br/>
						
						By putting these functions together, a message is created to look like this:<br/>
						<code>The LED is now on. &nbsp;It has been 1.2 seconds since the LED changed last.<br/>
						The LED is now off. It has been 0.5 seconds since the LED changed last.</code><br/><br/>
						The section of code to produce that message is:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
Serial.print("The LED is now ");
if(LED_state == HIGH){
  Serial.print("on.  ");
}else{
  Serial.print("off. ");
}
Serial.print("It has been ");
Serial.print(seconds);
Serial.println(" seconds since the LED changed last.");
</pre></cf_box></center>
						You'll notice that there is a print statement has a variable in it, this is because
						<kw2>Serial</kw2>.<kw2>print</kw2><tt>()</tt> only accepts one type of data at a time, 
						or in other words you can either send text or a variable, but not both at the same time.
						You can also tell the <kw2>Serial</kw2>.<kw2>print</kw2><tt>()</tt> how to display the 
						data it is sending. If the value it is sending is an integer, you can use BYTE, BIN, OCT,
						DEC, and HEX; if the value is a floating point number, you can specify the number of decimal
						places it will send. See the reference for the specifics on each mode as we are focused on
						simply sending the data as is.
					</span>
				</p>
			</td>
			<td>
				<table>
					<tr>
						<td>
							<img src="P05files/hello.png" height="200"/>
							<div class="TB-FIGURES">Figure 2a. Looped Serial.print().</div>
						</td>
					</tr>
					<tr>
						<td>
							<img src="P05files/helloln.png" height="200"/>
							<div class="TB-FIGURES">Figure 2b. Looped Serial.println().</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<p>
					<cf_box color="putty">
					<span class="TB-H1">Various Variables and Why They are Vital</span></cf_box>
					<span class="TB-BODY"><br/><br/>
						We will need to store the states of the LED, the button, and the time
						to toggle the LED, determine when the button has been pressed, and
						calculate the difference in time to send to the computer. Also, another 
						variable will be needed if conversion from milliseconds to seconds is 
						desired.<br/>
						A variable will be needed to store the state of the LED, whether it is <lit1>HIGH</lit1>
						or <lit1>LOW</lit1>. This is because when the button is pressed, the LED should toggle to
						its other state, <lit1>LOW</lit1> to <lit1>HIGH</lit1> or <lit1>HIGH</lit1> to 
						<lit1>LOW</lit1>. This variable should be an integer, 
						and let it be called <code>LED_state</code>.<br/>
						Two variables are needed to determine if the button has been pushed. The 
						current button state and the last button state. Let's call these variables
						<code>curr_btn_state</code> and <code>last_btn_state</code> respectively. Both of 
						these variables will be an integer value because either the button will be <lit1>HIGH</lit1>
						or it will be <lit1>LOW</lit1>.<br/>
						Two more variables will be needed to find the change in time from the last button
						press. The process to find the change in time is very similar to the button states,
						except instead of just looking for a difference, the actual difference is important. 
						Let these two varibles be called <code>curr_time</code> and <code>last_time</code>. 
						Both of these variables should be integers since <code>millis()</code> functions 
						returns an integer.<br/>
						Finally, if you wish to convert the time from milliseconds to seconds, another
						variable can help keep the code nice and clear. Since the conversion will have
						fractional parts, this variable should be a float, or floating point number. This
						is a number that can have a decimal point in it. 
						Lets call this variable <code>seconds</code>.<br/>
						In order to convert a integer to float, we must use what is called explicit casting 
						to ensure that the number is converted to float. The actual way to do this is fairly
						straight forward, put <code>(float)</code> in front of the number, variable, or operation
						we want to convert. Thus, to convert milliseconds to seconds, we'd use a statement like so:
						<pre>seconds = (float) (curr_time - last_time) / 1000;</pre>
					</span>
				</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>
					<cf_box color="putty">
					<span class="TB-H1">Putting All Together</span></cf_box>
					<span class="TB-BODY"><br/><br/>
						Now that we have defined variables that can be used to determine when the button has been
						pushed. We can start to assemble the code. <br/>
						Before we define the <kw3>setup</kw3><tt>()</tt> and <kw3>loop</kw3><tt>()</tt> 
						functions, we need to create
						the variables we wish to use. Since we have already covered what variables we need and the type
						those variables should be, we can just write them in like so:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
// The LED state, initially set to LOW
int LED_state = LOW;
// Button states
int curr_btn_state, last_btn_state;
// Time variables
int curr_time, last_time;
// Difference in time in seconds
float seconds;
</pre></cf_box></center>
						Now that the variables are taken care of, we can focus on how to use them in
						the <kw3>setup</kw3><tt>()</tt> function. The first we should do is start the serial
						communications by calling <kw2>Serial</kw2>.<kw2>begin</kw2><tt>()</tt>. 
						The next step is to set
						the mode of the pins we are using and to set the LED to the current value of 
						the variable <code>LED_state</code>. The final step in the <kw3>setup</kw3><tt>()</tt>
						function is to initialize the "last" variables for time and button state so that
						the <kw3>loop</kw3><tt>()</tt> function doesn't try to compare to uninitialize variables
						which can have an unknown value. Thus, the <kw3>setup</kw3><tt>()</tt> function should
						look like:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
void setup()
{
  // Start Serial Communications
  Serial.begin(9600);
  // Set the pins
  pinMode(4,INPUT);
  pinMode(13,OUTPUT);
  digitalWrite(13,LED_state);
  // Initialize state variables
  last_btn_state = digitalRead(4);
  last_time = millis();
}
</pre></cf_box></center>
						Now we need to tackle the <kw3>loop</kw3><tt>()</tt> function. This will require that
						we only send a message when the pin reading the state of the button sees a change
						and that the change is from LOW to HIGH. Using a conditional statement introduced
						in the last project, we can do this. Before the conditional statement, we need to
						read the current state of the button, which is simply assigning the value of a 
						<kw2>digitalRead</kw2><tt>()</tt> to the <code>curr_btn_state</code>. Then, in the 
						conditional, we check to see if the <code>curr_btn_state</code> is <lit1>HIGH</lit1> and if
						it is different from <code>last_btn_state</code>. This conditional statement should
						look like the following:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
curr_btn_state = digitalRead(4);
if(HIGH == curr_btn_state && curr_btn_state != last_btn_state){
  // Message code in here...
}
</pre></cf_box></center>
						Before we can use the message code we figure out earlier, we must find the time
						difference and convert it into seconds, and toggle the LED as well. The first 
						thing to do is to find the current time by calling <kw2>millis</kw2><tt>()</tt> and 
						assigning <code>curr_time</code> to it. Now that we have the current time and 
						the last time, we can find the difference in time and convert it to seconds. The
						last thing to do is toggling the LED, which is simply assigning it to its opposite.
						The code fragment to do this is shown here:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
// Get the time
curr_time = millis();
// Find difference and convert to seconds
seconds = (float) (curr_time - last_time)/1000;
// Toggle the LED
// Remember that ! is a not, and when applied to a variable, it returns the inverse (true to false etc...)
LED_state = !LED_state; 
</pre></cf_box></center>
						Since we already have the messaging code, we will then talk about the code after
						the message code. Where we will only write the new state to the LED and set the 
						last time the button was pressed to "now." Also, right before the end of the 
						<kw3>loop</kw3><tt>()</tt> function, we will set the last button state to the current one.
						So the final <kw3>loop</kw3><tt>()</tt> function should look like:
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
void loop()
{
  curr_btn_state = digitalRead(4);
  if(HIGH == curr_btn_state && curr_btn_state != last_btn_state){
    curr_time = millis();
	seconds = (float) (curr_time - last_time)/1000;
	LED_state = !LED_state;
	Serial.print("The LED is now");
	if(LED_state == HIGH){
	  Serial.print("on.  ");
	}else{
	  Serial.print("off. ");
	}
	Serial.print("It has been ");
	Serial.print(seconds);
	Serial.println(" seconds since the LED changed last.");
	digitalWrite(13,LED_state);
	last_time = curr_time;
  }
  last_btn_state = curr_btn_state;
}
</pre></cf_box></center>
						
					</span>
				</p>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H1">Summary</span></cf_box>
				<br/><br/>
				<span class="TB-BODY">
					<table border="1" cellpadding="0" cellspacing="0">
						<tr>
							<td>
								New Built-in Functions
							</td>
							<td>
								<table border="1" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											Serial
										</td>
										<td>
											<table border="1" cellpadding="0" cellspacing="0">
												<tr>
													<td>
														begin(speed)
													</td>
													<td>
														Starts Serial communications with the baud rate 
														set to the input of the function, speed.
													</td>
												</tr>
												<tr>
													<td>
														print(message)
													</td>
													<td>
														Sends the literal data in the input message through 
														Serial communications. The parameter, message, can
														either be a string or some value. Numbers are sent
														as human readable numbers and floating point 
														numbers are rounded to two decimal points. 
													</td>
												</tr>
												<tr>
													<td>
														print(value, format)
													</td>
													<td>
														The extra parameter, format, tells the board how
														to send the value depending on whether it is an
														integer or a floating point number. The options
														for an integer are as follows:<br/>
														BYTE: Sends the ascii value of the number, e.g. 
														78 sends 'N'.<br/>
														BIN: Sends the binary value of the number, e.g. 
														42 would send '0010 1010'.<br/>
														OCT: Sends the octal value of the number, e.g.
														55 would send '67'.<br/>
														DEC: Sends the decimal value of the number, e.g.
														63 would send '63'.<br/>
														HEX: Sends the hexadecimal value of the number,
														e.g. 165 would send 'A5'.<br/><br/>
														For floating point numbers, the parameter format
														is the number of decimal points for the number,
														e.g. 1.23456789 with format set to 4 would send
														'1.2346'. Similarily if format is set to 1, it 
														would send '1.2'.
													</td>
												<tr>
													<td>
														println(message)
													</td>
													<td>
														Sends the data in the input message through the Serial
														communications and appends a newline to the end of the
														data.
													</td>
												</tr>
												<tr>
													<td>
														println(value, format)
													</td>
													<td>
														Exactly the same as print(value, format), except 
														that this function adds a new line at the end.
													</td>
												</tr>
											</table>
										</td>
									</tr>
									<tr>
										<td>
											millis()
										</td>
										<td>
											Returns the time in milliseconds since the board was last 
											turned on, or the time since the clock that millis uses 
											overflowed and thus reset.
										</td>
									</tr>
									<tr>
										<td>
											micros()
										</td>
										<td>
											Similar to millis() but returns microseconds instead of milliseconds.
											This function is also more precise than millis, but also less accurate.
										</td>
									</tr>
								</table>
							</td>
						</tr>
						<tr>
							<td>
								Determining When a Button is Pressed
							</td>
							<td>
								Compare the current button state to the last button state
								and if it is also HIGH, then determine the time and send the message.
							</td>
						</tr>
						<tr>
							<td>
								Determining the Time that has Passed
							</td>
							<td>
								Store into a separate variable, the difference between the current time 
								and the previous time. Then set the previous time to the current time.
							</td>
						</tr>
					</table>
				</span>
			</td>
		</tr>
	</table>
	<hr/>
	<table>
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H1">Project Code</span></cf_box>
				<br/><br/>
				<span class="TB-BODY">
<center>
<cf_box color="white"
	style="width:95%">
<pre class="brush:mpide;">
// The LED state, initially LOW
int LED_state = LOW; 
// Current button state and last button state
int curr_btn_state, last_btn_state;
// The current time and last time
int curr_time, last_time;
// What the change in time will be in seconds
float seconds;

void setup()
{
  // Start Serial communications
  Serial.begin(9600);
  // Set pins
  pinMode(13,OUTPUT);
  digitalWrite(13,LED_state);
  pinMode(4,INPUT);
  // Initialize variables, only the "last" variables matter when starting up
  last_time = millis();
  last_btn_state = digitalRead(4);
}

void loop()
{
  curr_btn_state = digitalRead(4);
  // If the button is HIGH and different from last time
  if(HIGH == curr_btn_state && curr_btn_state != last_btn_state){
    // Get the time
    curr_time = millis();
    // Convert the difference to seconds
    seconds = (float)(curr_time - last_time) / 1000;
    // Toggle the LED
    LED_state = !LED_state;
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
    digitalWrite(13,LED_state);
    // Now is the last time
    last_time = curr_time;
  }
  last_btn_state = curr_btn_state;
}
</pre></cf_box></center>
				</span>
			</td>
		</tr>
	</table>
</body>
</html>