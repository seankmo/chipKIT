<html>
  <head>
      <title>Potentiometer-Controlled LED Brightness</title>
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
	  			<span class="TB-PROJECTTITLE">Project 16: <br>Potentiometer-Controlled LED Brightness</span><br><hr>
	  		</td>
		</tr>
    </table>
    
    <br>
    
    <table class="TBLAYOUT">
   		<tr>
	  		<td>
	  			<span class="TB-H1">Introduction</span><br><br>
	  			<span class="TB-BODY">
	  			In the project <a href="P14.cfm">Breathing LED with Pulse-Width Modulation</a>, you built a circuit that was able to simply change the brightness of an LED by using a PWM signal. For that project, the chipKIT board controlled the LED without any form of input from the user. This project will build upon that project, now introducing an element of user input by allowing manual control over the brightness of the LED.  To accomplish this, we will introduce a new component called a potentiometer. Using this component, we can create a voltage divider circuit that can indirectly control the brightness of our LED. Our chipKIT board will act as mediator between the voltage divider and the LED. It will essentially read the value of the voltage divider, and then output a pulse-width modulation (PWM) signal for the desired level of brightness.
	 	  		</span>
	  	  	</td>
		</tr>
    </table>

    <br>
     
    <table class="TBLAYOUT">
      <tr>
      	<td valign="top">
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
		  				<td>Potentiometer dial (resistance range from 10&Omega; to 10k&Omega;)</td>
		 	 			<td align="center" class="image"><cf_imagebox align="center" path="P16files/potentiometer_trimmerbig.svg" width="100px"></td>
					</tr>
				
					<tr>
		  				<td class="qty">1</td>
		  				<td>220&Omega; resistors</td>
		  				<td align="center" class="image"><cf_imagebox align="center" path="P16files/resistor_220.svg" width="100px"></td>
					</tr>
               
					<tr>
		  				<td class="qty">1</td>
		  				<td>LED</td>
		  				<td align="center" class="image"><cf_imagebox align="center" path="P16files/LED_red.svg" width="40px"></td>
	  				</tr>
	    	    </tbody>
	    	</table>
	    	</div>
	    </td>
	  </tr>    
    </table>
    
    <br><br>
      
    <table class="TBLAYOUT">
      	<tr>
      		<td>
        		<span class="TB-H1">Potentiometers and the Voltage Divider Circuit</span><br><br>
	            <span class="TB-BODY">
		       	Before we can start controlling our LED, we need a way to tell the chipKIT board the desired level of brightness.  In order to do this, we need to construct a voltage divider circuit. Voltage divider circuits output a voltage that varies from 0V to 3.3V. The chipKIT board reads the voltage with an analog input pin and then appropriately scales the brightness level (i.e., a 3.3V signal would represent 100% brightness, a 1.65V signal would represent 50% brightness, and a 0V signal would represent 0% brightness).
  
       		    <br><br>

		      	<cf_imagebox align="right" path="P16files/potexmp.svg" width="400px" caption="Fig. 1. Types of potentiometers.">

		      	To construct this voltage divider circuit, we need a component called a potentiometer. A potentiometer can be thought of as a resistor that changes its resistance value according to the position of a mechanical dial or screw. Potentiometers are used in all sorts of consumer electronics. Volume knobs on stereos or light dimmer switches  are some common applications. They are also handy in situations where precise resistance values cannot be constructed from normal resistors. Figure 1 shows two different types of common potentiometers.
		      
		      	<br><br>
						  	
		      	A potentiometer always has three pins, where two are connected to opposite ends of a resistive material. Figure 2 illustrates how the pins are connected. Pins &ldquo;A&rdquo; and &ldquo;C&rdquo; are separated by the greatest length of resistive material. This means that the resistance measured across both will always be the maximum value of the potentiometer. In this project, the max resistance is 10k&Omega;.
		      
				<cf_imagebox align="right" path="P16files/diagrama.svg" width="350px" caption="Fig. 2. Interior view of a potentiometer."><!-- Check to see if this is right. Is it a schematic view?-->		      	

				<br><br>
		      
		      	The third pin of the potentiometer (&ldquo;B&rdquo; in Fig. 2), is connected to the &ldquo;wiper&rdquo; element. This element makes contact with the resistive material and can be repositioned by rotating the mechanical dial.  If you were to measure the resistance between points &ldquo;B&rdquo; and &ldquo;C&rdquo;, you would see a value that could range anywhere from 10k&Omega; to about 10&Omega;<!--Changed from "Ohms"- remember to be consistent/-->. As you move the wiper, you either increase or decrease the length of the current path between pins &ldquo;B&rdquo; and &ldquo;C&rdquo; (and, similarly, from pins &ldquo;A&rdquo; to &ldquo;B&rdquo;).  Increasing the length of the path between the pins means that current has to travel through more resistive material, and thus a higher overall resistance (i.e., decreasing the path decreases resistance).
		     		
				<br><br>
	
		      	Figure 3 shows a schematic diagram of the voltage divider we will use for this circuit. In the past, if you ever constructed a voltage divider, you probably just used two fixed resistors, where the output of the circuit was measured at the point between the two resistors.  The circuit here may not look similar, but it functions identically.
		      
		      	<br><br>
		      						
		      	<div><cf_imagebox align="left" path="P16files/circuit_diagramnew.svg" width="300px" caption="Fig. 3. Voltage divider used in our circuit.">
		 
		      	<cf_imagebox align="center" path="P16files/voltdivb.svg" width="300px" caption="Fig. 4. Voltage divider schematic with wiper element between resistors."></div><br>

		      	Figure 4 helps illustrate the functionality of the voltage divider. In this figure, the wiper element is set directly in the middle of the resistive material. Recall Ohm’s law, where Voltage = Current &lowast; Resistance. If you hold current constant, then voltage (i.e., the voltage drop across a resistor), becomes a product of varying resistance. In our voltage divider circuit, current is always constant. Current travels from pin &ldquo;A&rdquo; to pin &ldquo;C&rdquo;, regardless of the position of the wiper. Very little, if any, current splits off through pin &ldquo;B&rdquo;, so we can ignore it. This means that when we move the wiper, we only change the resistance value in the circuit divider. Ultimately, this changes the voltage drop between pins &ldquo;A&rdquo; and &ldquo;B&rdquo;, as well as between pins &ldquo;B&rdquo; and &ldquo;C.&rdquo; Thus, we can vary the output of our voltage divider circuit.
		 		</span>
			</td>
		</tr>
    </table>
    
    <br><br> 
    
    <table class="TBLAYOUT">
      	<tr>
      		<td>
      			<cf_box color="putty">
      			<span class="TB-H2">Step 1: Setting up the Circuit</span><br><br>
     	  		<cf_imagebox align="center" path="P16files/overallcirc.svg" width="600px" caption="Fig. 5. Potentiometer circuit.">
	       	    <span class="TB-BODY">
					<ol>
						<li> Place the potentiometer so that it spans the gap between columns in the breadboard (as seen in Fig. 5). It is important to note that potentiometers can come in various configurations; some have all their pins located on the same side, while others may have two pins on one side and the last pin on the other side (Figure 6 shows an example). Either configuration works, but make sure that each pin occupies its own column on the breadboard.</li>
						<cf_imagebox align="right" path="P16files/potentiometer_alt_examp.svg" width="300px" caption="Fig. 6. Alternate potentiometer pin configuration.">
     					<li> Now, connect a wire from pin &ldquo;A&rdquo; of the potentiometer to the 3.3V pin on the chipKIT board. (The potentiometer pins are labeled identically to our explanation in the theory section). </li>
						<li> Connect from pin &ldquo;C&rdquo; of the potentiometer to the ground (GND) pin on the chipKIT board. The column that pin &ldquo;C&rdquo; occupies will be called the <i>ground column</i> from now on. </li>
						<li> Place a 220&Omega; resistor into the breadboard so that one end of the resistor is connected to the ground column.</li>
						<li>Connect the cathode (short end) of an LED to the end of the 220&Omega; resistor that is not connected to the ground column. Then, connect a wire between the anode (long end) of the LED to the chipKIT board's pin 7.</li>
						<li>Finally, connect pin &ldquo;B&rdquo; of the potentiometer to the A0 pin of the chipKIT board.</li>
	 	    		</ol>
	    		</span>
	    		</cf_box>
	    	</td>
	    </tr>		
    </table>

    <br><br>
    
    <table class="TBLAYOUT">
		<tr>
	    	<td>
      	    	<span class="TB-H1">Software</span><br><br>
	   	    	<span class="TB-BODY">
      
				Before going through the software sketch, we must first discuss how the chipKIT board reads analog signals. 
      
				<br><br>
      
				You are probably familiar with the <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> function from the &ldquo;Changing Color of Tricolor LED&rdquo; or &ldquo;Breathing LED&rdquo; projects.  The function simply transmits a PWM signal, where the input parameters specify the output pin and the duty cycle of the signal. 
  
				<br><br>
    
				However, you may not be familiar with the <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> function. As its name suggests, this function will convert a signal received on one of the analog pins (analog pins on chipKIT boards have labels preceded by an &ldquo;A&rdquo; to distinguish them from digital pins) to signal that is readable as a numerical value. 

	        	<br><br>
     
				ChipKIT boards use 10-bit analog-to-digital converters (ADCs), so analog values will be approximated to one of 1024 values (2<sup>10</sup> = 1024<!--explain the significance of this, as it's not clear right now-->). This type of approximation is known as signal &ldquo;quantization.&rdquo; When a continuous signal (like an analog signal) is &ldquo;quantized,&rdquo; it only means that its value is restricted to a discrete number of levels. For example, if you have an analog signal that ranges from any value between 0V and 8V, and you have 8 discrete levels. An analog signal with a level of 6.2V would map to 6 (the closest discrete level). 

	        	<br><br>
     
				The <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> function assigns the number 1024 to the max reference voltage (and likewise 0 for 0V). The max reference voltage is a value set with the <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span> function. You will specify <span class="TB-LITERAL1">DEFAULT</span> as the parameter most frequently when calling this function. On chipKIT boards this designates the max reference voltage as 3.3V. 
     
				<br><br>
     
				Sometimes, it may be useful to use the <span class="TB-LITERAL1">EXTERNAL</span> parameter for <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span>. This specifies the reference voltage to be taken from a physical pin rather than an internal reference (On the chipKIT Max32, this is pin 44, but this will change from chipKIT board to chipKIT board. The exact pin can be found in your board's reference manual.).
				</span>
      	  	</td>
	  	</tr>
    </table>
    
    <br><br>
    
    <table class="TBLAYOUT">
	  	<tr>
	  		<td>
	  			<cf_box color="putty">
	  			<span class="TB-H1">Step 2: Setting up the Software</span><br><br>
	 	 		<span class="TB-BODY">
	    		Once you have an understanding of all of the functions in this sketch, you will find that it is very simple and straightforward. The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> portion of the sketch simply sets the ADC reference value to <span class="TB-LITERAL1">DEFAULT</span>, which is 3.3V, and sets the <span class="TB-KEYWORD2">pinMode</span> of the LED to <span class="TB-LITERAL1">OUTPUT</span>. Note that you don’t have to call <span class="TB-KEYWORD2">pinMode</span> for analog input pins (unless you are going to use them as a digital pins). 

	   			<br><br>

	    		The main loop of the program will simply read from a value from the analog pin, and scale the value so that it is between 0 and 255. This value is then written to the LED pin. 

	    		<br><br>

	    		The scaling function may need some explanation if you are unfamiliar with explicitly type-casting a variable. Since <span class="TB-BLACK">valueGlb</span> is an integer variable, it has to be explicitly type-cast as a float in order to multiply it by the scale factor variable (which is a <span class="TB-KEYWORD2">float</span> variable). Since the result of this multiplication will be a floating point number, it then has to be type-cast again back to an <span class="TB-KEYWORD2">int</span> so it can be stored in <span class="TB-BLACK">valueGlb</span>. 

 				<br><br>

 				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide; gutter: false;"> valueGlb = (int)((float)valueGlb * scaleFactorGlb); 
</pre>
</cf_box>
</div> <!-- remove slide bar arrows for this line,    when I find out how, I will -->

	   			 <br>

	    		Once the scaling function has been implemented, turning the dial on the potentiometer sets the brightness on the LED.

	   			<br><br>
	  
      			<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
      
      
int valueGlb;

const int aPotGlb = 0;
const int aLEDGlb = 9;
// scaleFactorGlb = 255/1000 
const float scaleFactorGlb = .255;                           
                           
                          
void setup() 
{ 



// Tell the chipKIT AD converter the max analog voltage will be the default value 3.3V.
analogReference(DEFAULT);
pinMode(aLEDGlb, OUTPUT);

  
} 
 
void loop() 
{ 
  
      // Read the value from the analog pin connected to the potentiometer, value will be between 0 and 1024.
      valueGlb = analogRead(aPotGlb);   
      // Scale the input value so it is within 0 -> 255
      valueGlb = (int)((float)valueGlb * scaleFactorGlb);
       
      // Output analog value to LED
      analogWrite(aLEDGlb, valueGlb);
                                         
} 
</pre>
</cf_box>
</div>
				</span>
				</cf_box>
      		</td>
      	</tr>
    </table>

    <br><br>
    
    <table class="TBLAYOUT">
      <tr>
      	<td valign="top">
         	<span class="TB-H2">Summary</span>
      		<br><br>
      		<div align="center">
    
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
                        		</ul>
          					</td>
          				</tr>
	  					<tr>
            				<td width="20%">Functions Introduced:</td>
            				<td width="80%">
              					<ul>
	      						<li> <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span></li>
	      						<li> <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span></li>
	      	            		</ul>
           					</td>
            			</tr>
        			</tbody>
        		</table>
      
      		</div>
        </td>
      </tr>
    </table>
    
    
    
  </cf_Box>  
  </body>
</html> 




