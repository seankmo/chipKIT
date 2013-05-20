<html>
	<meta name="author" content="Davis Cook">
	<meta name="Edits Version" content = "Original" > 
	<head>
		<title>Controlling a tricolor LED using PWM </title>
		<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>
	<body>
	<cf_Box Color="White">
	
	<table class="TBLAYOUT">
		<tr>
			<td align="center"> <span class="TB-PROJECTTITLE">Project 15: <br>Controlling a tricolor LED using PWM</span><br><hr></td>
		</tr>
	</table>	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Introduction</span><br><br>
				<span class="TB-BODY"> 
				In the <a href="P14.cfm">previous project</a> the brightness of an LED was controlled via Pulse with modulation (PWM). In this project we will use PWM to control the color of a Tricolor LED. If you are not familiar with PWM it is recommended you review <a href="P14.cfm">Breathing LED with PWM</a>. Project 15 will be very similar to the previous project except the LED being used will change color. Generally LEDs are manufactured to emit one color of light. These colors can range from any color in the rainbow to infrared or even ultraviolet. The LEDs color is determined by the material it is made from and the voltage that is applied to it. Depending on the combination of the material and voltage, different wave lengths of light are emitted. We perceive these different wavelengths of light as colors. The Tricolor LED we will use can only generate red, green and blue wave lengths of light. This is because the Tricolor LED is actually consists of a red, green and blue led all in one bulb. By changing the intensities of each LED inside the bulb, we can generate the illusion of different colors. The same principle also applies when mixing paint. Mixing red and green paint results in what looks like yellow paint even though there is no naturally yellow pigment in the mixture. This phenomenon occurs because our brains simply perceive this combination of red and green pigment the same way we perceive naturally yellow pigment.  Similarly, our brains perceive the combination of red and green wave lengths of light, the same way the actual wave length of yellow is perceived. 
				</span>
			</td>
		</tr>
	</table>
	
	
    <table class="TBLAYOUT">
	    <tr>
		<td>
		    <br/><br/>
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
 		        <td>Tricolor LED</td>
                		<td align="center" class="image"><img style="width: 120px; height: 120px;" src="../Parts/LED_Tricolor.svg"></td>
		            </tr>
		            <tr>
 		        <td class="qty">3</td>
 		        <td>220 &Omega; current limiting resistors</td>
                		<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/resistor_220.svg"></td>
		            </tr>
                 </table>

                 </div>
                 <br><br>
                 </tbody>
             </td>
	    </tr>
    </table>
	<cf_Box Color="putty">
	<table class="TBLAYOUT" id="ST1-putty">
		<tr>
			<td>
				<span class="TB-H1">Step 1: Building the circuit</span><br><br>
				<span class="TB-BODY"> 
				Before 	we begin putting the circuit together the structure of the Tricolor LED must be discussed. Since Tricolor LEDs are essentially a red, green and blue LED it would make sense to assume it will have  3 anodes and 3 cathodes for a total of 6 legs. Realistically this isn't very practical so the red green and blue LEDs inside the bulb all share a common cathode to save room. This means our Tricolor LED will only have four legs as shown in Fig. 1.          
				</span>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
				<a name="Fig"></a>
				<img src="P15files/Tricolor_LED.svg" width ="350" /><br/><br/>
				<div class="TB-FIGURES">Fig. 1. Tricolor LED connection convention</div><br/>
				<span class="TB-BODY"> 
					The longest leg is the common cathode and should always be connected to ground. Follow the steps below to construct the circuit. Note that the wire colors correspond to the LED color they will be controlling. 
				</span>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td  align="center">
				<br><br><span class="TB-BODY">Circuit assembly steps</span><br>
				<ol align="left">
				<br/>
				  <span class="TB-BODY">
					<li>Put the Tricolor LED in the breadboard with the same orientation as shown in the figure.</li>
					<li>Connect the common cathode of the Tricolor LED (the longest leg) to ground.</li>
					<li>Connect a 220 &Omega; current limiting resistor to each of the LED's remaining legs. </li>
					<li>Connect PWM pin 6 (Red brightness control) to the leftmost leg of the Tricolor LED.</li>
					<li>Connect PWM pin 5 (Green brightness control) to the leg just to the right of the common cathode.</li>
					<li>Connect PWM pin 4 (Blue brightness control) to the rightmost leg of the Tricolor LED.</li>
				  </span>
				</ol>
				<a name="Fig"></a>
				<img src="P15files/Tricolor_LED_bb.svg" width ="400" /><br/><br/>
				<div class="TB-FIGURES">Fig. 2. Tricolor LED control circuit</div><br/>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Step 2: Writing basic color control code</span><br><br>
				<span class="TB-BODY"> 
					With the circuit built we will now write some simple code to control the color of the LED. Remember the value range for a PWM pin is 0 to 255. In the code below the PWM pins that control red and blue are set to 200 using the setColorBrightness() function. This will make the tricolor LED purple. 
					<br><br>
					<div align="center">
					<cf_box style="width:95%">
					<pre class="brush: mpide;">
						void setup()
						{
						  pinMode(3,OUTPUT);
						  pinMode(5,OUTPUT);
						  pinMode(6,OUTPUT);
						  analogWrite(3, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(5,0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(6,0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						 
						 //Make LED purple 
						 setColorBrightness('r',200);//Sets Red to 200 
						 setColorBrightness('b',200);//Sets Blue to 200
						}

						void setColorBrightness(char color, int brightness){
							  //if, else if tree used to select the correct pin to control the corresponding color 
							  if(color == 'r')
							  {
								analogWrite(6, brightness);//Write to pwm pin 6  (red control) 
							  }
							  else if(color == 'g')
							  {
								analogWrite(5, brightness);//Write to pwm pin 5  (green control)
							  }
							  else if(color == 'b')
							  {
								analogWrite(3, brightness);//Write to pwm pin 3  (blue control)
							  }
							
							return;
						}
						
						void loop(){}//loop() is not used
					</pre>
					</cf_box>
					</div>
					<br>
					The function to setColorBrightness() may seem unnecessary, since the color can be changed directly with analogWrite(). While this is true, bear in mind that it is easy to mix up what pin number corresponds to the color we want to change. Using the if-else-tree inside of the setColorBrightness() function  allows us to modify color values using intuitive color abbreviations, 'r', 'g' and 'b'. Furthermore the if-else-tree provides a good point of comparison for introduction of switch statements, which will be covered in the next section.
				</span>
			</td>
		</tr>
	</table>
	</cf_Box>

	
	
	</cf_Box>
	</body>
	
</html>
