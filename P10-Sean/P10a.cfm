<html>
  <head>
    <title>Project 10: Operational Amplifiers</title>
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
	  <span class="TB-PROJECTTITLE">Operational Amplifiers</span><br><hr>
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

	  For this project we will be building two circuits that are designed to
	  filter an input to our chipKIT board, all using operational amps (or op amps for short).
	  This particular project is designed more to introduce you to the theory and usage of Op amps
	  and provide a basic introduction to signal processing. It is less focused on any one application,
	  and more to provide a basic understanding of the underlining theory.

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
		  <td>Potentiometer dial (resistance range from 10&Omega; to 10k&Omega;</td>
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
		  <td>Connecting wires</td>
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
        <span class="TB-H1">Introduction to Opamps:</span><br><br>
	
      
      </td>
      </tr>
      <tr>
      <td>
      <span class="TB-BODY">
      
      
      Like its namesake an opamps is a class of amp that is designed to perform a mathematical operation on a signal.
      Many times when designing electrical circuits, the input we receive to the circuit has to be processed first
      before we can do anything useful with the signal (likewise sometimes we have to process output signals as well).
      For example, microphones like most sensors produce signals that have incredibly low voltages (in the micro to millivolt range).
      Before the signal can be used, it has to be amplified to a level recognizable by other components in the circuit.
      This is commonly done with opamps, where the amp scales the input signal (basically multiplying the signal by a constant value)
      to a point where it is usable.  Opamps are often configured to perform many other tasks than just scaling.
      
      
      
      
      </span>
      </td>
      </tr>
      <tr>
      <td>
      <span class="TB-BODY">
      <br><br>
      Some of the more common operations are:
      
	  <ul>
	  <li> Signal scaling:  Either increase or decrease the gain of a signal (multiplying by a constant).</li>
	  <li> Taking the difference between two signals (subtraction).</li>
	  <li> Summing of two signals (addition).</li>
	  <li> Differentiating a signal (finding the signals rate of change).</li>
	  <li> Integrating a signal (finding the area of a signal, i.e. if you were to graph a signal over time, integration would find the area of the shape formed in that graph).</li>
	  
	  </ul>
      
      </span>
      
    </td></tr>
    
    </table>
    
    <br><br>
    
    
    <table class="TBLAYOUT">
    
      
      <tr>
      <td width = "300px" valign="top">
	<span class="TB-BODY">
	<br>
	
	The kind of opamps we will be discussing for this tutorial will be integrated circuits (IC) and are considered the “voltage” type.
	A voltage amp is the most common type of amp and simply designates that the voltage level at the amp’s output is controlled by the voltage
	level at its input. 
	
	
      </td>
      <td width= "50px">
  
      
      <td valign="top" align="center">
      
            <table id="CT3">
            <thead>
              <tr>
		  <th scope="col" width="40%">Type:&nbsp;</th>
                  <th scope="col" width="30%">Input:&nbsp;</th>
                  <th scope="col" width="30%">Output:&nbsp;</th>
		  
              </tr>
            </thead>
	    <tbody>
	    
		  <!-- Row1 -->
		  <tr><td>
		  
		  Voltage
	    
		  </td><td>
		  
		  Voltage
	    
		  </td><td>
	    
		  Voltage
	    
		 </td></tr>
	      
		 <!-- Row2  -->
		 <tr><td>
		 
		 Current
		 </td><td>
		 
		 Current
		 
		 </td><td>
		 
		 Current
		 
		 </td>
	    
	    
		<!-- Row3  -->
		<tr><td>
	    
	        Transconductance
	    
		</td><td>
		
		Voltage
		
		</td><td>
	    
		Current
	    
	        </td></tr>
	    
		<!-- Row4 --->
		<tr><td>
		
		Transresistance
		
		</td><td>
		
		Current
		
		</td><td>
		
		Voltage
		
		</td></tr>
	      
	    </tbody>
	    </table>

	   <div class="TB-FIGURES">Table 1. Opamp Types.</div>
	    
      
      
      
      </span>
      </td></tr>
      
      </table>
      
      
      <br><br>
      
      <table class="TBLAYOUT">
	<tr><td>
	<span class="TB-BODY">
	

	This is like our microphone example, where a small voltage level at the input of the amp produced a large scaled version
	of the signal at the amps output. This is opposed to a say a power amp that you would find in a high end stereo system,
	which is a “current” type of amp, and performs the same task except this time amplifying current instead of voltage.
      
	
	
	
	
	</span>
	</td></tr>    
      </table>
      
      <br><br>
      <table class="TBLAYOUT">
	<tr><td>
	<span class="TB-H1">Opamps:</span><br><br>
	</td></tr>
	<tr><td>
	
	<span class="TB-BODY">
		    
		    We will now take time to discuss the general functionality of opamps, as they are probably the most
		    complicated component that we have come across so far. While there may be some small differences between
		    opamps made by different manufactures, they generally all work identically.  
	
	
	</span>
	</td></tr>
	<tr><td align="center">
	
	<cf_imagebox align="center" path="P10files/opampfull.svg" width="600px" caption="Fig. 1 TCA0372 Opamp schematic.">
	<br><br>
	
	</td></tr>
	<tr><td>
	<span class="TB-BODY">
	
      We first start by showing the complete circuit of the opamp.
      <br><br>
      Figure 1 shows the circuit schematic for the TCA0372, the opamp we will be using for this tutorial. This is the internal
      layout of the components within the IC, and as you can see, this circuit is incredibly complicated (explaining the exact
      functionality goes well beyond the scope of this tutorial).
      <br><br>
      Luckily, since we know how the input and output of the circuit function, we can create an abstract model for this component.
      You can think of the abstract model as kind of a black box. We know what information sent into the device will produce what
      output, so how the information is changed internally inside the box is unimportant. The different types of operations performed
      by opamps are set by configuring external components to the opamp, so for our purposes we simply need to know the how the
      abstract model of the opamp functions to be able to use the component.
      <br><br>
      
      </span>
      </td><tr>
      <tr><td>
      
      <cf_imagebox align="center" path="P10files/opampdiagram.svg" width="600px" caption="Fig. 2 Opamp abstract model.">
      
      </td></tr>
      <tr><td>
      <span class="TB-BODY">
      
      Figure 2 shows our abstract model of an opamp, you can see just by inspection it much more manageable than the full circuit.
      <br><br>
      
      In general, an opamp will always have two inputs and a single output, and are governed by the following equation.
      
      <br><br>
      
     <cf_imagebox align="center" path="P10files/eq1.svg" width="600px" >
      
      <br><br>
      
      
      </span>
      </td></tr>
  </table>
  <table>
  
      <tr><td>
      <span class="TB-BODY">
      
      V non-inverting and V inverting represent the input voltages to our component (the voltages measured at each terminal with respect to ground).
      Terminal four in figure 2 is our non-inverting input terminal, and likewise terminal three is our inverting input. You can see from the governing
      equation that the overall input to an opamp is actually the difference between these two terminals.
     
      <br><br>
     
      Then it follows that the output of the component is simply the difference of the two inputs times a gain factor called “open loop gain”.
      “Open loop gain” is not to be confused with the overall gain of the circuit (which is called “closed loop gain”).

      <br><br>

      For all intensive purposes “open loop gain” is considered to be infinite, and in fact is made infinite on purpose. When one is first learning
      about opamps, this may seem very confusing and quite impractical. Opamps are almost never used alone, but are configured to accept “positive”
      and “negative” feedback.  This feedback is what stabilizes the circuit, and allows us to use it in a productive way. (more specifics about
      feedback will be discussed later on in this tutorial). The gain in a opamp circuit that utilizes feedback (which is also the overall gain
      of the circuit), is called “closed loop gain”.


      <br><br>

      The link to the right provides a more in depth discussion of “open loop gain” and how it helps the performance of the opamp.
    
      <br><br>
      
      The last thing to mention before going on to setting up circuits, is to discuss Vcc and Vee.  You probably noticed them in figure 2,
      Vcc and Vee are what are known as “rails”, “voltage rails”, or “supply rails”.  Normally rails are not shown on schematics, but all
      opamps require them. “Rails” can be thought of as the power source for the output signal.  When building an opamp circuit Vcc (some
      opamps manufactures refer to Vcc as “V+”) should always be connected to a positive voltage source, where Vee should be connected to a
      negative voltage source (alternately can be referred to as “V-“). The link to the right provides an in depth explanation of negative voltages).
      In the case of our TCA0372 opamp, it is designed to work with either one or two sources (in the case of using just one source, Vee is tied to ground).
      
      <br><br>

      It is very important to understand that the voltage of the output signal does not come from the input ports, but from the “voltage rails”.
      Effectively this electrically isolates the input signal from the output signal. Meaning, changes made to components connected to the opamp’s
      output do not affect the electrical properties of components connected to the input.  While for most chipKIT projects are small enough that this
      is relatively trivial, when you start working with larger and more complex designs, this helps to make them modular and easier to handle.
      
      <br><br>
     
      Since the output voltage is supplied from the “rails”, it can never exceed that voltage.  The rail voltage can be thought of as the maximum and
      minimum bound of the output signal. Whenever the output signal does try to exceed the rail voltage, it is clipped (or limited) at the rail voltage.
      This property is called “saturation”, and is common to all opamps. A detailed discussion of the saturation property is available at the link to
      the right.

      <br><br>
      
      </span>
      </td><td valign="top">

      
    			<cf_TB-TabBox2>
           			<cf_TB-Tab2 color="##006666" path="http://www.google.com" title="Open Loop Gain">
				<cf_TB-Tab2 color="##008844" path="http://www.google.com" title="Negative Voltage">
				<cf_TB-Tab2 color="##CC5522" path="http://www.google.com" title="Saturation">
        		</cf_TB-TabBox2>
			
			
			
      </td></tr>
      </table>


  <table class="TBLAYOUT">
	<tr><td>
	<span class="TB-H1">Circuit configuration:</span><br><br>


      
      
	</td></tr>
  </table>

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



