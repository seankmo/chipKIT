<meta name="author" content="Davis Cook"> 

<head>
   <script type="text/javascript" src="../SH/scripts/shCore.js"></script>
   <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
   <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
   <script type="text/javascript">SyntaxHighlighter.all();</script>
</head>

<cf_Box Color="White" NoMargins="1">
<!--This is a comment-->
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr><!--tr is a table row -->
      <td width="50%" align="center"><!--td is a table table cell -->
	<span class="TB-PROJECTTITLE"><!-- span lets you apply class properties to what is encased -->
	  Project 9:<br/>
	  Choosing R and C for our RC circuit<hr>
	</span>
      </td>
    </tr>
  </table>
  
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Introduction</span> <br/><br/>
	<span class="TB-BODY">
	  In order to control the rate at which voltage changes in the
	  circuit, we must consider the values of the capacitor and
	  resistor. In the circuit, the capacitor controls the voltage
	  across its (the capacitor's) terminals, contingent on how
	  much charge it is storing.  The resistor limits the amount
	  of current being fed to the capacitor, in turn affecting the
	  rate at which the capacitor can charge. The equation
	  describing this relationship is V<sub>c</sub> =
	  V<sub>s</sub>( 1 – e<sup>-t/RC</sup> ) where:

	  <br/><br>

	  V<sub>c</sub> is the voltage of the
	  capacitor<br/> V<sub>s</sub> is the voltage of the
	  source<br/> t is the time in seconds<br/> R is the
	  resistance in Ohms (&Omega;)<br/> C is the capacitance in
	  Farads (F) <br/><br/> Trying to limit the how fast the
	  voltage V<sub>c</sub> can change by manipulating the
	  previous equation can be difficult.  Instead, we can use the
	  circuit's time constant to accurately approximate the
	  capacitor’s voltage.
	</span>	
  
	<br><br>

      </td>
    </tr>
  </table>
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <td valign="top">
      <span class="TB-H1">RC Time Constant</span> <br/><br/>
      <span class="TB-BODY">
	The time constant is a time period determined by the circuit's
	R and C values.  It is measured in seconds and denoted with
	the variable &tau; (tau). Tau is easy to calculate, as &tau; =
	R&times;C. An RC circuit’s time constant is useful because
	it directly relates the values of R and C to the capacitor
	voltage. It has been shown <!--by what or whom--> that
	charging a capacitor for one time constant will result in a
	63% charge. If the capacitor charges for two time constants, it
	will be 86% charged (see Fig. 1). Charging for three time
	constants yields a 95% charge. Similarly, the time constant
	also governs how fast a capacitor can discharge. After one
	time constant a fully charged capacitor will be at 37% of its
	original voltage. After a second time constant it will be at
	13.5% (as shown in Fig. 2).
      </span>
    </td>
  </table>
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="100" align="center">
      	<!--<img src="TimeConstantCharge.png" width="650"/>	</div> <br/><br/> -->
	<br/><embed src="TimeConstantCharge.svg" type="image/svg+xml"width="650"/><br/><br/>	
        <div class="TB-FIGURES">Fig. 1. RC time constant vs charging capacitor voltage</div>
      </td>
    </tr>
    <tr>
      <td valign="top" width="100" align="center">
	<!--<br/><br/><img src="TimeConstantDischarge.png" width="600"/> <br/><br/>-->
	<br/><br/>
	<embed src="TimeConstantDischarge.svg" type="image/svg+xml"width="600"/><br/><br/>
	<div class="TB-FIGURES">Fig. 2. RC time constant vs discharging capacitor voltage</div>
  
	<br><br>

      </td>
    </tr>
  </table>
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Choosing values for R and C</span> 

	<br/><br/>

      </td>
    </tr>
    <tr>
      <td>
	<span class="TB-BODY">
	  Even though the relationship between tau and charge is not
	  linear, it guarantees that a capacitor will be 99% charged
	  or discharged within 5 time constants. Knowing this, we can
	  scale R and C to make the capacitor charge quickly or
	  slowly. For this project, we want our capacitor to charge
	  slowly relative to the voltage spikes created by the button
	  bounce and quickly compared to a button press. If the
	  capacitor charges too quickly in comparison with the voltage
	  spikes, it won't debounce the button very well. If the
	  capacitor charges too slowly, it will make the button press
	  look longer than it actually was. For our application we
	  don’t really care if the button press is a bit longer. We
	  want to focus on removing the noise of the button
	  bounce. It’s safe to assume a voltage spike will be no
	  longer than 100 &micro;S. With this in mind, we can select
	  our R and C values.

	  <br/><br/>

	  Let's say R = 10 K&Omega; and C = 10 &micro;F.<br/>
	  Our time constant is given by &tau; = R &times; C.<br/>
	  So &tau; = 10&times;10<sup>-6</sup> F &times; 10000 &Omega; = 0.1 Seconds.<br/>
	  Now let’s see if this time constant fits within the time constraint.<br/>
	  <br/>
	  The slowest possible voltage spike = 100 &micro;S<br/>
	  &tau; = 0.1 S = 100000 &micro;S<br/>
	  100000 µS is much larger than the slowest possible voltage spike, so the capacitor will smooth out any bounce noise we see.<br/>
	  <br/>
	  Now let’s see what our RC filter does to a button signal. Figure 3 shows what a button press 
	  looks like without the RC filter, while Fig. 4 shows how the button press looks with the filter.
	</span>
      
	<br><br>

      </td>
    </tr>
  </table>
 

  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td width="100" align="center">
	<img src="ButtonPress.png" /><br/>
	<div class="TB-FIGURES">Fig. 3. Normal button signal.</div><br/>
      </td>
    </tr>
    <tr>
      <td valign="top" width="100" align="center">
      	<img src="RCButtonPress.png" /> <br/>
        <div class="TB-FIGURES">Fig. 4. Button signal through RC filter.</div>
      </td>
    </tr>
    <tr><td colspan="2"><br/><br/></td></tr>
  </table>
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-BODY">
	  The RC filter limits how quickly the voltage can rise or
	  fall. This is all that really matters for implementing our
	  circuit, but if you look closely, there are two odd things
	  about Fig. 2. The first is that the time constant is different
	  when charging and discharging. The second is that neither the
	  charge nor discharge time constant exactly matches our
	  calculated value. Although it is concerning that our circuit
	  isn’t working exactly as expected, these oddities have
	  little impact on making our project functional. Unless you
	  want detailed information about why our circuit is
	  misbehaving, you may skip over the remaining material.
	</span>

	<br><br>

      </td>
    </tr>
  </table>
  
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td valign="top">
	<span class="TB-H1">Origins of the circuit’s oddities</span> <br/><br/>
	<span class="TB-BODY">
	  To determine the cause of our circuit's odd behavior, let’s
	  examine the facts.  In Fig. 2, the full charge time for the
	  capacitor is about 200 ms while the full discharge time is
	  about 400 ms. This means &tau; = 40 ms while charging and
	  &tau; = 80 ms while discharging. The inconsistent time
	  constants occur because we have overlooked how our RC filter
	  will react once it is added to an existing circuit. When you
	  look at the
	  <a href="../P09.cfm#Fig">circuit implementation</a>, you can see
	  that a button separates our RC filter from a current-limiting
	  resistor. When the button is pressed, the current-limiting
	  resistor is connected to the RC filter, affecting the charge
	  time. When the button is released, our RC filter is isolated, so
	  the discharge time almost matches our calculated value. The
	  reason it <i> almost </i> matches is due to the error in the
	  actual values of our components. After measuring the 10
	  K&Omega; resistor used in the RC circuit, the actual value
	  turns out to be 9850 &Omega;. This should be expected since
	  9850 &Omega; is within the acceptable 5% variance (denoted by
	  the gold stripe) of the resistor.  Now that we know R actual
	  and &tau; actual we can calculate the real value of our
	  capacitor.  <br/><br/> So, 80 ms / 9850 &Omega; yields a real
	  world value of 8.12 &micro;F, which is close to the rated 10
	  &micro;F.  <br/><br/> The slight variance in component values
	  accounts for the difference between our calculated and actual
	  discharge time constant.  Again, for our project these
	  discrepancies don’t really matter. The lessons to take away
	  from this are:
	</span>
      <ol>
	<li><span class="TB-BODY">Incorporating a separately designed
	    circuit into an existing project can have unforeseen
	    consequences.</span></li>
	<li><span class="TB-BODY">Component values are never exact. If
	    a project requires a lot of precision be sure to account for
	    the actual component values.</span></li>
      </ol>
      </td>
    </tr>
  </table>
</cf_Box>
