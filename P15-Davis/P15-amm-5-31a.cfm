<html>
	<head>
		<meta name="author" content="Davis Cook">
		<title>Controlling a tricolor LED using PWM</title>
		<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>

	<body>
	<cf_Box Color="White">
	
	<table class="TBLAYOUT">
		<tr>
			<td align="center"> <span class="TB-PROJECTTITLE">Project 15: <br>Controlling a Tricolor LED Using PWM</span><br><hr></td>
		</tr>
	</table>

	<br><br>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Introduction</span><br><br>
				<span class="TB-BODY">
				
				In the previous project, <a href="P14.cfm">Breathing LED with Pulse-Width Modulation</a>, the brightness of an LED was controlled via pulse-width modulation (PWM). In this project, we will use PWM to control the color of a tricolor LED. If you are not familiar with PWM, we recommend that you review the aforementioned project. This project will be very similar to the previous project, except the LED being used will change color. Generally, LEDs are manufactured to emit one color of light. These colors can range from any color in the rainbow to infrared or even ultraviolet. The LED's color is determined by the material it is made from and the voltage that is applied to it. Depending on the combination of the material and voltage, different wavelengths of light are emitted. We perceive these different wavelengths of light as colors. The tricolor LED we will use can only generate red, green, and blue wavelengths of light. This is because the tricolor LED actually consists of a red, green, and blue LED all in one bulb. By changing the intensities of each LED inside the bulb, we can generate the illusion of different colors. This is the same principle we would use when mixing paint. Mixing red and green paint results in what looks like yellow paint even though there is no naturally yellow pigment in the mixture <!--actually, this isn't right for mixing pigments- this would lead to a shade of brown. Pigments behave differently from light. Pick a different color combo.-->. This phenomenon occurs because our brains simply perceive this combination of red and green pigment the same way we perceive naturally yellow pigment. Similarly, our brains perceive the combination of red and green wavelengths of light the same way the actual wavelength of yellow is perceived. 
				</span>
			</td>
		</tr>
	</table>
	
	<br><br>

    <table class="TBLAYOUT">
	    <tr>
			<td>
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
 		       					<td>Tricolor LED</td>
							    <td align="center" class="image"><img style="width: 120px; height: 120px;" src="../Parts/LED_Tricolor_BlueTint.svg"></td>
		                	</tr>
		            		<tr>
 		        				<td class="qty">3</td>
 		        				<td>220 &Omega; current limiting resistors</td>
                				<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/resistor_220.svg"></td>
		            		</tr>
		            	</tbody>
                    </table>

                </div>
                <br><br>
            </td>
	    </tr>
    </table>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Hardware Structure</span><br><br>
				<span class="TB-BODY"> 
				Before 	we begin putting the circuit together the structure of the Tricolor LED must be discussed. Since Tricolor LEDs are essentially a red, green and blue LED it would make sense to assume it will have 3 anodes and 3 cathodes for a total of 6 legs. Realistically this isn't very practical so the red green and blue LEDs inside the bulb all share a common cathode to save room. This means our Tricolor LED will only have four legs as shown in Fig. 1.          

				<br><br>

				<img src="P15files/Tricolor_LED.svg" width ="350" /><br><br>
				<div class="TB-FIGURES">Fig. 1. Tricolor LED connection convention</div><br>
				
				The longest leg is the common cathode and should always be connected to ground. Follow the steps below to construct the circuit. Note that the wire colors correspond to the LED color they will be controlling. 
				</span>
			</td>
		</tr>
	</table>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H2">Step 1: Setting up the Circuit</span><br><br>
				<span class="TB-BODY"> 	
					<ol><br>
				  		<li>Put the Tricolor LED in the breadboard with the same orientation as shown in the figure.</li>
						<li>Connect the common cathode of the Tricolor LED (the longest leg) to ground.</li>
						<li>Connect a 220 &Omega; current limiting resistor to each of the LED's remaining legs. </li>
						<li>Connect PWM pin 6 (Red brightness control) to the leftmost leg of the Tricolor LED.</li>
						<li>Connect PWM pin 5 (Green brightness control) to the leg just to the right of the common cathode.</li>
						<li>Connect PWM pin 4 (Blue brightness control) to the rightmost leg of the Tricolor LED.</li>
					</ol>
							<img src="P15files/Tricolor_LED_bb.svg" width ="400" /><br><br>
				<div class="TB-FIGURES">Fig. 2. Tricolor LED control circuit</div><br>
				</span>
										
				<span class="TB-H2">Step 2: Color Control Basics</span><br><br>
				<span class="TB-BODY">
				With the circuit built we will now write some simple code to control the color of the LED. Remember the value range for a PWM pin is 0 to 255. In the code below the PWM pins that control red and blue are set to 200 using the <code>setColorBrightness</code><code>()</code> function. This will make the tricolor LED purple.
					
				<br><br>
				
        		<pre class="brush: mpide;">
						int pinRed = 6, pinGreen = 5, pinBlue = 3;
						
						void setup()
						{
						  pinMode(pinBlue, OUTPUT);
						  pinMode(pinGreen, OUTPUT);
						  pinMode(pinRed, OUTPUT);
						  
						  analogWrite(pinBlue, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(pinGreen, 0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(pinRed, 0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						 
						 //Make LED purple 
						 setColorBrightness('r',200);//Sets Red to 200 
						 setColorBrightness('b',200);//Sets Blue to 200
						}

						void setColorBrightness(char color, int brightness)
						{
							  //if else tree used to select the correct color control pin
							  if(color == 'r')
							  {
								analogWrite(pinRed, brightness);//Write to pwm pin 6  (red control) 
							  }
							  else if(color == 'g')
							  {
								analogWrite(pinGreen, brightness);//Write to pwm pin 5  (green control)
							  }
							  else if(color == 'b')
							  {
								analogWrite(pinBlue, brightness);//Write to pwm pin 3  (blue control)
							  }
							
							return;
						}
						
						void loop(){}//loop() is not used
				</pre>

				<br>
				The function to <code>setColorBrightness</code><code>()</code> may seem unnecessary, since the color can be changed directly with <code>analogWrite</code><code>()</code>. While this is true, bear in mind that it is easy to mix up what pin number corresponds to the color we want to change. Using the <code>if</code> <code>else</code> tree inside of the <code>setColorBrightness</code><code>()</code> function  allows us to modify color values using intuitive color abbreviations, 'r', 'g' and 'b'. Furthermore the <code>if</code> <code>else</code> tree provides a good point of comparison for introduction of <code>switch</code> statements, which will be covered in the next section.
				</span>
				</cf_box>
			</td>
		</tr>
	</table>
		
	<br><br>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Switch Statements</span><br><br>
					<span class="TB-BODY">
					<code>switch</code> statements control the flow of a program and are very similar to <code>if</code> <code>else</code> trees.  They compare a variable to a constant <code>case</code> value. If the variable matches the <code>case</code> value, the code contained within the particular <code>case</code> is executed. Otherwise the <code>case</code> is skipped. In the event none of the cases match the default <code>case</code> will be executed. The default <code>case</code> is optional and not needed for the <code>switch</code> statement to function properly. The following is an example of a <code>switch</code> statement.
					</span>

					<br><br>
						
                	<pre class="brush: mpide;">
								  switch (variable) 
								  {
									case 1:   
									  //do something when variable equals the integer 1
									  
									  break;//break skips all remaining cases 
									case -1:
									  //do something when variable equals the integer -1
									  
									  break;  
									case 'a':
									  //do something when variable equals the character a
									  
									  break;
									default: 
									  // if nothing else matches, do the default
									  
									  // default is optional
									  break;
								  }
					</pre>

					<br>
					<span class="TB-BODY">
					In the example the <code>case</code> values were int and char types. A <code>case</code> value can be any constant value which can be interpreted as an integer value. This includes the boolean constants <code>HIGH</code>, <code>LOW</code>, <code>INPUT</code>, <code>OUTPUT</code>, <code>true</code>, and <code>false</code>. Some data types that cannot be used as a <code>case</code> values are doubles, floats, strings and arrays. On top of being careful with the <code>case</code>'s data type, it is also important to be attentive about including <code>break</code> lines at the end of every <code>case</code>. If you forget to add a <code>break</code> in a specific <code>case</code>, the <code>switch</code> statement will execute that <code>case</code> and all cases below it until it sees a <code>break</code> line. 
				
					<br><br>
				
					So far <code>switch</code> statements and <code>if</code> <code>else</code> trees appear to do the same thing. While this is true, there are distinct advantages and disadvantages when using <code> switch</code> statements. We know that <code>switch</code> statements have limited use because they cannot compare dynamic variables and are restricted to specific data types. On the other hand <code>switch</code> statements compare only one <code>case</code> making them very efficient. Figures 3 and 4 illustrate the differences in efficiency between <code>if</code> <code>else</code> trees and <code>switch</code> statements.
															
					<img src="P15files/If_Else_Tree.png"/><br><br>
					<div class="TB-FIGURES">Fig. 3. If else tree execution illustration</div><br>
				
			
					<img src="P15files/SwitchStatment.png"/><br><br>
					<div class="TB-FIGURES">Fig. 4. Switch statements execution illustration</div>
					<br><br>
			
					The <code>if</code> <code>else</code> tree must evaluate every if statement before and the targeted <code>case</code>. The <code>switch</code> statement, on the other hand, jumps directly to the targeted <code>case</code> and then exits once it is finished. This saves a lots of time in situations with a large number of cases. Furthermore, the efficiency of the <code>switch</code> statement is multiplied inside of the loop since only one <code>case</code> is compared every iteration. This will come in handy when writing the code for a basic color sweep.         
				</span>
			</td>
		</tr>
	</table>
	
	<br><br>
	
	<table class="TBLAYOUT" >
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H1">Color Sweeps</span><br><br>
				<span class="TB-BODY"> 
				With an understanding of how a <code>switch</code> statement works we can begin coding writing a sketch to sweep through a combination of colors. This is will be similar to the code used for creating a breathing LED except the principal will be used to fade in and out the individual colors of the tricolor LED.
  				
				<br><br>

        		<pre class="brush: mpide;">
						int pinRed = 6, pinGreen = 5, pinBlue = 3;
						
						void setup()
						{
						  pinMode(pinBlue, OUTPUT);
						  pinMode(pinGreen, OUTPUT);
						  pinMode(pinRed, OUTPUT);
						  
						  analogWrite(pinBlue, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(pinGreen, 0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(pinRed, 0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}

						void changeColorBrightness(char color, boolean fadeIn, int fadeTime)
						{
							int brightness, incrementValue, limit;
							
							if(fadeIn)//Note: this if statement is shorthand for if(fadeIn == 1)
							{
							  //Setup variables so the the LED brightness will fade in from 0 to 255
							  incrementValue = 1;//Set incrementValue to add 1 to the brightness
							  brightness = 0;//Ensure the LED starts completely off (minimum brightness)
							  limit = 255;//Set the brightness limit to 255 (maximum brightness)
							}
							else
							{
							  //Setup variables so the the LED brightness will fade out from 255 to 0
							  incrementValue = -1;//set incrementValue to subtract 1 from the brightness
							  brightness = 255;//Ensure the LED starts completely on (maximum brightness)
							  limit = 0;//Set the brightness limit to 0 (minimum brightness)
							}
							
							while(brightness != limit) //Loop until brightness has faded in or out completely 
							{
							  
							  brightness += incrementValue;

							  switch(color)
							  {
								case 'r':
								  analogWrite(pinRed, brightness);//Write to pwm pin 6  (red control) 
								  break;
								case 'g':     
								  analogWrite(pinGreen, brightness);//Write to pwm pin 5  (green control)
								  break;
								case 'b':
								  analogWrite(pinBlue, brightness);//Write to pwm pin 3  (blue control)
								  break;
							  }
							  
							  //Wait for a specified number of miliseconds to control how fast the LED fades in or out
							  delay(fadeTime);
							}
							return;
						}

						void loop()
						{
						  changeColorBrightness('r',1, 10);//Fade in red
						  changeColorBrightness('b',1, 10);//Fade in blue
						  changeColorBrightness('r',0, 10);//Fade out red
						  changeColorBrightness('g',1, 10);//Fade in green
						  changeColorBrightness('b',0, 10);//Fade out blue 
						  changeColorBrightness('g',0, 10);//Fade out green
						}
				</pre>
				<br>
		
				Similar to our Basic Color Control code we will use a single function, <code>changeColorBrightness</code><code>()</code>, to control which color is being modified. The main difference here is we have replaced the <code>if</code> <code>else</code> tree with a <code>switch</code> statement and put it inside of a while loop.
						
				<br><br>
						
				The while loop increments or decrements the brightness of a color until it reaches the limit of the PWM pin. Each iteration of the loop is delayed so we have time to watch the color fade. The code given above should make the LED fade from red, to purple, to blue, to aqua blue, and finally to green. 
						
				<br><br>

				The sweep sequence is determined by the order in which the red, green, and blue LEDs are faded in and out. You can try rearranging the order to get different color combinations.

				<br><br>

				In the next section we will explore how to randomly select a color combination.    
				</span>
				</cf_box>
			</td>
		</tr>
	</table>
	
	<br><br>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Random Number Generation</span><br><br>
				<span class="TB-BODY">
				
				In order to select a random color combination a random number must be generated. This can be done using the <code>random</code> <code>()</code> function. The <code>random</code><code>()</code> function can  be used one of two ways. The first way is entering a max value as the only argument. This will return a random integer from 0 to the max minus one. The second way is entering a max and min value as the arguments. This will return a random integer from min to max minus one.
				<br><br>
				For example: 
				
				<br><br>
        		<pre class="brush: mpide;">
				random(11);//returns a random integer from 0 to 10 
				random(5,16);//returns a random integer from  5  to 15
				</pre>

				<br>
			</td>
		</tr>
	</table>

	<br><br>
	
	<table class="TBLAYOUT" >
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H2">Step 3: Generating Random Color Combinations</span><br><br>
				<span class="TB-BODY">
				
				Now that we know how to generate a random number we can write the code to generate a random color combination. To begin we will consider all the color combinations we want to implement. All of these combinations are listed below.
								
				<br><br>

				
				<ol>
				<br>
				  	<li>Red</li>
					<li>Green</li>
					<li>Blue</li>
					<li>Red and Green</li>
					<li>Red and Blue</li>
					<li>Green and Blue</li>
					<li>Red, Green and Blue</li>
				</ol>
				<br><br>
				
				Considering there are seven combinations we want to randomly select one each time. This can be achieved by selecting each combination with a <code>switch</code> statement using the <code>random</code> <code>()</code> function to select the <code>case</code>. Inside of each <code>case</code> we want to set the colors to a random brightness.  This will ensure there is a chance for every possible color to be generated. The code for such an algorithm is shown inside of the function <code>randomLEDColorCombo</code><code>()</code>.
								
				<br><br>
					
        		<pre class="brush: mpide;">
						int pinRed = 6, pinGreen = 5, pinBlue = 3;
						 
						void setup()
						{
						  pinMode(pinBlue, OUTPUT);
						  pinMode(pinGreen, OUTPUT);
						  pinMode(pinRed, OUTPUT);
						   
						  analogWrite(pinBlue, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(pinGreen, 0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(pinRed, 0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}

						void randomLEDColorCombo()
						{
						  int colorCombo = random(7);//Generate a random value from 0 to 6 that corresponds to a color combination
						  int red = 0, green = 0, blue = 0;
						  
						  switch(colorCombo)
						  {
							case 0://Combination: Red
							   red = random(256);//Generate random number from 0 to 255
							   break; 
							case 1://Combination: Green
							   green = random(256);//Generate random number from 0 to 255
							   break; 
							case 2://Combination: Blue
							   blue = random(256);//Generate random number from 0 to 255
							   break; 
							case 3://Combination: Red, Green
							   red = random(256);//Generate random number from 0 to 255
							   green = random(256);//Generate random number from 0 to 255
							   break; 
							case 4://Combination: Red, Blue
							   red = random(256);//Generate random number from 0 to 255
							   blue = random(256);//Generate random number from 0 to 255
							   break; 
							case 5://Combination: Green, Blue
							   green = random(256);//Generate random number from 0 to 255
							   blue = random(256);//Generate random number from 0 to 255
							   break; 
							case 6://Combination: Red, Green, Blue
							  red = random(256);//Generate random number from 0 to 255
							  green = random(256);//Generate random number from 0 to 255
							  blue = random(256);//Generate random number from 0 to 255
							  break; 
						  }
						  
						  analogWrite(pinRed, red);//Write random red value to pwm pin 6  (red control) 
						  analogWrite(pinGreen, green);//Write random green value to pwm pin 5  (green control)
						  analogWrite(pinBlue, blue);//Write random blue value to pwm pin 3  (blue control)
						  
						}
						 
						void loop()
						{  
						  randomLEDColorCombo();
						  delay(500);//Wait for 500 milliseconds between each random color
						}
				</pre>

				<br>
											
				Uploading the sketch to your chipKIT should make the tricolor LED randomly jump to new colors. The time between each jump is determined by the delay inside of the <code>loop</code><code>()</code> function. You may notice some of the colors appear very dim. This is because inside of each <code>case</code>, random(256) has returned a value near 0. You can try experimenting with different min values for the random function to prevent dim colors. You can also specifically tweak the min values in cases 3 through 6. Currently these cases have the possibility of generating a single primary color like red, assuming the other colors in the <code>case</code> are randomly assigned a value near zero. 
				</span>
			
				<br><br>

				<span class="TB-H2">Step 4: Random Color Sweeps</span><br><br>
				<span class="TB-BODY">
				
				Now that we know how to generate random color combinations and implement color sweeps we can combine the two concepts. In this section we will write some code to randomly select a color sweep sequence. Here the order of the sequence will matter. This means there will be 6 different color sequences all of which are listed below.
				
				<br><br>

				<span class="TB-BODY"> List of color sequences </span>
				<ol>
				<br>
				  	<li>Red, Green, Blue</li>
					<li>Red, Blue, Green</li>
					<li>Green, Red, Blue</li>
					<li>Green, Blue, Red</li>
					<li>Blue, Red, Green</li>
					<li>Blue, Green,  Red</li>
				</ol>
				<br><br>
				
				Each  sequence will be implemented as a <code>switch</code> statement <code>case</code>. The <code>case</code> will be selected by using the <code>random</code><code>()</code> function.  Inside of each <code>case</code> we will use the <code>changeColorBrightness</code> <code>()</code> function we wrote in the color sweeps section to fade the colors in or out. The code needed to implement this is shown below inside of the <code>randomColorSweep</code><code>()</code> function.
								
				<br><br>
					
        		<pre class="brush: mpide;">
						int pinRed = 6, pinGreen = 5, pinBlue = 3;
						
						boolean brightnessDirection = 1;//If set to 1 the color brightness will increase 
						  
						void setup()
						{
						  pinMode(pinBlue, OUTPUT);
						  pinMode(pinGreen, OUTPUT);
						  pinMode(pinRed, OUTPUT);
							
						  analogWrite(pinBlue, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(pinGreen, 0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(pinRed, 0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}
						void changeColorBrightness(char color, boolean fadeIn, int fadeTime)
						{
							int brightness, incrementValue, limit;
							
							if(fadeIn)//Note: this if statement is shorthand for if(fadeIn == 1)
							{
							  //Setup variables so the the LED brightness will fade in from 0 to 255
							  incrementValue = 1;//Set incrementValue to add 1 to the brightness
							  brightness = 0;//Ensure the LED starts completely off (minimum brightness)
							  limit = 255;//Set the brightness limit to 255 (maximum brightness)
							}
							else
							{
							  //Setup variables so the the LED brightness will fade out from 255 to 0
							  incrementValue = -1;//set incrementValue to subtract 1 from the brightness
							  brightness = 255;//Ensure the LED starts completely on (maximum brightness)
							  limit = 0;//Set the brightness limit to 0 (minimum brightness)
							}
							 
							while(brightness != limit)
							{
							
							  //Loop until brightness has faded in or out completely 
							  brightness += incrementValue;
							  
							  switch(color)
							  {
								case 'r':
								  analogWrite(pinRed, brightness);//Write to pwm pin 6  (red control) 
								  break;
								case 'g':     
								  analogWrite(pinGreen, brightness);//Write to pwm pin 5  (green control)
								  break;
								case 'b':
								  analogWrite(pinBlue, brightness);//Write to pwm pin 3  (blue control)
								  break;
							  }
							  
							  //Wait for a specified number of miliseconds to control how fast the LED fades in or out
							  delay(fadeTime);

							}
							return;
						}
						
						void randomColorSweep()
						{
						
						  int randomNumber, fadeTime = 5;
						  randomNumber = random(6);//Generate random number from 0 to 5
						  
						  switch(randomNumber)
						  {
							case 0: //Color sequence 0: RGB
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 1: //Color sequence 1: RBG
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 2: //Color sequence 2: GRB
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction 
							  break;
							case 3: //Color sequence 3: GBR
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction  
							  break;
							case 4: //Color sequence 4: BRG
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 5: //Color sequence 5: BGR
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;

						  }
						}
						
						void loop()
						{
						 randomColorSweep();
						}
				</pre>
		
				<br>
					
				Once this code is uploaded the tricolor LED should randomly sweep through different color sequences. The sequence's fade time can be tweaked by changing a variable inside of the <code>randomColorSweep</code><code>()</code> function. By default it delays five milliseconds between each incrimination of a colors brightness. This is done using <code>delay</code><code>()</code> called within <code>changeColorBrightness</code> <code>()</code>. If you want to delay for periods less than a millisecond you can replace the <code>delay</code><code>()</code> line with <code>delayMicroseconds</code> <code>(fadeTime)</code> for greater precision. Remember that 1 millisecond is equal to 1000 microseconds, so using delay times less than 300, with <code>delayMicroseconds</code><code>()</code>, will make the LED flash rather than fade.
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
						 		<li>PWM</li>
						 		<li>Tricolor LEDS</li>
						 		</ul>
					  		</td>
				   		</tr>
				   		<tr>
					  		<td width="20%">Functions Introduced:</td>
					  		<td width="80%">
						 		<span class="TB-KEYWORD2">random</span><tt>()</tt></li><br>
						 		<span class="TB-BODY"><span class="TB-KEYWORD1">switch</span></span><tt>()</tt></li><br>
						 		<span class="TB-KEYWORD2">delayMicroseconds</span><tt>()</tt></li><br>
					  		</td>
				   		</tr>
					</tbody>
				</table>
							
			</td>
		</tr>
	</table>
	
	</cf_Box>
	</body>
</html> 