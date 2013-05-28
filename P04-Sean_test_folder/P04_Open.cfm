<html>
	<head>
		<title>Button-Controlled LEDs/ Aux open</title>
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
					Open Circuit
				</span>
				<br><hr>
			</td>
		</tr>
	</table>
	
	<br>
	
	<table class="TBLAYOUT">
	<tr>
	<td>
	<span class="TB-H1">Open</span>
	<br><br>
	<span class="TB-BODY">
		Two points in a circuit are considered to be “open” when there is no longer a path for
		current to flow between them.  This usually occurs when the resistance between the two
		points is suddenly increase to the point where current cannot flow. Resistance is defined here as
		a circuit's or component's ability to impede the flow of current.
		
		<br><br>
		
		“Opens” often occur when components physically break, so it is important to recognize when
		they occur.
		
		<br><br>
		
		Figure 1a shows a simple circuit without an “open” in the circuit, figure 1b shows the schematic equivalent.
		
		<br><br>
		
	</td>
	</tr>
	<tr>
	<td align="center">
		
		<cf_imagebox align="center" path="P04files/openR.svg" width="500px"  caption="Fig. 1a. Simple battery circuit.">
		<cf_imagebox align="center" path="P04files/open1.svg" width="400px"  caption="Fig. 1b. Simple battery circuit.">
		
		<br><br>
		
		</span>
	</td></tr>
	<tr><td>
		
		<br><br>
		
		<span class="TB-BODY">
		
		<cf_imagebox align="right" path="P04files/open2.svg" width="400px"  caption="Fig. 2. Simple battery circuit with open.">
		
		
		Current in a circuit will always flow from the positive terminal of a voltage source into the negative terminal.
		In a simple circuit like figure 1, it is easy to see that current is traveling in a clockwise direction around the circuit.
		
		<br><br>
		
		Figure 2 shows the same circuit except now there has been a break in the wire between the “R1” resistor and the voltage source.
		(That break is acting like an “open” in the circuit).  Current cannot flow through this break so it can be thought of as infinite
		resistance.
		
		<br><br>
		
		If you were to take measurements from the circuit in figure 2 (using a multimeter), the voltage difference between the point before
		the break and ground would read the full value of the voltage source.  Now the point after the break, would measure 0V.  Since there
		is no current going through R1, there is no voltage difference across this resistor.
		
		<br><br>
		
		“Opens” can be easily identified when measuring resistance.  If you were to measure resistance across the break in our figure 2 example,
		it would read very high if not infinite resistance.  While our example of a broken wire can be easily identified in a circuit, sometimes
		“opens” are less obvious (for instance a failed component may act as an “open”, but show no visible signs).
		
		<br><br>
		
	</span>
	<br>
	<br>
	
	</td>
	</tr>
	
	</table>
    
	
	</cf_box>
	</body>
</html>
