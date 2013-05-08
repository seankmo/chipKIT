<html>
  <head>
    <title>Button Controlled LEDs</title>
    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
  
  <style>
  LITERAL1 {font-family:"Courier";color:#0066ff}
  KEYWORD1 {font-family:"Courier";color:#ff0000}
  KEYWORD2 {font-family:"Courier";color:#ff8000}
  KEYWORD3 {font-family:"Courier";color:#8b308b}
  BLACK {font-family:"Courier";color:#000000}
  </style>
</head>
    
  <body>
    <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
      <tbody>
	<tr>
	  <td align="center" width="0%">&nbsp;</td>
	  <td align="center" width="100%"> <span class="TB-PROJECTTITLE">
	      Project 4: <br>Button Controlled LEDs</span> </td>
	  <td align="center" width="0%">&nbsp;</td>
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
            <span class="TB-BODY"><p class="MsoNormal"> 

		This project demonstrates how to use buttons to turn
		on and off light emitting diodes (LEDs). You are
		probably already familiar with traditional light
		switches that directly control whether or not
		electrical energy is delivered to a light bulb. In
		this project, three buttons are used to control three
		LEDs, but the buttons are <i>not</i> directly
		connected to the LEDs. Instead, the buttons are used
		to establish voltages that are &ldquo;read&rdquo; via
		the chipKIT digital input/output (I/O) pins. From
		these voltages, we can determine if a button is
		pressed or not (i.e., we can determine a button's
		&ldquo;state&rdquo;). Each LED is then illuminated in
		accordance with the state of the corresponding button.
              </p>
	    </span>
	    <br><br>
          </td>
          <td style="width: 320px; text-align: left; vertical-align: top;">
            &nbsp;<img style="width: 279px;"
		       alt="Button Controlled LED circuit" src="P04files/Overallcirc.png">
	    <br><br>
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
		    <td>&nbsp; 3 </td>
		    <td>&nbsp; Two-port buttons</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp; 3 </td>
		    <td>&nbsp; LEDs</td>
		    <td><img style="width: 107px; height: 72px;" alt="LED" src="P04files/LEDreal.jpg"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  3 </td>
		    <td>&nbsp;  330 &#8486; resistors</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  3 </td>
		    <td>&nbsp;  10 k&#8486; resistors</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  1 </td>
		    <td>&nbsp;  Max 32, uC32, Uno32 or other chipKIT board</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  17 </td>
		    <td>&nbsp;  Jumper wires</td>
		    <td><img style="width: 111px; height: 69px;" alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  1 </td>
		    <td>&nbsp;  USB A to mini B cable</td>
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
	    <span class="TB-H1">Step 1: Setting up the LEDs</span>
	    <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"><br>
	  </td>
	</tr>
      </tbody>
Cont vs Disc.png    </table>

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
			<img style="width: 500px;"
			     alt="LEDsetup" src="P04files/justLEDs.png">
			<br><br>
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
			      as shown in Fig. 2, keeping in mind that
			      the anode is the longer of the two
			      &ldquo;legs&rdquo; and the cathode is
			      the shorter.</li>
			    <li>
			      Using three jumper wires, connect the
			      anode of one LED to pin 8, the anode of
			      another to pin 11, and the anode of the
			      final LED to pin 12.</li>
			    <li>
			      Connect the chipKIT ground pin (labeled
			      &ldquo;GND&rdquo;) to a bus strip at the
			      bottom of the breadboard.  There are
			      multiple GND pins and they are all
			      equivalent.  In Fig. 2, the jumper wire
			      is connected to the GND pin closest to
			      the 5V pin.
			      <ul>
				<li>
				  In Fig. 2, the breadboard bus strips
				  are the two bottom-most and two
				  top-most horizontal rows.  All the
				  holes along a row are electrically
				  connected.  The bus strips are
				  usually separated from the main
				  section of the board and are
				  sometimes marked in red and blue.
				</li>
				<li>
				  Bus strips provide a convenient way
				  to connect a particular voltage (or
				  ground) to various points within the
				  main section of the breadboard
				  and/or to the chipKIT board.
				</li>    
				<li>
				  For the remainder of this project,
				  the bus strip connected to the GND
				  pin will be referred to as the
				  ground bus strip.
				</li> 
			      </ul>   
			    </li>
			    <li>
			      Now, attach one end of a 330 &#8486;
			      resistor to the cathode of each of the
			      LEDs. The other end of each resistor
			      should be placed so that it connects to
			      the ground bus strip. This can be done
			      by placing the other end of the resistor
			      directly into the bus strip.
			      Alternatively, as shown in Fig. 2, you
			      can insert the other end of the resistor
			      into a different column (or node) and
			      then use a short wire to connect from
			      that column to the ground bus strip.

			      <br><br>

			      When there is a single path for charge
			      to flow through two components (i.e.,
			      any charge that flows through one
			      component must also flow through the
			      other), then we say the components
			      are <a href="P04_KVL_KCL.html#SER"><i>in
			      series</i></a>.  Each of the three LEDs
			      in this circuit has a resistor in series
			      with it. Series resistors are used to
			      limit the current that passes through
			      their particular branches of the
			      circuit. LEDs are non-linear devices and
			      can potentially pass large amounts of
			      current when their threshold voltage is
			      exceeded. The series resistor keeps the
			      current at a safe level.&nbsp; This
			      helps to protect the LEDs and chipKIT
			      board from the potential damage of
			      drawing too much current.
			      Connecting external LEDs and series
			      resistors are discussed in more depth
			      in <font color="#0000ff">Project 3:
			      Blink External LED.</font>
			    </li>
			  </span>
			</ol>
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
			<span class="TB-H2">Buttons</span>
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
				<br><br>
				<div class="TB-FIGURES">
				  <span style="font-style: italic;">Fig. 3.
				    Two-port button.
				  </span>
				</div>
			      </td>
			      <td style="text-align: center; vertical-align: middle;">
				<img style="height: 215px;" alt="btn diagram"
				     src="P04files/two-port-button-schematic.png">
				<br><br>
				<p class="MsoNormal">
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">
				      Fig. 4. Two-port button
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
				  device (see Fig. 3).&nbsp; For this
				  type of button, the terminals are
				  grouped in pairs with the top two
				  terminals of the device being
				  electrically connected to each other
				  and the bottom two being connected
				  to each other (Fig. 4).&nbsp; For
				  the purpose of our analysis, the
				  pair of terminals can be thought of
				  as just a single connection as shown
				  in Fig. 5.

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
				<img style="height: 215px;" alt="btndiagram"
				     src="P04files/button-simple-schematic.png">
				<br><br>
				<p class="MsoNormal">
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">
				      Fig. 5. Simplified button
				      schematic.
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
			
			<td><span class="TB-H2">Theory</span>
			  <hr hr="" align="left" color="#2c2c2c" size="2" width="50%"></td>
		      </tr>

		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			    <p style="margin-bottom: 0in;">
			      <br>
			      Before we begin looking at our specific
			      button circuits, we must understand how
			      to interpret what we're seeing. Figures
			      6(a) and (b) show a button circuit with
			      a <i>pull-down resistor</i> when the
			      button is open (so no current can
			      flow). We will assume that these buttons
			      must be pressed to create a path for
			      current to flow.  In other words, we
			      need to press to &ldquo;close&rdquo; the
			      circuit.  The circuits are hooked up to
			      a voltmeter, which allows us to read the
			      voltages at different points in the
			      circuit. In Fig. 6(a), the voltmeter
			      reads 3.3V, in spite of the fact that
			      the button is open. This is because the
			      measurement was taken at the 3.3V
			      voltage source. If we took the same
			      measurement at ground or even before the
			      resistor as in Figs. 6(b) and (c), the
			      voltmeter reads 0 V. Even though 3.3 V
			      are being generated, the circuit is
			      open. No power is supplied at these
			      points, because there has been
			      interruption in the circuit. Figure 7
			      shows what happens when the button is
			      pressed and the circuit is closed. The
			      voltmeter's measurement is taken after
			      the button, but before reaching the
			      negative potential energy of
			      ground. Thus, having suffered no open
			      circuit, it reads 3.3V.&nbsp;
			      <br>
			      To clarify, the placement of the
			      resistors is immaterial in determining
			      whether or not the circuit is open or
			      closed. When the resistor is placed
			      before the button, it is referred to as
			      a pull-up resistor. The voltmeter
			      attached to the circuit in Fig. 8 reads
			      3.3V (even though the circuit is open)
			      because there is no difference in
			      potential energy expenditure. Figure 9
			      shows a circuit with a pull-up resistor
			      where the button is closed. The circuit
			      is closed, allowing the energy to go to
			      ground. The voltage difference across
			      the circuit is thus 3.3V. The voltmeter
			      reads this as 3.3V - 3.3V, or 0 V.
			      <br>
			      The circuit is constructed by using a
			      wire to connect the top of the button to
			      a 5V voltage supply and the bottom to a
			      resistor. The other end of the resistor
			      is connected to the
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
			      would see approximately 5 volts.
			      <br><br>
			    </p>
			  </span>
			</td>
		      </tr>

		      <tr>
			<td style="text-align: center;" colspan="1">
			  <br>
			  <div align="center">
			  <table class="TBLAYOUT" align="center" cellpadding="0">
			    <tbody>
			      <tr>
				<td style="width: 50px">&nbsp;</td>
				<td>
				  <img style="width: 225px;" alt="btn0" 
				       src="P04files/pull-down-resistor-switch-open-1.png">
				</td>
				<td style="width: 70px">&nbsp;</td>
				<td>
				  <img style="width: 225px;" alt="btn0" 
				       src="P04files/pull-down-resistor-switch-open-2.png">
				</td>
			      </tr>
			      <tr><td>&nbsp;<br></td></tr>
			      <tr>
				<td style="width: 50px">&nbsp;</td>
				<td>
				  <div class="TB-FIGURES">
				    <span style="font-style:
						 italic;"> (a)
				    </span>
				</td>
				<td style="width: 70px">&nbsp;</td>
				<td>
				  <div class="TB-FIGURES">
				    <span style="font-style:
						 italic;"> (b)
				    </span>
				  </div>
				</td>
			      </tr>
			    </tbody>
			  </table>

			  <table class="TBLAYOUT" align="center" cellpadding="0">
			    <tbody>
			      <tr>
				<td style="text-align: center;" colspan="1">
				  <br><br>
				  <img style="width: 225px;" alt="btn0" 
				       src="P04files/pull-down-resistor-switch-open-3.png">
				</td>
			      </tr>
			      <tr><td>&nbsp;<br></td></tr>
			      <tr>
				<td style="text-align: center;" colspan="1">
				  <div class="TB-FIGURES">
				    <span style="font-style:
						 italic;">(c)
				    </span>
				  </div>
				</td>
			      </tr>
			    </tbody>
			  </table>
			  </div> <!-- center -->
			  
			  <br>
			  <div class="TB-FIGURES" align="center">
			    <span style="font-style: italic;">
			      Fig. 6. Button circuit with a pull-down
			      resistor and the button open.  (a)
			      Voltmeter attached to 3.3V supply.  (b)
			      Voltmeter attached to ground. (c)
			      Voltmeter attached above the resistor.
			    </span>
			  </div>
			</td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="1">
			  <br><br>
			  <div align="center">
			  <img style="width: 225px;" alt="btn0" 
			       src="P04files/pull-down-resistor-switch-closed-1.png">
			  <br><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">
			      Fig. 7. Button circuit with a pull-down
			      resistor where the button is pressed and
			      the circuit is closed.
			    </span>
			  </div>
			  </div>
			</td>
		      </tr>



		      <tr>
			<td style="text-align: center;" colspan="1">
			  <br>
			  <div align="center">
			  <table class="TBLAYOUT" align="center" cellpadding="0">
			    <tbody>
			      <tr>
				<td style="width: 50px">&nbsp;</td>
				<td>
				  <img style="width: 225px;" alt="btn0" 
				       src="P04files/pull-up-resistor-switch-open-1.png">
				</td>
				<td style="width: 70px">&nbsp;</td>
				<td>
				  <img style="width: 225px;" alt="btn0" 
				       src="P04files/pull-up-resistor-switch-closed-1.png">
				</td>
			      </tr>
			      <tr><td>&nbsp;<br></td></tr>
			      <tr>
				<td style="width: 50px">&nbsp;</td>
				<td>
				  <div class="TB-FIGURES">
				    <span style="font-style:
						 italic;"> (a)
				    </span>
				</td>
				<td style="width: 70px">&nbsp;</td>
				<td>
				  <div class="TB-FIGURES">
				    <span style="font-style:
						 italic;"> (b)
				    </span>
				  </div>
				</td>
			      </tr>
			    </tbody>
			  </table>
			  
			  <br>
			  <div class="TB-FIGURES" align="center">
			    <span style="font-style: italic;">
			      Fig. 8. A circuit with button and
			      pull-up resistor (a) when the button is
			      open and (b) when the button is
			      closed/pressed.
			    </span>
			  </div>
			</td>
		      </tr>


		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			    <p style="margin-bottom: 0in;">
			      <br>
			      Before we begin looking at our specific
			      button circuits, we must understand how
			      to interpret what we're seeing. Figures
			      6(a) and (b) show a button circuit with
			      a pull-down resistor with the button
			      open. The circuits are hooked up to a
			      voltmeter, which allows us to read the
			      voltages at different points in the
			      circuit. In Fig. 6(a), the voltmeter
			      reads 3.3V, in spite of the fact that
			      the button is open. This is because the
			      measurement was taken at the 3.3V
			      voltage source. If we took the same
			      measurement at ground or even before the
			      resistor as in Figs. 6(b) and (c), the
			      voltmeter reads 0 V. Even though 3.3 V
			      are being generated, the circuit is
			      open. No power is supplied at these
			      points, because there has been
			      interruption in the circuit. Figure 7
			      shows what happens when the button is
			      pressed and the circuit is closed. The
			      voltmeter's measurement is taken after
			      the button, but before reaching the
			      negative potential energy of
			      ground. Thus, having suffered no open
			      circuit, it reads 3.3V.&nbsp;
			      <br>
			      To clarify, the placement of the
			      resistors is immaterial in determining
			      whether or not the circuit is open or
			      closed. When the resistor is placed
			      before the button, it is referred to as
			      a pull-up resistor. The voltmeter
			      attached to the circuit in Fig. 8 reads
			      3.3V (even though the circuit is open)
			      because there is no difference in
			      potential energy expenditure. Figure 9
			      shows a circuit with a pull-up resistor
			      where the button is closed. The circuit
			      is closed, allowing the energy to go to
			      ground. The voltage difference across
			      the circuit is thus 3.3V. The voltmeter
			      reads this as 3.3V - 3.3V, or 0 V.
			      <br>
			      The circuit is constructed by using a
			      wire to connect the top of the button to
			      a 5V voltage supply and the bottom to a
			      resistor. The other end of the resistor
			      is connected to the
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
			      would see approximately 5 volts.
			      <br><br>
			    </p>
			  </span>
			</td>
		      </tr>
		      <tr>
			<td style="text-align: center;" colspan="1">
			  <img style="width: 364px; height: 308px;" alt="btn1" src="P04files/btn1.png">
			  <br><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">
			      Fig. 10. Basic button circuit with
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
			      placed as shown above in Fig. 10 would
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
				    <span style="font-style: italic;">Fig. 11(a)
				      Non-pressed button circuit diagram
				    </span>
				  </div>
				</td>
				<td style="text-align: center;">
				  <img style="width: 330px; height: 240px;" alt="Switch Closed"
				       src="P04files/switchExample2.png"><br>
				  <div class="TB-FIGURES">
				    <span style="font-style: italic;">(b) 
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
			      circuit diagrams of Figs. 11(a) and
			      (b). In (a), it is easy to see that when
			      the button is not pressed, the loop
			      formed going clockwise from the voltage
			      source through the resistor is not
			      connected. Thus, it is an incomplete
			      circuit (no current is flowing through
			      the loop).  Since the open occurs before
			      the point we are measuring, there is no
			      voltage difference between that point
			      and ground, and it should measure 0
			      V. </p>
			    <p class="MsoNormal">In Fig. 11(b), you
			      can see that the loop is now completed
			      when the button ins pressed.  In this
			      simple circuit the resistor and voltage
			      sources are the only components in the
			      circuit.  For simplicity's sake, we
			      consider the button to be an ideal
			      component and there for offers no
			      opposition to current flow when it is
			      pressed.  The concept of
			      &ldquo;ideal&rdquo; is used during
			      circuit analysis to denote that a
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
				Fig. 8b, if the voltage source
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
			<td style="text-align: center;" colspan="1">
			  <img style="width: 364px; height: 308px;" alt="btn2" src="P04files/btn2.png">
			  <br><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">Fig. 12. Alternative button
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
			<td style="text-align: center;" colspan="1">
			  <img style="width: 364px; height: 308px;" alt="btn3" src="P04files/btn3.png">
			  <br><br>
			  <div class="TB-FIGURES">
			    <span style="font-style: italic;">Fig. 13.
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
			<br><br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">Fig. 14. Button
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
			      in Fig. 14 the LEDs are not shown for
			      simplicity.
			    </li>
			    <li> Place buttons A , B, and C, onto the
			      breadboard as seen in Fig. 14.&nbsp;
			      Most breadboards have uniform gaps
			      between columns in the main secton of
			      the board (with the board placed as in
			      Fig. 14).&nbsp; The buttons used in this
			      project are large enough to span these
			      gaps and it is recommended to place the
			      buttons with the top of the button
			      oriented to the right, like in Fig. 14,
			      so that the left and right terminals
			      connect the columns on either side of
			      the gap.&nbsp; While this isn&#8217;t
			      absolutely necessary, it will give you
			      more room to work.<br>
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
			      10 k&#8486; resistor to the bottom terminal
			      of the button.&nbsp;</li>
			    <li>Connect the other end of each resistor
			      to the ground bus strip (you can use a
			      wire to connect from the resistor to bus
			      strip, as shown in Fig. 14, or you can
			      simply connect the end of the resistor
			      to the bus strip directly).<br>
			    </li>
			    <li>When each button is pressed, it will
			      supplies 5 volts to the digital I/O
			      pin.&nbsp; The chipKIT Max32 and Uno32
			      boards are designed to recognize a range
			      from 2.4 V minimum to 5.5 V maximum as a
			      HIGH input for digital I/O pins.  That is,
			      when the software function digitalRead()
			      is called, it will return a HIGH if the
			      voltage on the pin being read from is
			      within this range.  The digitalRead()
			      function will be discussed later in this
			      project. (It is important to note that
			      the analog inputs for the Max32, and
			      Uno32 can only accept a max of 3.3 V.)
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
			
			<p style="margin-bottom:
			    0in;"><span class="TB-H2">The completed
			    circuit should look like this:</span></p>
			<hr hr="" align="left" color="#2c2c2c" size="2" width="50%">
		      </td>
		    </tr>
		    <tr>
		      <td style="text-align: center;" colspan="1">
			<img style="width:700px; height: 700px;" alt="overallcirc"
			      src="P04files/Overallcirc.png"><br><br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">Fig. 15: Overall
			    Circuit
			  </span>
			</div>
			<br><br>
		      </td>
		    </tr>
		    
		    <tr>
		      <td>
			<span class="TB-BODY">
			  <br>Figure 15 illustrates the completed
			  circuit, including both the buttons and the
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
			    explanation of the <KEYWORD1>if</KEYWORD1>
			    conditional statements and
			    <KEYWORD2>digitalRead</KEYWORD2><tt>()</tt> functions
			    before running the sketch. 

			    <br><br>

			    The <KEYWORD2>digitalRead</KEYWORD2><tt>()</tt> command
			    operates much as one would surmise.&nbsp;
			    When called, the user specifies a pin
			    number in the parameters, and the function
			    will then read the electrical state of the
			    pin, and output either a HIGH or LOW
			    constant accordingly.

			    <br><br>
    
			    For example:
			    <br><br>
    
			    <BLACK>Val = digitalRead</BLACK><tt>(8);</tt><br>
			    <br>
    
			    <BLACK>Val</BLACK> would store the result of
			    the <KEYWORD2>digitalRead</KEYWORD2> function
			    called for pin 8.&nbsp; If pin 8 sees a
			    high voltage level on the pin at the time
			    the function is called, <BLACK>Val</BLACK>
			    would equal HIGH, and if
			    not <BLACK>Val</BLACK> would equal LOW.<br>
			    <br>

			    Along with supporting all of the original
			    Arduino syntax, chipKIT sketches are based
			    on C++ syntax and thus most conventions
			    apply.<br>  An <KEYWORD1>if</KEYWORD1> comparison
			    statement syntax would be as follows:

			    <br><br>
			  </span>
			</td>
		      </tr>

		      <tr>
			<td>
			  <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
if (comparison expression) {
   ... task ...
}
else {
   ... do something else ...
}
</pre>
</cf_box>
</div>
			</td>
		      </tr>
		      <tr>
			<td>
			  <span class="TB-BODY">
			    Within the &ldquo;<KEYWORD1>if</KEYWORD1>&rdquo;
			    statement you can see that there is a
			    comparison expression.  A comparison
			    expression is much like a mathematical
			    equation except that it evaluates only to
			    true or false.  Like mathematical
			    expressions, which have their own set of
			    operators (i.e., <code>+</code>
			    , </code>-, <Arithmetic>/</Arithmetic>
			    and <code>*</code>) , comparison
			    expressions have their own set as
			    well. For example a relational operators
			    could be, &ldquo;<BLACK>==</BLACK>&rdquo; or
			    &ldquo;<inequality>!=</inequality>&rdquo;, which have
			    the meaning of &ldquo;equal to&rdquo; and
			    &ldquo;not equal to&rdquo; respectively.
			    Comparison expressions are formed much
			    like math equations using these operators.
			    An example of a comparison expression
			    assuming x is an int type variable, could
			    be:
			    <ol>
			      <li>
				<BLACK>x == 0</BLACK>
			      </li>
			      <li>
				<BLACK>x != 0</BLACK>
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
				<td>&nbsp; <BLACK>==</BLACK></td>
			      </tr>
			      <tr>
				<td>Not Equal</td>
				<td>&nbsp; <inequality>!=</inequality></td>
			      </tr>
			      <tr>
				<td>Greater than</td>
				<td>&nbsp; <BLACK>&gt;</BLACK></td>
			      </tr>
			      <tr>
				<td>Less than</td>
				<td>&nbsp; <BLACK>&lt;</BLACK></td>
			      </tr>
			      <tr>
				<td>Greater than or equal</td>
				<td>&nbsp; <BLACK>&gt;=</BLACK></td>
			      </tr>
			      <tr>
				<td>Less than or equal</td>
				<td>&nbsp; <BLACK>&lt;=</BLACK></td>
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
				<td>&nbsp; <BLACK>&amp;&amp;</BLACK></td>
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
			    An example of an "<KEYWORD1>if</KEYWORD1>" statement used in
			    the project code:
			  </span>
			  <br>
			</td>
		      </tr>
		      <tr>
			<td>
			  <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
if (digitalRead(BtnA) == HIGH) {
  digitalWrite(LedA, HIGH);
}
else {
  digitalWrite(LedA, LOW);
}
</pre>
</cf_box>
</div>
			</td>
		      </tr>
		      <tr>
			<td> 
			  <span class="TB-BODY">
			    Once the if statement is executed,
			    the <KEYWORD2>digitalRead</KEYWORD2><tt>()</tt> function
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
			  <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
if ((digitalRead(BtnA) == true) &amp;&amp; (digitalRead(BtnB) == true)){
  digitalWrite(LedC, LOW);
}
</pre>
</cf_box>
</div>
			  <span class="TB-BODY">
			    We could also say this more simply:<br>
			    "If the Read value of ButtonA and ButtonB
			    are true, <KEYWORD2>digitalWrite</KEYWORD2><tt>()</tt> LedC to
			    <LITERAL1>HIGH</LITERAL1>."

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
			  <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
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
</cf_box>
</div>
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
