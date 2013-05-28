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
				
				<!-- I don’t know if this is because of your editor, but blocking your text into paragraph form in html makes it really
				easy to read during editing, as opposed to single monolithic line of text --->

				
				In the <a href="P14.cfm">previous project</a> the brightness of an LED was controlled via Pulse with modulation (PWM).
				In this project we will use PWM to control the color of a Tricolor LED. If you are not familiar with PWM it
				is recommended you review <a href="P14.cfm">Breathing LED with PWM</a>. Project 15 will be very similar to the
				previous project except the LED being used will change color. Generally LEDs are manufactured to emit one color of
				light. These colors can range from any color in the rainbow to infrared or even ultraviolet. The LEDs color is determined
				by the material it is made from and the voltage that is applied to it. Depending on the combination of the material and voltage,
				different wave lengths of light are emitted. We perceive these different wavelengths of light as colors. The Tricolor LED we will
				use can only generate red, green and blue wave lengths of light. This is because the Tricolor LED is actually consists of a red,
				green and blue led all in one bulb. By changing the intensities of each LED inside the bulb, we can generate the illusion of different
				colors. The same principle also applies when mixing paint. Mixing red and green paint results in what looks like yellow paint even
				though there is no naturally yellow pigment in the mixture. This phenomenon occurs because our brains simply perceive this combination
				of red and green pigment the same way we perceive naturally yellow pigment.  Similarly, our brains perceive the combination of red and
				green wave lengths of light, the same way the actual wave length of yellow is perceived. 
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
			
				<!-- in the building the circuit section, your LED is slightly tinted,  maybe do the same thing with this LED. The white portion blends into the
				background so it would make it stand out.  (just a minor suggestion) -->
				
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
				Before 	we begin putting the circuit together the structure of the Tricolor LED must be discussed.
				Since Tricolor LEDs are essentially a red, green and blue LED it would make sense to assume it will have
				3 anodes and 3 cathodes for a total of 6 legs. Realistically this isn't very practical so the red green and blue
				LEDs inside the bulb all share a common cathode to save room. This means our Tricolor LED will only have four legs as shown in Fig. 1.          
				</span>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
			
			
				<!--- I think the green leg is slightly longer than blue and red, if I’m not mistaken, minor detail.
				Also maybe think about showing a schematic style diagram, it may illustrate the common cathode concept a little better  --->
			
				<a name="Fig"></a>
				<img src="P15files/Tricolor_LED.svg" width ="350" /><br/><br/>
				<div class="TB-FIGURES">Fig. 1. Tricolor LED connection convention</div><br/>
				<span class="TB-BODY"> 
					The longest leg is the common cathode and should always be connected to ground. Follow the
					steps below to construct the circuit. Note that the wire colors correspond to the LED color they will be controlling. 
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
			
			
			
				<!---  at first when reading this you get the impression that each step is building on the previous step ,
			
				but when you get to step 3, you get lost,  the link between step 2, 3, 4, and 5, isn't readily apparent and feels disjointed. Almost like 4 independent sections of code and
				it leaves the reader (or at least me), wondering "ok,  so how does step 2 fit into step 3  .... the function we wrote in this step never gets used again??? "
				
				the steps seem like they could be reorganized for clarity.  When you number the steps it implies that they are strictly consecutive tasks.
				maybe instead of steps, you could label them as patterns and then at start of the project state that you will be going over four different LED color patterns.
				The patterns can build of each other (which is what i think you are trying to convey), but just be clear that they are four independant things, instead 4 parts of
				one thing.  
				
				I think the project could be organized really well kind of along the lines:
				
				Hardware setup:
				Software Basics:
				Color Sweep:
					switch statements
				Random colors:
					random number generation
				
				Combined-- Random Color Sweeping:
				
				it may help with the flow of the entire document    --->

				
				
				
				<span class="TB-H1">Step 2: Writing basic color control code</span><br><br>
				<span class="TB-BODY">
				
				
				<!-- maybe think about naming your output pins,  just using const's like "pinRed", we do it in almost all of the other projects,
				so it might keep things consistent .  also maybe introduce an “else” to catch bad input chars --->
				
					With the circuit built we will now write some simple code to control the color of the LED. Remember the
					value range for a PWM pin is 0 to 255. In the code below the PWM pins that control red and blue are set to
					200 using the <span class="TB-BLACK">setColorBrightness</span><span class="TB-BLACK">()</span> function.
					This will make the tricolor LED purple.
					
					<br><br>
					<div align="center">
					<cf_box style="width:95%">
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
							  //if else tree used to select the correct color control pin
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
					</cf_box>
					</div>
					<br>
					The function to <span class="TB-BLACK">setColorBrightness</span><span class="TB-BLACK">()</span> may seem unnecessary,
					since the color can be changed directly with <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span>.
					While this is true, bear in mind that it is easy to mix up what pin number corresponds to the color we want to change.
					Using the <span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span> tree inside of the
					<span class="TB-BLACK">setColorBrightness</span><span class="TB-BLACK">()</span> function  allows us to modify color
					values using intuitive color abbreviations, 'r', 'g' and 'b'. Furthermore the
					<span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span> tree provides a good point of comparison
					for introduction of <span class="TB-KEYWORD1">switch</span> statements, which will be covered in the next section.
					
					
				</span>
			</td>
		</tr>
	</table>
	</cf_Box>
	
	<br><br>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Switch Statements</span><br><br>
					<span class="TB-BODY">
						<span class="TB-BLACK">Switch</span> statements control the flow of a program and are very similar to
						<span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span> trees.  They compare a variable to a
						constant <span class="TB-KEYWORD1">case</span> value. If the variable matches the <span class="TB-KEYWORD1">case</span>
						value, the code contained within the particular <span class="TB-KEYWORD1">case</span> is executed. Otherwise
						the <span class="TB-KEYWORD1">case</span> is skipped. In the event none of the cases match the default <span class="TB-KEYWORD1">case</span>
						will be executed. The default <span class="TB-KEYWORD1">case</span> is optional and not needed for the
						<span class="TB-KEYWORD1">switch</span> statement to function properly. The following is an example of a <span class="TB-KEYWORD1">switch</span> statement.
					</span>
					<br><br>
							<div align="center">
							<cf_box style="width:95%">
							<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
