<meta name="author" content="Davis Cook">
  
<head>
   <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
   <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
   <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
   <script type="text/javascript">SyntaxHighlighter.all();</script>
</head>




<cf_Box Color="White" NoMargins="1">
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="50%" align="center">
	<span class="TB-PROJECTTITLE">
	  Project 9:<br/>
	  Debouncing via RC Filter
	</span>
      </td>
      <td width="15%" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" align="right">
	<hr/><br/><br/>
      </td>
    </tr>
  </table>
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
        <span class="TB-H1">Introduction</span>
	<br/><br/>
        <span class="TB-BODY"> <!--this is a comment -->
	  In <a href="P07.cfm">Project 07</a>, we learned how to
	  debounce a button in a circuit with software. Other
	  solutions to this problem also exist.  In this project, we
	  will examine how to debounce the button circuit using a
	  resistor and capacitor to make an RC filter (resistive
	  capacitive filter). The key component here is the capacitor,
	  which is a device that stores energy using electrical
	  charge. It is important to understand how a capacitor works
	  before we begin, so there is <a href="P09files/P09What is a
	  capacitor.cfm">more reading on capacitors here</a>. A
	  capacitor works so well for debouncing because it limits how
	  quickly the voltage can change over a period of
	  time. Essentially, the capacitor quickly charges and
	  discharges over every voltage spike, smoothing out the
	  button bounce. Depending on how quickly the capacitor can
	  charge, the button bounce should be mitigated. <!--You need
	  a better transition. This is a really awkward, abrupt switch
	  to an analogy you should discuss more on the main
	  page.-->Referring back to the <a href="P09files/P09What is a
	  capacitor.cfm#WaterAnalogy">water analogy</a> that we have
	  discussed in other projects, the elastic wall in the
	  hydraulic capacitor can only stretch so fast. If the
	  incoming water is moving too quickly, the elastic will slow
	  it down. Similarly, the rapid voltage spikes caused by the
	  bouncing button are slowed down to the capacitor's maximum
	  charge/discharge speed. 
	  <br>
      </td>
    </tr>
  </table>
  

  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
      	<br/><br/>
	<span class="TB-H1">Step 1: Planning the Circuit</span> 
	<br/><br/>		  
	<span class="TB-BODY">
	  To debounce the button circuit properly, we cannot use a
	  capacitor alone; we must use a resistor as well. The
	  combination of a resistor and capacitor in this circuit is
	  referred to as an RC filter. RC filters can be used to
	  filter out different frequencies of electrical
	  variation <!--Explain what you mean by electrical
	  variation.-->. A properly designed RC filter could be used
	  to filter out specific sound frequencies (represented as
	  electrical signals) being sent to a speaker. This, however,
	  is a bit beyond the scope of our project.  Instead, we are
	  going to be focusing on the charge and discharge time of our
	  RC circuit.  We can control the rate at which the voltage
	  changes by choosing our resistor and capacitor values
	  properly to get a viable time constant <!--Why is this
	  important? What is the preferable range?-->. For this
	  project, we will use a 10K-0hm resistor and a 10 &micro;F
	  capacitor.  Here is an explanation of what a time constant
	  is and <a href="P09files/P09ChoosingRC.cfm">how the R and C
	  values were determined</a> from it. <!--YOu need at least a
	  brief explanation on this page. No one wants to navigate
	  away from the page every few sentences.-->
      
	  <br><br>
	  
      </td>
    </tr>
  </table>
  
  <!-- Inventory Table Header -->
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Inventory</span>
	<br/><br/>
      </td>
    </tr>
  </table>
  

