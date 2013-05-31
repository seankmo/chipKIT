<html>
<head>
	<meta name="author" content="Thor Steingrimsson"/>
	<title>&ldquo;Marching&rdquo; LEDs</title>
	<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
	<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
	<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
	<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>
<body>
<cf_box color="white">
<table ="TB-LAYOUT">
	<tr>
		<td align="center">
			<span class="TB-PROJECTTITLE">
				<!-- Project 12 -->
				&ldquo;Marching&rdquo; LEDs
				<hr/>
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<span class="TB-H1">Introduction</span><br/><br/>
			<span class="TB-BODY">
				This project will cover how to use for loops and bit-wise operations 
				to illuminate six LEDs in such a way to &ldquo;march&rdquo; the LEDs.
			</span>
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
					<td class="qty">6</td>
					<td>LED</td>
					<td class="image" align="center"><img src="../Parts/LED_red.svg" height="100"/></td>
				</tr>
				<tr>
					<td class="qty">6</td>
					<td>Resistor (3.3 k&Omega;)</td>
					<td class="image" align="center"><img src="../Parts/resistor_3_3K.svg" width="100"/></td>
				</tr>
				<!--<tr>
					<td class="qty">7</td>
					<td>Wires</td>
					<td class="image" align="center"><img src="P12files/Wire.svg" height="100"/></td>
				</tr>-->
			</tbody>
			</table>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<span class="TB-H1">Binary Numbers</span><br/><br/>
			<span class="TB-BODY">
				<!-- WILL LIKELY NEED REWRITE AND PICTURES -->
				You have likely heard of binary numbers. About how computers use them to everything.
				This is all true, everything the computer works with is ultimately done in binary numbers.
				A binary number is simply a number represented by bits, or binary digits, which can be in 
				one of two states either a '1' or a '0'. Of course converting a single bit is easy since
				we can see that it is a 1 or a 0. At the most basic level, binary numbers work just like 
				decimal numbers, except with 2 as the reference instead of 10. 
				<font color="red"><br/>Probably include info on bit() and bitRead() here</font>
			</span><br/><br/>
			<span class="TB-H1">Binary Operators</span><br/><br/>
			<span class="TB-BODY">
				<!-- & | ^ << >> ~ -->
				<!-- and, or, xor, shifts, not -->
				
			</span><br/><br/>
			<span class="TB-H1">Modulo Operator</span><br/><br/>
			<span class="TB-BODY">
				<!-- remainder of division -->
			</span>
			<span class="TB-H1">For loop</span><br/><br/>
			<span class="TB-BODY">
				
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">Step 1: Circuit Setup</span><br/><br/>
			<span class="TB-BODY">
				<cf_imagebox align="right"
								path="P12files/P12_bb.svg"
								width="400"
								caption="Figure 1. Circuit Diagram.">
				This circuit is rather straight forward, it is simply six LEDs with resistors 
				connected to six different pins. 
				<ol>
					<li>Connect the six wires to pins 2 through 7</li>
					<li>Connect the other end of the wires to the breadboard, but with a row between each wire</li>
					<li>Connect the six resistors across the gap of the breadboard</li>
					<li>Place the LEDs with the anode (long lead) connected to a resistor 
						and the cathode to one of the rails</li>
					<li>Finally, use a wire to connect ground to the rail that is connected to the LEDs</li>
				</ol>
				</cf_box>
			</span>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">Step 2. Software Design</span><br/><br/>
			<span class="TB-H2">Global Variable</span><br/>
			<span class="TB-BODY">
				We actually only need a single variable, which we will use to determine the LED to illuminate.
				It will be an <span class="TB-KEYWORD2">int</span> and we will simply call it <span class="TB-BLACK">countGlb</span>.
			</span><br/>
			<span class="TB-H2">The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> Function</span><br/>
			<span class="TB-BODY">
				Since the LEDs are connected to pins that are in sequential order, we can use a for loop to
				initialize them without having to write the same lines with slightly different inputs. We 
				will initialize the pins as <span class="TB-LITERAL1">OUTPUT</span>s and set them to <span class="TB-LITERAL1">LOW</span>. The
				for loop below initializes pins 2 through 6.
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
for(int i=2; i&lt;=7; i++){
  pinMode(i,OUTPUT);
  digitalWrite(i,LOW);
}
</pre>
</cf_box>
</div>
				After setting the pins, all we need to do is set <span class="TB-BLACK">countGlb</span> to 1 so that it 
				illuminates the first LED.
			</span><br/>
			<span class="TB-H2">The <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> Function</span><br/>
			<span class="TB-BODY"> <!-- THIS WILL NEED MAJOR LOOK OVER -->
				Once again, since the pins are contiguous we can use a for loop to write less. There is 
				a special condition for the first LED since when the first LED turns on, the last LED 
				should turn off. This is easily dealt with by using an if statement to check to see if
				it is the first LED. <br/>
				We can figure out which LED to turn on by using <span class="TB-BLACK">countGlb</span> in one of two ways;
				<ol>
					<li>Use <span class="TB-KEYWORD2">bitRead</span><span class="TB-BLACK">()</span> on <span class="TB-BLACK">countGlb</span> to determine which bit is a one</li>
					<li>Use <span class="TB-KEYWORD2">bit</span><span class="TB-BLACK">()</span> and compare it to <span class="TB-BLACK">countGlb</span></li>
				</ol>
				Using method one, we would use the following as the conditional in an if statement:
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
bitRead(countGlb,i) == 1
</pre>
</cf_box>
</div>
				This works because <span class="TB-BLACK">i</span> starts at 0 and stops after 5, and <span class="TB-BLACK">countGlb</span> will 
				be shifted to the left by 1 at the end of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function, which means that there
				will be a single 1 in the binary and that 1 will satistfy the condition above. <br/>
				Using method two, we would use the following as the conditional in an if statement:
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
bit(i) == countGlb
</pre>
</cf_box>
</div>
				This works since it directly compares the value of <span class="TB-BLACK">countGlb</span> to the value of 
				2<sup style="font-size:10px">i</sup>.
				Both methods are equivalent, but method two is a little more straight forward and easier to understand.
				<br/>
				So, by using method two, we can create the first part of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function, which
				is the for loop that turns LEDs on and off.
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
for(int i=0; i&lt;6; i++){
  if(bit(i) == countGlb){
    digitalWrite(i+2,HIGH);
    if(i == 0){
      digitalWrite(7,LOW);
    }else{
      digitalWrite(i+1,LOW);
    }
  }
}
</pre>
</cf_box>
</div>
				The last part of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function simply deals with incrementing <span class="TB-BLACK">countGlb</span>
				and delaying so we can see each individual light. We will use a bit-wise operator and modulo 
				operator to increment <span class="TB-BLACK">countGlb</span>. We will need to use the modulo operator to ensure
				that <span class="TB-BLACK">countGlb</span> does not go over the value that <span class="TB-KEYWORD2">bit</span><span class="TB-BLACK">(5)</span> since we need 
				<span class="TB-BLACK">countGlb</span> to equal <span class="TB-KEYWORD2">bit</span><span class="TB-BLACK">(5)</span> and then loop back so that it equals 
				<span class="TB-KEYWORD2">bit</span><span class="TB-BLACK">(0)</span>. The following code does what we need done in the last part of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span>
				function:
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
delay(500);
countGlb = (countGlb&lt;&lt;1)%64;
if(countGlb == 0){
  countGlb = 1;
}
</pre>
</cf_box>
</div>
				
			</span>
			</cf_box>
		</td>
	</tr>
</table>
<table>
	<tr>
		<td>
			<cf_box color="putty">
			<span class="TB-H1">Step 3. Compiling the Sketch</span><br/><br/>
			<span class="TB-BODY">
				Combining everything we disscussed above, we get the resulting code that should look something 
            like this:
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
int countGlb;

void setup()
{
  for(int i=2;i&lt;8;i++){
    pinMode(i,OUTPUT);
    digitalWrite(i,LOW);
  }
  countGlb = 1;
}

void loop()
{
  for(int i=0; i&lt;6; 6++){
    if(bit(i) == countGlb){
      digitalWrite(i+2,HIGH);
      if(i == 0){
        digitalWrite(7,LOW);
      }else{
        digitalWrite(i+1,LOW);
      }
    }
  }
  delay(500);
  countGlb = (countGlb&lt;&lt;1)%64;
  if(countGlb == 0){
    countGlb = 1;
  }
}
</pre>
</cf_box>
</div>
			</span>
			</cf_box>
		</td>
	</tr>
</table>
</cf_box>
</body>
</html>
