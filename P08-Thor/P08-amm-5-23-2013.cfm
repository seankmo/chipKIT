<html>
	<head>
		<meta name="author" content="Thor Steingrimsson">
		<title>Debounced Button with Serial Output</title>
		<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>

	<body>
		<cf_box color="white">
			
			<table class="TBLAYOUT">
				<tr>
					<td align="center">
						<span class="TB-PROJECTTITLE">
							Project 8:<br>
							Debounced Button with Serial Output
						</span>
						<br><hr>
					</td>
				</tr>
			</table>

			<br><br>

			<table class="TBLAYOUT">
				<tr>
					<td>
						<span class="TB-H1">Introduction</span><br><br>
						<span class="TB-BODY">
							In <a href="P07.cfm">Debouncing via Software</a>, we introduced the concept of
							debouncing a button, but we had to explicitlyprogram the debounce. In this project,
							the Bounce Library will be used to debounce the input from a button. Just as in
							Debouncing via Software, this project will use a single button and LED, and it will
							count the number of times the button has been pressed and display the result through
							the serial monitor.  This project will use a library to debounce rather than manually
							coding or using a hardware solution. <br>
						</span>
					</td>
				</tr>
			</table>

			<br>

			<table class="TBLAYOUT">
				<tr>
					<td valign="top">
						<span class="TB-H2">Inventory:</span><!--I don't think we need the wires-->
						<br><br>
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
										<td align="center" class="image"><img src="P08files/Button_bb.svg" height="100"></td>
									</tr>
									<tr>
										<td class="qty">2</td>
										<td>10 k&Omega;resistors</td>
										<td align="center" class="image"><img src="P08files/R_10k_bb.svg" width="100"></td>
									</tr>
									<tr>
										<td class="qty">4</td>
										<td>Wires</td>
										<td align="center" class="image"><img src="P08files/Wire_bb.svg" width="100"></td>
									</tr>
									<tr>
										<td class="qty">1</td>
										<td>LED</td>
										<td align="center" class="image"><img src="P08files/LED_bb.svg" height="100"></td>
									</tr>
							</table>
						</div>
						<br><br>
      		</tbody>  
			</td>
		</tr>
	</table>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Circuit Setup</span><br><br>
				<span class="TB-BODY">
					The ciruit for this project is the same as the one used in Debouncing via Software,
					but instead of the full breadboard, this project will use a mini breadboard and pins
					7 and 8. Other than these minor differences the result should be the exact same as in
					Debouncing via Software; when the button is pressed, the LED lights up and the
					computer receives information about the number of times the button has been pressed.<br><br>
					<table>
						<tr>
							<td>
								<ol>
									<li>Place the button so that it bridges the valley of the breadboard, like in
										Fig. 1.</li>
									<li>Place a wire from a 5V power source pin to one of the legs of the button.</li>
									<li>Place a resistor (10 k&Omega;) on the same side of the button as the
										wire to the 5V pin, but on the other leg.</li>
									<li>Place a wire from pin 7 to the leg of the button that is across the
										valley from the leg with the resistor.</li>
									<li>Place another wire from ground (GND) to the other end of the 10
										k&Omega; resistor
									</li>
									<li>Place another 10 k&Omega; resistor on the same row as the other resistor and 
									wire to ground.</li>
									<li>Connect the cathode (short end) of the LED to the end of the newly placed 
										resistor and the anode (long end) so that it is across the gap.</li>
									<li>Finally, place the final wire from the anode (short end) of the LED to 
									pin 8.</li>
								</ol>
							</td>
							<td>
								<img src="P08files/P08_bb.svg"/>
								<div class="TB-FIGURES">Fig. 1. Circuit setup.</div>
							</td>
						</tr>
					</table>
				</span>
			</td>
		</tr>
	</table>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">The Bounce Library</span><br><br>
				<span class="TB-BODY">
												
					What is a library in programming? Why do we need them? A library is simply a
					collection of functions and classes that are used to make a task or collection of
					tasks easier to deal with. The Bounce library, which we'll be using for this project,
					is a library to make debouncing a button or switch as easy as
					calling <code>digitalRead()</code>. Debouncing using a library is conceptually the
					same as debouncing via software, but the debouncing code is inside the Bounce class
					instead of inside the loop function. 
				</span>
			</td>
		</tr>
	</table>
	
	<br><br>
	

	<table class="TB-LAYOUT">
		<tr>
			<td>
				<cf_box color="putty">
					<span class="TB-H2">Step 1: Downloading the Bounce Library</span><br><br>
					<span class="TB-BODY">

						<cf_imagebox align="right" path="P08files/mpideSketchLoc.png" width="309px" caption="Fig. 2. MPIDE sketchbook location.">
						The bounce library can be found at 
						<a href="http://playground.arduino.cc/code/bounce">
							http://playground.arduino.cc/code/bounce</a>.<br>  Once the library has been
						downloaded, unzip it<!--unzip what? the folder?-->. Then place the resulting folder
						in the libraries folder of your sketchbook. If you do not know where this is, it can
						be found by going to <code>FILE-&gt;preferences</code> and looking at the Sketchbook
						location. Alternatively, hitting <code>Ctrl+comma(,)</code> takes you to the same
						screen. Figure 2 should show the window that opens and the sketchbook location will
						be at the top of that window.
						
						<br><br>
						
						Now that you know where the location of your sketchbook is, navigate
						to it and you'll see a bunch of folders with the same names as the various projects
						you've saved. Since this is going to be the first library you install, you will need
						to make a folder called &ldquo;Libraries&rdquo;, which will hold the user-installed
						libraries. So, now that we have a location to install the bounce library, copy the
						unzipped bounce folder and paste it into the newly created &ldquo;Libraries&rdquo;
						folder. You can check to see if the library was installed by starting (or restarting
						if already open) MPIDE, selecting <code>Sketch->Import Library</code>, and looking
						near the bottom of that menu for Bounce. It should be under
						&ldquo;Contributed&rdquo;, which simply means that it was added by the user and not
						included by default. Figure 3 is the window you should see if the library was
							installed correctly. Also, this is the same process to import a library into a
						sketch, except that you would click on the library name to do so.
						
						<br><br>
							
						<cf_imagebox align="right" path="P08files/importBounce.png" width="309px" caption="Fig. 3. Importing the bounce library.">						
							When you click on the Bounce library in the import library menu, you should see 
							<code>#include &lt;Bounce&gt;</code> at the top of your sketch. This means that when
							the sketch is verified/compiled, it will include the Bounce library.</span>
					
				</cf_box>
			</td>
		</tr>
	</table>
			
	<table class="TB-LAYOUT">
		<tr>
			<td>					
				<span class="TB-H1">Methods in the Bounce Class</span><br>

				<span class="TB-BODY">
					We will be using four methods in the Bounce
					class to accomplish what was done in project 7. The first method is the constructor
					for the Bounce class, which is used to initialize the class. The second method is the
					update method, which contains the debouncing code that was in Debouncing via
					Software. The third method is the read method, which simply returns the value of the
					pin from the last update. The final method is the risingEdge method, which returns a
					true if the pin had a rising edge during the last update and a false otherwise.</span>

					<br><br>
					<span class="TB-H2">The Constructor</span><br>
					The Bounce class does not have a default constructor<!--what is a constructor?-->. It
					only has a copy constructor and a constructor that requires two inputs, a pin to
					debounce and the time to delay. Because of this, when we initialize the class we have
					to include the pin and debounce delay that we want to use. An explicit example of what
					will work and what won't may be helpful:
					
					<pre class="brush:mpide;">
