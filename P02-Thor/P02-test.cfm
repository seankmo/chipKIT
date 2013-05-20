<!-- Based on \ChipKitDev\P02-Thor\P02-jbs-5-14-2013.cfm 
     Posted by John, 5/14/2013.
-->

<html>
	<head>
 		<title>Blinking the Internal LED</title>
		<meta name="author" content="Thor Steingrimsson">
		<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
		<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
		<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
		<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>
	<body>
	<cf_box Color="white">
	<table class="TBLAYOUT">
		<tr>
			<td align="center">
				<span class="TB-PROJECTTITLE">
					Project 2:<br>
					Blinking the Internal LED
				</span>
				<hr/>
			</td>
      </tr>
	</table>

	<br>

	<table class="TBLAYOUT">
		<tr>
			<td>
				<span class="TB-H1">Introduction</span><br><br>
				<span class="TB-BODY">
					<cf_imagebox align="right"
					             path="P02files/pin_13_led.svg"
					             width="300px"
					             caption="Fig. 1.  Uno32 with pin 13 set to HIGH.  This causes the LED
					             tied to this pin to be illuminated.">

					In the <a href="P01.cfm">Introduction to MPIDE</a>, you used an example sketch that
					was provided in MPIDE to blink one of the on-board LEDs (light emitting diodes) as
					depicted in Fig. 1.  In this project, the goal is once again to obtain a sketch that
					will blink the same on-board LED, but rather than loading an example, we now want to
					write the sketch ourselves&mdash;and understand what we wrote!  You will also become
					more familiar with MPIDE along the way.  (Although Fig. 1 shows an Uno32, the code you
					write for this project can be used equally well with the other chipKIT boards.)
				</span>
			</td>
		</tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td valign="top">
				<span class="TB-H1">Digital Signals</span>
				<br><br>
				<span class="TB-BODY">
					Signals convey information.  We are equipped to receive signals in various ways.  We
					can receive auditory signals through our ears, visual signals through our eyes,
					signals of touch through nerves in our skin, etc.  We can also store and convey
					information in different ways.  We can write in a book, we can sound an alarm, and we
					can even make smoke signals.  In the late eighteenth century, people realized they
					could use electrical devices to transmit information&mdash;they could use electrical
					signals.  These electrical signals, coupled with the advances in technology over the
					past 200 years, have resulted in the &ldquo;Information Age&rdquo; in which we now
					live.

					<br><br>

					Electrical signals are classified as being of one of two
					types&mdash;either <i>digital</i> or <i>analog</i>.  The two types of signals are
					depicted in Fig. 2 where the horizontal axis represents time and the vertical axis
					represents an electrical quantity such as a voltage or a current.  Analog signals are
					ones that vary continuously in time.  In contrast, as a function of time, digital
					signals vary discontinuously from one level to another.  The most common digital
					signal is <i>binary</i>, meaning the signal varies between only two different levels
					that we often refer to as <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span>.  Another name for a
					level is <i>state</i>, so that a signal may be said to be in either
					a <span class="TB-LITERAL1">HIGH</span> state or a <span class="TB-LITERAL1">LOW</span> state.  In addition to calling
					them <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span>, these binary states are sometimes called
					one and zero, on and off, or even true and false.

					<cf_imagebox align="right"
					             path="P02files/continuous-discontinuous-v1.svg"
					             width="275px"
					             caption="Fig. 2.  Depiction of an analog (continuous)<br>
					                      and a discrete (discontinuous) signal.">

					<br><br>

					chipKIT boards are inherently digital devices, meaning they use digital signals, even
					though, as we will see, they can work with analog signals.  These boards are equipped
					with a large number of electrical connectors known as <i>pins</i>.  Sometimes these
					pins are used to obtain input (i.e., &ldquo;read&rdquo; an electrical signal) and
					sometimes they are used to generate output (i.e., &ldquo;write&rdquo; an electrical
					signal).  We can configure the pins for input or output, and thus they are sometimes
					referred to as <i>I/O pins</i>.

					<br><br>

					When it comes to producing output, we, as the programmers of the boards, can specify
					which pins should be <span class="TB-LITERAL1">HIGH</span>, which should be <span class="TB-LITERAL1">LOW</span>, and when
					the pins should be in these different states.  One of the pins on the chipKIT boards
					is already associated with an LED.  For now, the important thing to keep in mind is
					that when this pin is <span class="TB-LITERAL1">HIGH</span> the LED is on, and when it
					is <span class="TB-LITERAL1">LOW</span> the LED will be off.

					<br><br>

				</span>
			</td>
      </tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td>
            <span class="TB-H1">MPIDE Basics</span>
            <br><br>
            <span class="TB-BODY">
				<table>
					<tr>
						<td>
							<cf_TB-TabBox>
								<cf_TB-Tab color="red"
								           path="P02files/P02Cbasics.cfm"
								           title="Basics of C/C++">
							</cf_TB-TabBox>

							The language that MPIDE uses is based on the C++ programming language (read C++
							as &ldquo;C-plus-plus&rdquo;).  C++ was developed from the language C, which
							dates back to the late 1960's.  C++ subsumes C, meaning that everything you can
							do in C, you can do with equivalent statements in C++.  However, the converse
							is not true.  If you are not familiar with either C or C++, you should read the
							introduction to the basic syntax of these languages by following the link
							available via the box to the right.

						</td>
					</tr>
				</table>

				<br><br>

				In C++, every program must have a function named <span class="TB-BLACK">main</span><span class="TB-BLACK">()</span>.  However, in
				MPIDE, you do not have to write the <span class="TB-BLACK">main</span><span class="TB-BLACK">()</span> function yourself because one
				has already been written for you.  In fact, not only has one been written for you, but
				you do not have access to it.  Instead, you <i>must</i> write two
				functions: <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> and <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span>.

				<br><br>

				The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function is run once at the start of execution of your sketch
				(when your sketch first starts to run).  The statements in this function are typically
				used to perform &ldquo;one-time&rdquo; set-up operations, such as specifying which pins
				should be used for input or output or specifying the speed of communication between your
				chipKIT board and the computer.

				<br><br>

				In contrast, the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function is called &ldquo;repeatedly.&rdquo; By
				repeatedly, we mean that after all the statements in the function have been executed and
				the function <i>returns</i>, the function is immediately called again.  This cycle
				repeats until the board loses power or until it is reprogrammed.

				<br><br>

				You have undoubtedly noticed that certain words or pieces of computer code have been
				highlighted using different colors.  This highlighting is done within MPIDE to help
				indicate the way in which the particular term is used.  For example, the blue that is
				used for <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span> indicates that these are
				&ldquo;constants&rdquo; whose values cannot be changed.  The highlighting used within
				MPIDE is used throughout the text of these projects as well.

				<br><br>

				</span>
			</td>
      </tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td>
				<cf_box color="putty">
            <span class="TB-H2">Step 1: Writing the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> Function</span>
            <br><br>
            <span class="TB-BODY">

	         You will begin this project by creating the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function.
				The <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function doesn't return anything, so its return type is
				<span class="TB-KEYWORD1">void</span>. Also, the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span>
				function has no inputs, so nothing should go between the
				parentheses.  Thus, a template for
				the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function in which the body is
				empty is:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
