<html>
<meta name="author" content="Davis Cook"> 

<head>
   <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
   <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
   <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
   <script type="text/javascript">SyntaxHighlighter.all();</script>
</head>

<cf_Box Color="White">
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="50%" align="center">
	<span class="TB-PROJECTTITLE">
	  Project 9:<br/>
	  What is a capacitor?<hr> 
	</span>
      </td>
    </tr>
  </table>
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
      	<span class="TB-H1">Overview </span> 
	
	<br/><br/>

	<span class="TB-BODY"> <!--this is a comment --> A capacitor
	  is an electronic component that stores energy in the form of
	  an electric field. Without delving too deep into the physics
	  capacitors achieve an electric field by accumulating charge
	  on two conductive plates at different voltages, see
	  Fig. 1. These conductive plates are separated by a special
	  type of insulator called a dielectric.  Certain factors like
	  the properties of the dielectric, area of the plate and
	  distance between the plates all affect how much energy can
	  be stored.  The amount of energy that can be stored is
	  measured in Farads.  Capacitors typically hold somewhere
	  between a few picofarads (pF; one picofarad is
	  10<sup>-12</sup> of a Farad) to hundereds of microfarads
	  (&micro;F one microfarad is 10<sup>-6</sup> of a
	  Farad). Large capacitors that hold tens of farads or more
	  are referred to as “super-capacitors” or
	  “ultra-capacitors”. They are not very common due to
	  their impractical size. Using one would be comparable to
	  building a car with 1000 gallon gas tank.  <br/><br/><br/>
	</span>
	<div align="center">
	  <img src="PlateCapacitor.png" width="700"/> 
	  <div class="TB-FIGURES">Fig. 1. Parallel plate capacitor</div>
	  <br><br>
      </td>
    </tr>
  </table>
  
  
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<div>
	  <a name="WaterAnalogy"></a>
	  <span class="TB-H1">Hydraulic Capacitor Analogy</span> <br/><br/>
          <span class="TB-BODY"> <!--this is a comment -->
	    
	    Water Analogy: Elastic wall in a pipe<br/> Unit: Farads
	    (F), a Farad equals one Columb / Volt<br/> Equation
	    Variable: C <br/><br/> Brief Description:<br/> It is
	    difficult to understand how a capacitor reacts in a
	    circuit based on the exact physics.  It is simpler to
	    describe its properties using a water analogy. Capacitors
	    work very similar to an elastic wall sealed in the middle
	    of a pipe.  When this hydraulic capacitor is placed
	    between a pressure drop, the elastic divider will stretch
	    and store the energy. The hydraulic capacitor analogy
	    illustrates a few important properties of capacitors.
	    <br/>
          </span>
	</div> 
      </td>
    </tr>
    
    <tr>
      <td valign="top">
	<ol>
          <span class="TB-BODY"> <!--this is a comment -->
			<li>As charge accumulates on one plate in an
			  electric capacitor, the electric field
			  increases expelling an equal amount of
			  charge from the other plate. Similarly as
			  the elastic in the hydraulic capacitor
			  expands to make room for the water being
			  pumped in, the elastic also must push an
			  equal amount of water out the other side see
			  Fig. 2.<br/><br/>
			  
			<li>As an electric capacitor charges, the
			  voltage drop across its terminals approaches
			  the voltage applied to it by the
			  circuit. Similarly as the elastic in a
			  hydraulic capacitor stretches further it
			  will begin to press back with greater
			  force. Eventually it will press back with
			  enough force to be equal to the pressure
			  drop applied by the system see
			  Fig. 3.<br/><br/>
			  
			<li> Once an electric capacitor is fully
			  charged it will look like a gap in a
			  circuit, or a resistor with infinite
			  resistance. This is because once fully
			  charged no DC current can flow through a
			  capacitor. The same thing happens with a
			  hydraulic capacitor. As the elastic
			  stretches it pushes water out one side
			  creating a flow. Once the elastic has
			  stretched to equal the pressure of the
			  system, it will stop moving. At this point
			  the elastic cannot displace any more water
			  see Fig. 2. Since no water can breach the
			  stretched barrier, no liquid can flow
			  through the fully charged capacitor.
		</span>
	</ol>

	<br><br>

      </td>	
    </tr>
  </table>

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="100" align="center">
	
	<!-- <img src="HydraulicCapacitorCurrent.png" width="400"/>	</div> <br/><br/> -->
	
	<!--SVG in HTML example-->
	<embed src="HydraulicCapacitorCurrent.svg" type="image/svg+xml"width="400"/><br/><br/><br/><br/><br/>	
	<div class="TB-FIGURES">Fig. 2. How current flows through a capacitor</div><br/><br/>		
      </td>
      <td valign="top" width="100" align="center">
	
      	<!--<img src="HydraulicCapacitorVoltage.png" width="400"/> -->
	
	
		<!--SVG in HTML example-->
		<embed src="HydraulicCapacitorVoltage.svg" type="image/svg+xml"width="400"/><br/><br/>	
		<div class="TB-FIGURES">Fig. 3. Charging a capacitor over time</div>
		
		<br><br>		
		
      </td>
    </tr>
  </table>
  

  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Common capacitor types and how to determine their values</span> <br/><br/>
        <span class="TB-BODY"> <!--this is a comment --> There are
	  many different kinds of capacitors. This is because lots of
	  different materials can be used for the dielectric. Both
	  Electrolytic capacitors and Ceramic Capacitors are common so
	  we will focus on them.<br/><br/>
	  <u>Electrolytic capacitors:</u><br/><br/> Electrolytic
	  capacitors are the most common type of capacitor. Generally
	  they are cylindrical in shape and are used when the circuit
	  calls for a large capacitance. Electrolytic capacitors have
	  a polarity so they must be connected correctly to avoid
	  damage. The negative side of the capacitor is denoted by a
	  white stripe. The capacity and maximum voltage values are
	  also printed directly on the capacitor see Fig. 4.
        </span>
	<div align="center">
	  
	  <!--<img src="ElectrolyticCap.png" width="200"/> -->
	  
	  
	  <embed src="ElectrolyticCap.svg" type="image/svg+xml"width="200"/><br/><br/>		
	  <div class="TB-FIGURES">Fig. 4. Identifying electrolytic capacitor values</div><br/><br/>		
      </td>
    </tr> 
  </table>

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
        <span class="TB-BODY"> <!--this is a comment -->
	  <u>Ceramic:</u><br/><br/> Ceramic capacitors are much
	  smaller in comparison to Electrolytic capacitors. Generally
	  they are shaped like small disks and have no polarity.
	  Their capacitance is printed as a code on the component. The
	  code will either be two or three digits and may have a
	  tolerance letter on the end see Fig. 5.
        </span>
	<div align="center">
	  <!--<img src="CeramicCap.png" width="450"/>-->
	  <embed src="CeramicCap.svg" type="image/svg+xml"width="450"/><br/><br/>		
	  <div class="TB-FIGURES">Fig. 5. Identifying ceramic capacitor values</div><br/><br/>
      </td>
    </tr> 
  </table>
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
        <span class="TB-BODY"> <!--this is a comment --> All ceramic
	  capacitor codes indicate the capacitor value in pico Farads
	  (pF). Two digit codes do not need to be decoded, they simply
	  specify what the capacitance is in pF.  Three digit codes
	  work the same (the first two digits represent a number not a
	  code) except the third digit represents a coded value to
	  multiply by see Fig 6. Finally a letter on the end of a
	  three digit code designates the tolerance see Fig
	  6. Capacitor tolerance is how much accepted error there is
	  in the capacitance value due to the manufacturing
	  process. Below are some examples of converting capacitor
	  codes to their values.  <br/><br/> Ex.  <br/><br/> Two Digit
	  Code: “39” = 39 pF<br/><br/>
	  
	  Three Digit Code: “102” = 10 × 100 = 1000 pF
	  <br/>(Notice:The third digit 2 corresponds to 100 on the
	  table which has <u>two zeros</u> in it.)<br/><br/>
	  
	  Three Digit Code with Tolerance Letter: “103M” = (10 ×
	  1000) ± 20% = 10000 ± 20% <br/>(Notice:The third digit 3
	  corresponds to 1000 on the table which has <u>three
	  zeros</u> in it.)<br/><br/>
	  
        </span>
	<div align="center">
	  <!--<img src="CapCodes.png" width="500"/> -->
	  <embed src="CapCodes.svg" type="image/svg+xml"width="500"/><br/><br/>			
	  <div class="TB-FIGURES">Fig. 6. Table of capacitor codes</div><br/><br/>
      </td>
    </tr> 
  </table>   
  
  <cf_Box>
</html>
