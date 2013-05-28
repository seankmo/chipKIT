<html>
	<head>
		<title>Button-Controlled LEDs/ Kirchhoff's voltage law (KVL)</title>
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
					Kirchhoff's voltage law (KVL)
				</span>
				<br><hr>
			</td>
		</tr>
	</table>
	
	<br>
	
	<table class="TBLAYOUT">
	<tr>
	<td>
	<span class="TB-H1">Kirchhoff's voltage law (KVL)</span>
	<span class="TB-BODY">
	<br><br>
	
		Kirchhoff's voltage law (or KVL for short) is a commonly used rule for circuit analysis to
		determine unknown voltages in a circuit. KVL simply states that for any loop in a circuit, the
		sum of voltages around that loop must equal zero.  This law is best illustrated with a simple example.
		
		<br><br>
		
		
		
		Figure 1 shows a simple multi-loop circuit containing one voltage source and three resistors.The positive
		and negative terminals of the resistors are labeled according to <a href="P04_ACTPAS.cfm">passive sign convention</a>(and the voltage
		source terminals are labeled according to <a href="P04_ACTPAS.cfm">active sign convention</a>).
		
		<cf_imagebox align="right" path="P04files/KVL1.svg" width="400px" caption="Fig. 1. KVL analysis .">
		
		In this circuit we only know two values; the value of the voltage source, and the voltage drop
		(difference in voltage potential across the component) of resistor Vr2. With just these two values
		we can calculate the voltage drop across Vr1 and Vr3.  
		

		
		<br><br>
		
		KVL allows us to form a set of equations that can then be solved to find missing values (in this case,
		the missing values are the voltage drops across Vr1 and Vr3). To do this, two loops in the circuit are identified.
		We will traverse these loops, keeping track of the voltage drop values and signs of each component we encounter.
		(The sign is determined by the terminal of the component reached first in our path around the loop). Each loop will
		then represent an equation. This form of analysis is also referred to as “mesh” analysis. 
		
		
	</span>
	</td></tr>
	<tr><td align="center">
	
		<br><br>
		<cf_imagebox align="center" path="P04files/KVL2.svg" width="600px" caption="Fig. 2. KVL analysis .">
		<br><br>
		
	</td></tr>
	<tr><td>
	<span class="TB-BODY">

		Figure 2 illustrates the two loops of the circuit. We will start analyzing loop 1 first.
		
		<br><br>				
		
		Starting at ground and moving clockwise around loop 1, the first component reached is the voltage source.
		Since we are moving clockwise, the first terminal reached is negative, making the sign of this
		value negative as well (so the first term in our equation is -5V).  The next component reached in this loop
		is the resistor Vr1 (we reached the positive terminal first), so the next term in the equation is +Vr1.
		
		<br><br>
		
		So overall the loop 1 equation is: 
		
		<br><br>
		
		-5V + Vr1 = 0V
		
		<br><br>
		
		This rearranges to:
		
		<br><br>
		
		Vr1 = 5V
		
		<br><br>
		
		Now analyzing loop 2 (starting at ground and moving clockwise around the loop), the first component
		reached is the Vr1 resistor. This time the negative terminal is reached first, so the first term
		in our second equation is –Vr1.  The next component reached is Vr2. Since this is our other know value,
		and the sign is positive, the next term in our equation is +3V. The last component reached is Vr3
		which we just add +Vr3 to our equation.
		<br><br>
		
		So overall equation 2 looks like:
		
		<br><br>
		
		-Vr1 + 3V + Vr3
		
		<br><br>
		
		Rearranged:
		
		<br><br>
		
		Vr1 = Vr3 +3
		
		<br><br>
		
		Now that we have two equations we can solve them both to find our missing values.
		
		<br><br>
		
		Vr1 = Vr3 + 3
		
		<br>
		
		Vr1 = 5V
		
		<br><br>
		
		With a simple substitution you can see that all missing voltage values in the circuit can be found:
		
		<br><br>
		
		Vr1 = 5V
		<br>
		Vr2 = 3V
		<br>
		Vr3 = 2V
		<br><br>
	</span>
		
	</td></tr>
	<tr><td>
	<span class="TB-BODY">
		This example might seem slightly trivial, but was intended to illustrate how KVL and “mesh” analysis can be used to solve more complex circuits.
		In practice circuits often grow to be very complex, using many other components besides resistors. This is where KVL and mesh analysis become more useful.

	</span>
		<br><br>
		
	

	
	</td>
	</tr>
	</table>
	</cf_box>
	</body>
</html>
