<html>
  <head>
    <title>Servo Control Incorporating Potentiometer Input</title>
    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
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
	      		In the previous project “Servo Control with Servo Library”, we learned how to control a servo motor using our chipKIT board. In that project our method of control was rather rudimentary; two push buttons were used to tell the servo to rotate right or left.  For this project we will improve upon that design by replacing the two pushbuttons with a single potentiometer.  Like project “Potentiometer Controlled LED Brightness”, we will use a potentiometer to build a voltage divider circuit that will output an analog signal to our chipKIT board. That signal will then in turn tell the chipKIT board what angle to rotate the servo.  Essentialy the angle of servo will match the position of the potentiometer dial.
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
            			<cf_TB-Tab color="orange" path="http://www.google.com" title="Servo Control with Servo Library">
            		</cf_TB-TabBox>

	    		The theory behind this project will be brief, as the goal is to utilize concepts from previous projects to form a new application. In the “Potentiometer Controlled LED Brightness” project we learned that you could use a potentiometer to provide a range of input values, as opposed to simple on/off buttons.  That project focused on creating an input device that would output an analog signal ranging from 0V to 3.3V. The signal was read by the chipKIT board, which in turn would control the brightness of a LED according to strength of the signal.
	
	    		<br><br>
	        	<cf_imagebox align="right" path="P18files/newvoltdiv.svg" width="300px" caption="Fig. 1. Voltage divider circuit.">
	    		The task of controlling a variable degree of brightness and the angle of a servo, turn out to be very similar. In fact we can use the same method of input from the controlled LED brightness project, for this current project. This means we will re-use the same voltage divider circuit from the previous project. Figure 1 shows the voltage divider circuit we will be using.
	
	    		<br><br>

	    		The servo used for this project will be the same SG92R used in “Servo Control with Servo Library” and the configuration for this project will be almost identical. We will use the Servo library to control our device just like in previous projects.
	
	    		<br><br>
	    
	    		If you are unfamiliar with any of the concepts, previous projects are linked to the right. It may be useful to glance over them before proceeding.
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
						<li> Place the potentiometer dial so that it spans the gap between rows in the breadboard (as per Figure 2).  Note that potentiometers can come in various configurations, and some have all pins located on the same side (Figure 3 shows the alternate configurations).  It is only important to make sure that each pin occupies its own row.</li>   		
						<li> With a wire connect pin “A” of the potentiometer to the 3.3V pin of the chipKIT board.</li>		
						<li> Now connect the 5V pin of the chipKIT board to the “power” line of the servo.  Note that the servo has a female connector, so you may plug straight into the connector or use a gender changer to plug the connector into the breadboard. The servo cable color code is presented in Figure 4.</li> 	    
						<li> Connect pin “C” of the potentiometer to the GND pin of the chipKIT board.  The row that pin “C” occupies will be designated <b>Ground row</b>. </li>
						<cf_imagebox align="right" path="P18files/servo_exp2.svg" width="200px" caption="Fig. 4. Servo pin out and color code.">
						<li> Next connect the “ground” line of the servo to the ground row </li>
						<li> Using a long wire, connect pin “B” of the potentiometer to pin “A0” of the chipKIT board.</li>	    
						<li> Finally connect the “control” line of the servo to pin 9 of the chipKIT board.  </li>
					</ol>							
	    		</span>	
			</cf_box>
			</td>
		</tr>
	</table>
	

	<!--I removed Fig. 5, as it didn't really seem necessary. You needed to reference Fig. 4 anyway, and it provides the necessary information about the color codes. It also provided a cleaner look for the project.
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
	
		    	The software sketch will mainly utilize the <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span>, <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span>, and <span class="TB-BLACK">servo</span> class methods similar to previous projects. Below is a quick review if you are unfamiliar.		   
		    
		    	<br><br>
		    
		    	The <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> functions like its name implies, it is a way for the chipKIT board to read a variable voltage signal from one of it's analog inputs. The signal applied to one of these pins will range from 0V to a max value of 3.3V. Exceeding 3.3V will result in incorrect readings.
		    
		    	<br><br>
		    
		    	ChipKIT boards use 10 bit analog to digital converters (ADC), so it will quantize the analog input to one of 1024 levels (2<sup>10</sup> = 1024). I.e. when you call analogRead() it will map the input to a number from 0 to 1023,  where zero is the lowest voltage and 1023 is the largest reference voltage. 
		    
		    	<br><br>
		    
		    	analogReference() sets that voltage level that the ADC associates with 1023. For our project we will be using <span class="TB-LITERAL1">DEFAULT</span> value which for chipKIT boards is 3.3V. For the servo class, we will only be using the “attach” and “write” methods. The “attach” method simply tells the servo object what pin it will output the control signal to. The “write” function just sets the duty cycle of the PWM signal controlling the servo (essentially telling it what angle to rotate the motor shaft to).</span>		    	
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
				The actual sketch will simply read the analog voltage value from the potentiometer, scale the value to a degree between 0 and 180, and then tell the servo to move accordingly. There is a delay in the code to allow time for the servo to physically move.		
				</span>
				
				<br><br>

        		<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
</div>      
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
