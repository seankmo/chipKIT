<html>
	<head>
		<title>Button-Controlled LEDs/ Aux Short Circuit</title>
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
					
					Button Controlled LED Project:  Additional information  
					<br><br>
					Short Circuit
				</span>
				<br><hr>
			</td>
		</tr>
	</table>
	
	<br>
	
	<table class="TBLAYOUT">
	<tr>
	<td>
	<span class="TB-H1">Short</span>
	<br><br>
	<span class="TB-BODY">
    
    
       
		A circuit is said to have a “short” when there is a path in the circuit that unintentionally (and unexpectedly)
		is diverting current.  Current will always take the path of least resistance in a circuit.  So if a new path is
		introduced in the circuit that has less resistance, this new path will form a “short” in the circuit.
        
		<br><br><br>
		<cf_imagebox align="right" path="P04files/short.svg" width="500px" caption="Fig. 1. Circuit example, two resistors in parallel.">
		<br><br>
	
	
		Figure 1 shows an example of a simple circuit that has two resistors configured in <a href="P04_Parallel.cfm">parallel</a>.  After each resistor
		there is placed an ammeter (almost all multimeters can be configured to work as ammeters), to read the current that is
		going through each branch of the circuit.
	
	
		<br><br>
		<cf_imagebox align="right" path="P04files/short2.svg" width="500px" caption="Fig. 2. Circuit example, two resistors in parallel shorting.">
		<br><br>
	
	
		Now in figure 2, shows resistor R1 “shorting”, i.e. its resistance has for some reason gone to zero. You can see in
		the diagram that current is now diverted entirely through the branch that contained R1. In theory the current through
		this branch is infinite.  Ohm's law would state that Current = Voltage/Resistance, so as the resistance value approaches
		a very small value, its current approaches infinity.  
	
		<br><br>
	
		In reality, current will never reach this infinite point.  Components in the circuit will physically break way before
		the current can ever get to that level.  Excessive amounts of current in a circuit will unduly heat components (even to the point where they break).
		Unintentional “shorts” in a circuit should be of extreme
		concern, as they are the easiest way to destroy electronic components.
	
		<br><br>
	
	
	
	</td>
	</tr>
	</table>
	</cf_box>
	</body>
</html>