void setup()
{
  // Body of function.
}
</pre>
</cf_box>
</div>

				Within the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function, you will use the function
				<span class="TB-KEYWORD2">pinMode</span><span class="TB-BLACK">()</span> to tell the board that you wish to use a pin in a certain way.
				This function takes two input parameters, called arguments, corresponding to a pin (we
				must specify the pin number) and the <i>mode</i> for that pin.  The mode is
				either <span class="TB-LITERAL1">INPUT</span> or <span class="TB-LITERAL1">OUTPUT</span>.  When set to <span class="TB-LITERAL1">INPUT</span>, we
				can &ldquo;read&rdquo; signals from the pin.  Conversely, when the mode is set
				to <span class="TB-LITERAL1">OUTPUT</span>, we can &ldquo;write&rdquo; to the pin.  Keep in mind that we can
				only write <span class="TB-LITERAL1">HIGH</span> or <span class="TB-LITERAL1">LOW</span>.  When we write one of these values
				(using a function we'll describe below), that establishes the pin's state.  If we
				write <span class="TB-LITERAL1">HIGH</span>, the pin will be maintained at a &ldquo;high&rdquo; voltage of
				3.3 V.  On the other hand, if we write <span class="TB-LITERAL1">LOW</span>, the pin will be maintained at a
				&ldquo;low&rdquo; voltage of 0 V.  These voltages are maintained until a different value
				is written to the pin.  

				<br><br>

				On the chipKIT boards, one of the internal LEDs is tied to pin 13.  (When pin 13
				is <span class="TB-LITERAL1">HIGH</span>, this LED is illuminated.  When pin 13 is <span class="TB-LITERAL1">LOW</span>, this
				LED is off.)  We want to configure pin 13 for <span class="TB-LITERAL1">OUTPUT</span> so that you can
				effectively &ldquo;write&rdquo; to the LED.  Thus, we need to have the following
				statement in the body of the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide; gutter: false;">
pinMode(13, OUTPUT);
</pre>
</cf_box>
</div>

				Within MPIDE, like <span class="TB-LITERAL1">HIGH</span> and <span class="TB-LITERAL1">LOW</span>, <span class="TB-LITERAL1">OUTPUT</span>
				and <span class="TB-LITERAL1">INPUT</span> are also constants.  Hidden from us is the fact that they have
				numeric values that cannot be changed while the program is running.  Instead of using
				these named constants, we could use the underlying numeric values directly in our
				program.  However, by using these named constants, the code is more descriptive, i.e.,
				more readable or self-documenting.  The use of named constants in this way is considered
				good programming style.

				<br><br>

				Note that we are using the numeric value 13 in our program and it might be difficult for
				a person reading this code to know what this particular number represents or means.  In
				a subsequent project we will demonstrate how we can provide our own names for numeric
				values.

				<br><br>

				With the addition of the statement above to the body of the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span>
				function, the complete function is as follows:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
void setup()
{
  pinMode(13, OUTPUT);
}
</pre>
</cf_box>
</div>

				<br>

            </span>

            <span class="TB-H2">Step 2: Writing the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> Function</span>
            <br><br>

            <span class="TB-BODY">

				Now that you've finished writing the <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span> function, you can focus on
				creating the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function that the board will run repeatedly (after
				first running the <span class="TB-KEYWORD3">setup</span> function once).  To make the LED blink, you will
				need two more functions.  The first is <span class="TB-KEYWORD2">digitalWrite</span><span class="TB-BLACK">()</span> and the second
				is <span class="TB-KEYWORD2">delay</span><span class="TB-BLACK">()</span>.  The <span class="TB-KEYWORD2">digitalWrite</span><span class="TB-BLACK">()</span> function requires two
				arguments.  The first argument is the pin to which you're writing, and the second
				argument is the pin's state, which is either <span class="TB-LITERAL1">HIGH</span>
				or <span class="TB-LITERAL1">LOW</span>. Thus, the function call that sets pin 13 to <span class="TB-LITERAL1">HIGH</span>
				should look like this:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide; gutter: false;">
digitalWrite(13, HIGH);
</pre>
</cf_box>
</div>

				And similarly, to set pin 13 to <span class="TB-LITERAL1">LOW</span>, it should look like this:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide; gutter: false;">
digitalWrite(13, LOW);
</pre>
</cf_box>
</div>

				The <span class="TB-KEYWORD2">delay</span><span class="TB-BLACK">()</span> function has only a single argument, which specifies the amount
				of delay in milliseconds.  By &ldquo;delay&rdquo; we mean the board simply does nothing
				for the specified amount of time.  There are one thousand milliseconds in one second.
				Thus, to obtain a delay of one second, you would write:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide; gutter: false;">
delay(1000);
</pre>
</cf_box>
</div>

				We can now combine these functions in the body of the <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span> function such
				that the LED attached to pin 13 blinks at a two-second interval (i.e., it is on for one
				second, then off for one second):

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
void loop()
{
  digitalWrite(13, HIGH); // Turn on the LED.
  delay(1000);            // LED remains on for 1 second.
  digitalWrite(13, LOW);  // Turn off the LED.
  delay(1000);            // LED remains off for 1 second.
}
</pre>
</cf_box>
</div>

				<br>

            </span>

            <span class="TB-H2">Step 3: Putting It All Together</span>
            <br><br>

            <span class="TB-BODY">

				At this point we have all the code necessary to obtain a blinking LED.  The following is
				the complete sketch that is now ready to be uploaded to your chipKIT board:

				<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush:mpide;">
void setup()
{
  // Set pin 13, the LED, to OUTPUT.
  pinMode(13, OUTPUT);
}

void loop()
{
  digitalWrite(13, HIGH); // Turn on the LED.
  delay(1000);            // LED remains on for 1 second.
  digitalWrite(13, LOW);  // Turn off the LED.
  delay(1000);            // LED remains off for 1 second.
}
</pre>
</cf_box>
</div>
				
				If you need a refresher on how to upload your sketch to the board, see the
				project <a href="P01.cfm">Introduction to MPIDE</a>.

            </span>
				</cf_box>
			</td>
      </tr>
	</table>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
				<br><br>
				<span class="TB-H1">Core Concepts</span>
				<br>
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
									<li>Digital signals.</li>
									<li>Functions required to be in every sketch: <span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span>
									and <span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span>.
									</li>
								</ul>
							</td>
						</tr>
						<tr>
							<td width="20%">Functions Introduced:</td>
							<td width="80%">
								<ul>
									<li><span class="TB-KEYWORD3">setup</span><span class="TB-BLACK">()</span></li>
									<li><span class="TB-KEYWORD3">loop</span><span class="TB-BLACK">()</span></li>
									<li><span class="TB-KEYWORD2">pinMode</span><span class="TB-BLACK">(pin, mode)</span></li>
									<li><span class="TB-KEYWORD2">digitalWrite</span><span class="TB-BLACK">(pin, value)</span></li>
									<li><span class="TB-KEYWORD2">delay</span><span class="TB-BLACK">(milliseconds)</span></li>
								</ul>
							</td>
						</tr>
					</tbody>  
				</table>
				<br>
			</td>
		</tr>
	</table>
	
	</cf_box>
</body>
</html>

