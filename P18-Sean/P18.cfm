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
	  <span class="TB-PROJECTTITLE">Project 18: <br>Servo Control Incorporating Potentiometer Input</span><br><hr>
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
	  In the last project we learned how to use a chipKIT board to control a servo motor.  In that project the servo was controlled by
	  two "four port" push buttons.  One button rotated the servo shaft left, and the other rotated the servo shaft right.  This project
	  will extend project 17 by replacing the two push buttons with a potentiometer dial.  The dial will then control the position
	  of the servo shaft.
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
                  <th scope="col" width="50%">&nbsp;</th>
                  <th scope="col" width="20%">&nbsp;</th>
		  <th scope="col" width="20%">&nbsp;</th>
              </tr>
            </thead>
            <tbody>
    
		<tr>
		  <td class="qty">1</td>
		  <td>Potentiometer dial (resistance range from 10&Omega; to 10k&Omega;</td>
          	  <td align="center" class="image"><img src="P18files/potmt.png"></td>
		  <td align="center" class="image"><img src="P18files/potentiometer_trimmerbig.svg">  </td>
		</tr>
		
		
		<tr>
		  <td class="qty">2</td>
		  <td>10k&Omega; resistors</td>
          	  <td align="center" class="image"><img src="P18files/10kresistor.png"></td>
		  <td align="center" class="image"><img src="P18files/resistor_10Ka.svg"></td>
		</tr>
               
		<tr>
		  <td class="qty">1</td>
		  <td>Tower Pro SG92R servo</td>
          	  <td align="center" class="image"><img src="P18files/sg92r_servo_small.png"></td>
		  <td align="center" class="image"><img src="P18files/servo.svg"></td>
	  	</tr>
               
		<tr>
		  <td class="qty">1</td>
		  <td>Six pin Header and Gender Changer (optional)</td>
          	  <td align="center" class="image"><img src="P18files/Tile_1x6header_110.png"></td>
		  <td align="center" class="image"></td>
		</tr>
		
		<tr>
		  <td class="qty">6</td>
		  <td>Connecting wires</td>
          	  <td align="center" class="image"><img src="P18files/wire.gif"></td>
		  <td align="center" class="image"><img src="P18files/FritzWire.svg"></td>
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
        <span class="TB-H1">Theory</span><br><br>
	
	
        <span class="TB-BODY">
	Before setting up the circuit a brief description of the components used for this project will be given.</span><br><br>
	
	
	<span class="TB-H2">Servo</span><br><br>
	<span class="TB-BODY">
	The servo used for this project will be a SG92R that has an angle range between 0 and 180 degrees and operates on voltages
	between 4.8V to 6V.  If you are unfamiliar with servos and how they operate, you can reference project 17 for a complete description
       (the setup for the servo portion of this project will be similar to project 17).</span><br><br>
	
	
	
      </td>
      </tr>
      <tr>
      <td>
	
	<span class="TB-H2">Potentiometer dial:</span><br><br>
	
      </td>
      </tr>
    </table>
    
    
    <table class="TBLAYOUT">

      <tr>
      <td align="center">
	<img src="P18files/potent.svg">
	<div class="TB-FIGURES">
        Fig. 1 Potentiometer dial.
        </div> 
	
	
      </td>
      <td width="30px">
      </td>
      <td align="center">
      	<img src="P18files/diagram.svg">
	<div class="TB-FIGURES">
        Fig. 2 Potentiometer diagram.
        </div> 
      
      
      
      </td>
      </tr>
     </table>
     
     
     <table class="TBLAYOUT">
      <tr>
      <td>
	
	<span class="TB-BODY">
	In short, a potentiometer is simply a resistor that can change its resistance value according to the position of a mechanical dial.  Potentiometers
	have three ports (see figure 1), and usually only two ports are ever used.  If you were to measure the resistance between port A and C
	(in figure 1 or 2) with a multi-meter, you would read the full value of the resistor (if the potentiometer had a range between 10 &Omega;
	and 10k &Omega; like the one used for this project, it would read 10 k&Omega;s of resistance). Now if you measured between ports A and B, you would
	probably see a value less than the full value.  If you rotate the dial to the left all the way, you can see the resistance value fall to its minimum
	value (10 &Omega;s in our case).  Likewise moving the dial all the way to the right, you should observe the maximum resistance value.
	
	<br><br><br><br>
	</td>
	</tr>
	<tr>
	<td>
	  <span class="TB-H2">Voltage divider circuit:</span>
	</td>
	</tr>
	
      </table>
      
      <table class="class="TBLAYOUT">
	<tr>
	<td>
	
	<span class="TB-BODY">
	Using this potentiometer we can construct a variable resistance voltage divider circuit.  The circuit is designed to produce a range of voltages from 0V to 3.3V
	that relates to the position of the potentiometer dial.  The chipKIT board will read this voltage level and can correlate it to an angle.
	<br><br>
	Now looking at figure 3, Vout will be the point in the circuit that will connect to our chipKIT board.
	<br><br>
	The governing equation for this circuit is:
	<br><br>
	<img src="P18files/goveq.svg">
	<br><br>
	So you can see when: <br><br>
	
	Rp = 10&Omega; ,  Vout = 9.98mV <br><br>
	
	and <br><br>
	
	Rp = 10k&Omega;,  Vout = 3.3V <br><br>
	</span>
	
	</td>
	<td width="50px">
	</td>
	<td align="center">
	
	
	  <img src="P18files/circuit_voltdiv.svg">
	  <div class="TB-FIGURES">
	  Fig. 3 Variable resistance voltage divider circuit.
	  </div> 
	  <br><br>

      </td>
	
      </tr>
      
    </table>
      
      
      
    <cf_Box Color="putty"> 
    <!--   STEP 1   --->
    <table class="TBLAYOUT">
    
      <tr>
	<td>
        <span class="TB-H1">Step 1: Setting up the circuit</span><br><br> 
	</td>
	</tr>
	<tr>
	<td align="center">
      
        <img src="P18files/Circuit_test_bb_new.svg">
	<div class="TB-FIGURES">
        Fig. 4 Circuit Diagram.
        </div> 
      
	</td>
	</tr>
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
	    <li> Using a wire connect the “power” line of the servo to the 5V row in the breadboard. (See figure 6 for a line break out of the servo, and figure 7 for the color code of the servo lines).
	    Also note you could use a gender changer here to connect the servo to the breadboard, or just connect straight to the servo via a male to male cable.</li>
	    <li> Using a wire, connect from the chipKIT GND pin the pin B of the potentiometer. The breadboard row that pin B of the potentiometer connects to
	    will be designated as the <b>Ground row</b>.</li>
	    <li> Now connect the “ground” line of the servo to the Ground row. </li>
	    <li> Using a wire, connect from pin A of the potentiometer to the A0 pin on the chipKIT board.</li>
	    <li> Now connect the “control” line of the servo to pin 9. </li>

	    </ol>
	    </span>
	</td>
	<td width="10px">
	</td>
	<td align="center">
	
	<img src="P18files/potentiometer_alt_examp.svg">
	<div class="TB-FIGURES">
        Fig. 5 Alternate potentiometer pin configuration.
        </div> 
	
	<br><br>
	
	<img src="P18files/servo_exp.svg">
	<div class="TB-FIGURES">
        Fig. 6 Servo pin out.
        </div> 
	
	<img src="P18files/colorcode.svg">
	<div class="TB-FIGURES">
        Fig. 7 Servo color code.
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
	The software sketch will be using the <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> and <span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span> similar to project 16, Potentiometer controlled LED brightness.
	<br><br>
	A quick review if you are unfamiliar. 
	<br><br>
	ChipKIT uses a 10 bit analog to digital converter, so it will quantizes an analog input to one of 1024 levels (2<sup>10</sup> = 1024).  I.e. when you call <span class="TB-KEYWORD2">analogRead</span><span class="TB-BLACK">()</span> it will map the input to a number from 0 to 1023, where 0 relates to 0 voltage, and 1024 relates to the max reference voltage.
	<br><br>
	<span class="TB-KEYWORD2">analogReference</span><span class="TB-BLACK">()</span> sets that max analog voltage level.  For our project we will be using <span class="TB-LITERAL1">DEFAULT</span> value which for chipKIT boards is 3.3V.
	</span>
      
      
	</td>
       </tr>
      </table>
	<br><br><br>
      
      
      
      <cf_Box Color="putty"> 
      <table class="TBLAYOUT">
	<tr>
	<td>
	<span class="TB-H1">Step 2: Setting up the software</span><br><br>
	</td>
	</tr>
	<tr>
	<td>
	<span class="TB-BODY">
	The software sketch for this project is very straight forward, and only uses functions discussed in previous projects. If you need a refresher about how to use the servo class and library, you can reference project 17 for an in depth explanation.
	<br><br>
	Line 32 of this sketch may need a quick explanation.<br>
	degreeGlb = <code>(int)((float)degreeGlb * scaleFactorGlb);</code>
	<br><br>
	Since degreeGlb is an integer variable it has to be explicated type cast as a float in order to multiply it by the scale factor variable. Since the result of this multiplication will be a floating point number, it then has to be type cast again back to an int so it can be stored in degreeGlb. 
	<br><br>
	Once implemented, turning the potentiometer dial will correlate directly to rotating the servo.
	</span>
	<br><br>
	
	
	
<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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

// Setup the Servo object to output on pin 9.
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
            <li>Servos.</li>
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
    
    
    
  </cf_box>  
  </body>
</html> 


