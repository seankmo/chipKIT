<html>
<head>
	<meta name="author" content="Thor Steingrimsson"/>
	<title>Pulse Width Modulation</title>
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
				<!--<tr>
					<td class="qty">2</td>
					<td>Wires</td>
					<td class="image" align="center"><img src="Files/Wire.svg" height="100"/></td>
				</tr>-->
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
				specific voltage except either <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span>. 
				Pulse Width Modulation uses the fact that digital signals are only 
				<span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span> and instead of trying
				to create a constant voltage, it switches between <span class="TB-LITERAL1">HIGH</span> and 
				<span class="TB-LITERAL1">LOW</span> very quickly at varying times to create an average voltage 
				that is inbetween <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span>.
				<br/><br/>
								
				The reason why PWM is called Pulse Width Modulation is because
				it modulates the pulse width, or more simply, it changes how 
				long the signal is <span class="TB-LITERAL1">HIGH</span> compared to when it is 
				<span class="TB-LITERAL1">LOW</span>. When working with PWM, there is a term that 
				is often used to measure the PWM. That term is the duty cycle, 
				which is the ratio of how long the signal is <span class="TB-LITERAL1">HIGH</span> 
				to how long the period of its cycle is. This directly relates to 
				the average voltage that the signal would produce. 
				<br/><br/>
				
				<cf_imagebox align="left"
								path="Files/dc.svg"
								width="280"
								caption="Figure 2. General Duty Cycle Equation">
								
				The duty cycle is defined as the time of the pulse (signal is <span class="TB-LITERAL1">HIGH</span>) 
				divided by the period of the pulse (time from one rising edge to the next). Figure
				2 is the general equation to find the duty cycle. For more information on how the
				chipKIT board hardware implements PWM, follow the green tab below.<br/><br/>
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
								
					The circuit is very simple. It is basically the same as the project, Blink External LED, only
					the pin the LED is connected to will be pin 6 and not pin 3.
					All the components are in series, from the PWM pin to the
					resistor, through the LED, and finally into ground.
				<ol>
					<li>Use a wire to connect pin 6 to the breadboard.</li>
					<li>Use the 10 k&Omega; resistor to connect the wire
						to another row on the breadboard.</li>
					<li>Place the LED across the valley with the anode (longer end of leads on the LED)
						on the same row as the end of the resistor.</li>
					<li>Use the second wire to connect the cathode of the LED (shorter end of LED)
						to one of the ground (GND) pins on the chipKIT board.</li>
				</ol>
				</span>
			</cf_box>
		</td>
	</tr>
</table>
<!--<table> CUT -- MERGED WITH SOFTWARE DESIGN
	<tr>
		<td>
			<span class="TB-H1">
				PWM in MPIDE
			</span><br/><br/>
			<span class="TB-BODY"> <-- REWRITE --
				<--<cf_imagebox align="right"
								path="Files/mpidedc.svg"
								width="300"
								caption="Figure 4. analogWrite() Duty Cycle Equation.">--
				
				
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
	</tr>