<!-- Inventory Table Begin -->
  <table class="TBLAYOUT" style="width:95%;" cellpadding="6" border="1">
    <tr><!-- Row1 -->
      <td><!-- Component Text -->
        <span class="TB-BODY">1 LED</span>
      </td>
      <td><!-- Component Picture -->
      
      <!--PNG Image HTML Instantiation-->
      <!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
      
      <!--SVG Image HTML Instantiation-->
      <embed width="75" height="75"  src="../Parts/LED_red.svg" type="image/svg+xml"/>
      </td>
    </tr>
    <tr><!-- Row2 -->
      <td><!-- Component Text -->
	<span class="TB-BODY">1 Two Port Button</span>
      </td>
      <td><!-- Component Picture -->
	
	<!--PNG Image HTML Instantiation-->
	<!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
	
	<!--SVG Image HTML Instantiation-->
	<embed width="75" height="75"  src="../Parts/PushButton.svg" type="image/svg+xml"/>
    </td>
    </tr>
    <tr><!-- Row3 -->
    <td><!-- Component Text -->
      <span class="TB-BODY">1 Breadboard</span>
    </td>
      <td><!-- Component Picture -->
	
	<!--PNG Image HTML Instantiation-->
	<!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
	
	<!--SVG Image HTML Instantiation-->
	<embed width="75" height="75"  src="../Parts/Breadboard_halfplus.svg" type="image/svg+xml"/>
    </td>
    </tr>
    <tr><!-- Row4 -->
      <td><!-- Component Text -->
	<span class="TB-BODY">1 220 &Omega; Resistor</span>
      </td>
      <td><!-- Component Picture -->
	
	<!--PNG Image HTML Instantiation-->
      <!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
      
      <!--SVG Image HTML Instantiation-->
      <embed width="75" height="75"  src="../Parts/resistor_220.svg" type="image/svg+xml"/>
      </td>
    </tr>
    <tr><!-- Row5 -->
      <td><!-- Component Text -->
	<span class="TB-BODY">2 10K &Omega; Resistors</span>
      </td>
      <td><!-- Component Picture -->
	
	<!--PNG Image HTML Instantiation-->
	<!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
      
	<!--SVG Image HTML Instantiation-->
	<embed width="75" height="75"  src="../Parts/resistor_10K.svg" type="image/svg+xml"/>
    </td>
    </tr>
    <tr><!-- Row6 -->
      <td><!-- Component Text -->
        <span class="TB-BODY">1 10 &micro;F Electrolytic Capacitor</span>
      </td>
      <td><!-- Component Picture -->
	
      <!--PNG Image HTML Instantiation-->
      <!-- <img style="width: 75px; height: 75px;" alt="LEDsetup" src="P09files/PLACEHOLDER.png">-->
      
      <!--SVG Image HTML Instantiation-->
      <embed width="75" height="75"  src="../Parts/Capacitor_Electrolytic.svg" type="image/svg+xml"/>
      </td>
    </tr>
  </table>
  
