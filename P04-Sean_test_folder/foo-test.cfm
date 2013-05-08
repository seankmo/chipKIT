<html>
  <head>
    <title>Button Controlled LEDs</title>
    <meta name="author" content="Sean Moss">
    <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
    <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
    <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
    <script type="text/javascript">SyntaxHighlighter.all();</script>
  
  <style>
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
	    <span class="TB-H1">Introduction</span>
	    <br><br>
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
		       alt="Button Controlled LED circuit" src="P04files/Overall_cir_3_20_2013.png">
	    <br><br>
            <div class="TB-FIGURES">
	      Fig. 1. Button controlled LED circuit.
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
	    <br><br>
	    <span class="TB-BODY">
              <table style="text-align: left; width: 100%;" border="1" cellpadding="0" cellspacing="0">
		<tbody>
		  <tr>
		    <td>&nbsp; 3 </td>
		    <td>&nbsp; Two-port buttons</td>
		    <td><img style="width: 111px;" alt="button" src="P04files/button.jpg"></td>
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
		    <td><img style="width: 111px; height: 69px;" alt="button"
			     src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  1 </td>
		    <td>&nbsp;  Max 32, uC32, Uno32 or other chipKIT board</td>
		    <td><img style="width: 111px;"
			     alt="button" src="../P01/chipKIT-Uno32-revC-obl-1600.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  17 </td>
		    <td>&nbsp;  Jumper wires</td>
		    <td><img style="width: 111px; height: 69px;"
			     alt="button" src="P04files/realbtnplaceholder.png"></td>
		  </tr>
		  <tr>
		    <td>&nbsp;  1 </td>
		    <td>&nbsp;  USB A to mini B cable</td>
		    <td><img style="width: 111px;"
			     alt="USB place holder" src="P04files/cable-usb-a-mini-b.jpg"></td>
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
	    <br><br>
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
			<img style="width: 500px;"
			     alt="LEDsetup" src="P04files/Just_LEDs_3_20_2013.png">
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
		  </tbody>
		</table>

		<br><br>

		<!--  Buttons -----------------------------   --->
    
		<table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<span class="TB-H1">
			  Buttons
			</span>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<br>

		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<span class="TB-BODY">
			  Before connecting the buttons to the circuit, it is appropriate to
			  consider a bit of circuit theory so that we understand how buttons can be
			  used to produce a signal readable by the chipKIT (digital) I/O
			  pins.
			  <br><br>
			</span>
		      </td>
		    </tr>
		    <tr>
		      <td>
			<table style="text-align: left; width: 85%; height: 502px;"
			       border="0" cellpadding="0" cellspacing="0">
			  <tbody>
			    <tr>
			      <td style="vertical-align: top; text-align: center;">
				<img style="width: 218px;"
				     alt="realbtn" src="P04files/button.jpg">
				<br><br>
				<div class="TB-FIGURES">
				  <span style="font-style: italic;">
				    Fig. 3. Two-port button.
				  </span>
				</div>
				<br><br>
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
				  If you examine the buttons used for this project, you will see
				  that there are four distinct legs or &ldquo;terminals&rdquo; on
				  the device.  The terminals are grouped such that two are together
				  on one side of the button and two are on the opposite side.  In
				  Fig. 3, you can see two of these terminals.&nbsp; As shown, the
				  left side has two terminals, as does the right side
				  (although these terminals are not visible in the figure).

				  <br><br>


				  The terminals on the same side of the button are <i>not</i>
				  connected together unless the button is pressed.  However, the
				  terminals on the left and right sides that are directly across
				  from each other are always electrically connected, regardless of
				  whether or not the button is pressed.  This internal layout of the
				  button is depicted in Fig. 4.  (So, in fact, when the button is
				  pressed, all the terminals are electrically connected.)  For the
				  purpose of our analysis, the pair of terminals that are always
				  connected can be thought of as just a single connection, as shown
				  in Fig. 5.

				  <br><br>

				  In summary, when the button is pressed, a small piece of
				  conductive material makes a physical connection between the
				  &ldquo;top&rdquo; and &ldquo;bottom&rdquo; terminals.&nbsp; This
				  connection is what allows current to flow between the terminals of
				  the device.

				  <br><br>
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

		<br>

		<cf_box color= "green" style="width:95%">
		  <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		    <tbody>
		      <tr>
			<td>
			  <span class="TB-H1">
			    Pull-Down and Pull-Up Resistors
			  </span>
			  <br><br>
			</td>
		      </tr>

		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			      Before we begin looking at our specific button circuits, we must
			      understand how to interpret what we're seeing. Figure 6 shows a button
			      circuit with a <i>pull-down resistor</i> when the button is open (so
			      no current can flow).  A circuit that provides no path for current to
			      flow is known as an <a href="P04_KVL_KCL.html#Open"><i>open</i></a>
			      circuit.  When two points in a circuit are connected, with no
			      resistance between them, these points are said to be <i>shorted</i>
			      together.  We sometimes simply say that there is a
			      <a style="font-style: italic;"
			      href="P04_KVL_KCL.html#Short">short</a>
			      circuit between these two points.  We
			      will assume that the buttons in this
			      project must be pressed to create a path
			      for current to flow.  In other words, we
			      need to press the button to
			      &ldquo;close&rdquo; the circuit.

			      <br><br>

			      A voltmeter, which allows us to read
			      voltages at different points in the
			      circuit, is also depicted in Fig. 6.
			      The voltmeter tells us the voltage
			      between the two points to which its two
			      &ldquo;probes&rdquo; are attached.  In
			      this figure, one of these probes is
			      always attached to ground while the
			      other probe is moved to three different
			      points.

			      In Fig. 6(a), one of the probes is
			      attached to the 3.3V source and thus the
			      meter read 3.3V, in spite of the fact
			      that the button is open (and no current
			      is flowing).

			      If we move the probe so that it is
			      attached to ground, as shown in (b), the
			      voltmeter reads 0V.  This is because
			      both probes are attached to ground and
			      thus there is no voltage difference
			      between these probes.

			      In (c), the probe is moved to the point
			      above the resister but below the open
			      button.  The voltmeter again reads 0V.
			      This is because there is nothing to
			      supply a voltage at this point; there is
			      nothing to establish a flow of current
			      through the resistor.

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
				  <br>
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
			<td colspan="1">
			  <br><br>
			  <span class="TB-BODY">
			    Figure 7 shows what happens when the
			    button is pressed, i.e., the circuit is
			    closed, and the probe remains in the same
			    location as shown in Fig. 6(c). There is
			    now a direct path from the 3.3V power
			    supply to the probe.  We see that when the
			    button is open, the resistor serves to
			    pull the voltage down to 0V at this probe
			    location (Fig. 6(c)), but if the button is
			    closed, the probe is attached to the 3.3V
			    supply (Fig. 7).
			  </span>
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
			      resistor where the button is pressed/closed.
			    </span>
			  </div>
			  </div>
			</td>
		      </tr>

		      <tr>
			<td colspan="1">
			  <span class="TB-BODY">
			      <br>
			      Now let's consider a circuit where we
			      switch the location of the button and
			      the resistor so that the resistor is
			      directly tied to the 3.3V supply and the
			      button is directly connected to ground,
			      as shown in Fig. 8.  In this figure, the
			      voltmeter is still measuring the voltage
			      between the button and the resistor.  In
			      (a), the button is open, and no current
			      can flow to ground, and yet the
			      voltmeter measures 3.3V.  This is
			      because if there is any difference in
			      potential across the resistor, charge
			      flows through the resistor.  However,
			      once on the other side, there is no
			      place for the charge to go.  Hence, the
			      charge quickly builds on the other side
			      of the resistor to the level where there
			      is no difference in potential across the
			      resistor.  Thus, current flow stops.

			      <br><br>

			      In Fig. 8(b) the button is closed,
			      providing a direct connection between
			      the probe and ground.  In this case, the
			      probe measures 0V.

			      <br><br>
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
			      <br>
			      
			      In the circuit in Figs. 6 and 7, the
			      resistor serves to <i>pull down</i> the
			      voltage to 0V when the button is open.
			      On the other hand, in the circuit in
			      Fig. 8, the resistor serves to <i>pull
			      up</i> the voltage to 3.3V when the
			      button is open.  Thus, resistors used in
			      this way are known as pull-down or
			      pull-up resistors.

			      <br><br>

			      More information about analyzing circuits,
			      specifically using Kirchhoff&#8217;s voltage law, 
			      is
			      <a href="P04_KVL_KCL.html#KVL">
				available here.</a>
			  </span>
			</td>
		      </tr>

		    </tbody>
		  </table>
		</cf_box>

		<br><br>
    

		<!--  Step 2 -----------------------------   --->
		<table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td>
			<span class="TB-H1">Step 2: Setting up the Buttons</span>
			<br><br>
		      </td>
		    </tr>
		  </tbody>
		</table>

		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td style="text-align: center;" colspan="1">
			<img style="width: 700px;"
			     alt="button set up" src="P04files/Justbuttons_3_20_2013.png">
			<br><br>
			<div class="TB-FIGURES">
			  Fig. 9. Button configuration.
			</div>
		      </td>
		    </tr>
		  </tbody>
		</table>
    
		<br>

		<table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
		  <tbody>
		    <tr>
		      <td colspan="1">
			<!--  Part 2 actual instructions -----------------------------   --->   
			<ol>
			  <span class="TB-BODY">
			    <li>Connect the chipKIT 3.3V pin to the bus strip above the ground bus
			      strip that was set up in Step 1.  For the sake of simplicity, the LEDs
			      are not shown in Fig. 9.
			    </li>
			    <li> HERE HERE HERE -- Stopped here 3/28/2013

			      <br><br>

			      Place three buttons into the breadboard as shown in Fig. 9.&nbsp; Most
			      breadboards have a gap or &ldquo;valley&rdquo; that separates columns
			      in the main secton of the board (with the board placed as shown in
			      Fig. 9).&nbsp; The buttons used in this project are large enough to
			      span this valley and it is recommended to place the buttons with the
			      top of the button oriented to the right, like in Fig. 9, so that the
			      left and right terminals connect the columns on either side of the
			      gap.&nbsp; While this isn&#8217;t absolutely necessary, it will give
			      you more room to work.<br>
			    </li>
			    <li> Using three wires, connect the top terminal of each button to the
			      5V bus strip. <br>
			    </li>
			    <li> Using three more wires, connect from the chipKIT digital I/O pins
			      5, 6 and 7 to the bottom terminal of buttons A, B, and C.
			    </li>
			    <li>For each button, connect one end of a
			      10 k&#8486; resistor to the bottom terminal
			      of the button.&nbsp;</li>
			    <li>Connect the other end of each resistor
			      to the ground bus strip (you can use a
			      wire to connect from the resistor to bus
			      strip, as shown in Fig. 9, or you can
			      simply connect the end of the resistor
			      to the bus strip directly).<br>
			    </li>
			    <li>When each button is pressed, it will
			      supplies 5 volts to the digital I/O
			      pin.&nbsp; The chipKIT Max32 and Uno32
			      boards are designed to recognize a range
			      from 2.4V minimum to 5.5 V maximum as a
			      <span class="TB-LITERAL1">HIGH</span> input for digital I/O pins.  That is,
			      when the software function <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span>
			      is called, it will return a <span class="TB-LITERAL1">HIGH</span> if the
			      voltage on the pin being read from is
			      within this range.  The <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span>
			      function will be discussed later in this
			      project. (It is important to note that
			      the analog inputs for the Max32, and
			      Uno32 can only accept a max of 3.3V.)
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
		      <td>
			<span class="TB-BODY">
			  <br>Figure 10 illustrates the completed
			  circuit, including both the buttons and the
			  LEDs.<br><br>
			</span>
		      </td>
		    </tr>

		    <tr>
		      <td style="text-align: center;" colspan="1">
			<img style="width:700px;" alt="overallcirc"
			      src="P04files/Overall_cir_3_20_2013.png"><br><br>
			<div class="TB-FIGURES">
			  <span style="font-style: italic;">Fig. 10: The complete circuit.
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
			    explanation of the <span class="TB-KEYWORD1">if</span>
			    conditional statements and
			    <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span> functions
			    before running the sketch. 

			    <br><br>

			    The <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span> command
			    operates much as one would surmise.&nbsp;
			    When called, the user specifies a pin
			    number in the parameters, and the function
			    will then read the electrical state of the
			    pin, and output either a <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span>
			    constant accordingly.

			    <br><br>
    
			    For example:
			    <br><br>
			    
			    <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; gutter: false">
