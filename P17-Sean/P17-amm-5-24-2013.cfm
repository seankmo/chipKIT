<html>
  <head>
    <title>Servo Control with Servo Library</title>
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
	  <span class="TB-PROJECTTITLE">Project 17: <br>Servo Control with Servo Library</span><br><hr>
	  </td>
	</tr>
    </table>
    
    <br><br>
    

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
	  While most projects in this tutorial series have covered the control of LEDs, another common and useful application for microcontrollers is motor control.
	  Microcontrollers can conveniently regulate the speed and position of a motor and are easy to implement (most modern toys, like remote-controlled cars, contain a basic
	  microcontroller to regulate their speed). The alternative to using microcontrollers is a complicated, entirely analog circuit.  Such a circuit is difficult to
	  understand without an advanced understanding of electronics.   

	  <br><br>

	  This project implements a servo control circuit that will use the chipKIT board to read button presses and move the position of a servo’s motor shaft accordingly.
	  A servo is a special type of motor designed to align its motor shaft (the portion of the motor that will physically rotate) to the exact orientation according
	  to the value of an input signal. This is opposed to a normal electric motor that will rotate a shaft at a constant rate once turned on.

	  <br><br>

	  More precisely, the project will use two buttons; one button to tell the servo to rotate left, and the other to tell it to rotate to the right. The MPIDE servo library will handle all
	  of the low level tasks needed to control the servo. This simplifies our project immensely. It allows us to only worry about the position of the servo,
	  and not all of low level tasks the chipKIT board needs to conduct to accomplish positioning the motor.
	  <br><br>
	  </span><br>
	  
	  </td>
	</tr>
    </table>
    
     
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
		  <td class="qty">2</td>
		  <td>Four-port buttons</td>
          	  <td align="center" class="image">
		  <img src="P17files/PushButton.svg">  </td>
		</tr>
		
		
		<tr>
		  <td class="qty">2</td>
		  <td>10k&Omega; resistors</td>
          	  <td align="center" class="image">
		  <img src="P17files/resistor_10Ka.svg"></td>
		</tr>
               
		<tr>
		  <td class="qty">1</td>
		  <td>Tower Pro SG92R servo</td>
          	  <td align="center" class="image"><img src="P17files/servo.svg"></td>
	  	</tr>
		
		<tr>
		  <td class="qty">9</td>
		  <td>Connecting wires</td>
          	  <td align="center" class="image"><img src="P17files/FritzWire.svg"></td>
		</tr>
	    
	    	<tr>
		  <td class="qty">1</td>
		  <td>Six pin Header and Gender Changer (optional)</td>
          	  <td align="center" class="image"><img src="P17files/Tile_1x6header_110.png"></td>
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
        <span class="TB-H1">Basic Theory</span><br><br>
        <span class="TB-BODY">
        As we mentioned above, a servo is a specialized type of motor used for positioning.  Most servos have a set range
		of motion in which their motor shafts can rotate. (This range is normally any point within a 180 degree arc.)
		While there are many readily available servos that have ranges of 60, 90, and even 360 degrees (360 degree servos
		can rotate continuously, but very slowly), this project uses an SG92R servo that only has an angle span of 180 degrees.

	<br><br>

	Servos sacrifice the ability to rotate freely for increased accuracy. With a normal electric motor (like
	what you might find in a toy car), if you tried to rotate the motor’s shaft exactly 90 degrees, it is more likely
	that you will overshoot or undershoot the desired position. 

	<br><br>

	In general, a normal electric motor is designed to run continuously (typically the motor shaft completes hundreds
	of revolutions in a single second) and does not perform well at very short distances (under a single revolution).
	A normal electric motor is an on/off device (i.e., the motor is turned on when a correct voltage is applied),
	so positioning the motor is a matter of turning the motor “on” for the correct amount of time.  Achieving correct
	timing can be somewhat difficult and is what leads to undershooting or overshooting the position. 

	<br><br>

	Servos behave in the opposite fashion. A servo aligns its motor shaft according to the value of an input signal.
	For example, if the servo receives a signal representing 90 degrees (servos accept pulse-width modulation, or PWM, signals, which will be discussed later),
	it moves the motor shaft to the 90 degree point on the device. This targeted approach is what increases the accuracy in
	positioning the motor shaft.  

	</span>
        </td>
      </tr>
    </table>
    <br><br>
    
    
    <table class="TBLAYOUT">  
      <tr>
	<td>
	  <span class="TB-BODY">   
	   Upon examining the SG92R servo, you will see that it has three input wires.
	  <br><br></span>
	</td>
      </tr>
      <tr>
	<td valign="bottom">
	  <span class="TB-BODY">
	  <ul>
	    <li>Red:  Power</li><br>
	    <li>Brown: Ground</li><br>
	    <li>Orange: Control</li><br>
	  </ul>
	  </span>
	  <br><br>
	</td>
	<td>
	
	
	<img src="P17files/sg92r_servo_2_sized2.png">
	<div class="TB-FIGURES">
        Fig. 1 SG92R servo.
        </div> 
	
	
	
	</td>
      </tr>
      </table>
      <br><br><br>
      <table class="TBLAYOUT">
     
      <tr>
	<td>
	<span class="TB-BODY">
	  The &ldquo;power&rdquo; line is exactly what its name suggests. This line needs to be connected to the positive terminal of a voltage source in order to power the servo. The power line accepts a small range of voltages between 4.8V and 6V,where the applied voltage is directly proportional to how quickly the servo can rotate. It is important to never supply a negative voltage to the power line, as it could damage the servo. A negative voltage is simply a voltage source that has a lower potential energy than ground. For chipKIT boards, a negative voltage is produced when you swap &ldquo;power&rdquo; and &ldquo;ground&rdquo; lines, which should be avoided. In this project the power line will be connected to the 5V pin of the chipKIT board.

	  <br><br>

	  The &ldquo;ground&rdquo; line is simply the ground of the servo.  This line needs to be connected to the ground of the device that is powering the servo.  For this project, since we are powering the servo via the chipKIT board, the ground line will be
	  connected to the chipKIT’s ground (GND) pin.   

	  <br><br>

	 The &ldquo;control&rdquo; line, as one might expect, is used to send a signal to the servo telling it which angle it should rotate to. The servo accepts pulse width modulation (PWM) type signals, and can determine the desired angle by the &ldquo;duty cycle&rdquo; of the signal. 

	 <br><br>

	 A quick refresher about PWM if this sounds unfamiliar.  A PWM signal will always transmit for set amount of time called a period
	 (a PWM signal used for servos, this period is around 30 to 50 ms).  At the start of this period the state of the signal is always HIGH.
	 At a point in time within the period (this point is chosen by the sender of the signal), the signal is then asserted LOW.
	 Information is conveyed to the receiver by comparing the percentage of time the signal is asserted HIGH in the period over the
	 total length of time of the period (this percentage is called “duty cycle”).  For example, given a PWM signal with a period of 50 ms,
	 if the signal is asserted HIGH for 25 ms then it would have a duty cycle of 50%.
	 <br><br>
	 Relating this to our project, when our servo receives a PWM signal that is asserted HIGH for 1000 &mu;s, the servo interprets this as an angle of
	 0 degrees (i.e. position the motor shaft at angle 0).  Conjointly, asserting HIGH for 2000 &mu;s relates to 180 degrees.  So then an angle
	 between 0 and 180 degrees can be chosen by varying the asserted HIGH time of the PWM signal between 1000 &mu;s and 2000 &mu;s.
	 <br><br>
	 While this may sound somewhat daunting at first, the MPIDE servo library will handle all of the PWM signaling for us,
	 (allowing us to simply specify a desired angle).
	 <br><br>

	</span>
	</td>
	<td width="8">&nbsp;
	</td>

	<td align="right" valign="top" width="234">
            <cf_TextbookTabs Mode="top"  NextColor="red">
	    <cf_TextbookTabs Mode="middle" Color="blue" 	NextColor="blue" Title="PWM Signaling" TabURL="addlinkhere.cfm">
	   
         </td>
      </tr>
      
    </table>
    <br><br>
    

      
    <cf_Box Color="putty"> 
    
    <table class="TBLAYOUT">
    
      <tr>
	<td>
        <span class="TB-H1">Step 1: Setting up the circuit</span><br><br> 
	</td>
      </tr>
      
      <tr>  
	<td align="center" class="image">
	  <img src="P17files/Circuitgood.svg">
	  <div class="TB-FIGURES">
          Fig. 2 Servo control circuit.
          </div>
		    
		    
	</td>
      </tr>
      <tr>
	<td>
	<span class="TB-BODY">
	Each of the following steps is referenced by the numbered icons in figure 2.
	  <ol>
	  <li>Connect the chipKIT 5V pin to the 5V bus strip.</li>  
	  <li>Connect the chipKIT GND pin to the Ground bust strip.</li>
	  <li>Connect the chipKIT 3.3V pin to the 3.3V bus strip.</li>
	  <li>Place two buttons into the breadboard so that they span the gap between columns, orient the buttons as in figure 3.
	  Like previous projects, buttons used for this project are four terminal devices. Terminals are organized into two groups,
	  were each group is electrically connected.  Figure 3 designates these groups as “A” terminals and “B” terminals.</li>
	  <li>For the Left button, connect a 10k resistor to one of the button’s “B” terminals.  Then connect the other end of the resistor to the Ground bus strip. Repeat this step for the Right button.</li>  
	  <li>Using a wire, connect one of the Left button’s “A” terminals to the 3.3V bus strip. Repeat this step for the Right button.</li>
	  <li>Using a wire, connect one of the Right button’s “B” terminals to chipKIT pin 6.</li>
	  <li>Using a wire, connect one of the Left button’s “B” terminals to chipKIT pin 7. </li>
	  <li>Connect the servo’s “control” line to chipKIT pin 9.  The servo connector is a female connector, so just use a male to male wire to connect from the chipKIT board to the servo connector. (A cable gender changer can be used here for convenience).</li>  
	  <li>Connect the “power” line of the servo to the 5V bus strip, and then connect the “ground” line of the servo to the ground bus strip. Like the servo “control” line, the power and ground connector are female connectors so use a male to male wire to connect from the chipKIT board to the servo connector.</li>
	  </ol>
	  </span>
	    
	  </td>
	  <td align="center" valign="center">
	    
	  <img src="P17files/buttonexplan.svg">
	  <div class="TB-FIGURES">
          Fig. 3 button orientation.
          </div>
	    
	  </td>
	
	
	
	</tr>
	
	
	
	
	
    </table>
  </cf_box>
  <br><br>
    
    <table class="TBLAYOUT">
      <tr>
	<td> 
	<span class="TB-H1">Libraries in MPIDE</span><br><br>
        
	</td>
      </tr>
      <tr>
	<td>
	<span class="TB-BODY">
	For this project we will use the MPIDE servo library to handle all of the PWM signaling.  Before going into the code for
	the project, we will explain what exactly a library is in MPIDE, and how to import and use them.
	<br><br>
	Libraries are commonly used in programing as a method of organizing and reusing segments of code (specifically functions
	and classes). You are probably quite familiar now with how functions are written and used.  If you were to call one of your
	own functions in a project, you understand that first you have to write the function definition and body before you can
	regularly use that function. (A function definition and body is the portion of code outside of loop() that defines what
	the function accomplishes).
	<br><br>
	Now take into consideration functions like <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span> and <span class="TB-KEYWORD2">digitalWrite</span><span class="TB-BLACK">()</span> (these are just a few examples).  We use these
	functions all the time, and yet we never have to write the function definition and body code for them. Since these functions
	are so commonly used, their function code exists within a repository called a library.  MPIDE looks through these libraries
	in addition to your program code for a functions code.  By placing the function code there, it allows us to reuse code. It doesn’t
	make sense to rewrite a function every time you start new program sketch.  So if the function acts identical to code you have already
	written, it is more practical to reuse it from sketch to sketch. 
	<br><br>
	Normally you have to tell MPIDE that you want to use a library (this is called importing) before you can access any of its functions
	in your sketch. You have probably noticed that when you start a sketch, you can automatically use functions like digitalRead or digitalWrite
	without having to tell MPIDE anything. This is because they belong to a handful of functions that are contained in a standard library. These
	functions are so common to any program sketch, that MPIDE automatically includes them.
	<br><br>
	If you want to use functions from libraries that are less common(like the servo library), you have to go through the process of
	importing them.
	<br><br>
	A library is imported by simply going to MPIDE toolbar menu and select.
	<br><br>
	<b>Sketch->Import Library</b> 
	<br><br>
	And then from the drop down menu selecting the menu you want.
	<br><br>
	This will allow you to use any function within the library in your program sketch.
	<br><br>
	</td>
      </tr>
	</span>
    </table>    
    <br><br>
    
        <table class="TBLAYOUT">
      <tr>
	<td> 
	<span class="TB-H1">Servo library</span><br><br>
        
	</td>
      </tr>
      
	<tr>
	<td>
	<span class="TB-BODY">  
	
	  Now that we know what a library is, we can describe how the servo library will help us control our device.
	  <br><br>
	  The first step in controlling a servo is instantiating a <span class="TB-BLACK">Servo</span> class object:
	  <br><br>
	  i.e.
	  <br><br>
	  <span class="TB-BLACK">Servo myServoObject;</span>
	  <br><br>
	
	  (You can follow the link at the right if you need to review classes and methods).
	  <br><br>
	  </span>
	</td>
	<td width="8">&nbsp;
	</td>

         <td align="right" valign="top" width="234">
            <cf_TextbookTabs Mode="top"  NextColor="red">
	    <cf_TextbookTabs Mode="middle" Color="red" 	NextColor="blue" Title="Classes and Methods" TabURL="addlinkhere.cfm">
         </td>
	</td>
	</tr>
	<td>
	  <span class="TB-BODY"> 
	  Once you have created your <span class="TB-BLACK">Servo</span> class object, you need to use the “attach” method to tell the chipKIT board what pin the servo object will output to (this pin provides the PWM signal that will be fed to the servo’s control line). 
	  <br><br>
	  <span class="TB-BLACK">myServoObject.attach</span><span class="TB-BLACK">(9);</span>
	  <br><br>
	  ChipKIT boards have dedicated pins for transmitting PWM signals. Because of this the attach method can only be called on specific pins (which are 3,5,6,9, and 10).  
	  Now we can actually use our servo by calling the method “write”. 
	  <br><br>
	  For example this line of code will position the servo at 90 degrees:
	  <br><br>
	  <span class="TB-BLACK">MyServoObject.write</span><span class="TB-BLACK">(90);</span>
	  <br><br>
	  Conversely if we wanted to know what angle our servo was at, the “read” method can always be used to return the value of the last “write” method called for the servo object.
	  <br><br>
	  <span class="TB-BLACK">int position = MyServoObject.read</span><span class="TB-BLACK">();</span>
	  <br><br>
	  </span>
	  
	</td>
      </tr>
      
	</table>
	
      <cf_Box Color="putty">
      <table class="TBLAYOUT">
	<tr>
	  <td> 
	  <span class="TB-H1">Step 2: Software code</span><br><br>
        
	  </td>
	</tr>
      
	<tr>
	<td>
	<span class="TB-BODY"> 
	<ul>
	  <li>Import servo library into MPIDE by selecting:<br><br>
	  <a>Sketch->Import Library->Servo</a>
	  <br><br>
	  (This is depicted in figure 4)
	  <br><br>
	  You can verify that the library was imported if you see
	  <br><br>
	  <span class="TB-BLACK">#include &lt;Servo.h&gt;</span>
	  <br><br>
	  at the very top of your code
	  <br><br>
	  (See the first line of the program code below).
	  <br><br>
	  </li>
	  
	</ul>
	</span>
	</td>
	<td width="100">&nbsp;
	</td>
	<td align="right">
	  
	  <img src="P17files/screenshot1.png">
	  
	</td>
	</tr>
      </table>
      <br><br>
      <table>
	<tr>
	  <td>
	  <span class="TB-BODY">
	    <ul>
	    <li>Now implement the following project code. The variable “degreeGlb” will represent the position of the servo at any given time.
	    The sketch will check if a user has pressed the left button and decrements the “degreeGlb” variable by the value of the “mySpeedGlb” constant.
	    (Likewise if the right button is pressed the “degreeGlb” variable is incremented in the same fashion).  After the sketch finishes checking
	    for button input it will move the servo according to the degree value.</li>
	    <br><br>
	    
	    </ul>
	    
	    <div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">   
