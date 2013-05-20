<html>
	<head>
		<title>Button-Controlled LEDs</title>
		<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>
	
	<body>
	<cf_box color="White">
    
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
				<span class="TB-PROJECTTITLE">
					Project 4: <br>
					Button-Controlled LEDs
				</span>
				<br><hr>
			</td>
		</tr>
	</table>
	
	<br>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">
					Introduction
				</span>
				<br><br>
				
				<span class="TB-BODY">
					<cf_imagebox align="right"
					             path="P04files/Overall_cir_no_label_5_13.svg"
					             width="320px"
					             caption="Fig. 1. Button-controlled LED circuit.">

					This project demonstrates how to use buttons to turn light emitting diodes (LEDs) on
	            or off. You are probably already familiar with traditional light switches that
	            directly control whether or not electrical energy is delivered to a light bulb. In
	            this project, three buttons are used to control three LEDs, but the buttons
	            are <i>not</i> directly connected to the LEDs. Instead, the buttons are used to
	            establish voltages that are &ldquo;read&rdquo; via the chipKIT digital input/output
	            (I/O) pins.  From these voltages, we can determine if a button is pressed or not
	            (i.e., we can determine a button's &ldquo;state&rdquo;). Each LED is then illuminated
	            in accordance with the state of the corresponding button.  An LED is only illuminated
	            while its corresponding button is pushed.

				</span>
				<br><br>
			</td>
		</tr>
	</table>
    
	<table class="TBLAYOUT">
		<tr>
			<td valign="top">
				<span class="TB-H2">Inventory</span>
				<br><br>
				<div align="center">
				<table id="CT3">
					<thead>
						<tr>
							<th width="10%">Qty.</th>
							<th width="30%">Description</th>
							<th width="30%">&nbsp;</th>
							<th width="30%">
								<div align="center">Breadboard<br>Image</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="qty"> 3 </td>
							<td> Two-port buttons</td>
							<td align="center" class="image">
								<img width="95px" src="../Parts/two-port-button.jpg">
							</td>
							<td align="center" style="background: white;">
								<img width="55px" src="../Parts/PushButton.svg">
							</td>
						</tr>
						<tr>
							<td class="qty"> 3 </td>
							<td> LEDs</td>
							<td align="center">&nbsp;</td>
							<td align="center" class="image">
								<img width="25px" src="../Parts/LED_red.svg">
							</td>
						</tr>
						<tr>
							<td class="qty"> 3 </td>
							<td> 220 &Omega; resistors</td>
							<td align="center">&nbsp;</td>
							<td align="center" class="image">
								<img width="100" src="../Parts/resistor_220.svg">
							</td>
						</tr>
						<tr>
							<td class="qty"> 3 </td>
							<td> 10 k&Omega; resistors<br>
								(10 k&Omega; = 10,000 &Omega;)
							</td>
							<td align="center">&nbsp;</td>
							<td align="center" class="image">
								<img width="100" src="../Parts/resistor_10k.svg">
							</td>
						</tr>
					</tbody>
				</table>
				</div>
				<br><br>
			</td>
		</tr>
	</table>			
	
	<table class="TBLAYOUT">
		<tr>
			<td>		
				<cf_box color="putty">
					<span class="TB-H2">Step 1: Setting up the LEDs</span>
					<br><br>
					<span class="TB-BODY">

						<ol>
							<li>
								Place the three LEDs in the breadboard as shown in Fig. 2, keeping in mind
								that the anode is the longer of the two &ldquo;legs&rdquo; and the cathode
								is the shorter.  (The cathodes in Fig. 2 are to the left and anodes are to
								the right.)  Going from left to right, we'll identify these as LED A, LED B,
								and LED C.

								<div align="center">
								<cf_imagebox align="center"
								             path="P04files/Just_LED.svg"
								             width="500px"
								             caption="Fig. 2. LED configuration.">
								</div>
							</li>
							<li>
								Using three jumper wires, connect the anode of one LED A to pin 12, the anode
								of LED B to pin 11, and the anode of LED C to pin 8.</li>
							<li>
								Connect the chipKIT ground pin (labeled &ldquo;GND&rdquo;) to a rail at the
								bottom of the breadboard.  Rails are often referred to as <i>bus strips</i>.
								There are multiple GND pins and they are all equivalent.  In Fig. 2, the
								jumper wire is connected to the GND pin closest to the 5V pin.
								<ul>
									<li>
										Reviewing the breadboard basics that were covered in
										the <a href="P03.cfm">Blink External LED project</a>, in Fig. 2, the
										breadboard rails/bus strips are the two bottom-most and two top-most
										horizontal rows.  All the holes along a row are electrically
										connected.  The bus strips are usually separated from the main section
										of the board and are sometimes marked in red and blue.
									</li>
									<li>
										Bus strips provide a convenient way to connect a particular voltage
										(or ground) to various points within the main section of the
										breadboard and/or to the chipKIT board.
									</li>
									<li>
										For the remainder of this project, the bus strip connected to the GND
										pin will be referred to as the ground bus strip.
									</li> 
								</ul>   
							</li>
							<li>
								Now, attach one end of a 220 &Omega; resistor to the cathode of each of the
								LEDs. (Resistors behave the same way regardless of their orientation.)  The
								other end of each resistor should be placed so that it connects to the
								ground bus strip. This can be done by placing the end of the resistor
								directly into the bus strip.  Alternatively, as shown in Fig. 2, you can
								insert the other end of the resistor into a different column (or node) and
								then use a wire to connect from that column to the ground bus strip.

								<br><br>

								When there is a <i>single</i> path for charge to flow through two components
								(i.e., any charge that flows through one component must also flow through
								the other), then we say the components
								are <a href="P04_KVL_KCL.html#SER"><i>in series</i></a>.  Each of the three
								LEDs in this circuit has a resistor in series with it.  These series
								resistors are used to limit the current that passes through their particular
								branches of the circuit and thus, as described in greater detail in
								the <a href="P03.cfm">Blink External LED project</a>, these are known as
								current-limiting resistors. LEDs are non-linear devices and can potentially
								pass large amounts of current when their threshold voltage is exceeded. The
								current-limiting resistors keep the current at a safe level. This helps to
								protect the LEDs and chipKIT board from the potential damage of drawing too
								much current.
							</li>
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
				<span class="TB-H1">
					Buttons
				</span>
				<br><br>
				<span class="TB-BODY">
					<cf_imagebox align="right"
					             path="../Parts/two-port-button.jpg"
					             width="170px"
					             caption="Fig. 3. Two-port button.">
						
					Before connecting the buttons to the circuit, it is appropriate to consider a bit of
					circuit theory so that we understand how buttons can be used to produce a signal that
					can be read by the chipKIT (digital) I/O pins.

					<br><br>
					
					If you examine the buttons used for this project, you will see that there are four
					distinct legs or &ldquo;terminals&rdquo; on the device.  The terminals are grouped
					such that two are together on one side of the button and two are on the opposite
					side.  In Fig. 3, you can see two of these terminals. As shown, the left side has two
					terminals, as does the right side (although these terminals are not visible in the
					figure).
					
					<br><br>
					
					The terminals on the same side of the button are <i>not</i> connected together unless
					the button is pressed.  However, the terminals on the left and right sides that are
					directly across from each other are always electrically connected, regardless of
					whether or not the button is pressed.  This internal layout of the button is depicted
					in <i>schematic</i> representation shown Fig. 4.  (A schematic representation
					provides a simplified or symbolic diagram for a device or circuit.)  Note that when the
					button is pressed all the terminals are electrically connected.  For the purpose of
					our analysis, the pair of terminals that are always connected (regardless of whether
					or not the button is pressed) can be thought of as just a single connection, as shown
					in Fig. 5.

					<br><br>
					
					<div align="center">
				      <table class="TBLAYOUT">
					      <tr>
						      <td align="center" style="width: 225px;">
							      <img style="width: 170px; align: center;"
							           src="P04files/two-port-button-schematic.png">
							      <br><br>
							      <div class="TB-FIGURES">
								      Fig. 4. Two-port button schematic symbol.
							      </div>
						      </td>
						      <td align="center" style="width: 225px;">
							      <img style="width: 50px; align: center;"
							           src="P04files/button-simple-schematic.png">
							      <br><br>
							      <div class="TB-FIGURES">
								      Fig. 5. Simplified button schematic.
							      </div>
						      </td>
					      </tr>
				      </table>
					</div>

					<br>

					In summary, when the button is pressed, a small piece of conductive material makes a
					physical connection between the &ldquo;top&rdquo; and &ldquo;bottom&rdquo;
					terminals. This connection is what allows current to flow between the terminals of
					the device.  When the button is not pressed, no current can flow.  

					<br><br>
					
				</span>

				<span class="TB-H1">
					Pull-Down Resistors
				</span>
				<br><br>
				<span class="TB-BODY">

					Before we begin looking at our specific button circuits, we must understand how to
					interpret what we'll see.  Figure 6 shows a button circuit with a <i>pull-down
					resistor</i> when the button is open (so no current can flow).  The schematic symbol
					for a resistor is the jagged collection of lines labeled &ldquo;R&rdquo; which is
					drawn below the button.  The top of the circuit is connected to a 3.3V source.  The
					bottom of the circuit is connected to ground (0V).  In circuit diagrams (schematics),
					as shown in Fig. 6, ground is often represented as three short horizontal lines of
					decreasing length (another common symbol for ground is an isosceles triangle with one
					of the tips pointing down).  A voltmeter, which allows us to read voltages at
					different points in the circuit, is also depicted in Fig. 6.  The voltmeter tells us
					the voltage between the two points to which its two &ldquo;probes&rdquo; are
					attached.  In this figure, one of these probes is always attached to ground while the
					other probe is moved to three different points.

			      <br><br>

			      <div align="center">
				      <table class="TBLAYOUT">
					      <tr>
						      <td style="width: 50px">&nbsp;</td>
						      <td>
							      <img style="width: 225px;"
							           src="P04files/pull-down-resistor-switch-open-1.png">
						      </td>
						      <td style="width: 70px">&nbsp;</td>
						      <td>
							      <img style="width: 225px;"
							           src="P04files/pull-down-resistor-switch-open-2.png">
						      </td>
					      </tr>
					      <tr><td>&nbsp;<br></td></tr>
					      <tr>
						      <td style="width: 50px">&nbsp;</td>
						      <td>
							      <div class="TB-FIGURES">
								      (a)
							      </div>
						      </td>
						      <td style="width: 70px">&nbsp;</td>
						      <td>
							      <div class="TB-FIGURES">
								      (b)
							      </div>
						      </td>
					      </tr>
				      </table>
				      
				      <table class="TBLAYOUT" align="center" cellpadding="0">
					      <tr>
						      <td style="text-align: center;">
							      <br>
							      <img style="width: 225px;"
							           src="P04files/pull-down-resistor-switch-open-3.png">
						      </td>
					      </tr>
					      <tr><td>&nbsp;<br></td></tr>
					      <tr>
						      <td>
							      <div class="TB-FIGURES">
								      (c)
							      </div>
						      </td>
					      </tr>
				      </table>
				      <br>
				      <div class="TB-FIGURES">
					      Fig. 6. Button circuit with a pull-down resistor and the button open.  (a) Voltmeter
					      attached to 3.3V supply.  (b) Voltmeter attached to ground. (c) Voltmeter attached
					      above the resistor.
				      </div>
			      </div> <!-- center -->

			      <br>

					<cf_TB-TabBox>
						<cf_TB-Tab
							 color="red"
							 path="P04files/P04_KVL_KCL.cfm"
							 title="Circuit Analysis">
					</cf_TB-TabBox>

					Before considering Fig. 6 further, we want to mention that a circuit that provides no
			      path for current to flow is known as an <i>open circuit</i>.  When two points in a
			      circuit are connected, with no resistance between them, these points are said to
			      be <i>shorted</i> together.  We sometimes simply say that there is a
			      <i>short circuit</i> between these two points.  These terms are explained in more
			      detail can be found by following the tab on the right.  This tab also provides a
			      further discussion of circuit analysis.

			      <br><br>

			      The buttons in this project must be pressed to create a path for current to flow.  In
			      other words, we need to press the button to &ldquo;close&rdquo; the circuit (or to
			      create a short circuit between two points).  Thus, these types of buttons are
			      sometimes referred to as &ldquo;push-to-close&rdquo; buttons.

			      <br><br>

			      Returning to Fig. 6, in Fig. 6(a), one of the probes is attached to the 3.3V source
			      and thus the meter read 3.3V, in spite of the fact that the button is open (and no
			      current is flowing).  If we move the probe so that it is attached to ground, as shown
			      in (b), the voltmeter reads 0V.  This is because both probes are attached to ground
			      and thus there is no voltage difference between these probes.  In (c), the probe is
			      moved to the point above the resister but below the open button.  The voltmeter again
			      reads 0V.  This is because there is nothing to supply a voltage at this point; there
			      is nothing to establish a flow of current through the resistor.

			      <br><br>

			      Figure 7 shows what happens when the button is pressed, i.e., the circuit is closed,
			      and the probe remains in the same location as shown in Fig. 6(c). There is now a
			      direct path from the 3.3V power supply to the probe.  We see that when the button is
			      open (Fig. 6(c)), the resistor serves to pull the voltage down to 0V at this probe
			      location, but if the button is closed (Fig. 7), the probe is attached to the 3.3V
			      supply.

			      <br><br>

			      <div align="center">
					<cf_imagebox align="center"
					             path="P04files/pull-down-resistor-switch-closed-1.png"
					             width="225px"
					             caption="Fig. 7. Button circuit with a pull-down
					                      resistor where the button is pressed/closed.">
			      </div>

			      <br>

				</span>

				<span class="TB-H1">
					Pull-Up Resistors
				</span>
				<br><br>
				<span class="TB-BODY">

			      Now let's consider a circuit where we switch the location of the button and the
			      resistor so that the resistor is directly tied to the 3.3V supply and the button is
			      directly connected to ground, as shown in Fig. 8.  In this figure, the voltmeter is
			      still measuring the voltage between ground and the point that is between the button
			      and the resistor.  In Fig. 8(a), the button is open, and no current can flow to
			      ground, and yet the voltmeter measures 3.3V.  This is because if there is any
			      difference in potential across the resistor, charge flows through the resistor.
			      However, once on the other side, there is no place for the charge to go.  Hence, the
			      charge quickly builds on the other side of the resistor to the level where there is
			      no difference in potential across the resistor.  Thus, current flow stops.

			      <br><br>

			      In Fig. 8(b) the button is closed, providing a direct connection between the probe
			      and ground.  In this case, the probe measures 0V.

			      <br><br>

			      <div align="center">
				      <table class="TBLAYOUT" align="center" cellpadding="0">
					      <tr>
						      <td style="width: 50px">&nbsp;</td>
						      <td>
							      <img style="width: 225px;"
							           src="P04files/pull-up-resistor-switch-open-1.png">
						      </td>
						      <td style="width: 70px">&nbsp;</td>
						      <td>
							      <img style="width: 225px;"
							           src="P04files/pull-up-resistor-switch-closed-1.png">
						      </td>
					      </tr>
					      <tr><td>&nbsp;<br></td></tr>
					      <tr>
						      <td style="width: 50px">&nbsp;</td>
						      <td>
							      <div class="TB-FIGURES">
								      (a)
							      </div>
						      </td>
						      <td style="width: 70px">&nbsp;</td>
						      <td>
							      <div class="TB-FIGURES">
								      (b)
							      </div>
						      </td>
					      </tr>
				      </table>
				      <br>
				      <div class="TB-FIGURES" align="center">
					      Fig. 8. A circuit with button and pull-up resistor (a) when the button is
					      open and (b) when the button is closed/pressed.
				      </div>
			      </div>

			      <br>
			      
			      In the circuit in Figs. 6 and 7, the resistor serves to <i>pull down</i> the voltage
			      to 0V when the button is open.  On the other hand, in the circuit in Fig. 8, the
			      resistor serves to <i>pull up</i> the voltage to 3.3V when the button is open.  Thus,
			      resistors used in this way are known as pull-down or pull-up resistors.

			      <br><br>

			  </span>
			</td>
		</tr>
	</table>
		
	<table class="TBLAYOUT">
		<tr>
			<td>
				<cf_box color="putty">
				<span class="TB-H2">Step 2: Setting up the Buttons</span>
				<br><br>
				<span class="TB-BODY">

					With that background out of the way, we are now ready to build the button portion of
					the circuit.

			      <br><br>

					<ol>
						<li>Connect the chipKIT 3.3V pin to the bus strip (rail) above the ground bus
							strip that was set up in Step 1.  For the sake of simplicity, the LEDs are not
							shown in Fig. 9.

							<div align="center">
							<cf_imagebox align="center"
							             path="P04files/Just_buttons.svg"
							             width="500px"
							             caption="Fig. 9. Button configuration.">
							</div>
							<br>
						</li>
						<li> Place three buttons into the breadboard as shown in Fig. 9. Going from left
							to right, we will label these as button A, button B, and button C.  Note the
							orientation of each button: one pair of legs is inserted to one side of the
							&ldquo;valley&rdquo; and the other pair is inserted on the other side. Most
							breadboards have a gap or valley that separates columns in the main section of
							the board (with the board placed as shown in Fig. 9).  Even if your breadboard
							does not have the aforementioned valley, the circuit will still be functional
							provided that you retain this button orientation.
						</li>
						<li> Using three wires, connect the right side of each button to the
							3.3V bus strip.
						</li>
						<li> Using three more wires, connect chipKIT digital I/O pin 7 to the left side of
							button A, pin 6 to the left side of button B, and pin 5 to left side of button
							C.
						</li>
						<li>For each button, connect one end of a 10 k&Omega; resistor to the left side of
							the button.  (These resistors act as pull-down resistors in this circuit.)
						</li>
						<li>Connect the other end of each resistor to the ground bus strip (you can use a
							wire to connect from the resistor to the bus strip, as shown in Fig. 9, or you
							can directly connect the end of the resistor to the bus strip).
						</li>
						<li>When a button is pressed, it supplies 3.3V to the corresponding digital I/O
							pin.  The chipKIT Max32 and Uno32 boards are designed to recognize a range of
							voltages&mdash;from a minimum of 2.4V to a maximum of 5.5V&mdash;as a
							<code>HIGH</code> input for the digital I/O pins.  That is, when the software
							function <code>digitalRead()</code> is called, it returns <code>HIGH</code> if
							the voltage on the pin being read is within this range.
							The <code>digitalRead()</code> function will be discussed later in this
							project.
						</li>
					</ol>

					You may wonder why we used a relatively small resistance of 220 &Omega; for the
					current-limiting resistors that are in series with the LEDs, but a relatively large
					resistance of 10 k&Omega; for the pull-down resistors.  (Note that <i>k</i> is an
					abbreviation for <i>kilo</i>, meaning thousands, so that 10 k&Omega; is another way of
					writing 10,000 &Omega;.)  The size of the current-limiting resistors was discussed in
					the <a href="P03.cfm">Blinking External LED project</a>.  These resistors need to be
					large enough to ensure that a damaging amount of current does not flow through the
					LED, but small enough that a sufficient amount of voltage appears across the LED so
					that it illuminates.  On the other hand, pull-down resistors primarily need to provide a
					path to ground while ensuring their respective circuits do not draw an excessive
					amount of current.  We could, in fact, use larger amounts of resistance for these
					pull-down resistors.  But, for reasons we won't explore here, if the resistance is
					too large, that may cause problems with the sensing of the voltage.

				</span>
				</cf_box>
				<br><br>
			</td>
		</tr>
	</table>
    
	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Complete Circuit</span>
				<br><br>
				<span class="TB-BODY">
					At this point, you should now have all the buttons and LEDs in the breadboard as
					shown in Fig. 10.  The next step is to write the sketch that controls the
					circuit.  Because this sketch uses <code>if</code> statements and comparison
					operators, we'll first introduce those programming constructors.

					<br><br>
					
					<div align="center">
					<cf_imagebox align="center"
					             path="P04files/Overall_cir_5_13.svg"
					             width="650px"
					             caption="Fig. 10: Circuit showing all the buttons and LEDs.">
					</div>

					<br>
				</span>
			</td>
		</tr>
	</table>


	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">
					<code>digitalRead()</code> Function
				</span>
				<br><br>
				<span class="TB-BODY">
			    
					The sketch for this project uses <code>if</code> statements and
					the <code>digitalRead()</code> function.  The <code>digitalRead()</code> function
					takes a single parameter, which is the pin that is &ldquo;read.&rdquo; The function
					reads the electrical state of the pin, and returns either <code>HIGH</code>
					or <code>LOW</code>, accordingly.  As an example, assume we want to store the current
					state of pin 7 in the integer variable <code>val</code>.  We could accomplish this
					using the following statements:
			    
					<pre class="brush: mpide;">
int val;              // Declare the integer variable val.
val = digitalRead(7); // Assign the state of pin 7 to val.
					</pre>

					If pin 7 is at a &ldquo;high&rdquo; voltage when the function is
					called, <code>val</code> is set to <code>HIGH</code>.  Otherwise,
					<code>val</code> is set to <code>LOW</code>.  We can also set the value of the
					variable <code>val</code> when we declare it as shown in the following statement:

					<pre class="brush: mpide; gutter: false;">
int val = digitalRead(7); // Assign the state of pin 7 to integer variable val.
					</pre>

					<br>

				</span>
			</td>
		</tr>
	</table>


	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">
					<code>if</code> and Comparison Statements
				</span>
				<br><br>
				<span class="TB-BODY">
					An <code>if</code> statement performs a test of a given &ldquo;logical
					expression.&rdquo; If this expression is &ldquo;true,&rdquo; then the code that
					follows the <code>if</code> statement is executed.  However, if the logical
					expression is <em>not</em> true (in other words, it is false), then the code
					following the <code>if</code> statement is not executed.  If we want
					an <code>if</code> statement to control the execution of multiple lines of code this
					code must be enclosed in braces.  The following is a &ldquo;template&rdquo; for
					an <code>if</code> statement:

					<pre class="brush: mpide;">
if (logical_expression) {
   // Code only executed if logical_expression is true.
}
					</pre>

					The details of what constitutes a logical expression are considered below.

					<br><br>
					
					We can also associate an <code>else</code> clause with an <code>if</code> statement.
					When present, the code associated with the <code>else</code> clause will not be
					executed if the logical expression is true, but will be executed if it is false.  A
					template for an <code>if</code> statement that includes an <code>else</code> clause
					is as follows:

					<pre class="brush: mpide;">
if (logical_expression) {
   // Code only executed if logical_expression is true.
}
else {
   // Code only executed if logical_expression is false.
}
					</pre>

					The logical expression that controls the actions of the <code>if</code> statement can
					take the form of a comparison expression.  A comparison is accomplished using
					a <i>comparison operator</i>, which is often called a <i>relational operator</i>.
					Examples of relational operators include <code>&lt;</code> (less
					than), <code>&gt;</code> (greater than), <code>&gt;=</code> (greater than or equal
					to), &ldquo;<code>==</code>&rdquo; (equal to), and
					<code>!=</code> (not equal to).  <i><b>A common programming error is to write a
					single equal sign instead of two equal signs when trying to compare two
					values.</b></i>  Keep in mind that a single equal sign is the <i>assignment
					operator</i> (that assigns the value on the right of the equal sign to the thing on
					the left of the equal sign).  Assuming <code>x</code> is an integer variable, the
					following are examples of comparison expressions:

					<pre class="brush: mpide; gutter: false;">
x == 0 // Is x equal to zero?
               </pre>

					<pre class="brush: mpide; gutter: false;">
x != 0 // Is x not equal to zero?
               </pre>

					<pre class="brush: mpide; gutter: false;">
x <= 5 // Is x less than or equal to five?
               </pre>

					The first expression evaluates to true when the variable <code>x</code> equals zero,
					and false for any other value.  The second expression evaluate to false
					if <code>x</code> equals zero, and true for any other value.  The third expression
					evaluates to true if <code>x</code> is less than or equal to five.  The
					following table lists all the relational operators:

					<table id="CT3">
						<thead>
							<tr>
								<th width="10%"><div align="center">Symbol</div></th>
								<th width="35%">Description</th>
								<th width="55%">Example</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td align="center">
									<code>&lt;</code>
								</td>
								<td>Less Than</td>
								<td>
									<code>7 &lt; x</code> <br>
									True if 7 is strictly less <code>x</code>. <br>
									Said another way, true if <code>x</code> is strictly greater than 7. <br>
									False is 7 is greater than of equal to <code>x</code>.
								</td>
							</tr>
							<tr>
								<td align="center">
									<code>&lt;=</code>
								</td>
								<td>Less Than or Equal To</td>
								<td>
									<code>x &lt;= 0</code> <br>
									True if <code>x</code> is less than or equal to zero. <br>
									False if <code>x</code> is greater than zero.
								</td>
							</tr>
							<tr>
								<td align="center">
									<code>==</code>
								</td>
								<td>Equal To</td>
								<td>
									<code>7 == x</code> <br>
									True if <code>x</code> equals 7. <br>
									False if <code>x</code> is not equal to 7.
								</td>
							</tr>
							<tr>
								<td align="center">
									<code>!=</code>
								</td>
								<td>Not Equal To</td>
								<td>
									<code>x != 123</code> <br>
									True if <code>x</code> is <i>not</i> equal to 123. <br>
									False if <code>x</code> is equal to 123.
								</td>
							</tr>
							<tr>
								<td align="center">
									<code>&gt;=</code>
								</td>
								<td>Greater Than or Equal To</td>
								<td>
									<code>7 &gt;= x</code> <br>
									True if 7 is greater than or equal to <code>x</code>. <br>
									False if 7 is strictly less than <code>x</code>.
								</td>
							</tr>
							<tr>
								<td align="center">
									<code>&gt;</code>
								</td>
								<td>Greater Than</td>
								<td>
									<code>x &gt; 97</code> <br>
									True if <code>x</code> is strictly greater than 97. <br>
									False is <code>x</code> is less than or equal to 97.
								</td>
							</tr>
						</tbody>
					</table>


					Keep in mind that these type of comparisons can be used as the &ldquo;logical
					expression&rdquo; that controls the behavior of an <code>if</code> statement.  With
					that in mind, an example of an <code>if</code> statement that we'll use to control
					one of the LEDs is:

					<pre class="brush: mpide;">
if (digitalRead(btnA) == HIGH) {
  digitalWrite(ledA, HIGH);
}
else {
  digitalWrite(ledA, LOW);
}
					</pre>

					The first thing that happens when this <code>if</code> statement is executed, is the
					logical expression in the parentheses in line 1 is evaluated.  This logical expression
					has, on the left side of the comparison operator, the <code>digitalRead()</code>
					function.  This function is executed, where the assumption is that the
					parameter <code>btnA</code> corresponds to the pin attached to button A.  The value
					this function returns is compared to the constant value <code>HIGH</code>.  If the
					value read is <code>HIGH</code>, line 2 is executed.  If the value is
					not <code>HIGH</code> (i.e., if it is <code>LOW</code>), then line 5 is executed.
					The assumption is that <code>ledA</code> correspond to the pin to which LED A is
					connected.  Stated more plainly, the syntax reads, &ldquo;If button A is pressed,
					turn on LED A, else turn off LED A.&rdquo;

					If you need to review the use of functions in a sketch, please refer to the
					project <a href="P02.cf">Blinking the Internal LED</a>.

					<br><br> 

				</span>
			</td>
		</tr>
	</table>
		
	<table class="TBLAYOUT">
		<tr>
			<td>
				<cf_box color="putty">
					<span class="TB-H2"> 
						Step 3: Writing the Sketch
					</span>
					<br><br>
					<span class="TB-BODY">

						Provided you understand the code shown above, we merely need to add a bit of
						initialization and then implement a similar construct three times, with the
						appropriate change of labels, to obtained the desired sketch.  To this end, the
						following is the complete sketch for this project.  Keep in mind that comments
						(shown in green) are purely for the sake of information and do not affect the
						behavior of the sketch.  Thus, you do not need to enter the comments shown here,
						but commenting your code is a good practice!

						<pre class="brush: mpide;">
/***************************************************************
 * Button-controlled LEDs.  Each LED will illuminate when its
 * corresponding button is pushed.  Any combination of LEDs can be
 * illuminated.
 */

// LED pins used for output.
const int ledA = 12;
const int ledB = 11; 
const int ledC = 8; 
// Button pins used for input.
const int btnA = 7;
const int btnB = 6;
const int btnC = 5;
        
void setup()
{
  // Set the LED pins to OUTPUT.
  pinMode(ledA, OUTPUT);
  pinMode(ledB, OUTPUT);
  pinMode(ledC, OUTPUT);
  // Set the button pins to INPUT.
  pinMode(btnA, INPUT);
  pinMode(btnB, INPUT);
  pinMode(btnC, INPUT);
}
        
void loop()
{
  /* Read the value of each digital input pin associated with the
   * buttons.  Use if statements to determine whether or not to turn
   * on (i.e., set to HIGH) the digital output pin for the
   * corresponding LED.
   *
   * The digitalRead() function returns a value of HIGH if the voltage
   * detected at the pin specified by its parameter is HIGH.  If the
   * detected voltage is not HIGH, the function returns LOW.
   *
   * If the digitalRead() function returns HIGH, then the corresponding
   * LED output pin is set to HIGH and the LED is illuminated.  If the
   * function returns LOW, the LED is set to LOW and LED is not
   * illuminated.
   */
        
  // Read and compare button A.
  if (digitalRead(btnA) == HIGH){
    digitalWrite(ledA, HIGH);
  }
  else {
    digitalWrite(ledA, LOW);
  }
  
  // Read and compare button B.
  if (digitalRead(btnB) == HIGH) {
    digitalWrite(ledB, HIGH);
  }
  else {
    digitalWrite(ledB, LOW);
  }
  
  // Read and compare button C.
  if (digitalRead(btnC) == HIGH) {
    digitalWrite(ledC, HIGH);
  }
  else {
    digitalWrite(ledC, LOW);
  }
}
						</pre>

						Once this sketch is uploaded to the chipKIT board, the circuit will be fully
						functional.  Assuming everything is working properly, you press button A to turn
						on LED A, press button B to turn on LED B, and press button C to turn on LED C.
						You can press any combination of buttons.

					</span>  
				</cf_box>
			</td>
		</tr>
	</table>


	<table class="TBLAYOUT">
		<tr>
			<td>
				<br><br>
				<span class="TB-H1">Core Concepts</span>
				<br>
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
									<li>Button operations.</li>
									<li><code>if</code> statements.</li>
									<li>Relational operators.</li>
									<li>Reading digital input.</li>
									<li>Series connection.</li>
									<li>Pull-up and pull-down resistors.</li>
									<li>Current limiting resistors.</li>
									<li>Open and short circuits.</li>
									<li>Series resistor configuration.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td width="20%">Functions Introduced:</td>
							<td width="80%">
								<ul>
									<li><code>digitalRead(pin)</code></li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
				<br>
			</td>
		</tr>
	</table>
	
	</cf_box>
	</body>
</html>
