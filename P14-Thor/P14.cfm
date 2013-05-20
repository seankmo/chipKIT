<html>
<head>
	<meta name="author" content="Thor Steingrimsson"/>
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
				Project 14:<br/>
				Pulse Width Modulation
				<hr/>
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<span class="TB-H1">
				Introduction</span><br/><br/>
			<span class="TB-BODY">
				This project will cover PWM (Pulse Width Modulation) 
				and how to use it to make an LED &ldquo;breathe&rdquo;
				by making the LED slowly get brighter until it as bright 
				as it can be and then slowly get dimmer until it is off,
				repeating the process while it is on.
			<br/><br/></span>
		</td>
	</tr>
</table>
<table>
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
					<td>Resistor<br/>(10 k&#8486;)</td>
					<td class="image" align="center"><img src="Files/R.svg" width="100"/></td>
				</tr>
				<tr>
					<td class="qty">1</td>
					<td>LED</td>
					<td class="image" align="center"><img src="Files/LED.svg" height="100"/></td>
				</tr>
				<tr>
					<td class="qty">2</td>
					<td>Wires</td>
					<td class="image" align="center"><img src="Files/Wire.svg" height="100"/></td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<span class="TB-H1">What is PWM?</span><br/><br/>
			<span class="TB-BODY">
				<cf_imagebox align="right"
								 path="Files/PWM.svg"
								 width="300"
								 caption="Figure 1. PWM Structure.">
								
				PWM is an abbreviation of Pulse Width Modulation, which is a method of
				converting digital signals to analog signals. Due to how digital signals 
				are by definition either on or off, it is not possible to set a pin to a 
				specific voltage except either <code>HIGH</code> or <code>LOW</code>. 
				Pulse Width Modulation uses the fact that digital signals are only 
				<code>HIGH</code> or <code>LOW</code> and instead of trying
				to create a constant voltage, it switches between <code>HIGH</code> and 
				<code>LOW</code> very quickly at varying times to create an average voltage 
				that is inbetween <code>HIGH</code> and <code>LOW</code>.
				<br/><br/>
								
				The reason why PWM is called Pulse Width Modulation is because
				it modulates the pulse width, or more simply, it changes how 
				long the signal is <code>HIGH</code> compared to when it is 
				<code>LOW</code>. When working with PWM, there is a term that 
				is often used to measure the PWM. That term is the duty cycle, 
				which is the ratio of how long the signal is <code>HIGH</code> 
				to how long the period of its cycle is. This directly relates to 
				the average voltage that the signal would produce. 
				<br/><br/>
				
				<cf_imagebox align="left"
								path="Files/dc.svg"
								width="280"
								caption="Figure 2. General Duty Cycle Equation">
								
				The duty cycle is defined as the time of the pulse (signal is <code>HIGH</code>) 
				divided by the period of the pulse (time from one rising edge to the next). Figure
				2 is the general equation to find the duty cycle. For more information on how the
				chipKIT board hardware implements PWM, follow the green tab below.
				<div align="right">
				<cf_TextbookTabs Mode="top" NextColor="Green">
				<cf_TextbookTabs Mode="bottom" Color="Green" Title="Hardware Pulse Width Modulation" TabURL="Files/PWM.cfm">
				</div>
			</span>
		</td>
	</tr>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">
				Step 1: Setting Up the Circuit
			</span><br/><br/>
				<span class="TB-BODY">
					<cf_imagebox align="right"
								path="Files/P14_bb.svg"
								width="280"
								caption="Figure 3. Circuit Diagram.">
								
					The circuit is very simple. It is basically the same as Project 3, only
					the pin is pin 6 and not pin 3.
					Everything is in series, from the PWM pin to a 
					resistor, through the LED, and finally into ground.
				<ol>
					<li>Use a wire to connect pin 6 to the breadboard.</li>
					<li>Use the 10 k&#8486; resistor to connect the wire
						to another row on the breadboard.</li>
					<li>Place the LED across the gap with the anode (longer end of leads on the LED)
						on the same row as the end of the resistor.</li>
					<li>Use the second wire to connect the cathode of the LED (shorter end of LED)
						to one of the ground pins on the chipKIT board.</li>
				</ol>
				</span>
			</cf_box>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<span class="TB-H1">
				PWM in MPIDE
			</span><br/><br/>
			<span class="TB-BODY"> <!-- REWRITE -->
				<cf_imagebox align="right"
								path="Files/mpidedc.svg"
								width="400"
								caption="Figure 4. analogWrite() Duty Cycle Equation.">
				
				The <code>analogWrite()</code> function has two inputs. The first input is the pin on which
				<code>analogWrite()</code> will start PWM. The second input is a value that is used to 
				determine the duty cycle of the PWM. The second input determines the duty cycle by dividing
				the second input by 255. If <code>analogWrite()</code> is used on a pin that does not 
				support PWM, it will write <code>LOW</code> or <code>HIGH</code> depending on if the value
				in the second input is less than 128 then it is set to <code>LOW</code> or greater than or 
				equal to it is set to <code>HIGH</code>.<br/>
				If you are curious about how the hardware works to create a pulse width modulated signal, 
				click the tab to the right.
				<br/><br/>
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<span class="TB-H1">
				Software Design
			</span><br/><br/>
			<span class="TB-BODY">
				<!--	STRUCTURE: 
						Talk about the software design
				-->
				We only need three variables: the value to set the <code>analogWrite()</code> function, 
				the constant value for the pin, and how to increment. The constant value 
				for the pin is set, and it is just to make the code easier to read and write. The variables for 
				PWM and increment are related in that in every cycle of <code>loop()</code> the variable 
				for PWM should be incremented until it reaches the maximum or minimum, and once it does, we set 
				the increment variable to its negative so that it changes the PWM variable in the opposite direction. 
				<br/><br/>
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">Project Code</span><br/><br/>
			<span class="TB-BODY">
			
<pre class="brush: mpide;">
// pwm - pwm state
int valuePwmGlb = 0;
// inc - increment variable
int incGlb = 1;
// The external LED is on pin 6.
const int ledGlb = 6;

void setup()
{
  /* Set LED (pin 6) to output, pin 6 is one of the 
  *  pins that can be used with pulse width
  *  modulation.
  */
  pinMode(ledGlb,OUTPUT);
}

void loop()
{
  valuePwmGlb += incGlb;
  if(valuePwmGlb >= 255){     // if pwm state is at max.
    incGlb = -1;
  }else if(valuePwmGlb &lt;= 0){ // if pwm state is at min.
    incGlb = 1;
  }
  // write the pwm state to LED and wait 10 milliseconds.
  analogWrite(ledGlb,valuePwmGlb);
  delay(10);
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
						<li>Pulse Width Modulation (PWM)</li>
						<li>Duty Cycle</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td width="20%">Functions Introduced:</td>
					<td width="80%">
						<code>analogWrite(pin, value)</code>
					</td>
				</tr>
			<br/><br/>
			</tbody>
			</table>
		</td>
	</tr>
</table>
</cf_box>
</body>
</html>