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
				<!-- REWRITE -->
				This project will cover PWM (Pulse Width Modulation) 
				and how to use it to make an LED &ldquo;breathe.&rdquo;
				That is, make the LED slowly get brighter and then dimmer
				in a sinusoidal fashion. 
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
					<td class="image" align="center"><img src="P14files/R.svg" width="100"/></td>
				</tr>
				<tr>
					<td class="qty">1</td>
					<td>LED</td>
					<td class="image" align="center"><img src="P14files/LED.svg" height="100"/></td>
				</tr>
				<tr>
					<td class="qty">2</td>
					<td>Wires</td>
					<td class="image" align="center"><img src="P14files/Wire.svg" height="100"/></td>
				</tr>
			</tbody>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<span class="TB-H1">What is PWM?</span><br/><br/>
			<span class="TB-BODY">
				PWM is an abbreviation of Pulse Width Modulation, which is a method of
				converting digital signals to analog signals. Due to how digital signals 
				are by definition either on or off, it is not possible to set a pin to a 
				specific voltage except either <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span>. 
				Pulse Width Modulation uses the fact that digital signals are only 
				<span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span> and instead of trying
				to create a constant voltage, it switches between <span class="TB-LITERAL1">HIGH</span> and 
				<span class="TB-LITERAL1">LOW</span> very quickly at varying times to create an average voltage 
				that is inbetween <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span>.
				<br/>
			</span>
		</td>
	</tr>
	<tr>
		<td>
			<table>
				<tr>
					<td>
						<span class="TB-BODY">
							The reason why PWM is called Pulse Width Modulation is because
							it modulates the pulse width, or more simply, it changes how 
							long the signal is <span class="TB-LITERAL1">HIGH</span> compared to when it is 
							<span class="TB-LITERAL1">LOW</span>. When working with PWM, there is a term that 
							is often used to measure the PWM. That term is the duty cycle, 
							which is the ratio of how long the signal is <span class="TB-LITERAL1">HIGH</span> 
							to how long the period of its cycle is. This directly relates to 
							the average voltage that the signal would produce.
						</span>
					</td>
					<td>
						<img src="P14files/PWM.svg" height="150"/>
						<div class="TB-FIGURES">Figure 1. PWM Structure</div>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<span class="TB-BODY">
				<!-- INSERT EQUATIONS AND STUFF -->
			</span>
		</td>
	</tr>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">
				Step 1: Setting Up the Circuit
			</span><br/><br/>
			<table>
				<tr>
					<td>
						<span class="TB-BODY">
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
					</td>
					<td>
						<img src="P14files/P14_bb.svg" height="200"/>
						<div class="TB-FIGURES">Figure 2. Circuit Diagram.</div>
					</td>
				</tr>
			</table>
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
				The <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> function has two inputs. The first input is the pin on which
				<span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> will start PWM. The second input is a value that is used to 
				determine the duty cycle of the PWM. The second input determines the duty cycle by dividing
				the second input by 255. If <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> is used on a pin that does not 
				support PWM, it will write <span class="TB-LITERAL1">LOW</span> or <span class="TB-LITERAL1">HIGH</span> depending on if the value
				in the second input is less than 128 then it is set to <span class="TB-LITERAL1">LOW</span> or greater than or 
				equal to it is set to <span class="TB-LITERAL1">HIGH</span>.<br/>
				If you are curious about how the hardware works to create a pulse width modulated signal, 
				click the tab to the right.
				<br/><br/>
			</span>
		</td>
		<td>
			<cf_TextbookTabs Mode="top" NextColor="Green">
			<cf_TextbookTabs Mode="bottom" Color="Green" Title="Hardware Pulse Width Modulation" TabURL="P14files/PWM.cfm">
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
						Show project code
				-->
				We only need three variables: the value to set the <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> function, 
				the constant value for the pin, and how to increment. The constant value 
				for the pin is set, and it is just to make the code easier to read and write. The variables for 
				PWM and increment are related in that in every cycle of <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> the variable 
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
			
<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
  if(valuePwmGlb == 255){     // if pwm state is at max.
    incGlb = -1;
  }else if(valuePwmGlb == 0){ // if pwm state is at min.
    incGlb = 1;
  }
  // write the pwm state to LED and wait 10 milliseconds.
  analogWrite(ledGlb,valuePwmGlb);
  delay(10);
}
</pre>
</cf_box>
</div>
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
						<span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">(pin, value)</span>
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