val = digitalRead(8);
</pre>
</cf_box>
</div>

			    <BLACK>val</BLACK> would store the valued
			    returned by the <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span>
			    function when given an argument of 8,
			    i.e., when it is asked to read the value
			    of pin 8.&nbsp; If pin 8 detects a high
			    voltage level at the time the function is
			    called, <BLACK>val</BLACK> would
			    equal <span class="TB-LITERAL1">HIGH</span>, and if
			    not <BLACK>val</BLACK> would
			    equal <span class="TB-LITERAL1">LOW</span>.

			    <br><br>

			    Along with supporting all of the original
			    Arduino syntax, chipKIT sketches are based
			    on C++ syntax and thus most conventions
			    apply.  The syntax for an <span class="TB-KEYWORD1">if</span>
			    statement, that includes
			    an <span class="TB-KEYWORD1">else</span> clause, is as
			    follows:

			    <br><br>
			  </span>
			</td>
		      </tr>

		      <tr>
			<td>
			  <div align="center">
			    <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
if (logical_expression) {
   ... task1 ...
}
else {
   ... task2
}
</pre>
</cf_box>
</div>
			  </div>
			</td>
		      </tr>
		      <tr>
			<td>
			  <span class="TB-BODY">

			    Within the &ldquo;<span class="TB-KEYWORD1">if</span>&rdquo;
			    statement you can see that there is a
			    logical expression.  This logical
			    expression can take the form of a
			    comparison and here we will restrict
			    ourselves to comparision expression.  A
			    comparison expression is much like a
			    mathematical equation except that it
			    evaluates only to true or false.  Like
			    mathematical expressions, which have their
			    own set of operators (i.e., <code>+</code>
			    , </code>-, <Arithmetic>/</Arithmetic>
			    and <code>*</code>) , comparison
			    expressions have their own set as
			    well. For example a relational operators
			    could be, &ldquo;<BLACK>==</BLACK>&rdquo;
			    or
			    &ldquo;<inequality>!=</inequality>&rdquo;,
			    which have the meaning of &ldquo;equal
			    to&rdquo; and &ldquo;not equal to&rdquo;
			    respectively.  Comparison expressions are
			    formed much like math equations using
			    these operators.  An example of a
			    comparison expression assuming x is an int
			    type variable, could be:
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
			    An example of an &ldquo;<span class="TB-KEYWORD1">if</span>&rdquo; statement used in
			    the project code:
			  </span>
			  <br>
			</td>
		      </tr>
		      <tr>
			<td>
			  <div align="center">
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
</div>
			</td>
		      </tr>
		      <tr>
			<td> 
			  <span class="TB-BODY">
			    Once the if statement is executed,
			    the <span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span> function
			    will execute and then return a value. That
			    returned value is then compared to the
			    constant value <span class="TB-LITERAL1">HIGH</span>.

			    <br><br>

			    Stated more plainly, the syntax reads, &ldquo;If
			    Button A is pressed, turn on LedA, else
			    turn off LedA.&rdquo;
			    <br>
			    Multiple expressions can be used along with
			    the logical &ldquo;<span style="font-weight:
			    bold;">AND</span>&rdquo; and logical
			    &ldquo;<span style="font-weight:
			    bold;">OR</span>&rdquo; statements.
			    <br> For
			    example:
			  </span>
			  <br>
			</td>
		      </tr>
		      <tr>
			<td>
			  <div align="center">
    <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
if ((digitalRead(BtnA) == true) &amp;&amp; (digitalRead(BtnB) == true)){
  digitalWrite(LedC, LOW);
}
</pre>
</cf_box>
</div>
</div>
			  <span class="TB-BODY">
			    We could also say this simply as:
			    &ldquo;If the Read value of ButtonA and
			    ButtonB are
			    true, <span class="TB-KEYWORD2">digitalWrite</span><span class="TB-BLACK">()</span> LedC to
			    <span class="TB-LITERAL1">HIGH</span>.&rdquo;

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
			    explanation is provided in the
			    comments.
			    <br><br>
			  </span>
			  
			  <!-- CODE ----------------------------------------------->
			  <div align="center">
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
					  <td>&ldquo;If&rdquo; statements</td>
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
					  <td><span class="TB-KEYWORD2">digitalRead</span><span class="TB-BLACK">()</span></td>
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