// This won't compile/give errors.
Bounce failToBounce;
// This will compile by using the two input constructor.
Bounce simple(2, 50);
/* This is a java style initialization of a class.
*  This uses both the copy constructor (the = sign),
*  And the two input constructor.
*/
Bounce javaBounce = Bounce(2, 50);
					</pre>
					
					<br><br>
					</span>
					
					<span class="TB-H2">The Update Method</span><br>
					<span class="TB-BODY">
					The update method is the most important method in this class, in addition to the
					constructor method. This method contains the logic that is used to debounce the
					button or switch.  It returns true if the state has changed and false if the state
					hasn't changed.  This method is the main reason to use the Bounce library. Instead of
					using two blocks of code at the beginning and end of the <code>loop()</code> function
					with the functional code in the middle of those two blocks of code. We can now just
					call the <code>update()</code> method and the rest of the code in
					the <code>loop()</code> function can be functional and focused on what you are trying
					to do, instead of concerning itself with debouncing the button.
					<br><br>
					</span>
					
					<span class="TB-H2">The Read Method</span><br>
					<span class="TB-BODY">
					The read method simply returns the state of the pin determined from the last time the
					update method was called. This is presented in contrast to the code
					in <a href="P07.cfm">Debouncing via Software</a>, where two button state variables
					and two time state variables were required to read the button without any bounce.
					<br><br>
					</span>
					
					<span class="TB-H2">The Rising Edge Method</span><br>
					<span class="TB-BODY">
					The risingEdge method is used to determine if the button's state is going
					from <code>LOW</code> to <code>HIGH</code>. Previously (in Debouncing via Software),
					the LED state was used to determine if a rising edge occured. The risingEdge method
					simply checks if the current state is <code>HIGH</code> and if there was a change
					during the last update.
					</span>
       </td>
    </tr>
  </table>

  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <cf_box color="putty">
				  
				<span class="TB-H2">Step 2: Programming Global Variables</span><br><br>
				<span class="TB-BODY">
					We have five global variables that will be used in the sketch. The first two
					variables are simply the pins for the button and the LED. We are making them global
					because we have no reason to change them during the program. We will call these
					variables &ldquo;btnPinGlb&rdquo; and &ldquo;ledPinGlb&rdquo; where the PinGlb part
					simply means that the variable is a pin and that it is a global variable (all
					functions can use it).
					
					<br><br>
					
					The next variable is the amount of time to delay for the button debouncing. This variable is 
					<code>const</code> <code>unsigned</code> <code>int</code>, because we won't change
					the delay in the debounce and a negative delay makes no sense. This variable will be
					called debounceDelayGlb. See Debouncing via Software for more information on why we
					need a debounce delay.
					
					<br><br>
					
					The next variable is the count of the times the button has been pressed. It is an 
					<code>unsigned</code> <code>int</code>, since there can't be negative button presses.
					The name of this variable will be countGlb because it is a global variable.  The
					final variable is actually a class object (a variable that is a class), and that is
					the Bounce class. Due to the Bounce class not having a default constructor, it
					requires inputs <!--of what?-->when creating the class object. The constructor requires two inputs:
					the pin to debounce and the time to delay for debouncing.  We will just call the
					variable bouncerGlb because it is a global variable. However, to create this variable
					with the inputs it requires, we must treat it like we would a function. Observe the following code
					on how to create this variable:
					
					<pre class="brush:mpide;">
