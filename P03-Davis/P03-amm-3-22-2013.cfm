<meta name="author" content="Davis Cook">
  
<head>
   <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
   <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
   <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
   <script type="text/javascript">SyntaxHighlighter.all();</script>
</head>
<cf_Box Color="White" NoMargins="1">

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="50%" align="center">
	<span class="TB-PROJECTTITLE">
	  Project 3:<br/>
	  Blink External LED
      </span>
      </td>
      <td width="15%" align="center">&nbsp;</td>
    </tr>
    <tr><td colspan="3" align="right"><hr/><br/><br/></td></tr>
  </table>
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
          <span class="TB-H1">Introduction</span> <br/><br/>
          <span class="TB-BODY"> <!--this is a comment -->
			In <a href="P02.cfm">Project 02</a> we
			programed the chipKIT microcontroller to
			control an onboard LED. Now we will build our
			own external LED circuit and control it with
			the microcontroller. To do so we must
			understand the properties of the circuit and
			its components.  If you are unfamiliar with
			the fundamentals of electricity and simple
			electronic
			components, <a href="P03files/P03Electric
			Review.cfm">a review of these topics is
			available here</a>. 
	    <br/><br/><br/>
	  </span>
      </td>
    </tr>
  </table>
  
  
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
      	<p> <br/><br/>
	  <span class="TB-H1">Step 1: Planning out the
			circuit design</span> 
	  <br/><br/>
	  <span class="TB-BODY">
	    The circuit we are going to build is relatively simple and is
	    comparable to a circuit with a battery, a light switch, and a light
	    bulb.  The chipKIT board will act as both the power source and the
	    switch.  When the LED is illuminated, typically there will be (and
	    should be) a voltage drop across its terminals of approximately 2 V.  The
	    orientation we use when we place an LED in a circuit is important.
	    The LED will illuminate when the voltage drop is from the <a href="P03files/P03Electric Review.cfm#AnodeCathode">anode</a> to the
	    <a href="P03files/P03Electric Review.cfm#AnodeCathode">cathode</a>

	    It is possible to have a voltage drop across an LED of more than 2 V.
	    However, if the voltage drop exceeds the "maximum forward voltage" of
	    approximately 3 V, then the LED might be damaged.  When they are in a
	    HIGH state, the output "pins" of the chipKIT boards have a voltage
	    level of 3.3 V (and 0 V when they are in a LOW state).  If we attached
	    a LED between one of the output pins and a ground (GND) pin, and then
					set the output pin to HIGH, the voltage that appears across the LED
					would exceed its maximum forward voltage. (As
					discussed <a href="P03files/P03Electric Review.cfm">elsewhere</a>,
					the nonlinear current-voltage (IV) relationship of the LED will cause
					too much current to flow, damaging the LED and possibly damaging the
				chipKIT board.) To prevent, this we need to add a <i>current limiting
					resistor</i> to our circuit.  This resistor should be connected <i>in
					series</i> with the LED, meaning that any current that flows through the
					resistor must also flow through the LED.  A resistance of 220 &#8486;
					will ensure that the maximum forward voltage of the LED is not
					exceeded.  A discussion regarding <a href="P03files/P03Choosing Resistor.cfm">how to determine the size of the
					current limiting resistor is available
					here</a>.
				</span>
				</p>
			</td>
		</tr>
	<tr><td colspan="2"><br/><br/></td></tr>
  </table>
  
  
  

  
