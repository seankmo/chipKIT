<html>
	<head>
		<meta name="author" content="Davis Cook">
		<title>Blink External LED</title>
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
				<span class="TB-PROJECTTITLE">
					Project 3:<br>
					Blink External LED
				</span>
				<hr>
			</td>
		</tr>
	</table>
	
	<br>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Introduction</span>
				<br><br>
				<span class="TB-BODY">
					<cf_TB-TabBox>
						<cf_TB-Tab color="red" path="P03files/P03Electric Review.cfm" title="Fundamentals
					of Electricity">
					</cf_TB-TabBox>

					In the <a href="P02.cfm">Blinking the Internal LED project</a>, we programmed the
					chipKIT microcontroller to control an on-board LED. Now we will build our own
					external LED circuit and control it with the microcontroller. To do so, we must
					understand the properties of the circuit and its components.  If you are unfamiliar
					with the fundamentals of electricity and simple electrical components, a review of
					these topics is available by clicking the box on the right.

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
								<th width="60%">Description</th>
								<th width="30%">&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="qty">1</td>
								<td>LED</td>
								<td align="center" class="image">
									<img src="../Parts/LED_red.svg">
								</td>
							</tr>
							<tr>
								<td class="qty">1</td>
								<td>220 &Omega; resistor</td>
								<td align="center" class="image">
									<img width="150" src="../Parts/resistor_220.svg">
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
					<span class="TB-H2">Step 1: Designing the Circuit</span> 
					<br><br>
					<span class="TB-BODY">
						The circuit we are building is relatively simple and
						is comparable to a circuit with a battery, a light
						switch, and a light bulb.  The chipKIT board will
						act as both the switch and the power source
						(effectively the battery), while an LED will serve
						as the &ldquo;light bulb.&rdquo; When an LED is
						illuminated, typically there is (and should be) a
						voltage drop across its terminals of approximately
						2V.  The orientation we use when we place an LED in
						a circuit is important.  The LED will illuminate
						when the voltage drop is from
						the <a href="P03files/P03Electric%20Review.cfm#AnodeCathode">anode</a>
						to the
						<a href="P03files/P03Electric%20Review.cfm#AnodeCathode">cathode</a>.
						
						<br><br>
						
						It is possible to have a voltage drop across an LED of more than 2V.  However, if
						the voltage drop exceeds the <i>maximum forward voltage</i> of approximately 3V,
						the LED might be damaged.  When they are in a
						<span class="TB-LITERAL1">HIGH</span> state, the output &ldquo;pins&rdquo; of the chipKIT boards have
						a voltage level of 3.3V (and 0V when they are in a <span class="TB-LITERAL1">LOW</span> state).  If we
						attach an LED between one of the output pins and ground (0V), then set the output
						pin to <span class="TB-LITERAL1">HIGH</span>, the voltage that appears across the LED will exceed its
						maximum forward voltage.  Because of the non-linear relationship between the
						current and the voltage in an LED, small changes in voltage can result in large
						changes in current.  This is discussed in greater depth
						<a href="P03files/P03Electric%20Review.cfm">Fundamentals of Electricity</a> page
						mentioned in the Introduction.  Thus voltages that exceed the
						maximum forward voltage cause too much current to flow, damaging the LED and
						possibly damaging the chipKIT board.

						<br><br>

						To prevent any damage, we need to add
						a <i>current-limiting resistor</i> to our circuit.
						This resistor should be connected <i>in series</i>
						with the LED, meaning that any current that flows
						through the resistor must also flow through the LED.
						A resistance of 220 &Omega; will ensure that the
						maximum forward voltage of the LED is not exceeded.
						A discussion
						regarding <a href="P03files/P03Choosing%20Resistor.cfm">how
						to determine the size of the current-limiting
						resistor is available here</a>.
					</span>

					</cf_box>
				</td>
			</tr>
		</table>
		
		<br><br>
   
		<table class="TBLAYOUT">
			<tr>
				<td>
					<span class="TB-H1"> Breadboard Basics</span> 
					<br><br>
					<span class="TB-BODY">
						Having chosen our current-limiting resistor, we are almost ready to begin building
						the circuit.  We will use a <i>breadboard</i> to facilitate the construction of
						the circuit.  So, before we connect the components together, it is important to
						understand the internal connections within the breadboard.  Figure 1 shows a
						breadboard where various holes are highlighted with different colors.  If two
						holes share the same highlighted color, they are electrically connected (not all
						connections are highlighted).  This particular breadboard has two <i>rails</i> at
						the top and bottom.  These horizontal lines of holes span the length of the
						breadboard and are electrically connected.  The holes in the top-most rail are
						highlighted in orange and the holes in bottom-most one are highlighted in green.
						In the central area of the board are vertical lines of five holes that are
						electrically connected.  These lines of five holes are known as nodes.  There are
						two groups of nodes, one of which is above the <i>valley</i> and the other of
						which is below.  This valley forms an electrical barrier between the nodes.

						<br><br>

						<div align="center">
						<cf_imagebox align="center"
						             path="P03files/BasicBreadboard.svg"
						             width="513px"
						             caption="Fig. 1. Breadboard electrical connections.">
						</div>
							
						<br>

						In Fig. 1, the red lines represent wires.  These wires may be represented as
						either straight lines, curved lines, or a collection of straight-line segments.
						Functionally, they are all the same.  From an electrical perspective, the only
						important thing is the location of the end-points of the wire.  The wires that
						appear in the breadboard diagrams can be different colors and the colors
						themselves carry no inherent meaning.  However, it is typical to use black for
						wires that are at a potential of 0V (ground), while red is often used for a wire
						that is tied to a positive voltage source.

						<br><br>

						Two nodes can be connected by inserting the ends of a wire into the holes of the
						different nodes.  On the left side of the breadboard in Fig. 1, a wire has been
						used to establish a connection between nodes on either side of the valley.  The
						holes of these two nodes are highlighted in light blue.  To the right of this, a
						wire has been used to connect neighboring nodes on the same side of the valley.
						These nodes are highlighted in red.  The holes of the three nodes highlighted in
						purple have been connected using two wires.  The wires we use in the projects will
						sometimes be called <i>jumper wires</i> or simply <i>jumpers</i>.

						<br><br>

						Additionally, as demonstrated in the bottom right of Fig. 1, a node can be
						connected to a rail.  In this case, a wire is used to connect one of the nodes to
						the bottom-most rail.  The holes of both the node and rail are shown in green,
						indicating they are electrically connected.

						<br><br>

						Figure 2 depicts, using dark gray bars, the underlying electrical connections of
						the nodes and rails.  There are various configurations of breadboards, with
						different numbers of nodes, rails, etc.  But, the underlying electrical
						connections should always be fairly obvious, provided you understand the
						configuration described here.

						<br><br>

						<div align="center">
							<cf_imagebox align="center"
							             path="P03files/BasicBreadrails.svg"
							             width="513px"
							             caption="Fig. 2. Underlying electrical connections in a
							                      breadboard.">
						</div>

						<br>

						<span class="TB-H1">chipKIT Pins</span> 
						<br><br>

						Next, it is important to be familiar with some of the different types of chipKIT
						connections.  The holes on the board are referred to as <i>pins</i>.  There are a
						lot of pins on the chipKIT boards, but we are only going to consider a few.
						Figures 3 and 4 indicate the pins that are currently of interest to us on an Uno32
						and a Max32, respectively.  The &ldquo;digital pins&rdquo; are generally arranged
						in two parallel rows.  These pins are identified by a number.  The numbers are
						printed on the chipKIT boards.  For the Uno32, and for the digital pins at the top
						of the Max32, the numeric labels for the pins are <i>not</i> immediately adjacent
						to the pins (instead, as shown in Figs. 3 and 4, the &ldquo;upper&rdquo; and
						&ldquo;lower&rdquo; labels correspond to the &ldquo;upper&rdquo; and
						&ldquo;lower&rdquo; pins).  In Fig. 3, arrows are used to identify pin 33 and its
						label, as well as pin 3 and its label.  In Fig. 4, arrows identify pin 77 and its
						label, as well as pin 3 and its label.  In contrast to the pins at the top of the
						board, for the digital pins along the right side of the Max32, each label is
						adjacent to its corresponding pin (see Fig. 4).

						<br><br> 

						<div align="center">
							<cf_imagebox align="center"
							             path="P03files/Uno32%20Pins.svg"
							             width="520px"
							             caption="Fig. 3. Digital and source pins on an Uno32.">
								
							<br>
	    
							<cf_imagebox align="center"
							             path="P03files/Max32%20Pins.svg"
							             width="650px"
							             caption="Fig. 4. Digital and source pins on a Max32.">
						</div>

						<br>
	    
						Figures 3 and 4 also identify ground pins and source pins.  <i>Ground pins</i> are
						always at a potential of 0V.  The <i>5V pins</i> and <i>3.3V pins</i> always
						maintain their respective positive voltage.  

						<br><br>

						The digital pins be configured either to read input or write output.  When a pin
						is configured for output, the pin can be set to one of two states.  The pin's
						state is set, using the appropriate programming statements, to
						either <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span>, as we discussed in
						the <a href="P02.cfm">Blinking the Internal LED project</a>.  When set
						to <span class="TB-LITERAL1">HIGH</span>, a digital pin maintains a voltage of 3.3V.  Now we can begin
						building the circuit!

						<br><br>
						
					</span>
				</td>
			</tr>
		</table>
		
		<table class="TBLAYOUT">
			<tr>
				<td>
					<cf_box color="putty">
					<span class="TB-H2"> Step 2: Building the Circuit</span> 
					<br><br>
					<span class="TB-BODY">

						Grab a breadboard, an LED, and a 220 &Omega; resistor. Any breadboard is fine and
						it doesn't matter what color the LED is.  In this project, as shown in Fig. 5, a
						ground pin is connected to a rail.  This rail is, in turn, connected to one end of
						a resistor.  When we say two things are connected, we mean they are electrically
						connected.  Thus, if two components are directly plugged into the same node or if
						a wire is plugged into two different areas of the board, then these things are
						said to be &ldquo;connected.&rdquo; The other end of the resistor is connected to
						the cathode of the LED (the shorter &ldquo;leg&rdquo; of the LED).

						<br><br>

						Pin 3 is connected directly to the anode of the LED (the longer
						&ldquo;leg&rdquo;).  Note that we elected to connect the ground pin to a rail and
						then the rail to a component, whereas we connected pin 3 directly to a component.
						For this simple circuit, there isn't a compelling reason to use the rail&mdash;we
						could have connected one end of the current-limiting resistor directly to ground.
						However, when circuits become more complicated, you will typically find that many
						components need to be connected to ground and thus using a rail for ground can
						help reduce the clutter of the wires.  On the other hand, it is unlikely that
						several components will need to be connected to a single pin.  That is the reason
						we attached pin 3 directly to its &ldquo;final&rdquo; destination in the circuit
						of Fig. 5.  (If multiple things need to be connected to pin 3, we could either
						attach pin 3 to a rail or establish the additional connections using the remaining
						holes in the node to which pin 3 is attached.  Note that, in Fig. 5, there are
						currently three unused holes in the node attached to pin 3.)

						<br><br>
						
						Because pin 3 is attached to the anode of the LED (and because the other end of
						the LED is attached to ground through the current-limiting resistor), when pin 3
						is <span class="TB-LITERAL1">HIGH</span>, the LED will be illuminated.  Conversely, when pin 3
						is <span class="TB-LITERAL1">LOW</span>, the LED will be off.  Now, before writing the sketch to
						control the LED, make sure you have created the circuit as shown in Fig. 5.

						<br><br>

						<div align="center">
							<cf_imagebox align="center"
							             path="P03files/external%20led_bb.svg"
							             width="500px"
							             caption="Fig. 5. Circuit to control an external LED.">
						</div> 

						<br><br>

						<span class="TB-H2">Step 3: Programming the chipKIT Board</span>

						<br><br>

						Now that we have the circuit properly wired, it is time to program the chipKIT
						board.  Open MPIDE.  You can start with a new sketch or you can start from the
						sketch using in the <a href="P02.cfm">Blinking the Internal LED project</a>.  If
						you start with that previous sketch, the only change you need to make is to
						replace pin 13 with pin 3, i.e., replace all occurrences of 13 with 3.  Having
						made that change, you can upload the sketch to the board and now the external LED
						should blink with a two-second interval.

						<br><br>

						<i>However</i>, there is one other change we want to make in the sketch.  Numbers,
						by themselves, can be rather meaningless.  If you see the number 3 or 13 and are
						provided no other information, those numbers carry no intrinsic meaning.  You
						might think that at least a number intrinsically conveys a measure of quantity,
						but perhaps the number was meant to be used as an identifier&mdash;such as a pin
						identifier&mdash;rather than a measure of quantity.  Nevertheless, for the sake of
						argument, let's assume you are at least aware that these numbers correspond to pin
						numbers.  Then you are left to wonder what is significant about one pin as opposed
						to another?  Is the pin being used for reading or writing?  What is attached to
						that pin?  Is the pin connected an LED or a motor or a sensor or something else?

						<br><br>

						To make the code more <i>readable</i>, and hence, more maintainable, we can use
						<i>variables</i> instead of numbers in our sketches.  Because we are free to
						choose variable names, we can use names that help document the code, i.e., with
						the user of variables the code itself can provide greater information about what
						the code does.

						<br><br>

						Furthermore, if we use variables in our code, rather than a number, if we ever
						need to change the value of the variable (such as changing it from 13 to 3), we
						would only need to change the code in the one place where the value of the
						variable is set.  Contrast this to using numbers: when using numeric values, to
						change a particular value we have to find and change each occurrences of the
						number (while also ensuring the number we've found represents what we think it
						does&mdash;for example, in a larger program, 13 might be a pin number or it could
						represent some other quantity like the number of turns one has in a game).
						Suffice it to say there are a host of reasons why it is better to use variables
						instead of numerical values within our sketches.

						<br><br>

						The use of variables is further
						explained <a href="P03files/P03Programing_Variables.cfm">here</a>.  The import
						things about creating a variable are that we must provide a &ldquo;type&rdquo; and
						a variable name when we declare a variable.  Optionally, we can set the value of
						the variable when it is declared.  We do this by assigning (using the equal sign)
						a value to the variable.  Pin numbers are integer values and thus a variable that
						represents a pin should have a type of <span class="TB-KEYWORD2">int</span>.  If the value of a
						variable will not change throughout a sketch, it is a good practice to also
						provide what is known as a <i>type specifier</i> that indicates the variable is
						actually a constant.  This type specifier is <span class="TB-BLACK">const</span>. 
						
						<br><br>

						Putting everything together, the new sketch that blinks the external LED is as
						follows:

						<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