<!-- Inventory Table End -->
	

  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
     <tr>
       <td valign="top">
      			</br></br>
			<span class="TB-H1"> Step 2:&nbsp; Building the Circuit</span> 
			
			<br/><br/>	  
			
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

			<br><br>
       
       </td>
     </tr>
  </table>		
  
  
		
		
		
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="100" align="center">
	<ol align="left">
	  <span class="TB-BODY" >Modifying the Circuit</span>

	  <br/><br/>

	  <li><span class="TB-BODY">Connect the wire from pin 7 to the
	  button's right side.<br>  NOTE: The right side of the button
	  corresponds here to the &lduo;top&rdquo; of the button. This
	  means that the two button legs that are always electrically
	  connected are oriented vertically so that they span the
	  valley between the columns.</span></li>
	  <li><span class="TB-BODY">Connect the 5V source to the
	  button's current-limiting resistor.</span></li>
	  <li><span class="TB-BODY">Connect a 10 &micro;F capacitor
	  and 10 K&Omega; resistor to the right side of
	  the button. </span></li>
	  <li><span class="TB-BODY">Connect the ground pin (GND) to
	  the right side of the capacitor and resistor.</span></li>
	</ol>
	
	<a name="Fig"></a>
      	<!--<img src="P09files/RCfilter_bb.png" width ="500" />	</div> <br/> -->
	<embed src="P09files/RCfilter_bb.svg" type="image/svg+xml" width="400"/><br/><br/>
        <div class="TB-FIGURES">Fig. 1. Circuit with trainable delay featuring an RC filter.</div><br/>
      </td>
    </tr>
    <tr>
      <td colspan="2">
	
	<br/><br/>
      
      </td>
    </tr>
  </table>		
  
		
		
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
        <span class="TB-BODY">
	  Now that we have built the circuit, you can test the
	  debouncing properties of the RC filter. Plug the USB cable
	  into your chipKIT board and program it with code
	  from <a href="P06.cfm">project 6</a>. Once your board is
	  programmed, the external LED should start blinking.

	  <br><br>
	  
	  Remove the capacitor from the circuit; it's okay to do this
	  while the circuit has power.  We know it's okay to do this
	  because we understand how it will affect the
	  circuit. Removing the capacitor is essentially replacing it
	  with a gap in the circuit. Since nothing can flow across
	  this gap, more current will be diverted through the resistor
	  that was in parallel with the capacitor. <!--And what is the
	  result of doing this? For the hardware/visibly?-->
	  Similarly, once the capacitor has been charged in the
	  circuit, it does not allow any current to flow through
	  it. At this point, the capacitor will essentially act as a
	  gap.  After you have removed the capacitor, pressing the
	  button enough times should eventually cause button bounce
	  and make the LED glow dimly (instead of blinking).  Tapping
	  or flicking the button accomplishes effectively the same
	  thing. Once you are able to reproduce the bounce
	  consistently, try sticking the capacitor back in the
	  circuit. Be sure you <b>put the capacitor back exactly as
	  shown</b> in Fig. 1 (with the white stripe terminal on the
	  capacitor connected to ground). If you reconnect the
	  capacitor with the wrong polarity, it may damage your
	  component <!--The capacitor or the board? Be more
	  specific.-->. With the capacitor in place you, should not be
	  able to get the button to bounce even if you flick or tap
	  it.
	</span>
     
	<br><br>

      </td>      
    </tr>
  </table>	

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-BODY"><!--What software are you using? Make
	  sure the reader knows this information.--> To see what the
	  circuit is actually doing, see Fig. 2. It shows what the
	  button signal looks like with the capacitor absent from the
	  RC filter. In Fig, 3, the same signal is shown magnified
	  100x, so that you can clearly see the noise caused by a button
	  bounce. Finally, Fig. 4 depicts what the button signal looks
	  like after the capacitor is replaced within the circuit.
	</span>

	<br><br>
								
      </td>
    </tr>
  </table>


  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="100" align="center">
      	<img src="P09files/BSigNoCap.png" width = "480" /> <br/>
	<div class="TB-FIGURES">Fig. 2. Button signal without a capacitor.</div><br/>
      </td>
    </tr>
    <tr>
      <td valign="top" width="100" align="center">
      	<img src="P09files/BSigNoCap100x.png" width = "480" /> <br/>
        <div class="TB-FIGURES">Fig. 3. Bounce noise present in button signal at 100x zoom.</div><br/>
      </td>
    </tr>
    <tr>
      <td valign="top" width="100" align="center">
      	<img src="P09files/BSigCap.png" width = "480"/> <br/>
        <div class="TB-FIGURES">Fig. 4. Effect of capacitor on button signal.</div>
      </td>
    </tr>
    <tr>
      <td colspan="2">
	<br/><br/>
    </td>
    </tr>
  </table>	
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-BODY">
	  As you can see, the capacitor dramatically limits the
	  rate at which voltage can change, especially compared to the
	  size of the bounce noise. Considering the effect the RC
	  filter has, our capacitor is definitely too big for handling
	  button noise alone. This is not surprising. The RC values we
	  chose were specifically meant to reduce bounce noise and any
	  other noise caused by a tap/flick.  The circuit was designed
	  this way because it is easier to see the effects of the
	  filter. A smaller capacitor could be used to target the
	  bounce noise specifically.
	</span>								
  
	<br><br>

      </td>
    </tr>
  </table>	

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Summary<o:p></o:p></span>
	<span class="TB-BODY">
	  <br/><br/>How capacitors work<br/>
	  Common types of capacitors and determining their values<br/>
	  RC time constant<br/> 
	  
	</span>								   
      </td>
    </tr>
  </table>



</cf_Box>