<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
 <tr>
      <td valign="top">
      	<p>		
			<span class="TB-H1"> Step2:&nbsp; Building the circuit</span> <br/><br/>	  
        <span class="TB-BODY">
			Having now chosen our resistor, we can finally begin putting the circuit together. Grab a breadboard, 
			an LED and the 220 &#8486; current limiting resistor. Any breadboard is fine.Before we wire the 
			breadboard to the chipKIT board, it is important to understand how the connections for the breadboard 
			and chipKIT board both work. Figure 1 below shows how to connect areas on a breadboard. 
		</span>
		<div align="center">
				<img src="P03files/BasicBreadboard.png" width="513"/> 
				<div class="TB-FIGURES">Fig. 1. How Basic Breadboard Wiring Works</div>
		</div> <br/>
		<span class="TB-BODY">
			The colors of each hole indicate what <i>rails </i>are electrically connected to each other. A group of 
			connected holes is called a<i> rail</i>. Rails are just a strips of metal that are used like a wire. In Fig. 2 
			you can see what all the rails would look like underneath the groups of holes.
		</span>
		<div align="center">
				<img src="P03files/BasicBreadrails.png" width="513"/> 
				<div class="TB-FIGURES">Fig. 2. Breadboard Rails</div>
		</div> <br/>
		<span class="TB-BODY">
			Next it is important to understand how the chipKIT connections work. The holes on the board are referred to as 
			<i>pins</i>. There are a lot of pins on the chipKIT boards but we are only going to focus on a few. Figure 3 
			highlights the important types of pins.
		</span>
		<div align="center">
				<img src="P03files/chipKIT%20Board%20Pins.png" width="1206"/> 
				<div class="TB-FIGURES">Fig. 3. Uno32 and Max32 Pins</div>
		</div> <br/>

		<span class="TB-BODY">
        The <i>Ground Pin</i>, as seen in Fig. 3, represents the negative terminal of a voltage source. The <i>Digital Pins </i>,
		<i>5 Volt Pins</i> and <i>3.3 Volt Pins</i> all act as the positive terminals of the voltage source. As their names suggest
		the 5 volt pins supply a constant 5 volts while the 3.3 volt pins supply a constant 3.3 volts. The Digital pins can be turned
		on and off by programming them to HIGH or LOW, which we will discuss more thoroughly later. When turned on the digital pins 
		output 3.3 V. Now that we have a better understanding of the how the pin layouts  for the chipKIT boards and the rail layouts 
		for the bread board work we can begin wiring them together. For this example use digital pin 3 as the positive terminal (always 
		denoted by a Red Wire) of the voltage source and ground pin for the negative terminal (always denoted by a Black Wire). Wire the 
		boards together as shown in Fig. 4. 
		</span>
		<div align="center">
				<img src="P03files/external%20led_bb.png" width="625"/> 
				<div class="TB-FIGURES">Fig. 4. Wiring the Board</div>
		</div> <br/>
	</p>
	</td>
	</tr>
	<tr><td colspan="2"><br/><br/></td></tr>
</table>	
	
	

<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
	<tr>
		<td valign="top">
			<p>		
				<span class="TB-H1">Step3: programming the chipKIT board<o:p></o:p></span>
				 <span class="TB-BODY">
					Now that we have the circuit properly wired it is time to program the chipKIT board. Open up MPIDE and start a new sketch. The 
					code from project 2 will work for this project as long as you replace the number 13, which represents pin 13,&nbsp; with the&nbsp;
					number 3, which represents pin 3,&nbsp; in all the functions as shown below.<o:p></o:p>
				</span>								
			</p>   
			</td>
	</tr>
	<tr><td colspan="2"><br/><br/></td></tr>
</table>
	
</div>


<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
			<p>	    
				<span class="TB-H1">Old Code</span> <br/><br/>
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
					 </Pre>
				<br/><br/>
				<span class="TB-H1">Updated Code</span> <br/><br/>
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
				</pre><br/><br/>
				<span class="TB-BODY"> 
					In the previous example updating the pin values was relatively quick. Even so, changing values by hand in the long run isn’t very efficient.
					Instead you can represent the pin values with variables, there is    <a href="P03files/P03Programing_Variables.cfm">more on using variables here</a>.
					Variables are a useful substitute for repetitive occurrences of values in your code. This is because when you change a variables value, all other references
					 to that variable (that occupy the same scope) are automatically updated.  Here is what the final code for the project looks like using variables:
				</span><br/><br/>  				
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
				</pre><br/> 
				<span class="TB-BODY"> 
					Now just run this code in MPIDE and it should make your external LED circuit blink. 
				</span>  
				
				<br/><br/><span class="TB-H1">Summary</span> <br/><br/>
				<span class="TB-BODY">
					Here is a summary of some of the key points to remember from the project.<br/><br/>

					Node Voltages and Relative Voltage Drops<br/>
					Current<br/>
					Resistance and Current Limiting Resistors<br/>
					IV relationships of diodes and resistors<br/>
					Ohm’s Law<br/>
					Component Polarity <br/>
					How to use a Breadboard<br/>
					Uno32 and Max32 pins<br/>
					Basics of how to model and analyze a circuit with a schematic<br/>
					Using and Naming Variables in MPIDE<br/>
					Variable Scope<br/>
				</span>
			</p>
		</td>
	</tr>
</table>
</cf_Box>






