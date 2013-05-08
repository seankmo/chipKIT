<html>	
	<meta name="author" content="Davis Cook">
	<meta name="Edits Version" content = "P09-amm-4-8-2013a" > 
	<head>
		<title>Debouncing via RC Filter</title>
		<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>
	<body>
	<cf_Box Color="White">
	   
	<table class="TBLAYOUT">
		<tr>
			<td align="center"> <span class="TB-PROJECTTITLE">Project 9: <br>Debouncing via RC Filter</span><br><hr></td>
		</tr>
	</table>
	  
	<br><br>    
  
	<table class="TBLAYOUT">
		<tr>
			<td valign="top">
				<span class="TB-H1">Introduction</span><br><br>
				<span class="TB-BODY"> 
				  In <a href="P07.cfm">Project 07</a>, we learned how to
				  debounce a button in a circuit with software. Other
				  solutions to this problem also exist.  In this project, we
				  will examine how to debounce the button circuit using a
				  resistor and capacitor to make an RC filter (resistive
				  capacitive filter). The key component here is the capacitor,
				  which is a device that stores energy using electrical
				  charge. It is important to understand how a capacitor works
				  before we begin, so there is <a href="P09files/P09What is a capacitor.cfm">
				  more reading on capacitors here</a>. 
				  A capacitor works so well for debouncing because it limits how
				  quickly the voltage can change over a period of
				  time. Essentially, the capacitor quickly charges and
				  discharges over every voltage spike, smoothing out the
				  button bounce. Depending on how quickly the capacitor can
				  charge, the button bounce should be diminished. 
				  This phenomenon  can be explained with the <a href="P09files/P09What is a capacitor.cfm#WaterAnalogy">
				  water analogy</a> that we have
				  discussed in other projects, the elastic wall in the
				  hydraulic capacitor can only stretch at a certain rate. If the
				  incoming water is moving too quickly, the elastic will slow
				  it down. Similarly, the rapid voltage spikes caused by the
				  bouncing button are slowed down to the capacitor's maximum
				  charge/discharge speed. 
			</td>
		</tr>
	</table>
	
	<table class="TBLAYOUT">
		<tr>
			<td valign="top">
				<br/><br/>
				<span class="TB-H2">Inventory:</span>
					<br/><br/>
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
								<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/LED_red.svg"></td>
							</tr>
							<tr>
							<td class="qty">1</td>
							<td>Two Port Button</td>
								<td align="center" class="image"><img style="width: 65px; height: 65px;" src="../Parts/PushButton.svg"></td>
							</tr>
							<tr>
							<td class="qty">1</td>
							<td>Breadboard</td>
								<td align="center" class="image"><img style="width: 150px; height: 150px;" src="../Parts/Breadboard_halfplus.svg"></td>
							</tr>
							<tr>
							<td class="qty">1</td>
							<td>220 &Omega; Resistor</td>
								<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/resistor_220.svg"></td>
							</tr>
							<tr>
							<td class="qty">2</td>
							<td>10K &Omega; Resistors</td>
								<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/resistor_10K.svg"></td>
							</tr>
							<tr>
							<td class="qty">1</td>
							<td>10 &micro;F Electrolytic Capacitor</td>
								<td align="center" class="image"><img style="width: 75px; height: 75px;" src="../Parts/Capacitor_Electrolytic.svg"></td>
							</tr>
					</table>

					</div>
					<br><br>
					</tbody>
			</td>
		</tr>
	</table>
		  

	  
	<table class="TBLAYOUT" id="ST1-putty">
		<tr>
		  <td valign="top">
			<br/><br/>
			<span class="TB-H1">Step 1: Planning the Circuit</span><br><br>	  
			<span class="TB-BODY">
			  To debounce the button properly, we cannot use a capacitor
			  alone; we must use a resistor as well. The combination of a
			  resistor and capacitor in this circuit is referred to as an
			  RC filter. RC filters can be used to filter out different
			  frequencies of current or voltage spikes.
			  A properly designed RC
			  filter could be used to filter out specific sound
			  frequencies (represented as electrical signals) being sent
			  to a speaker. This, however, is a bit beyond the scope of
			  our project.  Instead, we are going to be focusing on the
			  charge and discharge time of our RC circuit.  We can control
			  the rate at which the voltage changes by choosing the proper 
			  time constant for our circuit. The time constant is analogous 
			  to the rate at which the elastic can stretch in a hydraulic 
			  capacitor. Depending on how we choose our time constant, our 
			  circuit will reduce more or less of button bounce. The time 
			  constant for our circuit is controlled by the resistor 
			  and capacitor values we decide to use. For this project, 
			  we will use a 10K-0hm resistor
			  and a 10 &micro;F capacitor.  Here is further explanation of what
			  the time constant is
			  and <a href="P09files/P09ChoosingRC.cfm">how the R and C
			  values were determined</a> from it. 
		  </td>
		</tr>
		<tr>
			<td valign="top">
				<br><br>	
				<span class="TB-H1"> Step 2:&nbsp; Building the Circuit</span><br/><br/>	 
				<span class="TB-BODY">
				  Having now chosen our resistor and capacitor
				  values, we can finally begin putting the
				  circuit together.  We will be using the same
				  circuit we first used
				  in <a href="P07.cfm">project 06</a>. In that
				  project, the button bounce caused
				  &ldquo;noise&rdquo; that occasionally made
				  the LED glow dimly instead of blinking. The
				  addition of our RC filter remedies this
				  problem. For project 09, we need all the
				  parts used in <a href="P06.cfm">project
				  06</a>, as well as one additional 10K-Ohm
				  resistor and one 10 &micro;F
				  capacitor. After you build the circuit
				  from <a href="P06.cfm">project 06</a>, refer
				  to Fig. 1, which illustrates the individual
				  steps for modifying the circuit.
				</span>
			</td>
		</tr>
		<tr>
			<td  align="center">
				<br><br><span class="TB-BODY">Circuit Modification steps</span><br>
				<ol align="left">
				<br/>
				  <span class="TB-BODY">
				  <li>Connect the wire from pin 7 to the
				  button's right side.<br>  NOTE: The right side of the button
				  corresponds here to the &lduo;top&rdquo; of the button. This
				  means that the two button legs that are always electrically
				  connected are oriented vertically so that they span the
				  valley between the columns.</li>
				  <li>Connect the 5V source to the
				  button's current-limiting resistor.</li>
				  <li>Connect a 10 &micro;F capacitor
				  and 10 K&Omega; resistor to the right side of
				  the button.</li>
				  <li>Connect the ground pin (GND) to
				  the right side of the capacitor and resistor.</li>
				  </span>
				</ol>
				
				<a name="Fig"></a>
				<img src="P09files/RCfilter_bb.svg" width ="400" /><br/><br/>
				<div class="TB-FIGURES">Fig. 1. Circuit with trainable delay featuring an RC filter.</div><br/>
			</td>
		</tr>
	</table>
	
	<br><br>	
	<br><br>
			
			
	<table class="TBLAYOUT">
		<tr>
		  <td valign="top">
		    <span class="TB-H1">Testing the circuit</span><br><br>
			<span class="TB-BODY">
			  Now that the circuit has been built, you can test the
			  de-bouncing properties of the RC filter. Plug the USB cable
			  into your chipKIT board and program it with code
			  from <a href="P06.cfm">project 6</a>. Once your board is
			  programmed the external LED should start blinking.
			  
			  Remove the capacitor form your circuit; it's okay to do this
			  while the circuit has power.  We know it's okay to do this
			  because we understand how it will affect the
			  circuit. Removing the capacitor is equivalent to replacing
			  it with a gap in the circuit. Since nothing can flow across
			  this gap more current will be diverted through the resistor
			  that was in parallel with the capacitor.  Similarly, once
			  the capacitor has been charged in the circuit it will not
			  allow any current to flow through it. At this point the
			  capacitor will essentially act as a gap.  Since we
			  understand the removal of the capacitor is harmless we can
			  do it while the power is on. It is not a good idea to swap
			  our components if you don't know what will happen.  After
			  you have removed the capacitor pressing the button enough
			  times should eventually cause a button bounce and make the
			  LED dimly glow.  Tapping of flicking the button should
			  guarantee somthing similar to a bounce to occur. Once you
			  are able to reproduce the bounce consistently try sticking
			  the capacitor back in the circuit. Be sure you <b>put the
			  capacitor back exactly how it is shown</b> in Fig. 1. with
			  the white stripe terminal connected to ground. If you
			  reconnect the capacitor with the wrong polarity it could
			  damage your component. With the capacitor back in place you
			  should not be able to get the button to bounce even if you
			  flick or tap it.
			</span>
		  </td>
		</tr>
	</table>	

	<table class="TBLAYOUT">
		<tr>
		  <td valign="top">
			<span class="TB-BODY">
			  To actually see exactly what our circuit is doing look at
			  Fig. 2. It shows what the button signal looks like with the
			  capacitor absent from the RC filter. In Fig 3. the same
			  signal shown but at 100x zoom so you can clearly see the
			  noise caused by a button bounce. Finally Fig. 4. depicts
			  what the button signal looks like after the capacitor has
			  been put back.
			</span>								
		  </td>
		</tr>
	</table>


	<table class="TBLAYOUT">
		<tr>
			<td width="100" align="center">
				<img src="P09files/BSigNoCap.png" width = "480" /> <br/>
				<div class="TB-FIGURES">Fig. 2. Button signal no capacitor</div><br/>
			</td>
		</tr>
		<tr>
			<td valign="top" width="100" align="center">
				<img src="P09files/BSigNoCap100x.png" width = "480" /> <br/>
				<div class="TB-FIGURES">Fig. 3. Bounce noise present in button signal at 100x zoom</div><br/>
			</td>
		</tr>
		<tr>
			<td valign="top" width="100" align="center">
				<img src="P09files/BSigCap.png" width = "480"/> <br/>
				<div class="TB-FIGURES">Fig. 4. Effect of capacitor on button signal</div>
			</td>
		</tr>
	</table>	
	<table class="TBLAYOUT">
		<tr>
		  <td valign="top">
			<span class="TB-BODY">
			  As you can see the capacitor has dramatically limited the
			  rate at which voltage can change, especially compared to the
			  size of the bounce noise. Considering the effect the RC
			  filter has, our capacitor is definitely to big for handling
			  button noise alone. This is not surprising. The RC values we
			  chose were specifically meant to reduce bounce noise and any
			  other noise caused by a tap/flick.  The circuit was designed
			  this way because it is easier to see the effects of the
			  filter. A smaller capacitor could be used to target the
			  bounce noise specifically.
			</span>								
		  </td>
		</tr>
	</table>	

	
	<table class="TBLAYOUT">
		<tr>
			<td>
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
                     <li>How Capacitors work</li>
                     <li>Common types of capacitors and determining their values</li>
                     <li>RC time constant</li>
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
