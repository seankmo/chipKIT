<html>
  <head>
    <title>Servo Control Incorporating Potentiometer Input</title>
    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
    
          <!--KEYWORDS
      Potentiometer
      voltage divider
      PWM
      analogRead()
      analog-to-digital converters
      ADCs
      analogReference() 
    -->
  
  <!-- updated 6-17-2013 Sean Moss -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </head>
     
  <body>
  <cf_Box Color="White"> 
      
    <table class="TBLAYOUT"> 
   		<tr>
	  		<td align="center">
	  			<span class="TB-PROJECTTITLE"><br>Servo Control Incorporating Potentiometer Input<br><br></span><hr>
	  		</td>
		</tr>
    </table>
    
    <br><br>

    <table class="TBLAYOUT">
   		<tr>
	  		<td>
	 			<span class="TB-H1">Introduction</span><br><br>	  
	  			<span class="TB-BODY">
	      		In the previous project, &ldquo;Servo Control with Servo Library,&rdquo; we learned how to control a servo motor using our chipKIT board. In that project, our method of control was rather rudimentary; two pushbuttons were used to tell the servo to rotate either right or left.  For this project, we will improve upon that design by replacing the two pushbuttons with a single potentiometer.  Like our other project, &ldquo;Potentiometer-Controlled LED Brightness,&rdquo; we will use a potentiometer to build a voltage divider circuit that will output an analog signal to our chipKIT board. That signal will then in turn tell the chipKIT board what angle to rotate the servo.  Essentially, the angle of servo will match the position of the potentiometer dial.
	  			</span>	  
	  		</td>
		</tr>
    </table>
    
    <br><br>

    <table class="TBLAYOUT">
		<tr>
	  		<td valign="top">
            	<span class="TB-H2">Inventory:</span>
      	    	<br><br>
      	    	<div align="center">
            
	    
            		<table id="CT3">
            			<thead>
              				<tr>
		  						<th scope="col" width="10%">&nbsp;</th>
                  				<th scope="col" width="60%">&nbsp;</th>
                  				<th scope="col" width="30%">&nbsp;</th>
              				</tr>
            			</thead>

            			<tbody>    
							<tr>
		  						<td class="qty">1</td>
		  						<td>Potentiometer dial (resistance ranging from 10&Omega; to 10k&Omega;)</td>
		  						<td align="center" class="image"><cf_imagebox align="center" path="P18files/potentiometer_trimmerbig.svg" width="100px"> </td>
							</tr>		
							<tr>
		  						<td class="qty">2</td>
		  						<td>10k&Omega; resistors</td>
		  						<td align="center" class="image"><cf_imagebox align="center" path="P18files/resistor_10Ka.svg" width="100px"></td>
							</tr>               
							<tr>
		  						<td class="qty">1</td>
		  						<td>Tower Pro SG92R servo</td>
		  						<td align="center" class="image"><cf_imagebox align="center" path="P18files/servo.svg" width="100px"></td>
	  						</tr>
	   					</tbody>	    
	    			</table>

            	</div>
	    		<br><br>
	    	</td>
	    </tr>	    
    </table>

    <br><br>
  
    <table class="TBLAYOUT">
      	<tr>
      		<td>
        		<span class="TB-H1">Theory</span><br><br>	

        		<span class="TB-BODY">

	    			<cf_TB-TabBox>
            			<cf_TB-Tab color="red" path="http://www.google.com" title="Potentiometer-Controlled Brightness">
            			<cf_TB-Tab color="green" path="http://www.google.com" title="Servo Control with Servo Library">
            		</cf_TB-TabBox>

	    		The theory behind this project will be brief, as the goal is to utilize concepts from previous projects to encounter a new application. In the &ldquo;Potentiometer-Controlled LED Brightness&rdquo; project, we learned that you could use a potentiometer to provide a range of input values, as opposed to simple on/off buttons. That project focused on creating an input device that would output an analog signal ranging from 0V to 3.3V. The signal was read by the chipKIT board, which in turn controlled the brightness of an LED according to strength of the signal.
	
	    		<br><br>
	        	<cf_imagebox align="right" path="P18files/circuit_diagramnew.svg" width="300px" caption="Fig. 1. Voltage divider circuit.">
	    		The task of changing the degree of brightness and the angle of a servo is actually quite similar. In fact, we can use the same method of input from the controlled LED brightness project for this project. This means we will re-use the same voltage divider circuit from the previous project. Figure 1 shows the voltage divider circuit we will be using.
	
	    		<br><br>

	    		The servo used for this project will be the same SG92R used in &ldquo;Servo Control with Servo Library,&rdquo; and the configuration for this project will be almost identical. We will use the servo library to control our device, just as we have in previous projects.
	
	    		<br><br>
	    
	    		If you are unfamiliar with any of the concepts, there are links to previous projects on the right. It may be useful to glance over them before proceeding.
	    		</span>    		
			</td>
      	</tr>
    </table>

    <br><br>       

    <table class="TBLAYOUT">    
		<tr>
			<td>
			<cf_box color="putty">
	     		<span class="TB-H1">Step 1: Setting up the Circuit</span><br><br> 			
	    		<cf_imagebox align="center" path="P18files/newCirc2.svg" width="900px" caption="Fig. 2. Circuit diagram.">  
	    		<span class="TB-BODY">		
					<ol>
						<cf_imagebox align="right" path="P18files/potentiometer_alt_examp.svg" width="200px" caption="Fig. 3 Alternate potentiometer pin configuration.">
						<li> Place the potentiometer dial so that it spans the gap between rows in the breadboard (as done in Fig. 2).  Note that potentiometers can come in various configurations, and some have all their pins located on the same side (Figure 3 shows both configurations).  It is only important to make sure that each pin occupies its own row.</li>   		
						<li> With a wire, connect pin &ldquo;A&rdquo; of the potentiometer to the 3.3V pin of the chipKIT board.</li>		
						<li> Connect the 5V pin of the chipKIT board to the &ldquo;power&rdquo; line of the servo.  Note that the servo has a female connector, so you can plug straight into the connector, or you can use a gender changer to plug the connector into the breadboard. The servo cable color code is presented in Fig. 4.</li> 	    
						<li> Connect pin &ldquo;C&rdquo; of the potentiometer to the ground (GND) pin of the chipKIT board.  The row that pin &ldquo;C&rdquo; occupies will be designated <i>ground row</i>. </li>
						<cf_imagebox align="right" path="P18files/servo_exp2.svg" width="200px" caption="Fig. 4. Servo pin out and color code.">
						<li> Next connect the &ldquo;ground&rdquo; line of the servo to the ground row </li>
						<li> Using a long wire, connect pin &ldquo;B&rdquo; of the potentiometer to pin &ldquo;A0&rdquo; on the chipKIT board.</li>	    
						<li> Finally, connect the &ldquo;control&rdquo; line of the servo to pin 9 on the chipKIT board.  </li>
					</ol>							
	    		</span>	
			</cf_box>
			</td>
		</tr>
	</table>
	

	<td width="10px">
	</td>
	
	
	<td valign="top">
	
	    <cf_imagebox align="center" path="P18files/potentiometer_alt_examp.svg" width="200px" caption="Fig. 3 Alternate potentiometer pin configuration.">
	
	    <br><br>
	    
	    <cf_imagebox align="center" path="P18files/servo_exp2.svg" width="200px" caption="Fig. 4 Servo pin out.">
	
	    <br><br> 
	
	    <cf_imagebox align="center" path="P18files/colorcode.svg" width="100px" caption="Fig. 5 Servo color code."> -->   
  
    <br><br>

    <table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H2">Software</span><br><br> 	
				<span class="TB-BODY">
	
		    	The software sketch will mainly utilize the <code>analogRead()</code>, <code>analogReference()</code>, and <code>servo</code> class methods, much like we did in previous projects. There is a quick review below in the subsequent paragraphs, if you are unfamiliar with these methods.		   
		    
		    	<br><br>
		    
		    	The <code>analogRead()</code> function does what its name implies; it is a way for the chipKIT board to read a variable voltage signal from one of its analog inputs. The signal applied to one of these pins ranges from 0V to a max value of 3.3V. Exceeding 3.3V will result in incorrect readings.
		    
		    	<br><br>
		    
		    	ChipKIT boards use 10 bit analog-to-digital converters (ADC), so it will quantize the analog input to one of 1024 levels (2<sup>10</sup> = 1024). (I.e., when you call <code>analogRead()</code> it will map the input to a number from 0 to 1023,  where zero is the lowest voltage and 1023 is the largest reference voltage. 
		    
		    	<br><br>
		    
		    	The <code>analogReference()</code> function sets the voltage level that the ADC associates with 1023. Within our project, we will use the <code>DEFAULT</code> value, which is 3.3V for chipKIT boards. For the servo class, we will only be using the &ldquo;attach&rdquo; and &ldquo;write&rdquo; methods. The &ldquo;attach&rdquo; method simply tells the servo object to which pin it will output the control signal. The &ldquo;write&rdquo; function simply sets the duty cycle of the PWM signal controlling the servo (essentially telling it which angle to rotate the motor shaft to).</span>		    	
			</td>
       	</tr>
    </table>      
      
	<br><br>
   
	<table class="TBLAYOUT">
	    <tr>
	    	<td>
	    	<cf_box color="putty">	    
	    		<span class="TB-H1">Step 2: Setting up the Sketch</span><br><br>	
				<span class="TB-BODY">
				Our final sketch simply reads the analog voltage value from the potentiometer, scales the value to a degree between 0 and 180, and then tells the servo to move accordingly. There is a delay in the code to allow time for the servo to physically move.		
				</span>
				
				<br><br>

        		<pre class="brush: mpide;">
      
#include &lt;Servo.h&gt; 


Servo myServo;
int degreeGlb;

const int aPinGlb = 0;

// scaleFactorGlb = 180/1000 
const float scaleFactorGlb = .18;                           
                           
                          
void setup() 
{ 

// Setup the Servo class object to output on pin 9.
myServo.attach(9); 

// Tell the chipKIT AD converter the max analog voltage will be the default value 3.3V.
analogReference(DEFAULT);


  
} 
 
void loop() 
{ 
  
      // Read the value from the analog pin connected to the potentiomiter, value will be between 0 and 1023.
      degreeGlb = analogRead(aPinGlb);   
      // Convert input value to a degree.
      degreeGlb = (int)((float)degreeGlb * scaleFactorGlb);
      // Write the input degree to the servo 
      myServo.write(degreeGlb);             
      // wait for the servo to move
      delay(10);                            
} 
				</pre>      
      		</cf_box>
      		</td>
      	</tr>
    </table>
    
    <br><br>
    
    <table class="TBLAYOUT">
      	<tr>
      		<td>
      			<span class="TB-H1">Summary</span><br><br>      
      		</td>
      	</tr>
	<tr><td>
	
			    <span class="TB-BODY">
		    <cf_imagebox align="center" path="P18files/P18_schem/P18_schem.svg" width="900px">
		    <a href="P18files/P18_schem/P18_schem.pdf">Servo Control Incorporating Potentiometer Input (PDF)</a> 
		    </span>
	
	
	</td></tr>
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
            						<li>Potentiometers</li> 
            						<li>Variable resistance voltage dividers</li>
            						<li>Servos</li>
            					</ul>
          					</td>
          				</tr>
        			</tbody>
        		</table>      
      		</td>
    	</tr>    
    </table>   
    
    
  </cf_box>  
  </body>
</html> 