</cf_box>
</div>
							</cf_box>
							</div>
							<br>
				<span class="TB-BODY">
					In the example the <span class="TB-KEYWORD1">case</span> values were int and char types. A
					<span class="TB-KEYWORD1">case</span> value can be any constant value which can be interpreted as an integer value.
					This includes the boolean constants HIGH, LOW, INPUT OUTPUT, true, and false. Some data types that cannot be used as a
					<span class="TB-KEYWORD1">case</span> values are doubles, floats, strings and arrays. On top of being careful with the
					<span class="TB-KEYWORD1">case</span>'s data type, it is also important to be attentive about including <span class="TB-KEYWORD1">break</span>
					lines at the end of every <span class="TB-KEYWORD1">case</span>. If you forget to add a <span class="TB-KEYWORD1">break</span>
					in a specific <span class="TB-KEYWORD1">case</span>, the <span class="TB-KEYWORD1">switch</span> statement will execute
					that <span class="TB-KEYWORD1">case</span> and all cases below it until it sees a <span class="TB-KEYWORD1">break</span> line. 
				</span>
				<br><br>
				<span class="TB-BODY">
					So far <span class="TB-KEYWORD1">switch</span> statements and <span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span>
					trees appear to do the same thing. While this is true, there are distinct advantages and disadvantages when using <span class="TB-KEYWORD1">
					switch</span> statements. We know that <span class="TB-KEYWORD1">switch</span> statements have limited use because they cannot compare
					dynamic variables and are restricted to specific data types. On the other hand <span class="TB-KEYWORD1">switch</span> statements
					compare only one <span class="TB-KEYWORD1">case</span> making them very efficient. Figures 3 and 4 illustrate the differences in efficiency
					between <span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span> trees and <span class="TB-KEYWORD1">switch</span> statements.
					
					
					<!-- I'm pretty sure if/ if else statements break out on the first statement evaluated as true.
					
					
					if you ran this code,  .............
					
					int test1 = 2;
					
					if( test1 == 1){
					
					    Serial.println('A');
					
					}
					else if( test1 == 2){
					    
					    Serial.println('B');
    
						}
					else if (test1 == 2){
					
					    Serial.println('C');
    
					}
										
					
					it outputs 'B', if it was comparing all statements every time it would crash because the else if statements are ambiguous
					
					your diagram just shows the program comparing every statement in the if/else if tree
					
					also the arrows in the diagram, aren't readily apparent that they are the flow of the program,  maybe add a label  --->
					
					
				</span>

			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td align = "center">
				<a name="Fig"></a>
				<img src="P15files/If_Else_Tree.png"/><br/><br/>
				<div class="TB-FIGURES">Fig. 3. If else tree execution illustration</div><br/>
				<a name="Fig"></a>		
			</td>
		</tr><!-- Remove to put images side by side-->
		<tr><!-- Remove to put images side by side-->
			<td align = "center">
				<img src="P15files/SwitchStatment.png"/><br/><br/>
				<div class="TB-FIGURES">Fig. 4. Switch statements execution illustration</div><br/>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-BODY"> 
					The <span class="TB-KEYWORD1">if</span> <span class="TB-KEYWORD1">else</span> tree must evaluate every if statement
					before and after the targeted <span class="TB-KEYWORD1">case</span>. The <span class="TB-KEYWORD1">switch</span> statement,
					on the other hand, jumps directly to the targeted <span class="TB-KEYWORD1">case</span> and then exits once it is finished.
					This saves a lots of time in situations with a large number of cases. Furthermore, the
					efficiency of the <span class="TB-KEYWORD1">switch</span> statement is multiplied inside of the loop
					since only one <span class="TB-KEYWORD1">case</span> is compared every <!--- every not ever ---> iteration. This will come in handy
					when writing the code for a basic color sweep in step 3.         
				</span>
			</td>
		</tr>
	</table>
	
	<br><br>
	
	<cf_Box Color="putty">
	<table class="TBLAYOUT" >
		<tr>
			<td>
				<span class="TB-H1">Step 3: Basic color sweeps</span><br><br>
				<span class="TB-BODY"> 
					With an understanding of how a <span class="TB-KEYWORD1">switch</span> statement works we can begin coding <!-- maybe replace "codeing the chipKIT" with "writing a sketch to" the Chipkit to
					sweep through a combination of colors. This is will be similar to the code used for creating a breathing LED except the
					principal will used to fade in and out the RGB LEDs.    <!-- maybe expand just a little bit,  like "fade in and out the individual colors of the LEDs"  -->     
				</span>
					<br><br>
					
					<!-- maybe add some spaces in the code for readability  -->
					
					<div align="center">
					<cf_box style="width:95%">
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
						void setup()
						{
						  pinMode(3,OUTPUT);
						  pinMode(5,OUTPUT);
						  pinMode(6,OUTPUT);
						  analogWrite(3, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(5,0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(6,0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}

						void changeColorBrightness(char color, boolean fadeIn, int fadeTime){
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
								  analogWrite(6, brightness);//Write to pwm pin 6  (red control) 
								  break;
								case 'g':     
								  analogWrite(5, brightness);//Write to pwm pin 5  (green control)
								  break;
								case 'b':
								  analogWrite(3, brightness);//Write to pwm pin 3  (blue control)
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
</cf_box>
</div>
					</cf_box>
					</div>
					<br>
					<span class="TB-BODY">
						<!-- splitting this paragraph up seems to make it much easier to read --->
						Just like in step 2 we will use a single function, <span class="TB-BLACK">changeColorBrightness</span><span class="TB-BLACK">()</span>,
						to control which color is being modified. The main difference in this step is we have replaced the <span class="TB-KEYWORD1">if</span>
						<span class="TB-KEYWORD1">else</span> tree with a <span class="TB-KEYWORD1">switch</span> statement and put it inside of a while loop.
						
						<br><br>
						
						The while loop increments or decrements the brightness of a color until it reaches the limit of the PWM pin. Each iteration of the loop
						is delayed so we have time to watch the color fade. The code given above should make the LED fade from red, to purple, to blue,
						to aqua blue, and finally to green. 
						
						<br><br>
						The sweep pattern is determined by the order in which the red, green, and blue LEDs are faded in and out. You can try rearranging the order to get different color combinations.
						<br><br>
						In the next section we will explore how to randomly select a color combination.    
					</span>
			</td>
		</tr>
	</table>
	</cf_Box>
		<br><br>
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Generating a Random Number</span><br><br>
				<span class="TB-BODY">
				
					In order to select a random color combination a random number must be generated. This can be done using the <span class="TB-KEYWORD2">random</span>
					<span class="TB-BLACK">()</span> function. The <span class="TB-KEYWORD2">random</span><span class="TB-BLACK">()</span> function can  be used one
					of two ways. The first way is entering a max value as the only argument. This will return a random integer from 0 to the max minus one. The second way
					is entering a max and min value as the arguments. This will return a random integer from min to max minus one.
					<br><br>
					For example: <!-- I’m not sure if this is grammatically correct, but it seems to make the section flow better than just taking it on to the end of the paragraph --->
				
				</span>
				<br><br>
				<div align="center">
				<cf_box style="width:95%">
				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
				random(11);//returns a random integer from 0 to 10 
				random(5,16);//returns a random integer from  5  to 15
</pre>
</cf_box>
</div>
				</cf_box>
				</div>
				<br>
			</td>
		</tr>
	</table>
	<br><br>
	
	<cf_Box Color="putty">
	<table class="TBLAYOUT" >
		<tr>
			<td>
				<span class="TB-H1">Step 4: Random colors</span><br><br>
				<span class="TB-BODY">
				
					Now that we know how to generate a random number we can write the code to generate a random color combination. To begin we will consider
					all the color combinations we want to implement. All of these combinations are listed below.
					
				</span>
				<br><br>
				<span class="TB-BODY"> List of color combinations</span>
				<ol align="left">
				<br/>
				  <span class="TB-BODY">
					<li>Red</li>
					<li>Green</li>
					<li>Blue</li>
					<li>Red and Green</li>
					<li>Red and Blue</li>
					<li>Green and Blue</li>
					<li>Red, Green and Blue</li>
				  </span>
				</ol>
				<span class="TB-BODY">
				
					Considering there are seven combinations we want to randomly select one each time. This can be achieved by selecting each
					combination with a <span class="TB-KEYWORD1">switch</span> statement using the <span class="TB-KEYWORD2">random</span>
					<span class="TB-BLACK">()</span> function to select the <span class="TB-KEYWORD1">case</span>. Inside of each <span class="TB-KEYWORD1">case</span>
					we want to set the colors to a random brightness.  This will ensure there is a chance for every possible color to be generated. The code for
					such an algorithm is shown inside of the function <span class="TB-BLACK">randomLEDColorCombo</span><span class="TB-BLACK">()</span>.
					
				</span>
					<br><br>
					<div align="center">
					<cf_box style="width:95%">
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
						void setup()
						{
						  pinMode(5,OUTPUT);
						  pinMode(6,OUTPUT);
						  analogWrite(3, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(5,0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(6,0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}

						void randomLEDColorCombo()
						{
						  int colorCombo = random(7);//Generate a random value from 0 to 6 that corresponds to a color combination
						  int red = 0, green = 0, blue = 0;
						  switch(colorCombo){
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
						  analogWrite(6,red);//Write random red value to pwm pin 6  (red control) 
						  analogWrite(5,green);//Write random green value to pwm pin 5  (green control)
						  analogWrite(3, blue);//Write random blue value to pwm pin 3  (blue control)
						}
						 
						void loop()
						{  
						  randomLEDColorCombo();
						  delay(500);//Wait for 500 milliseconds between each random color
						}
</pre>
</cf_box>
</div>
					</cf_box>
					</div>
					<br>
					<span class="TB-BODY">
					
						<!-- you could add a line saying why you need all the cases , instead of just doing the random() for each color.  --->
						
						Uploading this code to your chipKit should make the tricolor LED randomly jump to new colors. The time between each jump is
						determined by the delay inside of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function. You may
						notice some of the colors appear very dim. This is because inside of each <span class="TB-KEYWORD1">case</span>, random(256) has
						returned a value near 0. You can try experimenting with different min values for the random function to prevent dim colors. You
						can also specifically tweak the min values in cases 3 through 6. Currently these cases have the possibility of generating a single
						primary color like red, assuming the other colors in the <span class="TB-KEYWORD1">case</span> are randomly assigned a value near zero. 
					</span>
			</td>
		</tr>
	</table>
	<br><br>
	<table class="TBLAYOUT" >
		<tr>
			<td>
				<span class="TB-H1">Step 5: Random color sweeps</span><br><br>
				<span class="TB-BODY">
				
					Now that we know how to generate random color combinations and implement color sweeps we can combine the two concepts. In this step we
					will write some code to randomly select a color sweep pattern. Here the order of the pattern will matter. This means there will be 6 different
					color patterns all of which are listed below.
					
				</span>
				<br><br>
				<span class="TB-BODY"> List of color combinations <!---- are these combinations or sequences  ?? --->  </span>
				<ol align="left">
				<br/>
				  <span class="TB-BODY">
					<li>Red, Green, Blue</li>
					<li>Red, Blue, Green</li>
					<li>Green, Red, Blue</li>
					<li>Green, Blue, Red</li>
					<li>Blue, Red, Green</li>
					<li>Blue, Green,  Red</li>
				  </span>
				</ol>
				<span class="TB-BODY">
				
					Each  pattern will be implemented as a <span class="TB-KEYWORD1">switch</span> statement <span class="TB-KEYWORD1">case</span>. Just as in step 4
					the <span class="TB-KEYWORD1">case</span> will be selected by using the <span class="TB-KEYWORD2">random</span><span class="TB-BLACK">()</span>
					function.  Inside of each <span class="TB-KEYWORD1">case</span> we will use the <span class="TB-BLACK">changeColorBrightness</span>
					<span class="TB-BLACK">()</span> function we wrote in step 3 to fade the colors in or out. The code needed to implement this is shown below
					inside of the <span class="TB-BLACK">randomColorSweep</span><span class="TB-BLACK">()</span> function.
					
				</span>
					<br><br>
					<div align="center">
					
					<!--- again maybe spaces to help readability --->
					<cf_box style="width:95%"> 
					
					
					
					
					
					<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
						 boolean brightnessDirection = 1;//If set to 1 the color brightness will increase 
						  
						void setup()
						{
						  pinMode(3,OUTPUT);
						  pinMode(5,OUTPUT);
						  pinMode(6,OUTPUT);
						  analogWrite(3, 0);//Write 0 to pwm pin 3 (blue control)   This makes sure the LED starts off
						  analogWrite(5,0);//Write 0 to pwm pin 5 (green control) This makes sure the LED starts off
						  analogWrite(6,0);////Write 0 to pwm pin 6 (red control)  This makes sure the LED starts off
						}
						void changeColorBrightness(char color, boolean fadeIn, int fadeTime){
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
								  analogWrite(6, brightness);//Write to pwm pin 6  (red control) 
								  break;
								case 'g':     
								  analogWrite(5, brightness);//Write to pwm pin 5  (green control)
								  break;
								case 'b':
								  analogWrite(3, brightness);//Write to pwm pin 3  (blue control)
								  break;
							  }
							  //Wait for a specified number of miliseconds to control how fast the LED fades in or out
							  delay(fadeTime);
							  
							  //Wait for a specified number of microseconds to control how fast the LED fades in or out
							  //delayMicroseconds(fadeTime);
							}
							return;
						}
						void randomColorSweep()
						{
						  int randomNumber, fadeTime = 5;
						  randomNumber = random(6);//Generate random number from 0 to 5
						  switch(randomNumber)
						  {
							case 0: //Color pattern 0: RGB
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 1: //Color pattern 1: RBG
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 2: //Color pattern 2: GRB
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction 
							  break;
							case 3: //Color pattern 3: GBR
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction  
							  break;
							case 4: //Color pattern 4: BRG
							  changeColorBrightness('b', brightnessDirection, fadeTime);
							  changeColorBrightness('r', brightnessDirection, fadeTime);
							  changeColorBrightness('g', brightnessDirection, fadeTime);
							  brightnessDirection = !brightnessDirection; //Invert fade direction
							  break;
							case 5: //Color pattern 5: BGR
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

</cf_box>



</div>
					</cf_box>
					</div>
					<br>
					<span class="TB-BODY"> 
					Once this code is uploaded the tricolor LED should randomly sweep through different color patterns. The pattern's fade time can be
					tweaked by changing a variable inside of the <span class="TB-BLACK">randomColorSweep</span><span class="TB-BLACK">()</span> function.
					By default it delays five milliseconds between each incrimination of a colors brightness. This is done using
					<span class="TB-KEYWORD2">delay</span><span class="TB-BLACK">()</span> called within <span class="TB-BLACK">changeColorBrightness</span>
					<span class="TB-BLACK">()</span>. If you want to delay for periods less than a millisecond you can comment out
					the <span class="TB-KEYWORD2">delay</span><span class="TB-BLACK">()</span> and uncomment <span class="TB-KEYWORD2">delayMicroseconds</span>
					<span class="TB-BLACK">()</span> for greater precision. Remember that 1 millisecond is equal to 1000 microseconds, so using delay times
					less than 300, with <span class="TB-KEYWORD2">delayMicroseconds</span><span class="TB-BLACK">()</span>, will make the LED flash rather than fade.
					
					
					
					<!-- instead of having a commented out delayMicroseconds,  you could just state "replace the delay at line 47 with delayMicroseconds for....."
					having commented out functions in final presented code seems a bit odd to me   -->

					
					</span>
			</td>
		</tr>
	</table>	
	</cf_Box>
	
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

