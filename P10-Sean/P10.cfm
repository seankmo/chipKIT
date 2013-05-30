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
    <table class="TBLAYOUT">
    
      
      <tr><td>
	<span class="TB-BODY">
	<br>
	
	The kind of opamps we will be discussing for this tutorial will be integrated circuits (IC) and are considered the “voltage” type.
	A voltage amp is the most common type of amp and simply designates that the voltage level at the amp’s output is controlled by the voltage
	level at its input. (This is like our microphone example, where a small voltage level at the input of the amp produced a large scaled version
	of the signal at the amps output). This is opposed to a say a power amp, which is a “current” type. This type of amp performs the same task except
	amplifying current instead of voltage.
      
      
      
      
      </span>
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



