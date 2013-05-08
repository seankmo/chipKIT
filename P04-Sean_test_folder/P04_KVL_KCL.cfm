
<html><head><title>P04_circuitTheory_Expanded</title>
<meta name="author" content="Sean Moss">
<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
  <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
  <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
  <script type="text/javascript">SyntaxHighlighter.all();</script>
  <style>
    lit1 {font-family:"Courier";color:#0066ff}
    kw1 {font-family:"Courier";color:#ff0000}
    kw2 {font-family:"Courier";color:#ff8000}
    kw3 {font-family:"Courier";color:#8b308b}
  </style></head>
<body>

    <table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
    <tbody>
    <tr>
    <td align="left" width="35%"><a href="index.cfm"><br>
    </a></td>
    <td align="center" width="50%"> <span class="TB-PROJECTTITLE">Project 4 Appendix:<br>
    Circuit Theory</span>
    </td>

    <td align="left" width="15%">&nbsp;</td>
    </tr>
    <tr>
    <td colspan="3" align="right">
    <hr><br>
    <br>
    </td>
    </tr>
    </tbody>
    </table>



    <table class="TBLAYOUT" style="width: 95%;" cellpadding="0">
    <tbody>
    <tr>
    <td valign="top">
    <p> <span class="TB-H1"><span style="font-weight: bold;">Circuit Theory:</span>
    <hr hr="" color="#2c2c2c" size="15"></span><span class="TB-BODY">&nbsp;<br>
    <br>
    <br>
    </span> </p>
    </td>
    </tr>
    </tbody>
    </table>
    
    
    
    <!-- Start of Open  ---->
            <cf_box color= "white"
	style="width:85%">
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
    
    <tr>
    <td style="text-align: left;" colspan="1"><span class="TB-H1">Open</span><a name="Open"></a>
    <hr hr="" color="#2c2c2c" size="2">
    
    <span class="TB-BODY">Two
    points in a circuit are considered to be &#8220;open&#8221; when
    there is no longer a path for current to flow or when the path between
    the two points restricts the flow of current in such a way that current can no
    longer flow between the two points. In the latter case, the path is said to
    have an infinite resistance.<span style="">&nbsp; </span>Resistance is
    defined here as a circuit's or device's ability to impede the flow of current. 
    </span>
    <br>
    <br>
    </td>
    </tr>


    <tr>
    <td style="text-align: center;"><img style="width: 393px; height: 346px;" alt="Circuit with no open" src="P04files/appOpen1.png"><br>
    <div class="TB-FIGURES">Fig. 1. Normal circuit configuration.</span></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY"><br>Figure 1 shows a simple example of
    a circuit where current
    flows in a clockwise circle from the positive terminal of the voltage
    source through
    the resistor and back into the negative terminal of the voltage source.
    <span style="">&nbsp;</span>A simple
    example of a voltage source is
    a battery, where the positive and negative terminals correspond with the
    plus and
    minus sides of the battery.&nbsp; 
    As long as the resistor is
    connected to the positive
    terminal and negative terminal of the voltage source, and the circuit
    loop is
    maintained,<span style="">&nbsp; </span>current
    will always flow
    from the voltage source.</span>
    
    <br>
    <br>
    </td>
    </tr>


    <tr>
    <td style="text-align: center;"><img style="width: 359px; height: 280px;" alt="Open Circuit" src="P04files/appOpen2.png"><br>
    <div class="TB-FIGURES">Fig. 2. Open circuit.</span></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY"><br>Figure 2<span style="">&nbsp;
    shows an
    example of an open circuit.&nbsp; A
    point
    between the voltage source (battery) and the resistor has broken (or
    has
    been disconnected somehow), so voltage
    measured at the voltage source with respect to ground still measures at the same
    level it was before the break. For example if the voltage source was a 3-volt battery,
    measuring the voltage difference between ground and the point before the break would show 3V
    but the point after the break would only measure 0V(it is equivalent to ground).
    While there is still a voltage difference in the circuit, current is no longer flowing in the
    same loop as before.
    If one was to measure the
    resistance between the point
    before and after the break, it would read as infinite (on most
    digital multimeters
    this is displayed as "overload," which is what it will also display for points that are not electrically connected).&nbsp;</span> 
    <br>
    <br>
    </td>
    </tr>
    
    </tbody>
    </table>
    
    </cf_box>
    
    <br>
    <br>
    <br><br>
    
    
    
    <!---  START OF SHORT  --->
        <cf_box color= "clear"
	style="width:85%">
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    
    
<tr>
    


    <td><span class="TB-H1">Short</span><a name="Short"></a>
    <hr hr="" color="#2c2c2c" size="2"></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY">A circuit is said to have
    a &#8220;short&#8221; when an
    unintentional path in the circuit is formed that has less resistance to
    the flow of current than any of the pre-existing paths in the circuit.&nbsp;Since
    current always
    takes the path of least resistance, current will flow through a &#8220;short&#8221;
    in
    favor of the rest of the circuit.<br></span>
    </td>
    </tr>
    <tr>
    <td style="text-align: center;"><img style="width: 443px; height: 281px;" alt="short example" src="P04files/shortexample.png"><br>
    <div class="TB-FIGURES">Fig. 3: Another circuit example.</span></td>
    </tr>
    <tr>

    <td>
    <span class="TB-BODY"><br>Figure 3 shows a simple resistive
    circuit connected<a href="#PAR"> </a><i style=""><a href="#PAR">in parallel</a> </i>configuration.<span style="">&nbsp; </span>Current flowing from the
    source is divided
    between two different branches of the circuit, designated as branch A, and B. Branch A is the segment of the circuit
    that contains Resistor 2 (R2) and branch B is the segment that contains Resistor 1 (R1).  <a href="#KCL">Kirchoff&#8217;s current law (KCL)</a>
    states that the current flowing from the source has to be equal to the sum of currents flowing into branches A and B.
    If both resistors in this circuit are matched, then the current flowing through both branches is equal, and it forms a
    current divider.</span>
    <br>
    <br>
    </td>
    </tr>


    <tr>
    <td style="text-align: center;"><img style="width: 396px; height: 284px;" alt="short example 2" src="P04files/shortexample2.png"><br>
    <div class="TB-FIGURES">Fig. 4: short circuit example</span></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY"><br>Now, if branch A was to short it
    would become the path of least
    resistance to ground.&nbsp;All
    current in the circuit would flow through branch A, and no current would
    flow through branch B.&nbsp;The branch A path is considered
    to have zero resistance
    (it provides no impedance to current flow).
    Shorting has the
    potential to damage components, as it could expose them to currents
    higher than they are rated to handle.</span><br>
    <br>
    <br>
    <br>
    <br>
    </td>
    </tr>
    </tbody>
    </table>
</cf_box>




    <!---  START OF KVL  --->
        <cf_box color= "white"
	style="width:85%">  
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>

<tr>
    <td><span class="TB-H1">Kirchhoff's
    voltage law (KVL)</span><a name="KVL"></a>
    <hr hr="" color="#2c2c2c" size="2"></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY">
        <br>KVL&nbsp; states that for any loop in a circuit,
        the sum of voltages around that loop must equal zero.<br></span></td>
    </tr>
    <tr>
    <td style="text-align: center;"><img style="width: 80%; height: 80%;" alt="KVL example" src="P04files/KVLexample.png"><br>
    <div class="TB-FIGURES">Fig. 5: KVL example</span></td>
    </tr>
    <tr>
    <td>
    <span class="TB-BODY"><br>Before explaining KVL, it is
    important to define <b>passive and active sign convention</b>.&nbsp; 
    For the purpose of easier analysis, resistors
    are said to follow passive
    sign convention. The point on a resistor where current
    flows into the device
    is considered its positive terminal, and the point where current
    flows
    out of the device is considered its negative terminal.&nbsp; If one was to physically
    examine a resistor,
    they would quickly see that there are no positive or negative terminals
    on the
    device, and even physical connector leads can be reversed without ill
    effect.&nbsp; 
    
    Voltage sources are said to
    follow <span style="font-style: italic;">active sign
    convention</span>,
    when current flows from the sources'
    negative
    terminals to their positive terminals.&nbsp;
    Unlike devices that adhere to passive sign convention,
    these devices have actual physical terminals (such as the positive and
    negative terminals on a battery), and reversing them will reverse the polarity
    of the voltage source (i.e., a 3-volt battery whose polarity has been reversed would show -3 volts).
    
   In Figure 5, starting at ground and going clockwise around the loop, the
    first component we reach is the voltage supply. Since current is going
    clockwise around the circuit and entering the voltage supply through
    its negative terminal, this supports the voltage source adhering to
    active sign convention.&nbsp; We thus consider Vin (voltage of the
    source) to be equal to -5 volts. &nbsp;The
    sign of the voltage is the same as the sign of the terminal that current enters.<br><br></span>
    
    <img src="P04files/eq1.png" alt="Vin=-5v" style="width: 178px; height: 35px;"><br><br>
    
    <span class="TB-BODY">The next component reached in
    the loop would be Resistor 1
    (R1).&nbsp;Going from
    positive terminal to
    negative, the voltage drop across the R1 resistor (V1) is 3 volts. 
    
    <br>
    <img style="width: 126px; height: 35px;" alt="V1 = 3 volts" src="P04files/eq2.png">
    <br>
    
    And now the last component reached is Resistor 2 (R2), which has a voltage drop
    (V2) of 2 volts.</p>
    <br><img style="width: 141px; height: 35px;" alt="V2= 2 volts" src="P04files/eq3.png"><br><br>
    So by KVL<br>
    

    <br>
    <img style="width: 278px; height: 150px;" alt="Vin + V1 +V2 = 0, 3v +2v -5v = 0" src="P04files/eq4.png"><br>
    <br>
    </p>
    And it&#8217;s easy to see that the sum is equal to zero.<br>
    <br>
    <br>
    </span>
    </td>
    </tr>
    <tr>
    
    <td style="text-align: center;"><img style="width: 578px; height: 505px;" alt="KVL example2" src="P04files/KVLexample2.png"><br>
    <div class="TB-FIGURES">Fig. 6: KVL example 2</span></td>
    </tr>
    <tr>
    <td>
    <br>
<span class="TB-BODY">    
Now modifying the circuit in Figure 5 by changing the voltage source to
6V instead of 5V (the new circuit is illustrated in Figure 6). If we
only knew the resistance values of R1 and R2, KVL could be used to
determine the unknown voltage drops across the resistors. 
    <br>
    
    KVL can be rewrittent to state:<br>
    <img style="width: 602px; height: 30px;" alt="Vd1 + Vd2 = Vin" src="P04files/eq5.png"><br>
    <br>
    <br>
    Using <span style="color: rgb(0, 0, 153);">Ohm's law</span>,<br>
    <img style="width: 118px; height: 35px;" alt="V =I*R" src="P04files/eq6.png"><br>
    <br>
    &nbsp;we can re-write this as:<br>
    <br>
    <img style="width: 213px; height: 30px;" alt="R1*I + R2*I = Vin" src="P04files/eq7.png"><br>
    <br>
    Where R1 and R2 are the resistance values, and I is the current that
    flows through both resistors<br>
    <br>
    And thus:<br>
    <br>
    <img style="width: 229px; height: 30px;" alt="(R1 + R2)*I = Vin" src="P04files/eq8.png"><br>
    <img style="width: 186px; height: 30px;" alt="I = Vin/(R1+R2)" src="P04files/eq9.png"><br>
    <br>or conversely<br>
    <img src="P04files/eq10.png" alt="(Voltage drop across R1) = R1/(R1 + R2) * Vin" style="width: 117px; height: 50px;">
    
    <br><br>Since both resistors are in a &#8220;<span style="font-style: italic;">series</span>&#8221;
    configuration, current
    that flows through R1 flows through R2<span style="">&nbsp;
    </span>(so it can be considered the same). Using <span style="color: rgb(0, 0, 153);">Ohms law</span> again
    we can get:&nbsp;
    <br>
    <img style="width: 402px; height: 50px;" alt="(Voltage drop across R2) = R2/(R1 + R2) * Vin" src="P04files/eq11.png"><br>
    <br>
    Like wise the voltage drop across R1:<br><br>
    <img style="width: 289px; height: 50px;" alt="R1 = [1 k&Omega;/(1 k&Omega; + 5 k&Omega;)] * 6 v = 1 volt" src="P04files/eq12.png"><br>
    <br>
    And by KVL :<br>
    <br>
    <img style="width: 513px; height: 35px;" alt="(Voltage drop across R2) + 1 volt &#8211; 6 volts = 0" src="P04files/eq13.png"><br>
    <br>
    States that the voltage drop across R2 = 5 volts<br>
    <br>
    <img style="width: 114px; height: 35px;" alt="R2 = 5v" src="P04files/eq14.png"><br>
    <br>
    <br>
    </span>
    </td>
    </tr>


    </tbody>
    </table>
    </cf_box>
    
    <br><br><br>
    
    <!---  START OF KCL  --->
        <cf_box color= "clear"
	style="width:85%">  
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>


    <tr>
    <td><span class="TB-H1">Kirchhoff's
    current law (KCL)</span><a name="KCL"></a>
    <hr hr="" color="#2c2c2c" size="2"></td>
    </tr>
    <tr>
    <td><span class="TB-BODY">Kirchhoff&#8217;s current law (KCL) simple states that the
    total sum
    of currents leaving a node must be equal to the sum of current that
    entered that node. An analogy for this would be a pipe that has
    multiple junctions.&nbsp; Water&nbsp;flowing out of all ends of
    the
    pipe must be the same amount that flowed into the pipe. Water cannot
    enter or leave by any other means. Both current and
    charge operate this way, too.</span></td>
    </tr>
    <tr>
    <td style="text-align: center;"><img style="width: 100%; height: 100%;" alt="KCL" src="P04files/KCLexp.png"><br>
    <div class="TB-FIGURES">Fig. 7: KCL</span></td>
    </tr>
    <tr>
    <td><span class="TB-BODY"><br>In Figure 7, 500 mA of current flows into the circuit
    node. By KCL
    a total sum of 500 mA must also flow out of the node.&nbsp; So if
    250
    mA flows out through each branch of the node, KCL is satisfied.</span><br>

    <img style="width: 148px; height: 35px;" alt="i1 = i2 + i3" src="P04files/eq15.png"><br>
    <img style="width: 273px; height: 35px;" alt="500 mA = 250mA + 250 mA" src="P04files/eq16.png"><br>
    </td>
    </tr>
    <tr>
    <td><span class="TB-BODY"><br>Here is another more complex example of KCL:</span><br></td>
    </tr>
    <tr>
    <td style="text-align: center;"><img style="width: 100%; height: 100%;" alt="KCL e2" src="P04files/KCLexample2.png"><br>
    <div class="TB-FIGURES">Fig. 8: KCL example</span></td>
    </tr>
    <tr>
    
    <td><span class="TB-BODY">In Figure 8, 
    suppose: <br>
    <br>
    R1 = 10 k&Omega;s<br>
    R2 = 20 k&Omega;s<br>
    <br>
    If two resistors are connected in a <a href="#PAR"><span style="font-style: italic;">parallel</span></a>
    circuit with a 5-volt voltage source,&nbsp;<a href="#KVL">Kirchhoff&#8217;s voltage law (KV</a><a href="#KVL">L)</a>
    tells us that each resistor will have a 5 volt voltage drop across
    it.&nbsp; If we want to determine how much current is being drawn
    from
    the voltage source,&nbsp; the points where each resistor is
    connected
    to the voltage source can be considered a node, and KCL can be used to
    determine the total amount of current being drawn by the circuit.<span style="color: rgb(51, 51, 255);"></span><br>
    <br>
    Current through each branch can be determined by <span style="color: rgb(0, 0, 153);">Ohms Law</span><br>
    <br>
    <img style="width: 118px; height: 35px;" alt="V = I*R" src="P04files/eq6.png"><br>
    <br>
    So the current through R1 branch is 5 V/10 k&Omega;s&nbsp;&nbsp; =
    .5 mA<br>
    And the current through R2 branch is 5 V/20 k&Omega;s = .25 mA<br>
    <br>
    So by KCL:<br>
    
    <img style="width: 221px; height: 35px;" alt="i_source = i_R1 + i_R2" src="P04files/eq17.png"><br>
    <img style="width: 308px; height: 35px;" alt=".75 mA + .5mA = .25mA" src="P04files/eq18.png"><br>
    <br>
    So the current being drawn from the voltage source is .75 mA</span><br><br>
    </td>
    </tr>
    
    
    </tbody>
    </table>
    
        </cf_box>
    
    
    
    <!---  START OF series  ---> 
        <cf_box color= "white"
	style="width:85%"> 
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    <tr>
    <td><span class="TB-H1">Series example:<a name="SER"></a></span><hr hr="" color="#2c2c2c" size="2"></td>
    </tr>
    <tr>
    
    <td><span class="TB-BODY">Two or more electronic components are considered to be
    "in series" when the current that flows through the first device also flows
    entirely though the next device, and so on. Using a water analogy, this
    would be like connecting multiple pipes together end to end.&nbsp;
    Water flows from one pipe into the next, much like in a daisy chain.</span></td>
    </tr>
    <tr>

    <td style="text-align: center;"><br>
    <img style="width: 460px; height: 400px;" alt="Series Resistor" src="P04files/series_res.png"><br>
    <div class="TB-FIGURES">Fig. 9: Series
    Resistors</span></td>
    </tr>
    <tr>
    <td><span class="TB-BODY">Figure 9 shows an example of a series connection of
    resistors R1 and R2.&nbsp; In this simple circuit, current flows
    clockwise around the formed loop and it is easy to see that there is
    nowhere else for current to go after leaving R1, but entirely into R2.<br>
    &nbsp; <br>
    During circuit analysis, simplifying the circuit can often make this
    process much easier.&nbsp; One such simplification that series
    connections allow is summing resistors into one equivalent
    resistance.&nbsp; <br>
    <br></span>
    </td>
    </tr>
    <tr>

    <td style="text-align: center;"><img style="width: 453px; height: 400px;" alt="Series Equivalent" src="P04files/series_eqiv.png"><br>
    <div class="TB-FIGURES">Fig. 10: Series
    Equivalent Resistors</span></td>
    </tr>
    <tr>
    <td><span class="TB-BODY"><br>Any number of series connected resistors can be
    replaced with an equivalent resistor that is equal to the sum of their
    resistances. &nbsp;Figure 10 shows how a 10 k&Omega; and 5 k&Omega; resistor
    can be summed into an equivalent 15 k&Omega; resistor for the purpose of analysis.</span><br><br></td>
    </tr>
    
    
    </tbody>
    </table>
    </cf_box>
    
    <br><br><br>
    
    <!---  START OF Par  ---> 
        <cf_box color= "clear"
	style="width:85%"> 
    <table class="TBLAYOUT" style="width: 85%;" cellpadding="0">
    <tbody>
    <tr>
    <td><span class="TB-H1">Parallel example:<a name="PAR"></a></span><hr hr="" color="#2c2c2c" size="2"></td>
    </tr>
    <tr>
    <td style="text-align: center;"><img src="P04files/Par_exp.png" alt="Par exp" style="width: 100%; height: 100%"><br>
    <div class="TB-FIGURES">Figure. 11:
    Parallel example</span> &nbsp;</td>
    </tr>
    
    

    
    
    <tr>

    <td><span class="TB-BODY"><br>Two or more components are considered to be "in
    parallel" if the leading terminals of all components are connected to
    each other and the trailing terminals of all components are also
    connected.&nbsp; Figure 11 shows a typical example of a parallel
    resistor connection.&nbsp; You can see that the top (leading in
    this case) terminals of both R1 and R2 are connected, as well as the
    bottom (trailing in this case) are connected.<br>
    <br>
    Like series connected resistors, parallel connected resistors can also
    be replaced with an equivalent resistance.<br>
    The general formula is:</span><br>
    <img style="width: 289px; height: 55px;" alt="Par formula" src="P04files/Par_form.png"></td>
    
    </tr>
    <tr>
    <td style="text-align: center;"><img style="width: 100%; height: 100%;" alt="Par example 2" src="P04files/Par_exp2.png"><br><div class="TB-FIGURES">
    Fig. 12: Parallel Equivalent</span> <br>
    </td>
    </tr>
    <tr>
    <td><span class="TB-BODY"><br>Plugging in the R1 and R2 resistance values into the
    above equation yields the new equivalent resistance of 10 k&Omega;.</span></td>
    </tr>
    </tbody>
    </table>

    
        </cf_box>


<br>
<br>
<br>
<br>
<br>
<br>
</body></html>