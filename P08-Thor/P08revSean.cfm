<html>
<head>
	<meta name="author" content="Thor Steingrimsson">
	<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
	<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
	<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
	<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>
<body><cf_box color="white">
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
				<span class="TB-PROJECTTITLE">
					Project 8:<br/>
					Debounced Button with Serial Output
				</span>
				<hr/>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Introduction</span><br/><br/>
				<span class="TB-BODY">
					In project 7, the concept of debouncing a button was introduced, but you had to program
					the debounce explicitly. In this project, the Bounce library will be used to debounce the
					input from a button. <br/>
					Just like in Project 7, this project will use a single button and LED, and it will count 
					the number of times the button has been pressed and display the result through the serial
					monitor. <br/>
					This project will use a library to debounce rather than coding it yourself or using a 
					hardware solution to the debouncing problem. <br/><br/>
				</span>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
      	<td valign="top">
         	<span class="TB-H2">Inventory:</span>
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
          			<td align="center" class="image"><img src="P08files/Button_bb.svg" height="100"></td>
					</tr>
               <tr>
               	<td class="qty">2</td>
               	<td>Resistor<br/>10 k&#8486;</td>
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
				<br/><br/>
      		</tbody>  
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Circuit Setup</span><br/><br/>
				<span class="TB-BODY">
					The ciruit for this project is the same as project 7, but instead of the full breadboard,
					this project will use a mini breadboard and pins 7 and 8. Other than these minor differences
					the result should be the exact same as in project 7, when the button is pressed the LED 
					shines and the computer receives the number of times the button has been pressed. 
					<table>
						<tr>
							<td>
								<ol>
									<li>Place the button so that it bridges the gap of the breadboard, like in
									figure 1.</li>
									<li>Place a wire from 5V0 to one of the legs of the button.</li>
									<li>Place a resistor (10 k&#8486;) on the same side button as the wire to 5V0,
									but on the other leg.</li>
									<li>Place a wire from pin 7 to the leg of the button that is opposite of the 
									leg with the resistor.<!-- maybe rewrite to be more exact when referring to "opposite" --></li>
									<li>Place another wire from ground to the other end of the 10 k&#8486; resistor
									</li>
									<li>Place another 10 k&#8486; resistor on the same row as the other resistor and 
									wire to ground.</li>
									<li>Connect the cathode (short end) of the LED to the end of the newly placed 
									resistor and the anode (long end) so that it is across the gap.</li>
									<li>Finally, place the final wire from the anode (long end) of the LED to 
									pin 8.</li>
								</ol>
							</td>
							<td>
								<img src="P08files/P08_bb.svg"/>
								<div class="TB-FIGURE">Figure 1. Circuit Setup.</div>
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
				<span class="TB-H1">The Bounce Library</span><br/><br/>
				<span class="TB-BODY">
					The bounce library can be found at 
					<a href="http://playground.arduino.cc/code/bounce">
						http://playground.arduino.cc/code/bounce</a>.
						
					
					
					
					
						
						
					<b><u>Once it is downloaded, unzip it, and copy the resulting folder to the libraries folder of 
					wherever you installed MPIDE.</b></u><br/>
					
					<!--- you need to explain this ,  you can’t just put the unzipped version of the folder into the ....\mpide-0023-windows-20120903\libraries  and have it work , this library folder is for core libraries,
					Bounce is a user submitted library so you have to place it in   C:\Users\username\Documents\mpide\libraries
					
					the path might not be exact for all users but it can be found
					from MPIDE by going to
					FILE->preferences ,  and the path is under the sketch locations
					
					you might have to create a library folder too, once the bounce lib folder placed in this folder it will show up under 
					
					SKETCH->import library    (after you restart MPIDE) but at the bottom under contributed.
					
					also the download link, is for both the mac and windows version, you might want to specify to only copy the version you need, because MPIDE wont recognize it
					if you put the whole thing in the lib folder (it won’t recognize includes on compile, at least how you have it with your code) --->

					
					<br><!-- maybe add a space for clarity -->
					
					
					
					<!-- you may want to explain a library just little bit.  you explain how to get a library but if the reader is new to programming,
					then they don’t really know what a library is.  also maybe mention you need to include the library before use, and show a link if people reading are unfamiliar with classes -->

					<u>The Bounce library does exactly what we did in project 7, but now inside a class instead of filling up the <code>loop()</code>
					function, but at the cost of learning how to use the Bounce class instead</u><!— this sentence is vague and could
					be rewritten, maybe replace “ but now inside a class instead…”  ,  with “except now using a class instead of
					writing code within the loop function”.    and the last part “ …learning how to use the Bounce class instead”
					instead of what??, maybe be more specific-->. There are four methods of the Bounce class that we will use 
					in this project. The constructor, which requires two inputs, is called when a <u>variable</u> <!-- i think it is a class object, not a variable -->
					is created. The <code>update()</code> method is the method that handles all of the 
					debouncing logic introduced in project 7 and should be called at the beginning of the 
					<code>loop()</code> function. The <code>read()</code> method is used to get the state 
					of the button from the last update. Finally, the <code>risingEdge()</code> method is
					used to determine if the input pin has gone from <code>LOW</code> to <code>HIGH</code>.
					<br/><br/>
					
					<span class="TB-H2">The Constructor</span><br/>
					<span class="TB-BODY">
					Since Bounce is a class without a <u>default initialization</u><!-- maybe consider rephrasing  ,  like "the constructor for this class requires parameters" -->, we must initialize it with the
					pin to debounce and the interval of time to debounce in that order. 
					<br/><br/>
					</span>
					
					<span class="TB-H2">The Update Method</span><br/>
					<span class="TB-BODY">
					The update method is the most important method in this class next to the constructor. This
					method <u>holds all of the logic that is used to determine whether the button has changed 
					state. </u> <!-- maybe rephrase for clarity -->It <u>also</u><!-- do you need also --> returns true if the state has changed and false if the state hasn't changed.
					This method is the main reason to use the Bounce library. Instead of having two blocks of
					code at the beginning and end of the <code>loop()</code> function with the functional code
					in the middle of those two blocks of code. Now we can just call the <code>update()</code> 
					method and the rest of the code in the <code>loop()</code> function can be functional and
					focused on what you are trying to do instead of worrying about debouncing the button.
					<br/><br/>
					</span>
					
					<span class="TB-H2">The Read Method</span><br/>
					<span class="TB-BODY">
					<u>The read method simply returns the state of the pin from the last time the variable was 
					last updated by the update method</u><!-- rephrase, something like  "the read method simply returns the state of the pin determined from the last time the update method was called", updated by the update method seems wordy  -->
					. Contrast this to project 7 where <code>digitalRead()</code>
					was used to get the current button state.<!-- split into two sentenctes --> The sketch then checked to see if the button's state had
					changed and <u>if enough time has passed since the last time the button's state has changed</u><!-- if enough time has passed then what,  ..... -->.
					<br/><br/>
					</span>
					
					<span class="TB-H2">The Rising Edge Method</span><br/>
					<span class="TB-BODY">
					The risingEdge method is used to determine if the button's state is going from <code>LOW</code>
					to <code>HIGH</code>. Unlike in project 7, where two extra variables (previousLedState and
					currentLedState) are used to determine if the button is a rising edge, this method simply
					<u>checks to see if the state has changed and the current state</u><!-- maybe describe this better  "and the current state", this seems slightly vague.  -->   (both of these things were done
					in the update method).
					</span>
					<br/><br/>
				</span>
			</td>
		</tr>
	</table>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Putting The Code Together</span><br/><br/>
				
				<span class="TB-H2">Global Variables</span><br/><br/>
				<span class="TB-BODY">
					We have five global variables that will be used in the sketch. The first two variables 
					are simply the pins for the button and the LED. They are also <code>const</code> because
					we have no reason to change them during the program. We will call these variables btnPinGlb
					and ledPinGlb where the PinGlb part simply means that the variable is about a pin and that 
					it is global.<br/> 
					<u>The next variable is the amount to delay for the button debouncing</u><!-- maybe explain why you need delay, or reference project 7 -->. This variable is 
					<code>const</code> <code>unsigned</code> <code>int</code>because we won't change the delay 
					in the debounce and a negative delay makes no sense. This variable will be called 
					debounceDelayGlb.<br/>
					The next variable is the count of the times the button has been pressed. It is an 
					<code>unsigned</code> <code>int</code> since there can't be negative button presses.
					The name of this variable will be countGlb because it is a global variable.
					The final variable is the class from the Bounce library. Due to how the Bounce class does
					not have a default constructor, it requires inputs when creating a variable<!-- again maybe specify class object as opposed to variable -->. The constructor
					requires two inputs: the pin to debounce and the time to delay for debouncing.
					We will just call the variable bouncerGlb because it is a global variable. However, to
					create this variable with the inputs it requires, we treat it like a function. Observe the 
					following code on how to create this variable:
<pre class="brush:mpide;">
Bounce bouncerGlb(btnPinGlb, debounceDelayGlb);
</pre>
					As you can see in the code, we use the pin which the button is connected to and the 
					debounce delay, and put them into the Bounce class variable as if it were a function 
					to initialize it with those values. 
					<br/><br/>
				</span>
				
				<span class="TB-H2">The <code>setup()</code> Function</span><br/><br/>
				<span class="TB-BODY">
					The <code>setup()</code> function is very simple in this project. All we have to do is set
					the pin modes and start serial communications. The button will obviously be <code>INPUT</code>
					and the LED will be <code>OUTPUT</code>. Observe how we define the <code>setup()</code>
					function:
<pre class="brush:mpide;">
void setup()
{
  pinMode(btnPinGlb, INPUT);
  pinMode(ledPibGlb, OUTPUT);
  
  Serial.begin(9600);
}
</pre>
					
					<br/><br/>
				</span>
				
				<span class="TB-H2">The <code>loop()</code> Function</span><br/><br/>
				<span class="TB-BODY">
					The first thing to do in the <code>loop()</code> function is to update the state
					of the button. This is done by simply using the <code>update()</code> method on the variable
					<code>bouncerGlb</code>. This will take care of the button debounce. The next thing is to
					create an integer and set it to the current button state. So we will call this variable
					<code>currentBtnState</code> and to get the current button we use the <code>read()</code>
					method on the variable <code>bouncerGlb</code>. Then we have an if statement where we use
					the <code>risingEdge()</code> mode on <code>bouncerGlb</code> to determine if we increment
					<code>countGlb</code> and sent the result to the computer. We then end the <code>loop()</code>
					function by writing the state of the button to the LED.<br/>
					The <code>loop()</code> should look something like this:
					
					
					<!-- Maybe consider moving the project code before the summary  -->
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
					
					<br/><br/>
				</span>
			</td>
		</tr>
	</table>

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
                     <li><u>Using libraries to solve problems</u><!--  if you explained libraries more than yes  ---> </li>
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


	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Project Code</span><br/><br/>
				<span class="TB-BODY">

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
  digitalWrite(ledPinGlb, currentBtnState); // <!-- did you mean ledPinGlb, instead of ledPin-->
}
</pre>
				</span>
			</td>
		</tr>
	</table>

</cf_box></body>
</html>