// Define the constant integer variable ledPin to be 3.
// This global variable is defined in all functions.
const int ledPin = 3;
						 
void setup()
{
  // Set LED pin to OUTPUT.
  pinMode(ledPin, OUTPUT);
}

void loop()
{
  digitalWrite(ledPin, HIGH); // Turn on the LED.
  delay(1000);                // LED remains on for 1 second.
  digitalWrite(ledPin, LOW);  // Turn off the LED.
  delay(1000);                // LED remains off for 1 second.
}
</pre>
</cf_box>
</div>

						After writing this sketch, uploaded it to the chipKIT board.  The external LED
						should blink.  If you wanted to go back to blinking the internal LED, all you
						have to do is change 3 to 13 in line 3 (and reload the sketch to the board).

					</span>  
					</cf_box>
				</td>
			</tr>
		</table>
	
		<table class="TBLAYOUT">
			<tr>
				<td>
					<br><br>
					<span class="TB-H1">Core Concepts:</span><br><br>
					<table id="CT3">
						<thead>
							<tr>
								<th scope="col" width="20%">&nbsp;</th>
								<th scope="col" width="80%">&nbsp;</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Core Concepts</td>
								<td>
									<ul>	  
										<li>Resistance and current-limiting resistors<br></li>
										<li>How to use a breadboard<br></li>
										<li>Uno32 and Max32 pins<br></li>
										<li>Using variables<br></li>
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