Bounce bouncerGlb(btnPinGlb, debounceDelayGlb);
					</pre>

					As you can see in the code, we use the pin which the button is connected to and the 
					debounce delay. We insert them into the Bounce class variable as if it were a function 
					to initialize it with those values<!--what values? Not clear.-->. 
					<br><br>
				</span>
				
				<span class="TB-H2">The <code>setup()</code> Function</span><br><br>
				<span class="TB-BODY">
					The <code>setup()</code> function in this project is fairly straightforward. All we
					have to do is set the pin modes and start serial communications. The button will
					obviously be <code>INPUT</code> and the LED will be <code>OUTPUT</code>. Observe how
					we define the <code>setup()</code> function:

<pre class="brush:mpide;">
void setup()
{
  pinMode(btnPinGlb, INPUT);
  pinMode(ledPibGlb, OUTPUT);
  
  Serial.begin(9600);
}
</pre>
					
					<br><br>
				</span>
				
				<span class="TB-H2">The <code>loop()</code> Function</span><br><br>
				<span class="TB-BODY">
					The first thing to do in the <code>loop()</code> function is to update the state
					of the button. This is done by simply using the <code>update()</code> method on the variable
					<code>bouncerGlb</code>. This will take care of the button debounce. The next thing
					is to create an integer and set it to the current button state. We will call this
					variable &ldquo<code>currentBtnState</code>.&rdquo; To get the current
					button<!--I feel like a word is missing here. Do you mean button state?-->, we use
					the <code>read()</code> method on the variable <code>bouncerGlb</code>. We then have
					an if statement where we use the <code>risingEdge()</code> mode
					on <code>bouncerGlb</code> to determine whether we increment
					<code>countGlb</code> and sent the result to the computer. We then end the <code>loop()</code>
					function by writing the state of the button to the LED.<br>
					The <code>loop()</code> should look something like this:

					<pre class="brush:mpide;">
void loop()
{
  bouncerGlb.update();
  
  int currentBtnState = bouncerGlb.read();
  
  if(bouncerGlb.risingEdge()){
    countGlb++;
	 Serial.println(countGlb);
  }
  
  digitalWrite(ledPin, currentBtnState);
}
					</pre>
					
				</span>
				
				<span class="TB-H2">Step 3: Compiling the Code</span><br><br>
				<span class="TB-BODY">

					Now we have all of the information we need to debounce a button using the bounce
					library. The code for our sketch should look something like this:

					<br><br>

					<pre class="brush:mpide;">
#include &lt;Bounce.h&gt;

// Define variables for the pins we are using.
const int btnPinGlb = 7;
const int ledPinGlb = 8;

// Used for the initialization of the Bounce class.
const unsigned int debounceDelayGlb = 50;

// Times the button has been pressed.
unsigned int countGlb = 0;

/* Initialize the Bounce class on pin 7 (btnPin) with 
 * a delay of 50 (debounceDelayGlb)
 */
Bounce bouncerGlb(btnPinGlb,debounceDelayGlb);

void setup()
{
  // Set the button to INPUT and LED to OUTPUT
  pinMode(btnPinGlb,INPUT);
  pinMode(ledPinGlb,OUTPUT);
  
  // Start Serial communications.
  Serial.begin(9600);
}

void loop()
{
  // Update the bounce class.
  bouncerGlb.update();
  
  // Get current button state from the bounce class.
  int currentBtnState = bouncerGlb.read();
  
  // If there is a rising edge, increment count and send it to the computer.
  if(bouncerGlb.risingEdge()){
    countGlb++;
    Serial.println(countGlb);
  }
  
  // Write the current button state to the LED.
  digitalWrite(ledPinGlb, currentBtnState);
}
					</pre>
				</span>
			  </cf_box>
		  </td>
	  </tr>
  </table>
  
  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <span class="TB-H1">Summary:</span><br><br>
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
								  <li>Using libraries to solve problems</li>
							  </ul>
                  </td>
					  </tr>
					  <tr>
						  <td width="20%">Functions Introduced:</td>
						  <td width="80%">
							  <ul>
							<li>Bounce(pin,delay)</li>
							<li>Bounce.update()</li>
							<li>Bounce.read()</li>
							<li>Bounce.risingEdge()</li>
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
