<html>
	<meta name="author" content="Davis Cook">
	
	<head>
		<title>Button Controlled LEDs</title>
		<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>
	
	<cf_Box Color="White">
		
		<table class="TBLAYOUT">
			<tr>
				<td align="center">
					<span class="TB-PROJECTTITLE">
						Project 3:<br/>
						Blink External LED
					</span>
					<hr>
				</td>
			</tr>
		</table>
		
		<table class="TBLAYOUT">
			<tr>
				<td>
					<span class="TB-H1">Introduction</span>
					<br/><br/>
					<span class="TB-BODY">
						In <a href="P02.cfm">Project 02</a>, we programmed the chipKIT microcontroller to
						control an onboard LED. Now we will build our own external LED circuit and control
						it with the microcontroller. To do so, we must understand the properties of the
						circuit and its components.  If you are unfamiliar with the fundamentals of
						electricity and simple electronic components, <a href="P03files/P03Electric
						Review.cfm">a review of these topics is available here</a>.
					</span>
					<br/><br/>
				</td>
			</tr>
		</table>
		
		
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
                  <th width="60%">Description</th>
                  <th width="30%">&nbsp;</th>
              </tr>
            </thead>
            <tbody>
            	<tr>
               	<td class="qty">1</td>
               	<td>LED</td>
          			<td align="center" class="image"><img src="../Parts/LED_red.svg"></td>
					</tr>
               <tr>
               	<td class="qty">1</td>
               	<td>220 &Omega;</td>
          			<td align="center" class="image"><img width="150" src="../Parts/resistor_220.svg"></td>
					</tr>
            </table>
            
            </div>
				<br><br>
      		</tbody>  
			</td>
		</tr>
		</tbody>
	</table>



		<table ID="ST1-putt">
			<tr>
				<td>		
					<cf_box color="putty">
					<span class="TB-H2">Step 1: Designing the Circuit</span> 
					<br><br>
					<span class="TB-BODY">
						The circuit we are building is relatively simple and is comparable to a circuit
						with a battery, a light switch, and a light bulb.  The chipKIT board will act as
						both the power source and the switch.  When an LED is illuminated, typically
						there is (and should be) a voltage drop across its terminals of approximately 2V.
						The orientation we use when we place an LED in a circuit is important.  The LED
						will illuminate when the voltage drop is from the <a href="P03files/P03Electric
						Review.cfm#AnodeCathode">anode</a> to the
						<a href="P03files/P03Electric Review.cfm#AnodeCathode">cathode</a>.

						<br><br>
							
						It is possible to have a voltage drop across an LED of more than 2V.  However, if
						the voltage drop exceeds the <i>maximum forward voltage</i> of approximately 3V,
						the LED might be damaged.  When they are in a
						<code>HIGH</code> state, the output &ldquo;pins&rdquo; of the chipKIT boards have
						a voltage level of 3.3V (and 0V when they are in a <code>LOW</code> state).  If we
						attach an LED between one of the output pins and ground (0V), then set the output
						pin to <code>HIGH</code>, the voltage that appears across the LED will exceed its
						maximum forward voltage.  Because of the non-linear relationship between the
						current and the voltage in an LED, small changes in voltage can result in large
						changes in current.  This is discussed in greater depth
						<a href="P03files/P03Electric Review.cfm">here</a>.  Thus voltages that exceed the
						maximum formard voltage cause too much current to flow, damaging the LED and
						possibly damaging the chipKIT board.

						<br><br>

						To prevent any damage, we need to add a <i>current-limiting resistor</i> to our
						circuit.  This resistor should be connected <i>in series</i> with the LED, meaning
						that any current that flows through the resistor must also flow through the LED.
						A resistance of 220 &Omega; will ensure that the maximum forward voltage of the
						LED is not exceeded.  A discussion regarding <a href="P03files/P03Choosing
						Resistor.cfm">how to determine the size of the current-limiting resistor is
						available here</a>.
					</span>

					<br><br>

					<span class="TB-H2"> Step 2: Building the Circuit</span> 
					<br/><br/>
					<span class="TB-BODY">
						Having chosen our current-limiting resistor, we can begin building the circuit.
						Grab a breadboard, an LED, and a 220 &Omega; resistor. Any breadboard is fine.
						Before we wire the breadboard to the chipKIT board, it is important to understand
						the internal connections within the breadboard.  Figure 1 shows a breadboard where
						various holes have highlighted with different colors.  If two holes share the same
						color, they are electrically connected.  This particular breadboard has
						two <i>rails</i> at the top and bottom.  These horizontal lines of holes span the
						length of the breadboard and are electrically connected.  The holes in the
						top-most rail are highlighted in orange and the holes in bottom-most one are
						highlighted in green.  In the central area of the board are vertical lines of five
						holes that are electrically connected.  These lines of five holes are known as
						nodes.  There are two groups of nodes, one of which is above the <i>valley</i> and
						the other of which is below.  This valley forms an electrical barrier between the
						nodes.  						
						<br><br>
					</span>
					<div align="center">
						<img src="P03files/BasicBreadboard.svg" width="513"/> 
						<div class="TB-FIGURES">Fig. 1. Breadboard electrical connections.</div>
					</div> 
					<br/><br/>
					<span class="TB-BODY">
						In Fig. 1, the red lines represent wires.  Two nodes can be connected by inserting
						the ends of a wire into the holes of the different nodes.  On the left side of the
						breadboard, a wire has been used to establish a connection between nodes on either
						side of the valley.  The holes of these two nodes are highlighted in blue.  To the
						right of this, a wire has been used to connect neighboring nodes on the same side
						of the valley.  These nodes are highlighted in red.  The holes of the three nodes
						highlighted in purple have been connected using two wires.  The wires we use in
						the projects will sometimes be called <i>jumper wires</i> or
						simply <i>jumpers</i>.

						<br><br>

						Figure 2 depicts, using dark gray bars, the underlying electrical connections of
						the nodes and rails.

						<br><br>

						</span>
						<div align="center">
							<img width="513" src="P03files/BasicBreadrails.svg"> 
							<div class="TB-FIGURES">Fig. 2. Underlying electrical connections in a
							breadboard.
							</div>
						</div>

						<span class="TB-BODY">
							<br><br> 

							Next, it is important to be familiar with some of the different types of
							chipKIT connections.  The holes on the board are referred to as <i>pins</i>.
							There are a lot of pins on the chipKIT boards but we are only going to consider
							a few.  Figures 3 and 4 indicate the pins that are currently of interest to us.
							Figure 3 shows an Uno32 board while Fig. 4 shows a Max32.

							<br><br> 

						</span>

						<div align="center">
							<img src="P03files/chipKIT%20Board%20Pins.svg" width="1206"/> 
							<div class="TB-FIGURES">Fig. 3. Uno32 pins.</div>
						</div>

						<br><br>
	    
						<div align="center">
							<img src="P03files/chipKIT%20Board%20Pins.svg" width="1206"/> 
							<div class="TB-FIGURES">Fig. 4. Max32 pins.</div>
						</div>

						<br><br>
	    
						<span class="TB-BODY">

							<i>Ground pins</i> are always at a potential of 0V.  The
							<i>5V pins</i> and <i>3.3V pins</i> always maintain their respective positive
							voltage.  The <i>digital pins</i> can be set to one of two states.  This is
							done by programming them to either <code>HIGH</code> or <code>LOW</code>, which
							we will discuss more thoroughly later.  When set to <code>HIGH</code>, a
							digital pin maintains a voltage of 3.3V.  Now we can begin building the
							circuit.  

							<br><br>

							HERE HERE HERE


							<br><br>

							For this project use pin 3 as the positive terminal (always denoted
							in this series of projects by a red wire) of the voltage source and ground pin
							for the negative terminal (always denoted by a black wire). Attach the chipKIT
							board to the breadboard, as shown in Fig. 5.

							<br><br>

						</span>
						
						<div align="center">
							<img src="P03files/external%20led_bb.svg" width="625"/> 
							<div class="TB-FIGURES">Fig. 5. Wiring the Board</div>
						</div> 
						<br><br>

					<span class="TB-H2">Step 3: Programming the chipKIT Board</span>
					<br><br>
					<span class="TB-BODY">
						Now that we have the circuit properly wired, it is time to program the chipKIT
						board. Open MPIDE and start a new sketch. The code from Project 2 will work for
						this project. However, replace pin 13 with pin 3 in all the functions below.
					</span>								
					<br/><br/>
					</cf_box>
				</td>
			</tr>
		</table>	


		<table class="TBLAYOUT">
			<tr>
				<td>
					<span class="TB-H2">Old Code</span> <br/><br/>
					<pre class="brush: mpide;">
	void setup()
	{
	pinMode(13,OUTPUT);       //setup pin 13 so it can be turned on or off
					}
					void loop() 
					{
					  digitalWrite(13,HIGH);    //turn on pin
					  delay(1000);              // time delay of of 1000 milliseconds (1 second) 
					  digitalWrite(13,LOW);     //turn off pin
					  delay(1000);              // time delay of of 1000 milliseconds (1 second) 
					}
	</pre>
	<br/><br/>
	<span class="TB-H1">Updated Code</span> 
	<br/><br/>
	<pre class="brush: mpide;">
					void setup()
					{
					  pinMode(3,OUTPUT);        //&lt;--Updated-- setup pin 3 so it can be turned on or off
					}
					void loop()
					{
					  digitalWrite(3,HIGH);     //&lt;--Updated-- turn on pin
					  delay(1000);              // time delay of of 1000 milliseconds (1 second) 
					  digitalWrite(3,LOW);      //&lt;--Updated-- turn off pin
					  delay(1000);              // time delay of of 1000 milliseconds (1 second) 
					}
	</pre>
	<br/><br/>
	<span class="TB-BODY"> 
	  In the previous example, updating the pin values was relatively straightforward. Even so, changing values by hand in the long run isn’t very efficient.
	  Instead, you can represent the pin values with variables. There is    <a href="P03files/P03Programing_Variables.cfm">more on using variables here</a>.
	  Variables are a useful substitute for repetitive occurrences of values in your code. This is because when you change a variable's value, all other references
	  to that variable (that occupy the same scope) are automatically updated.  Here is what the final code for the project looks like using variables:
	</span>
	<br/><br/>  				
	<span class="TB-H1">Final Code</span> <br/><br/>
	<pre class="brush: mpide;">
						const int led_Pin = 3;                //&lt;--Updated-- define the constant integer variable led_Pin to be 3
						 
						void setup()
						{
						  pinMode(led_Pin,OUTPUT);      //&lt;--Updated-- setup pin defined by the variable led_Pin so it can be turned on or off 
						}
						void loop()
						{
						  digitalWrite(led_Pin,HIGH);   //&lt;--Updated-- turn on pin
						  delay(1000);                  // time delay of of 1000 milliseconds (1 second) 
						  digitalWrite(led_Pin,LOW);    //&lt;--Updated-- turn off pin
						  delay(1000);                  // time delay of of 1000 milliseconds (1 second) 
						}
	</pre>
	<br/><br/> 
	<span class="TB-BODY"> 
	  Now, run this code in MPIDE and it should make your external LED circuit blink. 
	</span>  
	<br/><br/>
	<span class="TB-H1">Summary</span> 
	<br/><br/>
	<span class="TB-BODY">
	  Here is a summary of some of the key points to remember from the project:<br/><br/>
        <ul>	  
	  <li>Node voltages and relative voltage drops<br/></li>
	  <li>Current<br/></li>
	  <li>Resistance and current-limiting resistors<br/></li>
	  <li>IV relationships of diodes and resistors<br/></li>
	  <li>Ohm’s Law<br/></li>
	  <li>Component polarity <br/></li>
	  <li>How to use a breadboard<br/></li>
	  <li>Uno32 and Max32 pins<br/></li>
	  <li>Basics of how to model and analyze a circuit with a schematic<br/></li>
	  <li>Using and naming variables in MPIDE<br/></li>
	  <li>Variable scope<br/></li>
	</ul>
	</span>
    </td>
  </tr>
</table>
</cf_Box>
</html>
