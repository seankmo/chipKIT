<html>
  <head>
    <title>Button Controlled LEDs</title>
    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
  </head>
    
  <body>
    <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
      <tbody>
	<tr>
	  <td align="center" width="35%"><a href="index.cfm"><br>
	  </a></td>
	  <td align="center" width="50%"> <span class="TB-PROJECTTITLE">
	      Project 4: <br>Button Controlled LEDs</span> </td>
	  <td align="center" width="15%">&nbsp;</td>
	</tr>
	<tr>
	  <td colspan="3" align="right">
	    <hr><br>
	    <br>
	  </td>
	</tr>
      </tbody>
    </table>
    
    <table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
      <tbody>
	<tr>
	  <td valign="top">
	    <!--  Intro portion -----------------------------   --->
	    <p> <span class="TB-H1">Introduction</span></p>
	    <hr hr="" color="#2c2c2c" size="15">
            <span class="TB-BODY"><p class="MsoNormal">This project
		will demonstrate how to use buttons to turn on and off
		light emitting diodes (LEDs). You are probably already
		familiar with traditional light switches that directly
		control whether or not electrical energy is delivered
		to a light bulb. In this project, three buttons are
		used to control three LEDs, but the buttons
		are <i>not</i> directly connected to the
		LEDs. Instead, the buttons are used to establish
		voltages that are "read" via the chipKIT digital
		input/output (I/O) pins. From these voltages, we can
		determine if a button is pressed or not (i.e., we can
		determine a button's "state"). Each LED is then
		illuminated in accordance with the state of the
		corresponding button.
              </p>
	    </span>
	    <br><br>
          </td>
          <td style="width: 320px; text-align: left; vertical-align: top;">
            &nbsp;<img style="width: 279px; height: 183px;" alt="Button Controlled LED circuit" src="P04files/Overallcirc.png"><br>
            <br>
            <div class="TB-FIGURES">
	      <span style="font-style: italic;">
		Fig. 1. Button Controlled LED circuit.
	      </span>
	    </div>
          </td>
        </tr>
      </tbody>
    </table>
    
    <!--  Parts List -----------------------------   --->
    <table class="TBLAYOUT" style="width: 95%; cellpadding: 0">
      <tbody>
	<tr>
	  <td valign="top"><span class="TB-H1">Inventory:</span>
	    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br>
	    <span class="TB-BODY">
              <table style="text-align: left; width: 100%;" border="1" cellpadding="0" cellspacing="0">
		<tbody>
		  <tr>
		    <td>3 two-port buttons</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>3 LEDs</td>
		    <td><img style="width: 107px; height: 72px;" alt="LED" src="P04files/LEDreal.jpg"></td>
		  </tr>
		  <tr>
		    <td>3 330-ohm resistors</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>3 10k-ohm resistors</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>Max 32, uC32, Uno32 or other chipKIT board</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>17 connecting wires</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>USB A to mini B cable</td>
		    <td><img style="width: 111px; height: 69px;" alt="USB place holder" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		</tbody>
	      </table>
	    </span>       
	    <br><br>
	  </td>
	</tr>
      </tbody>
    </table>
    
    <table class="TBLAYOUT" style="width: 95%; cellpadding: 0">
      <tbody>
	<tr>
	  <!--  Step 1 -----------------------------   --->
	  <td>
	    <span class="TB-H1">Step 1: Setting up the LEDs:</span>
	    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br>
	  </td>
	</tr>
      </tbody>
    </table>

    <table class="TBLAYOUT" style:"width: 85%;" cellpadding="0">
      <tbody>
	    <tr>
	      <td colspan="1">
		<br>
		<table style="text-align: left; width: 85%;"
		       border="0" cellpadding="0" cellspacing="0">
		  <tbody>
		    <tr>
		      <td style="text-align: center;">
			<img style="width: 700px; height: 700px;"
			     alt="LEDsetup" src="P04files/justLEDs.png">
			<br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">
			    Fig. 2. LED configuration.
			  </span>
			</div>
		      </td>
		    </tr>
		  </tbody>
		</table>
		<br>
		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<ol>
			  <span class="TB-BODY">
			    <li>
			      Place the three LEDs in the breadboard
			      as shown in Figure 2, keeping track of
			      which of the two "legs" is the anode and
			      which is the cathode (the anode is the
			      longer leg).&nbsp;</li>
			    <li>
			      Using three wires, connect the anode of
			      one LED to pin 8, the anode of another
			      to pin 11, and another to pin
			      12.&nbsp;</li>
			    <li>
			      Now connect the chipKIT GND pin (there
			      may be multiple GND pins, so just use
			      the one closest to the 5V pin) to a bus
			      strip at the bottom of the breadboard.
			      <ul>
				<li>
				  From the perspective of Fig. 2,
				  the bus strips are the horizontal
				  rows on a breadboard that are all
				  electrically connected.  They are
				  usually separated from the main
				  section of the board and are
				  sometimes marked in red and blue.
				</li>
				<li>
				  Bus strips are normally used to
				  connect voltage supplies and grounds
				  to the breadboard, because they
				  provide easy access from other
				  points on the breadboard.
				</li>    
				<li>
				  For the rest of this project, the
				  bus strips connect to the GND pin
				  will be referred to as the ground
				  bus strip.
				</li> 
			      </ul>   
			    </li>
			    <li>
			      Now, attach one 330-ohm resistor to the
			      cathode of each of the LEDs. The other
			      ends of these resistors should all be
			      placed so that they connect to the
			      ground bus strip. This can be done by
			      placing the lead directly into the bus
			      strip, or by using a small wire to
			      connect from a column in the main
			      section of the breadboard to the ground
			      bus strip (as in Figure 2).

			      <br><br>

			      When there is a single path for charge
			      to flow through two components, (when
			      any charge that flows through one
			      component must also flow through the
			      other) then we say the components
			      are <a href="P04_KVL_KCL.html#SER"><i>in
			      series</i></a>.  Each of the three LEDs
			      in this circuit has a resistor in series
			      with it. Series resistors are used to
			      limit the current that passes through
			      their particular branches of the
			      circuit. LEDs are non-linear devices and
			      can potentially pass large amounts of
			      current when they exceed their threshold
			      voltage by small amounts. The series
			      resistor keeps the current at a safe
			      level.&nbsp; This helps to protect the
			      LEDs and chipKIT board from the
			      potential damage of drawing too much
			      current.<br>  Connecting external LEDs
			      and series resistors are discussed more
			      in depth
			      in <font color="#0000ff">Project 3:
			      Blink External LED.</font>
			      
			    </li>
			  </span>
			</ol>
			<br><br>
		      </td>
		    </tr>
		    <tr>
		      <td colspan="1"></td>
		    </tr>
		  </tbody>
		</table>

		<br><br>

		<!--  Step 2 -----------------------------   --->
		<!--  Theory -----------------------------   --->
		<table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<span class="TB-H1">Step 2: Setting up the Buttons</span>
			<hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
    
		<table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<br><br>
			<span class="TB-H2">
			  Theory: Buttons, Pull-Down Resistors, and Pull-Up Resistors
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%">
			</span>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<span class="TB-BODY">
			  Before connecting the buttons to the
			  circuit, it is appropriate to consider a bit
			  of circuit theory so that we understand how
			  buttons can be used to produce a signal that
			  is readable by the chipKIT (digital) I/O
			  pins.
			</span>
		      </td>
		      <td colspan="1"><br>
			<br>
		      </td>
		    </tr>
		    <tr>
		      <td>
			<br><br>
			<!--  button explanation -----------------------------   --->
			<span class="TB-H2">Buttons:</span>
			<hr hr="" align="left" color="#2c2c2c" size="2" width="50%"></td>
		    </tr>
		    <tr>
		      <td>
			<table style="text-align: left; width: 85%; height: 502px;"
			       border="0" cellpadding="0" cellspacing="0">
			  <tbody>
			    <tr>
			      <td style="vertical-align: top; text-align: center;">
				<img style="width: 218px; height: 238px;"
				     alt="realbtn" src="P04files/realbtnplaceholder.png">
				<br>
				<div class="TB-FIGURES">
				  <span style="font-style: italic;">Fig. 3.
				    Four-port button.
				  </span>
				</div>
			      </td>
			      <td style="text-align: center; vertical-align: middle;">
				<img style="width: 250px; height: 182px;" alt="btn diagram"
				     src="P04files/btndiagram.png">
				<br>
				<p class="MsoNormal">
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">
				      Fig. 4. Four-port button
				      schematic symbol.
				    </span>
				  </div>
				</p>
			      </td>
			    </tr>
			    <tr>
			      <td style="vertical-align: top;">
				<span class="TB-BODY">
				  If you were to examine the buttons
				  used for this project, you would see
				  that there are four distinct legs or
				  &#8220;terminals&#8221; on the
				  device (see Figure 3).&nbsp; For
				  this type of button, the terminals
				  are grouped in pairs with the top
				  two terminals of the devices being
				  electrically connected to each other
				  and the bottom two being connected
				  to each other (Figure 4).&nbsp; For
				  the purpose of our analysis, the
				  pair of terminals can be thought of
				  as just a single connection as in
				  Fig. 5.

				  <br><br>

				  So, now when the button is pressed,
				  a small piece of conductive material
				  makes a physical connection between
				  the top and bottom terminals.&nbsp;
				  This connection is what allows
				  current to flow between the
				  terminals of the
				  device. <br><br>
				</span>
			      </td>
			      <td style="text-align: center;">
				<img style="width: 145px; height: 214px;" alt="btndiagram"
				     src="P04files/btn2diagram.png"><br>
				<p class="MsoNormal">
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">Fig. 5. Two-port button
				      schematic symbol.
				    </span>
				  </div>
				</p>
			      </td>
			    </tr>
			  </tbody>
			</table>
		      </td>
		    </tr>
		  </tbody>
		</table>
		<cf_box color= "green" style="width:95%">
		  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		    <tbody>
		      <tr>
			
			<td><span class="TB-H2">Theory:</span>
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"></td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="1"><br>
			  <br>
			  <img style="width: 364px; height: 308px;" alt="btn0" src="P04files/btn0.png"><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">Fig. 6. Basic
			      button circuit with pull-down resistor pressed.
			    </span>
			  </div>
			</td>
		      </tr>
		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			    <p style="margin-bottom: 0in;">
			      <br>
			      Figure 6 shows a simple example of a
			      button circuit.&nbsp; The circuit is
			      constructed by using a wire to connect
			      the top port of the button to a 5V
			      voltage supply and the bottom port of
			      the button to a resistor. The other end
			      of the resistor is then connected to the
			      circuit's <span style="font-style:
			      italic;">ground</span>.&nbsp; Within
			      chipKIT, the 5V voltage supply is
			      synonymous with the 5V pin, and ground
			      corresponds to the GND pin.

			      <br>
			    </p>
			    <p style="margin-bottom: 0in;">
			      When the button is pressed, the physical
			      connection between two ports is in
			      place. If one was to use a multimeter to
			      measure the voltage between the point
			      above the resistor and ground, they
			      would see approximately 5 volts.<br>
			    </p>
			  </span>
			</td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="1"><img style="width: 364px; height: 308px;" alt="btn1" src="P04files/btn1.png"><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">
			      Fig. 7. Basic button circuit with
			      pull-down resistor, not pressed
			    </span>
			  </div>
			</td>
		      </tr>
		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			    <p style="margin-bottom: 0in;"><br>When
			      the button is not pressed, the physical
			      connection between the ports of the
			      button is no longer present.  This is
			      now considered to have
			      an <a href="P04_KVL_KCL.html#Open">"open"</a>
			      condition.&nbsp;An<a href="P03_KVL_KCL.html">
			      </a><a href="P04_KVL_KCL.html#Open">open</a>
			      occurs when there is no flow of current
			      between two points in the circuit (at a location that should normally
			      allow it). Since the physical path between the button ports is no
			      longer there, current
			      can&#8217;t flow between them. Measuring again at
			      the same point, the multimeter would now read approximately 0
			      volts.</p>
			    <p style="margin-bottom: 0in;"></p>
			    <p style="margin-bottom: 0in;">A resistor
			      placed as shown above in Figure 7 would
			      be considered to be
			      a <span style="font-weight:
			      bold;">pull-down resistor</span>.
			      Without it pressing the button
			      would <a style="font-style: italic;"
			      href="P04_KVL_KCL.html#Short">"short"</a>
			      the power source. A circuit is
			      considered to have
			      a <a href="P04_KVL_KCL.html#Short">short</a>
			      condition when a new path in the circuit
			      is introduced with little to no
			      resistance. Since there is little, if
			      any, opposition to the flow of current
			      in this new path, it will allow a good
			      amount (if not all) of current to pass
			      through it. Shorting in a circuit can
			      potentially cause damage to components
			      and cause incorrect circuit
			      operation.<br><br><font color="#000000"><span style="font-weight:
			      normal;"></span></font></p>
			    <p style="margin-bottom: 0in;"></p>
			    <p style="margin-bottom: 0in; font-weight: normal;"></p>
			  </span>
			</td>
		      </tr>
		      
		      <tr>
			<td>
			  <table style="text-align: left; width: 85%;"
				 border="0" cellpadding="0" cellspacing="0">
			    <tbody>
			      <tr>
				<td style="text-align: center;">
				  <img style="width: 330px; height: 240px;"
				       alt="Switch Example" src="P04files/switchExample.png">
				  <br>
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">Fig. 7a.
				      Non pressed button circuit diagram
				    </span>
				  </div>
				</td>
				<td style="text-align: center;"><img style="width: 330px; height: 240px;" alt="Switch Closed" src="P04files/switchExample2.png"><br>
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">Fig. 7b.
				      Pressed button circuit diagram
				    </span>
				  </div>
				</td>
			      </tr>
			    </tbody>
			  </table>
			</td>
		      </tr>
		      
		      
		      <tr>
			<td>
			  <span class="TB-BODY">
			    <p class="MsoNormal"><br>Another way of
			      thinking about this is to examine the
			      circuit diagrams of Figs. 7a and 7b. In
			      7a, it is easy to see that when the
			      button is not pressed, the loop formed
			      going clockwise from the voltage source
			      through the resistor is not
			      connected. Thus, it is an incomplete
			      circuit (no current is flowing through
			      the loop).  Since the open occurs before
			      the point we are measuring, there is no
			      voltage difference between that point
			      and ground, and it should measure 0
			      V. </p>
			    <p class="MsoNormal">In Figure 7b, you can
			      see that the loop is now completed when
			      the button ins pressed.  In this simple
			      circuit the resistor and voltage sources
			      are the only components in the circuit.
			      For simplicity's sake, we consider the
			      button to be an ideal component and
			      there for offers no opposition to
			      current flow when it is pressed.  The
			      concept of &ldquo;ideal&rdquo; is used
			      during circuit analysis to denote that a
			      component works exactly like its circuit
			      model predicts.  Using a button example
			      to illustrate this, the circuit model of
			      a button is what one might expect, a
			      device that when pressed completes a
			      circuit, and then while pressed acts
			      much like a wire.  In reality nothing
			      can act perfectly, components may have
			      slight variances from there
			      &ldquo;ideal&rdquo; model, although
			      these variances are often incredibly
			      small.  A button for instance offers a
			      very small amount of resistance to the
			      flow of current (and in fact even wires
			      themselves do as well), but it such a
			      negligible amount that often enough it
			      can be ignored to simplify the circuit
			      for analysis purposes.  (As we have done
			      in this case.)  </p>
			    <p class="MsoNormal"><a href="P04_KVL_KCL.html#KVL">Kirchhoff&#8217;s
				voltage law (KVL)</a> states that the
				sum of all voltages (both supplied
				voltages and voltage drops) around a
				closed loop in a circuit must be equal
				to zero. A voltage drop is defined as
				the voltage difference before and
				after a single component.  So for
				Figure 7b, if the voltage source
				supplies 5V, the voltage drop across
				the resistor must also equal 5V.</p>
			    <p class="MsoNormal"><a href="P04_KVL_KCL.html#KVL">More
				information about analyzing circuits
				using Kirchhoff&#8217;s voltage law is
				contained in this project's
				appendix.</a> </p>
			    <p class="MsoNormal">&nbsp;</p>
			    <p class="MsoNormal"></p>
			  </span>
			</td>
		      </tr>
    

		      <tr>
			<td>
			  <span class="TB-BODY">The button circuit
			    could be alternatively configured by
			    connecting one end of the resistor to the
			    power supply pin and the other to the top
			    button terminal.&nbsp; The bottom terminal
			    is then connected to
			    ground.<br><br>
			  </span>
			</td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="1"><img style="width: 364px; height: 308px;" alt="btn2" src="P04files/btn2.png"><br><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">Fig. 8. Alternative button
			      configuration, not pressed.
			    </span>
			  </div>
			</td>
		      </tr>

		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			    <p class="MsoNormal"><br> When the button
			      is not pressed, an
				<a href="P04_KVL_KCL.html#Open">open</a>
				is formed between the resistor and
				ground. While the button is in an open
				condition, current no longer flows
				from one end of the resistor to the
				other. Because of this, it follows
				that there will no longer be a voltage
				drop across the resistor. The points
				before and after the resistor are
				essentially at the same voltage
				level. Since one end of the resistor
				is connected to the 5V supply, the
				point after the resistor will measure
				the same 5 volts with respect to
				ground.
			    </p>
			  </span>
			</td>
		      </tr>
		      
		      <tr>
			<td style="text-align: center;" colspan="1"><img style="width: 364px; height: 308px;" alt="btn3" src="P04files/btn3.png"><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">Fig. 9.
			      Alternative button configuration, pressed.
			    </span>
			  </div>
			</td>
		      </tr>
		      <tr>

			<td colspan="1">
			  <span class="TB-BODY">
			    Now when the button is pressed, a complete
			    circuit is formed from the voltage supply
			    through the resistor and to ground. Since
			    the voltage drop is almost entirely across
			    the resistor, measuring at a point after
			    the resistor will measure 0 volts. This
			    configuration of resistor would be
			    considered a <span style="font-weight:
			    bold;">pull-up resistor</span>.

			    <br><br>

			    It is also important to note that with
			    this particular configuration, logic is
			    inverted. (An pressed button is
			    represented by 0 volts, where a
			    non-pressed button is represented by 5
			    volts). This is the opposite of the
			    pull-down resistor button circuit.<br>
			  </span>
			</td>
		      </tr>
		      <tr>
			<td><span style="font-weight: bold;"><br>
			  </span><br>
			</td>
		      </tr>
		    </tbody>
		  </table>
		</cf_box>

		<br><br>
    
		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    
		    <tr>
		      <td colspan="1"><span class="TB-H2">Button
			  Setup
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"></span><br>
			<br>
		      </td>
		    </tr>
		    
		    <tr>
		      <td style="text-align: center;" colspan="1">
			<img style="width: 700px; height: 700px;"
			     alt="button set up" src="P04files/Justbuttoncirc.png">
			<br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">Fig. 10. Button
			    configuration.
			  </span>
			</div>
			<br><br>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td colspan="1">
			<p style="margin-bottom: 0in;"></p>
			<!--  Part 2 actual instructions -----------------------------   --->   
			<ol>
			  <span class="TB-BODY">
			    <li>Connect the chipKIT 5V pin to a bus
			      strip close to the ground bus strip
			      (this was set up in step 1).  Note that
			      in Figure 10 the LEDs are not shown for
			      simplicity.
			    </li>
			    <li> Place buttons A , B, and C, onto the
			      breadboard as seen in Figure 10.&nbsp;
			      Most breadboards have uniform gaps
			      between columns in the main secton of
			      the board (with the board placed as in
			      Figure 10).&nbsp; The buttons used in
			      this project are large enough to span
			      these gaps and it is recommended to
			      place the buttons (with the top of the
			      button oriented to point right, similar
			      to Figure 10), so that the left and
			      right terminals connect the columns on
			      either side of the gap.&nbsp; While this
			      isn&#8217;t absolutely necessary, it
			      will provide you more room to work.<br>
			    </li>
			    <li> Using three wires, connect the top
			      terminal of each button to the 5V bus strip.&nbsp; <br>
			    </li>
			    <li> Using three more wires, connect from
			      the chipKIT digital I/O pins 5, 6 and 7
			      to the bottom terminal of buttons A, B,
			      and C.&nbsp;&nbsp;
			    </li>
			    <li>For each button, connect one end of a
			      10k-ohm resistor to the bottom terminal
			      of the button.&nbsp;</li>
			    <li>Connect the other end of each resistor
			      to the ground bus strip (you can use a
			      wire to connect from the resistor to bus
			      strip, as shown in Fig. 10, or you can
			      simply connect the end of the resistor
			      to the bus strip directly).<br>
			    </li>
			    <li>When each button is pressed, it will
			      supply 5 volts to the digital I/O
			      pin.&nbsp; The chipKIT Max32 and Uno32
			      boards are designed to recognize a range
			      from 2.4 V minimum to 5.5 V maximum as a
			      HIGH input for digital I/O pins.  (ie
			      when the software function digitalRead()
			      is called, it will return a HIGH if the
			      voltage on the pin being read from is
			      within this range).  The digitalRead()
			      function will be discussed later in this
			      project. (It is important to note that
			      the analog inputs for the Max32, and
			      Uno32 can only accept a max of 3.3
			      V).
			      <br><br>
			    </li>
			  </span>
			</ol>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    
		    <tr>
		      <td colspan="1"><br>
			<br>
			<br>
			
			<p style="margin-bottom: 0in;"><span class="TB-H2">The
			    overall circuit should appear as
			    follows:</span></p>
			<hr hr="" align="left" color="#2c2c2c" size="2" width="50%">
		      </td>
		    </tr>
		    <tr>
		      <td style="text-align: center;" colspan="1">
			<img style="width:700px; height: 700px;" alt="overallcirc"
			      src="P04files/Overallcirc.png"><br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">Fig. 11: Overall
			    Circuit
			  </span>
			</div>
			<br><br>
		      </td>
		    </tr>
		    
		    <tr>
		      <td>
			<span class="TB-BODY">
			  <br>Figure 11 illustrates the overall setup
			  of the circuit, including both buttons and
			  LEDs.<br><br>
			</span>
		      </td>
		    </tr>
		  </tbody>
		</table>


		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>

			<!--  Part 3 software  -------------------------------------------------------->
		      <td colspan="1"><span class="TB-H1">Step 3: Software
			  <hr hr="" color="#2c2c2c" size="15"></span><br style="font-weight: bold;">
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<cf_box color= "green" style="width:95%"> 
		  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		    <tbody>
		      <tr>
			<td>
    
			  <span class="TB-H2">
			    Theory: The "IF" and comparison
			    statements:
			  </span>
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%">
			  <br><br>
			  <span class="TB-BODY">
			    In order to better understand what the
			    chipKIT is doing in conjunction with
			    MPIDE, it is important to provide a brief
			    explanation of the <code>if</code>
			    conditional statements and
			    <code>digitalRead()</code> functions
			    before running the sketch. 

			    <br><br>

			    The <code>digitalRead()</code> command
			    operates much as one would surmise.&nbsp;
			    When called, the user specifies a pin
			    number in the parameters, and the function
			    will then read the electrical state of the
			    pin, and output either a HIGH or LOW
			    constant accordingly.

			    <br><br>
    
			    For example:
			    <br><br>
    
			    <code>Val = digitalRead(8);</code><br>
			    <br>
    
			    <code>Val</code> would store the result of
			    the <code>digitalRead</code> function
			    called for pin 8.&nbsp; If pin 8 sees a
			    high voltage level on the pin at the time
			    the function is called, <code>Val</code>
			    would equal HIGH, and if
			    not <code>Val</code> would equal LOW.<br>
			    <br>

			    Along with supporting all of the original
			    Arduino syntax, chipKIT sketches are based
			    on C++ syntax and thus most conventions
			    apply.<br>  An <code>if</code> comparison
			    statement syntax would be as follows:

			    <br><br>
			  </span>
			</td>
		      </tr>

		      <tr>
			<td>
			  <pre class="brush: mpide;">
if (comparison expression) {
   ... task ...
}
else {
   ... do something else ...
}
			  </pre>
			</td>
		      </tr>
		      <tr>
			<td>
			  <span class="TB-BODY">
			    Within the &ldquo;<code>if</code>&rdquo;
			    statement you can see that there is a
			    comparison expression.  A comparison
			    expression is much like a mathematical
			    equation except that it evaluates only to
			    true or false.  Like mathematical
			    expressions, which have their own set of
			    operators (i.e., <code>+</code>
			    , </code>-, <code>/</code>
			    and <code>*</code>) , comparison
			    expressions have their own set as
			    well. For example a relational operators
			    could be, &ldquo;<code>==</code>&rdquo; or
			    &ldquo;<code>!=</code>&rdquo;, which have
			    the meaning of &ldquo;equal to&rdquo; and
			    &ldquo;not equal to&rdquo; respectively.
			    Comparison expressions are formed much
			    like math equations using these operators.
			    An example of a comparison expression
			    assuming x is an int type variable, could
			    be:
			    <ol>
			      <li>
				<code>x == 0</code>
			      </li>
			      <li>
				<code>x != 0</code>
			      </li>
			    </ol>
			    In expression 1, this would evaluate to
			    true whenever the variable x would equal
			    0, and false for any other value.
			    Expression 2 would then evaluate as false
			    if x was equal 0, and true for any other
			    value. There are many more operators than
			    just &ldquo;equal&rdquo; and &ldquo;not
			    equal&rdquo;. The following table shows a
			    few of these relational operators.
			  </span>
			</td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="2">
			  <span style="color: rgb(0, 102, 0);"></span>
			  <br>
			  <table style="text-align: left; width: 100%;"
				 border="1" cellpadding="0" cellspacing="0" bgcolor="white">
			    <tbody>
			      <tr>
				<td>Equal</td>
				<td>&nbsp; <code>==</code></td>
			      </tr>
			      <tr>
				<td>Not Equal</td>
				<td>&nbsp; <code>!=</code></td>
			      </tr>
			      <tr>
				<td>Greater than</td>
				<td>&nbsp; <code>&gt;</code></td>
			      </tr>
			      <tr>
				<td>Less than</td>
				<td>&nbsp; <code>&lt;</code></td>
			      </tr>
			      <tr>
				<td>Greater than or equal</td>
				<td>&nbsp; <code>&gt;=</code></td>
			      </tr>
			      <tr>
				<td>Less than or equal</td>
				<td>&nbsp; <code>&lt;=</code></td>
			      </tr>
			      <tr>
				<td>
				  Logical AND:<br>this operator is
				  used to combined multiple comparison
				  expressions into one expression.
				  (ie if expression A is true and
				  expression B is true then the
				  overall expression is also
				  true.)
				</td>
				<td>&nbsp; <code>&amp;&amp;</code></td>
			      </tr>
			      <tr>
				<td>Logical OR:<br>Like logical
				  &ldquo;AND&rdquo;, this operator is
				  used to combined multiple
				  expressions.  An example would be,
				  if expression A is true or
				  expression B is true then the
				  overall expression is true.</td>
				<td>&nbsp; ||</td>
			      </tr>
			    </tbody>
			  </table>
			</td>
		      </tr>
		      <tr>
			<td>
			  <br>
			  <span class="TB-BODY">
			    An example of an "<code>if</code>" statement used in
			    the project code:
			  </span>
			  <br>
			</td>
		      </tr>
		      <tr>
			<td>
			  <pre class="brush: mpide;">
if (digitalRead(BtnA) == HIGH) {
  digitalWrite(LedA, HIGH);
}
else {
  digitalWrite(LedA, LOW);
}
			  </pre>
			</td>
		      </tr>
		      <tr>
			<td> 
			  <span class="TB-BODY">
			    Once the if statement is executed,
			    the <code>digitalRead()</code> function
			    will execute and then return a value. That
			    returned value is then compared to the
			    constant value HIGH.

			    <br><br>

			    Stated more plainly, the syntax reads, "If
			    Button A is pressed, turn on LedA, else
			    turn off LedA."
			    <br>
			    Multiple statements can be used along with
			    the logical "<span style="font-weight:
			    bold;">And</span>", and logical
			    "<span style="font-weight:
			    bold;">Or</span>" statements<br> for
			    example:
			  </span>
			  <p style="margin-bottom: 0in;"></p>
			</td>
		      </tr>
		      <tr>
			<td>
			  <pre class="brush: mpide;">
if ((digitalRead(BtnA) == true) &amp;&amp; (digitalRead(BtnB) == true)){
  digitalWrite(LedC, LOW);
}
			  </pre>
			  <span class="TB-BODY">
			    We could also say this more simply:<br>
			    "If the Read value of ButtonA and ButtonB
			    are true, <code>digitalWrite()</code> LedC to
			    <code>HIGH</code>."

			    <br><br> 

			    For an explanation of
			    functions, <font color="#000080"> Project
			    2</font> provides an overview of syntax
			    and program structure.
			  </span>
			</td>
		      </tr>
		    </tbody>
		  </table>
    
		  <br><br>
		  
		  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		    <tbody>
		      <tr>
			<td colspan="2">
			  <span class="TB-H2">
			    Software Set up:
			  </span>
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%">
			  <br>
			</td>
		      </tr>
		      <tr>
			<td colspan="2">
			  <span class="TB-BODY">The following is the
			    source code for this project and an
			    explanation is provided in
			    comments
			    <br><br>
			  </span>
			  
			  <!-- CODE ----------------------------------------------->
			  <pre class="brush: mpide;">
/***************************************************************
 * The first step will be setting up constants to associate names with
 * the various digital I/O ports used for this project.  each pin on
 * chipKIT boards are referenced by an integer number for functions
 * calls. Assigning a constant name allows you to use that name in the
 * read and write function.
 */
        
const int ledA = 12; 
const int ledB = 11; 
const int ledC = 8; 
const int btnA = 7;
const int btnB = 6;
const int btnC = 5;
        
        
void setup() {
  /* Each digital I/O port needs to be set up before use, to designate
   * it as ether an input or output port Ports used for LED are set to
   * OUTPUT.
   */
        
  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  // Ports used for Buttons are set to INPUT
  pinMode(btnA, INPUT);
  pinMode(btnB, INPUT);
  pinMode(btnC, INPUT);
}
        
        
void loop()
{
  /* Start of the button scanning.
   *
   * Read the value of each digital input pin associated with the push
   * buttons, and then determine through "if" statements whether to
   * turn on the digital output port associated with the LEDs.
   *    
   * the digitalRead function will output a HIGH constant if voltage
   * is detected at that particular pin else the function will return
   * LOW. High and LOW are predefined constants which are associated
   * with integer values High is equal to the integer value 1 (0x01)
   * Low is equal to the integer value 0 (0x00).
   *
   * If the digitalRead function returns value HIGH then the corresponding LED is set to
   * output High, if not then the LED is set to output LOW.
   */
        
  if ( digitalRead(btnA) == HIGH ){
    digitalWrite(ledA, HIGH);
  }
  else {
    digitalWrite(ledA, LOW);
  }
  
  // Read and Compare Button B
  if ( digitalRead(btnB) == HIGH ) {
    digitalWrite(ledB, HIGH);
  }
  else {
    digitalWrite(ledB, LOW);
  }
  
  // Read and Compare Button C
  if ( digitalRead(btnC) == HIGH ) {
    digitalWrite(ledC, HIGH);
  }
  else {
    digitalWrite(ledC, LOW);
  }
  
}
			  </pre>
			  <br><br>
			</td>
		      </tr>
		      <tr>
			<td colspan="2"><br>
			  <p style="margin-bottom: 0in;">
			    <span class="TB-H1">
			      Implementation and Summary
			    </span>
			    
			    <!-- Summary table --------------------------------------->
			    <span class="TB-BODY">
			      <hr hr="" color="#2c2c2c" size="15">
			    </span>
			  </p>
			  <span class="TB-BODY">
			    Once the sketch is uploaded to the chipKIT
			    board, the circuit will be fully
			    functional.  The circuit can be easily
			    tested by pressing button A to turn on LED
			    A, button B to turn on LED B, and button C
			    to LED C.
			    
			    <br><br> 
			    
			    In summary, the following new concepts and
			    software functions were introduced:
			    
			    <br><br>
			    
			    <table style="text-align: left; width: 100%;"
				   border="1" cellpadding="2" cellspacing="2">
			      <tbody>
				<tr>
				  <td>Core Concepts:</td>
				  <td>
				    <table style="text-align: left; width: 100%;"
					   border="1" cellpadding="2" cellspacing="2">
				      <tbody>
					<tr>
					  <td style="text-align: left; vertical-align: top;">
					    Button operations</td>
					</tr>
					<tr>
					  <td>"If" statements</td>
					</tr>
					<tr>
					  <td>Relational operators</td>
					</tr>
					<tr>
					  <td>Reading Digital Input</td>
					</tr>
					<tr>
					  <td>Series Connection</td>
					</tr>
					<tr>
					  <td>Pull-Up/Down resistors</td>
					</tr>
					<tr>
					  <td>Current limiting resistors</td>
					</tr>
					<tr>
					  <td>Opens/Shorts</td>
					</tr>
					<tr>
					  <td>Kirchhoff&#8217;s voltage/current law</td>
					</tr>
					<tr>
					  <td>Series resistor configuration</td>
					</tr>
					<tr>
					  <td>Bus Strips</td>
					</tr>
				      </tbody>
				    </table>
				  </td>
				</tr>
				
				<tr>
				  <td>Functions introduced:</td>
				  <td>
				    <table style="text-align: left; width: 100%;"
					   border="1" cellpadding="2" cellspacing="2">
				      <tbody>
					<tr>
					  <td>digitalRead()</td>
					</tr>
				      </tbody>
				    </table>
				  </td>
				</tr>
			      </tbody>
			    </table>
			  </span>
			  <br><br>
			</td>
		      </tr>
		    </tbody>
		  </table>
		</cf_box>
	      </td>
	    </tr>
      </tbody>
    </table>	
  </body>
</html> 
