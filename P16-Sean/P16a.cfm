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
    
    <br><br>
    
    <!--  Intro portion -----------------------------   --->
    <table class="TBLAYOUT">
   	<tr>
	  <td>
	  <span class="TB-H1">Introduction</span>
	  </td>
	</tr>
	<tr>
	  <td>
	  <br>
	  <span class="TB-BODY">
	  In project 14 Breathing LED with Pulse Width Modulation you built a circuit that was able to control
	  the brightness of an LED by using a PWM signal. For this project we will modify and extend that circuit
	  so that we can manually control the brightness of the LED to whatever we want.  To accomplish this we
	  will be using a potentiometer dial, where the position of the dial will directly correlate to the brightness of the LED.
	  <br><br>
	  </span><br>
	  
	  </td>
	</tr>
    </table>
    
     <!--  Parts List -----------------------------   --->
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
		  <td>Potentiometer dial (resistance range from 10&Omega; to 10k&Omega;</td>
		  <td align="center" class="image"><img src="P16files/potentiometer_trimmerbig.svg">  </td>
		</tr>
		
		
		<tr>
		  <td class="qty">1</td>
		  <td>330&Omega; resistors</td>
		  <td align="center" class="image"><img src="P16files/330resBig.svg"></td>
		</tr>
               
		<tr>
		  <td class="qty">1</td>
		  <td>LED</td>
		  <td align="center" class="image"><img src="P16files/LED_red.svg"></td>

	  	</tr>
              
		
		<tr>
		  <td class="qty">6</td>
		  <td>Connecting wires</td>
		  <td align="center" class="image"><img src="P16files/FritzWire.svg"></td>
		</tr>
	    
	    
	    </table>
            </div>
	    <br><br>
	    </td>
	    </tr>
	    </tbody>
    </table>
    
    
    <table class="TBLAYOUT">
      <tr>
      <td>
        <span class="TB-H1">Theory:</span><br><br>
	
      
      </td>
      </tr>
      <tr>
      <td>
	
	<span class="TB-H2">Potentiometers and the Voltage Divider Circuit:</span>
	
      </td>
      </tr>
    </table>
    
     <table class="TBLAYOUT">
      <tr>
      <td>
		      <br><br>
		      <span class="TB-BODY">
		      Before we can start controlling the LED for this project, we need a way to tell the chipKIT
		      board the desired level of brightness.  In order to do this, a voltage divider circuit is required.
		      Such a circuit will output an analog voltage signal to the chipKIT board that can vary from 0V to 3.3V.
		      The chipKIT board interprets this signal as a proportion of the desired brightness level.  I.e. a 3.3V
		      signal would represent 100% brightness (likewise a 1.65V signal would represent 50%, and 0V represent 0%).
		      
		      <br><br>
		      
		      <cf_imagebox align="right" path="P16files/potexmp.svg" width="400px" caption="Fig. 1 potentiometers">
		      
		      
		      
		      To construct this voltage divider circuit we will need a component called a potentiometer.  A potentiometer
		      can be simply thought of as a resistor that changes its resistance value according to the position of a
		      mechanical dial or screw, (which in turn moves an internal component called a “wiper”). Potentiometers are
		      used in all sorts of consumer electronics, volume knobs on stereos, or light dimmer switches you find in your
		      home, are common everyday applications. Potentiometers are often used in electrical circuits that need precise
		      resistance values that cannot be constructed from normal resistors. (Figure 1 shows various common types of
		      potentiometers).
		      
		      <br><br>
		      
		      
		      
		      A potentiometer will always have three pins, where two are connected to opposite ends of a resistive material.
		      (Figure 2 illustrates how the pins are connected, in this illustration the two pins connected to opposite
		      ends of the resistive material are “A” and “C”).  The resistance between both pins is the full value of the
		      potentiometer (you probably could have deduced this, as by inspection current travels through the entire length
		      of the resistive material).
		      
		      <br><br>
		      <cf_imagebox align="left" path="P16files/diagrama.svg" width="300px" caption="Fig. 2 potentiometers">
		      <br><br>
		      
		      The third pin of the potentiometer (“B” in figure 2), is connected to the “wiper” element.  This element
		      makes contact with the resistive material, but at any point along the material (the mechanical dial is what
		      moves the “wiper” along the resistive material).  If you were to use a multimeter to measure resistance between
		      points “B” and “C”, you would see a value that could range anywhere from the full value of the potentiometer
		      to very close to zero (about 10 Ohms or so) all according to the position of the wiper.  This happens because,
		      as you move the wiper, you ether increase or decrease the length of the path between pins “B” and “C” (and
		      similarly from pins “A” to “B”).  Increasing the length of the path between the pins means current has to travel
		      through more resistive material, and thus a higher overall resistance (likewise decreasing the path,
		      decreases resistance).
		      

		      <br><br><br><br>
		      <cf_imagebox align="right" path="P16files/circuit_diagramnew.svg" width="300px" caption="Fig. 3 Voltage Divider Circuit">
		      <br><br>
		      
		      Figure 3 shows the voltage divider we will be using for this circuit.  It might not intuitively look like a voltage
		      divider you are familiar with from other projects but it functions identically. We will take a little bit of time to
		      explain how the circuit functions.  Vout for this circuit will be the line connected to the analog input of our chipKIT
		      board. This line will transmit the signal that will vary in voltage from 0V to 3.3V, and will determine the brightness
		      of the LED.  In figure 3 the pin labels are equivalent to those in figure 2.
	
		      <br><br>
		      Figure 4a shows a different way of thinking about this circuit.  Imagine when the potentiometer is dialed all
		      the way to the left (the wiper is very close to the start of the resistive material). Since the path between the 3.3V
		      source and the Vout (pins “A” and “B”) is very short, there is very little resistance, and thus a very minimal voltage
		      drop between these two points. Since the potentiometer is the only component between source and ground, the voltage drop
		      across the rest of the potentiometer has to equal the voltage source minus the voltage drop from pins “A” to “B”.
		      
		      		      <br><br>
		      <cf_imagebox align="left" path="P16files/voltdiva.svg" width="300px" caption="Fig. 4a Voltage Divider Circuit">
		      <cf_imagebox align="right" path="P16files/voltdivb.svg" width="300px" caption="Fig. 4b Voltage Divider Circuit">
		      <br><br>
	
		      
	
	
	
	</span>
	</td>
	</tr>
	
	
	
      
    </table>
      
      
    <cf_Box Color="putty">   
    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H1">Step 1 setting up the circuit:</span><br><br>
      
      </td>
      </tr>
      <tr>
      <td align="center">
	
    	  <img src="P16files/Circuit_diagram.svg">
	  <div class="TB-FIGURES">
	  Fig. 4 Circuit diagram.
	  </div> 
	  <br><br>
    
      </td>
      </tr>
      </table>
      
      <table class="TBLAYOUT">
      <tr>
      <td>
      	    <span class="TB-BODY">
	    <ol>
	    <li> Place the potentiometer dial so that it spans the gap between rows in the breadboard (as per figure 4).  Note that potentiometers can come
	    in various configurations, and some have all pins located on the same side (Figure 5 shows the alternate configurations).  It is only important to make
	    sure that each pin occupies its own row.</li>   
	    <li> Place two 10k&Omega; resistors so that one end of each resistor is connected to pin A of the potentiometer. (these resistors will be connected in
	    parallel so their equivalent resistance is equal to 5k&Omega;,  this is done because a 5k&Omega; resistor is not a common size of resistor, as opposed
	    to a 10k&Omega; which is).</li>
	    <li> Using a wire, connect a wire from the 5V pin of the chipKIT board to a row in the breadboard. Then connect the other end of the two resistors to
	    this same row. This row will now be designated the <b>5V row</b>. </li>
	    <li> Using a wire, connect from the chipKIT GND pin the pin B of the potentiometer. The breadboard row that pin B of the potentiometer connects to
	    will be designated as the <b>Ground row</b>.</li>
	    <li>Place a 330 &Omega; resistor so that one end is connected to the Ground row.</li>
	    <li>Place a LED into the breadboard. Connect the cathode (short end) of the LED is connected to the end of the 330 &Omega; resistor not connected to the Ground row.</li>
	    <li>Using a wire, connect the anode (long end) of the LED to pin 7 of the chipKIT board.</li>
      
	    </ol>
	    </span>
      </td>
      <td width="20px">
      </td>
      	<td align="right">
	
	<img src="P16files/potentiometer_alt_examp.svg">
	<div class="TB-FIGURES">
        Fig. 5 Alternate potentiometer pin configuration.
        </div> 
      
      
      
      
      
      </td>
      </tr>
    </table>
    </cf_Box>
    <br><br>
    
    <table class="TBLAYOUT">
      <tr>
      <td>
      
      <span class="TB-H2">Software</span><br><br>
      </td>
      </tr>
      <tr>
      <td>
      <span class="TB-BODY">
      Before going through the software sketch, we will first discuss how chipKIT reads and writes analog signals.
      <br><br>
      You are probably familiar with <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> function from project 14 (if not, you can review the project for a description of PWM signaling).
      When you call <span class="TB-KEYWORD2">analogWrite</span><span class="TB-BLACK">()</span> on a specific pin it will start to transmit a PWM signal on that pin. This function takes a value between 0 and 255,
      where zero represents a duty cycle of 0% and 255 represents 100% (duty cycle is a percentage of the max output voltage). 
      <br><br>
      While this is not quite a true analog output, supplying an average voltage to a LED is good enough to change its brightness. Remember in project 6: trainable delay,
      when a button bounce occurred, it would cause the LED to toggle on/off rapidly. The LED in these instances would appear dim, because the average voltage supplied to it was much
      less 3.3V.
      <br><br>
      The <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> function like it name suggests will convert a signal from one of the analog pins (all of the pins on the chipKIT board that are labeled
      with an “A” in front of them), to a numerical (digital) value. ChipKIT boards use 10 bit analog to digital converters (ADCs), so an analog value will be quantized
      to one of 1024 (2<sup>10</sup> = 1024) values. 
      <br><br>
      When a continuous value signal (like an analog signal) is “quantized” it only means that its value is restricted to a discrete number of levels.  For example,
      if you had an analog signal that could range from any value between 0V and 8V, and you only had 8 discrete levels.  An analog signal with a level of 6.2V would map
      to 6 (the closest discrete level).
      <br><br>
      The <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> function will correlate the number 1024 to the max reference voltage (and likewise 0 for 0V).  The max reference voltage is set with the <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span>
      function. Most often you will specify <span class="TB-LITERAL1">DEFAULT</span> as the parameter when calling this function, (this designates the max reference voltage as 3.3V ). It is important to note 3.3V
      is the max voltage that can be applied to a chipKIT analog input. You can also use the <span class="TB-LITERAL1">EXTERNAL</span> parameter, which specifies that the reference voltage is taken
      from a physical pin (in Max32 this is pin 44, but this will change from chipKIT board to chipKIT board, so reference the boards manual).
      <br><br>
      </span>
      
      </td>
      </tr>
    </table>
    
    <cf_Box Color = "putty">
    
    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H1">Step 2 setting up the software:</span><br><br>
      </td>
      </tr>
      
      <tr>
      <td>
      <span class="TB-BODY">
      The software sketch for this project is very straight forward. 
      <br><br>
      The setup portion of the sketch simply sets the ADC reference value to DEFAULT (which is 3.3V), and sets the pin mode of the LED to an output. Note that you do not need to set the mode of analog input pins (unless you are going alternatively use them as a digital pin).
      <br><br>
      The main loop of the program will simply read from the analog pin, scale that value so it is within 0 to 255, and then write back to the LED pin.
      <br><br>
      The scaling function may need some explanation if you are unfamiliar with explicitly type-casting a variable.
      <br><br>      
      <code>valueGlb = (int)((float)valueGlb * scaleFactorGlb);</code>
      <br><br>
      Since valueGlb is an integer variable it has to be explicitly type-cast as a float in order to multiply it by the scale factor variable. Since the result of this multiplication will be a floating point number, it then has to be type cast again back to an int so it can be stored in valueGlb. 
      <br><br>
      Once implemented turning the dial on the potentiometer will set the brightness on the LED.
      <br><br>
      </span>
      
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


      </td>
      </tr>
    </table>
    </cf_Box>


    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H1">Summary</span><br><br>
      
      </td>
      </tr>
    </table>
    
    
    
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
            <li>Potentiometers.</li>
            <li>Variable resistance voltage dividers.</li>
            
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
      
      
      
      </td>
    </tr>
    
    </table>
    
    
    
  </cf_Box>  
  </body>
</html> 