</table>-->
<table>
	<tr>
		<td>
			<span class="TB-H1">
				Software Design
			</span>
			<br/><br/>
			<!--<span class="TB-BODY">
				<!--STRUCTURE: 
						Talk about the software design like in other stuff
				--
				We only need three variables: the value to set the <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> function, 
				the constant value for the pin, and how to increment. The constant value 
				for the pin is set, and it is just to make the code easier to read and write. The variables for 
				PWM and increment are related in that in every cycle of <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> the variable 
				for PWM should be incremented until it reaches the maximum or minimum, and once it does, we set 
				the increment variable to its negative so that it changes the PWM variable in the opposite direction. -->
			<span class="TB-H2">PWM in MPIDE</span><br/>
			<span class="TB-BODY">
				MPIDE has a function that allows us to set a pin to output a PWM signal. That function is 
				<span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span>. This function requires two inputs, the pin to set the PWM, and the 
				duty cycle to set the PWM. However, the duty cycle to set the PWM is a number from 0 to 255,
				where the duty is that number divided by 255 to give the duty cycle.
				Also, only a few pins support PWM, if <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> is used on a pin that does not support 
				PWM, it will default to either always <span class="TB-LITERAL1">HIGH</span> if the duty cycle is above 50% or always 
				<span class="TB-LITERAL1">LOW</span> if the duty cycle is below 50%.
			</span>
			
			<cf_box color="putty">
				<span class="TB-H1">Step 2. Writing the Program</span><br/><br/>
				<span class="TB-H2">Global Variables</span><br/>
				<span class="TB-BODY">
					We will use three variables to control the &ldquo;breathing&rdquo; LED. 
					The first variable is the value that we will use to set the duty cycle. It will
					have the type <span class="TB-KEYWORD2">int</span> and be initially set to 0. We will call it valuePwmGlb
					since it is the value of the PWM and a global variable.<br/>
					The second variable will be used as the increment for the value. We will have it switch 
					back and forth between +1 and -1. It will be an <span class="TB-KEYWORD2">int</span> and 
					initially set 1. Since we are using this variable to increment the value,
					we will call it incGlb since it is also a global variable. <br/>
					The last variable we will use is the variable that is the pin to the LED. It will
					be a <span class="TB-BLACK">const</span> <span class="TB-KEYWORD2">int</span> since we won't change it and it will
					be initially set to 6 since that is the pin which the LED is connected. We will call it
					ledGlb since it is a global variable whose value is the pin to the LED.<br/><br/>
				</span>
				<span class="TB-H2">The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> Function</span><br/>
				<span class="TB-BODY">
					This function will be very short since we only need to initialize the 
					pin we will be using. We will set pin 6, <span class="TB-BLACK">ledGlb</span>, to <span class="TB-LITERAL1">OUTPUT</span>
					since we will be outputting a PWM signal. The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function should look 
					like this:
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
void setup()
{
  pinMode(ledGlb,OUTPUT);
}
</pre>
</cf_box>
</div>
					
				</span>
				<span class="TB-H2">The <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> Function</span>
				<span class="TB-BODY">
					The first we will do in this function is increment the value of the PWM by 
					the increment variable. This can be done with the following line of code:
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
valuePwmGlb += incGlb;
</pre>
</cf_box>
</div>
					We will then check to see if the value is still within the bounds of 
					<span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span>. The first thing we check is if the value of <span class="TB-BLACK">valuePwmGlb</span>
					is over or at 255, and if it is, we multiply <span class="TB-BLACK">incGlb</span> by -1 since to get to the 
					maximum value it must have been counting up and we set <span class="TB-BLACK">valuePwmGlb</span> to 255.
					The other condition we can check is if <span class="TB-BLACK">valuePwmGlb</span> is below 0, and if it is,
					multiply <span class="TB-BLACK">incGlb</span> by -1 and set <span class="TB-BLACK">valuePwmGlb</span> to 0 for similar reasons.
					We then finally write <span class="TB-BLACK">valuePwmGlb</span> to pin <span class="TB-BLACK">ledGlb</span> and delay for 10 
					milliseconds.<br/>
					The resulting code should look like the following:
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
void loop()
{
  valuePwmGlb += incGlb;
  if(valuePwmGlb &gt;= 255){
    incGlb *= -1;
    valuePwmGlb = 255;
  else if(valuePwmGlb &lt;= 0){
    incGlb *= -1;
    valuePwmGlb = 0;
  }
  analogWrite(ledGlb = 0);
  delay(10);
}
</pre>
</cf_box>
</div>
				
				</span>
				<span class="TB-H1">Step 3. Compiling the Program</span><br/><br/>
				<span class="TB-BODY">
					Now that we have all of the information to make an LED &ldquo;breathe.&rdquo; The code for
					our sketch should look something like this:
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
  if(valuePwmGlb &gt;= 255){     // If pwm state is at max. (means that incGlb was positive)
    incGlb *= -1;                // Make incGlb negative to count down.
    valuePwmGlb = 255;           // Set valuePwmGlb to max(255) in case it goes over.
  }else if(valuePwmGlb &lt;= 0){ // if pwm state is at min. (means that incGlb was negative)
    incGlb *= -1;                // Make incGlb positive to count up.
    valuePwmGlb = 0;             // Set valuePwmGlb to min(0) in case it goes under.
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
