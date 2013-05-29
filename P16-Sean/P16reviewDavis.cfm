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
	  In the project “Breathing LED with Pulse Width Modulation” you built a circuit that was able to change
	  the brightness and of an LED simply by using a PWM signal. For that project the chipKIT board controlled the
	  LED without any form of input from the user. This project will build upon the previous project, now introducing
	  an element of user input by allowing manual control over the brightness of the LED.  To accomplish this we will
	  introduce a new component called a potentiometer. With this component we can create a voltage divider circuit that
	  <!--Removed: through the chipKIT board--> <!-- This line breaks the flow of the sentence. I would remove it. Mabey add a sentence or two clarifying the LED brightness will not be directly controlled by the pot, but instead the pots value will be read and used to scale the PWM value that controls the brightness -->
	  can control the brightness of our LED.
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
		  <td>Potentiometer dial (resistance range from 10&Omega; to 10k&Omega;)</td>
		  <td align="center" class="image"><cf_imagebox align="center" path="P16files/potentiometer_trimmerbig.svg" width="100px">
		  </td>
		</tr>
		
		
		<tr>
		  <td class="qty">1</td>
		  <td>220&Omega; resistors</td>
		  
		  <td align="center" class="image">
		  <cf_imagebox align="center" path="P16files/resistor_220.svg" width="100px">
		  </td>
		</tr>
               
		<tr>
		  <td class="qty">1</td>
		  <td>LED</td>
		  <td align="center" class="image"><cf_imagebox align="center" path="P16files/LED_red.svg" width="40px"></td>

	  	</tr>
              
		
		<tr>
		  <td class="qty">6</td>
		  <td>Connecting wires</td><!-- Do we need to list connecting wires in the inventory? It is inconsistent with our old projects, but an easy fix if we want to start doing it. You might want to ask John about it.-->
		  <td align="center" class="image"><cf_imagebox align="center" path="P16files/FritzWire.svg" width="100px"></td>
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
        <span class="TB-BODY">
		      <br>
		      
    		      Before we can start controlling our LED, we need a way to tell the chipKIT
		      board the desired level of brightness.  In order to do this, we need to construct a voltage divider circuit.
		      Such a circuit will output a voltage <!-- Removed: (a signal that will vary in voltage level, as opposed to a
		      digital signal that simply turns on or off) to the chipKIT board’s analog input pin. This signal--> that will
		      vary from 0V to 3.3V. The chipKIT board will read the voltage with an analog input pin and scale the
		      brightness level appropriately.  I.e. a 3.3V signal would represent 100% brightness, a 1.65V signal would
		      represent 50%, and 0V signal represent 0% brightness.
  
        </td>
        </tr>
        
      
      
     <table class="TBLAYOUT">
      <tr>
      <td valign="top">
      <span class="TB-BODY">		      
		      
		      <br>
		      To construct this voltage divider circuit we will need a component called a potentiometer.
		      A potentiometer can be simply thought of as a resistor that changes its resistance value
		      according to the position of a mechanical dial or screw.
				<!--Removed:, (which in turn moves an internal component called a “wiper”).--> <!--I think you should introduce the "wiper" at the same time you introduce the third pin.-->
		      Potentiometers are used in all sorts of consumer electronics;
		      volume knobs on stereos, or light dimmer switches you find in your home, are some common
		      applications. <!--Removed: Potentiometers are often used in electrical circuits that need precise 
		      resistance-->They are also handy in situations where precise resistance values cannot be constructed from normal resistors. (Figure 1 shows two different
		      types of common potentiometers).
		      
		      <br><br>

		      A potentiometer will always have three pins, where two are connected to opposite ends of a
		      resistive material, Fig. 2. illustrates how the pins are connected.
			  
			 <!--Removed: , in this illustration the two pins connected to the opposite ends of the resistive material are “A” and “C” 
	
		      The resistance value between both pins is the full value of the potentiometer, which for our
		      project is 10k&Omega; -->
			  From Fig. 2. it is easy to see pins "A" and "C" are separated by the greatest length of resistive material. This means the resistance measured across both will always be the maximum value of the potentiometer.
			  In our project the max resistance is 10k&Omega;.
			  
			  <!--Removed: (you probably could have deduced this, as by inspection current travels through the entire length of the resistive material).-->
		      
		      <br><br>
		      

		      The third pin of the potentiometer (“B” in figure 2), is connected to the “wiper” element.
		      This element makes contact with the resistive material and can be repositioned by rotating the mechanical dial. 
			  <!-- Removed: , but at any point along the material(the mechanical dial is what moves the “wiper” along the resistive material).-->   If you were
		      to measure the resistance between points “B” and “C”, you would see a value
		      that could range anywhere from 10k&Omega; to about 10 Ohms.  <!--Removed: the full value of the potentiometer to very close to zero
		      (about 10 Ohms or so) all according to the position of the wiper.-->
		      
		      This happens because as you move the wiper, you ether increase or decrease the length of the current path between pins
		      “B” and “C” (and similarly from pins “A” to “B”).  Increasing the length of the path between
		      the pins means current has to travel through more resistive material, and thus a higher
		      overall resistance (likewise decreasing the path, decreases resistance).
		      
		      
		      
		      </span>
		      </td>
		      <!-- spacer  --->
		      <td width="25px">
		      </td>
		      <td>
		      
		      <cf_imagebox align="right" path="P16files/potexmp.svg" width="400px" caption="Fig. 1 potentiometers"><!-- name the figure somthing more descriptive like "Types of potentiometers"-->
		      
		      <cf_imagebox align="right" path="P16files/diagrama.svg" width="350px" caption="Fig. 2 potentiometers"><!-- name the figure somthing more descriptive like "How a potentiometer works"-->
		      
		      
	</td></tr>
	</table>
	<br><br>
	<table class="TBLAYOUT">
	  <tr>
		<td>
		<span class="TB-BODY"> 
			<!-- It made more sense to me to move this paragraph up here -->
			Figure 3 shows a schematic diagram of the voltage divider we will be using for this circuit.
		      In the past, if you ever constructed a voltage divider you probably just used two fixed resistors,
		      (were the output of the circuit was measured at the point between the two resistors).  This
		      circuit here may not look similar but functions identically.
		</span>
		</td>
	  </tr>
	  <tr><td>
		   

		      
		      <cf_imagebox align="left" path="P16files/circuit_diagramnew.svg" width="300px" caption="Fig. 3 Voltage Divider Circuit">
		      </td>
		      <td width="25px">
		      
		      <td>
		      <cf_imagebox align="left" path="P16files/voltdivb.svg" width="300px" caption="Fig. 4 Voltage Divider Circuit">
		      <br><br>
		      
		      
		      </td></tr>
		      </table>
		      <table class="TBLAYOUT">
		      
		      <tr><td>
		      <span class="TB-BODY"> 
		     <!-- Moved: Figure 3 shows a schematic diagram of the voltage divider we will be using for this circuit.
		      In the past, if you ever constructed a voltage divider you probably just used two fixed resistors,
		      (were the output of the circuit was measured at the point between the two resistors).  This
		      circuit here may not look similar but functions identically. -->
	
		      Figure 4 helps to illustrate the functionality of the voltage divider. In this figure the wiper element
		      is set directly in the middle of the resistive material. Recall Ohm’s law were Voltage = Current &lowast; Resistance.
		      If you hold current constant, than voltage (i.e. the voltage drop across a resistor), becomes a product of
		      varying resistance. In our voltage divider circuit current is always constant. Current travels from <!--the 3.3V
		      source through the entire length of resistive material--> pins "A" to "C" regardless of the position of the wiper. <!--, and then directly
		      to ground (-->Very little if any current splits off through pin "B", so we can ignore it. This means when
		      we move the wiper, we only change the resistance value in the circuit divider. <!-- Removed: This in turn changes the voltage drop
		      between the two points proportionally, and --> Ultimately this changes the voltage drop between pins “A” and “B” as well as “B” and “C”.  
			  Thus we can vary the output of our voltage divider circuit.
		      
		     
		
		
		
		</span>
	</td>
	</tr>
      
    </table>
    <br><br><br>
      
      
    <cf_Box Color="putty">   
    <table class="TBLAYOUT">
      <tr>
      <td>
      <span class="TB-H1">Step 1 setting up the circuit:</span><br><br>
      
      </td>
      </tr>
      <tr>
      <td align="center">
	  <cf_imagebox align="center" path="P16files/overallcirc.svg" width="600px" caption="Fig. 5 Overall Circuit.">
	  <br><br>
    
      </td>
      </tr>
      </table>
      
      <table class="TBLAYOUT">
      <tr>
      <td>
      	    <span class="TB-BODY">
		
		<ol>
		<li> Place the potentiometer so that it spans the gap between columns in the breadboard (as per figure 5).
		It is important to note that potentiometers can come in various configurations; some have all pins located on
		the same side (Figure 6 shows an example). Ether configuration works fine, just make sure that each pin occupies its own column.</li>
		
		<li> Now with a wire, connect from pin “A” of the potentiometer to the 3.3V pin of the chipKIT board. (The potentiometer pins are
		labeled identically to our explanation in the theory section). </li>
		
		<li> Connect from pin “C” of the potentiometer to the GND pin of the chipKIT board. The column that pin “C” occupies will from now on be called the <b>Ground column</b>. </li>
		<li> Place a 220 &Omega; resistor into the breadboard so that one end of the resistor is connected to the ground column.</li>
		<li>Connect the cathode (short end) of a LED to the end of the 220 &Omega; resistor not connected to the ground column. Then with a
		wire connect the anode (long end) of the LED to chipKIT pin 7.</li>
		<li>Finally with a wire connect pin “B” of the potentiometer to the A0 pin of the chipKIT board.</li>
	 
	    </ol>
	    </span>
      </td>
      <td width="20px">
      </td>
      	<td align="right">
	
	<img src="P16files/potentiometer_alt_examp.svg">
	<div class="TB-FIGURES">
        Fig. 6 Alternate potentiometer pin configuration.
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
	    
	    <tr><td>
	    <span class="TB-BODY">
      
		Before going through the software sketch, it is important to first discuss how chipKIT will read analog signals. 
      
		<br><br>
      
		You are probably familiar with <code>analogWrite()</code> function from the “Changing Color of Tricolor LED”, or “Breathing LED”
		projects.  The function simply transmits a PWM signal, where the input parameters specify the output pin,
		and duty cycle of the signal. 
  
		<br><br>
    
		You may though, not be familiar with the <code>analogRead()</code> function. Like it name suggests, this function will convert a
		signal received on one of the analog pins (analog pins on chipKITs board are preceded with an “A” to distinguish them
		from digital pins) to a numerical value. 
	
	        <br><br>
     
		ChipKIT boards use 10 bit analog to digital converters (ADCs), so analog values will be approximated to one of 1024
		values (2<sup>10</sup> = 1024).
		
		This type of approximation is known as signal "quantization". <!-- Added -->
		
		When a continuous signal (like an analog signal) is “quantized” it only means that its
		value is restricted to a discrete number of levels. For example, if you had an analog signal that could range from
		any value between 0V and 8V, and you only had 8 discrete levels. An analog signal with a level of 6.2V would
		map to 6 (the closest discrete level). 

	        <br><br>
     
		The <code>analogRead()</code> function assigns the number 1024 to the max reference voltage (and likewise 0 for 0V). The
		max reference voltage is a value set with the <code>analogReference()</code> function. Most often you will specify <code>DEFAULT</code>
		as the parameter when calling this function, on chipKIT boards this designates the max reference voltage as 3.3V . 
     
		<br><br>
     
		Sometimes it may be usefull to use the <code>EXTERNAL</code> parameter for analogReference(). This specifies the reference voltage
		to be taken from a physical pin rather than an internal reference (in Max32 this is pin 44, but this will change from
		chipKIT board to chipKIT board, the exact pin can be found in your boards reference manual).

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
	    Once all of the functions in this sketch are understood, the actual length of the sketch is quite minimal.<!--Rephrase this so it is not in passive voice-->
		 
      
	    <br><br>
	    The setup portion of the sketch simply sets the ADC reference value to <code>DEFAULT</code> (which is 3.3V), and sets the
	    pin mode of the LED to an output. Note that you don’t have to call pin mode for analog input pins (unless you are going
	    alternatively use them as a digital pins). 

	    <br><br>
	    The main loop of the program will simply read from a value from the analog pin, and scale it so it is within 0 to 255. This value is then written to the LED pin. 

	    <br><br>
	    The scaling function may need some explanation if you are unfamiliar with explicitly type-casting a variable. 
  
	    <br><br>
	   <pre class="brush: mpide; gutter: false;"> valueGlb = (int)((float)valueGlb * scaleFactorGlb); </pre> <!-- remove slide bar arrows for this line,    when I find out how, I will -->

	    <br><br>
	    Since valueGlb is an integer variable it has to be explicitly type-cast as a float in order to multiply it by the scale factor variable (which is a <code>float</code> variable).
	    Since the result of this multiplication will be a floating point number, it then has to be type cast again back to an <code>int</code> so it can be stored in valueGlb. 


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