#include &lt;Servo.h&gt; 

const int btnLGlb = 7;
const int btnRGlb = 6;  
const int mySpeedGlb = 2;

Servo myServo;
int degreeGlb;

                           
                           
                          
void setup() 
{ 
  // Set the initial position of the servo to 90 degrees.
  degreeGlb = 90;
  
  // Designate the servo to output to pin 9. 
  myServo.attach(9);
  
  pinMode(btnLGlb, INPUT);
  pinMode(btnRGlb, INPUT);
  
} 
 
void loop() 
{ 
  
   myServo.write(degreeGlb);


   // If Left button is pressed decrease the servo angle, if the right button is pressed increase it.
   if(digitalRead(btnLGlb) == HIGH){
       degreeGlb = degreeGlb - mySpeedGlb; 
   }
   else if (digitalRead(btnRGlb) == HIGH){
       degreeGlb = degreeGlb + mySpeedGlb; 
   }
 
 
 
 // If the position is outside the range of 0 or 180, then set it to the max/min bound.
 if(degreeGlb < 0){
 degreeGlb = 0;
 }
 if(degreeGlb > 180){
 degreeGlb = 180;
 }
 
 
 
   // Waits for the servo to move.
   delay(10);                            
} 
</pre>
</cf_box>
</div>
</cf_box>
</div>
	  </span>  
	  </td>
	</tr>
	
	
    </table>
	
	
    </cf_Box>
    <br><br>
    
    
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
            <li>Servo operations.</li>
            <li>PWM signaling.</li>
            <li>Libraries.</li>
            <li>Importing a library.</li>
            <li>The servo class.</li>
            </ul>
          </td>
          </tr>
	  <tr>
            <td width="20%">Functions Introduced:</td>
            <td width="80%">
              <ul>
	      <li> <span class="TB-BLACK">Servo</span></li>
	      <li> <span class="TB-BLACK">Servo.attach</span><span class="TB-BLACK">()</span></li>
	      <li> <span class="TB-BLACK">Servo.read</span><span class="TB-BLACK">()</span></li>
	      <li> <span class="TB-BLACK">Servo.write</span><span class="TB-BLACK">()</span></li>
	      
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
