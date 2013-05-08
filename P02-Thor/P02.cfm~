<html>
	<head>
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
			<td align="center" width="100%">
				<span class="TB-PROJECTTITLE">
					Project 2:<br>
					Blinking the Internal LED
				</span>
				<hr/>
			</td>
      </tr>
	</table>
	<br/><br/>
	<table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
		<tr>
			<td valign="top">
            <span class="TB-H1">Introduction</span><br/><br/>
            <span class="TB-BODY">
					In the <a href="P01.html">Introduction to MPIDE</a>, you
					used an example sketch that was provided in MPIDE to
					blink one of the on-board LEDs (light emitting diodes).
					In this project, the goal is once again to obtain a
					sketch that will blink the same on-board LED, but rather
					than loading an example, we now want to write the sketch
					ourselves&mdash;and understand what we wrote!  You will
					also become more familiar with MPIDE along the way.
            </span>
			</td>
			<td align="center">
				<img src="P02files/Uno32.svg" height="150"> <br/><br/>
				<div class="TB-FIGURES">Fig. 1.  Uno32 with pin 13 <code>HIGH</code>.</div>
			</td>
      </tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td valign="top">
				<span class="TB-H1">Digital Signals</span>
				<br/><br/>
				<span class="TB-BODY">
					Signals convey information.  We are equipped to receive
					signals in various ways.  We can receive auditory
					signals through our ears, visual signals through our
					eyes, signals of touch through nerves in our skin, etc.
					We can also store and convey information in different
					ways.  We can write in a book, we can sound an alarm,
					and we can even make smoke signals.  In the late
					eighteenth century, people realized they could use
					electrical devices to transmit information&mdash;they
					could use electrical signals.  These electrical signals,
					coupled with the advances in technology over the past
					200 years, have resulted in the &ldquo;Information
					Age&rdquo; in which we now live.
					<br/><br/>

					<table><tr><td>
					Electrical signals are classified as being of one of two
					types&mdash;either <i>digital</i> or <i>analog</i>.
					Analog signals are ones that vary continuously over
					time.  In contrast, digital signals vary discontinuously
					from one level to another.  The most common digital
					signal is <i>binary</i>, meaning the signal varies
					between only two different levels that we often refer to
					as <code>HIGH</code> and <code>LOW</code>.  Another name
					for a level is <i>state</i>, so that a signal may be
					said to be in either a <code>HIGH</code> state or
					a <code>LOW</code> state.  In addition to calling
					them <code>HIGH</code> and <code>LOW</code>, these
					binary states are sometimes called one and zero, on and
					off, or even true and false.
					</td>
					<td align="center">
						<img src="P02files/Cont vs Disc.svg" height="100"/>
						<br/><br/>
						<div class="TB-FIGURES">Fig. 2.  Depiction of a
						continuous and discrete signal.</div>
					</td>
					</tr></table>
					<br/><br/>

					chipKIT boards are inherently digital devices, meaning
					they use digital signals, even though, as we will see,
					they can work with analog signals.  These boards are
					equipped with a large number of electrical connectors
					known as <i>pins</i>.  Sometimes these pins are used to
					obtain input (i.e., &ldquo;read&rdquo; an electrical
					signal) and sometimes they are used to generate output
					(i.e., &ldquo;write&rdquo; an electrical signal).  We
					can configure the pins for input or output, and thus they
					are sometimes refered to as <i>I/O pins</i>.
					<br/><br/>

					When it comes to producing output, we, as the
					programmers of the boards, can specify which pins should
					be <code>HIGH</code>, which should be <code>LOW</code>,
					and when the pins should be in these different states.
					One of the pins on the chipKIT boards is already
					associated with an LED.  For now, the important thing to
					keep in mind is that when this pin is <code>HIGH</code>
					the LED is on, and when it is <code>LOW</code> the LED
					will be off.
					<br/><br/>
				</span>
			</td>
      </tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td>
            <span class="TB-H1">MPIDE Basics</span>
            <br/><br/>
            <span class="TB-BODY">
				<table><tr><td>
					The language that MPIDE uses is based on the C++
					programming language (read C++ as
					&ldquo;C-plus-plus&rdquo;).  C++ was developed from the
					language C, which dates back to the late 1960's.  C++
					subsumes C, meaning that everything you can do in C, you
					can do with equivalent statements in C++.  However, the
					converse is not true.  If you are not familiar with
					either C or C++, you should read the introduction to the
					basic syntax of these languages using the tab to the right.
				</td><td>
					<cf_TextbookTabs Mode="top" NextColor="blue">
					<cf_TextbookTabs Mode="bottom" Color="blue" Title="Basics of C/C++" TabURL="P02files/P02Cbasics.cfm">
				</td>
				</tr></table>
				<br/><br/>

				In C++, every program must have a function
				named <code>main()</code>.  However, in MPIDE, you do
				not have to write the <code>main()</code> function
				yourself because one has already been written for you.
				In fact, not only has one been written for you, but you
				do not have access to it.  Instead, you must define two
				functions: <code>setup()</code> and <code>loop()</code>.
				<br/><br/>

				The <code>setup()</code> function is run once at the
				start of execution of your sketch (when your sketch
				first starts to run).  The statements in this function
				are typically used to perform &ldquo;one-time&rdquo;
				set-up operations, such as specifying which pins should
				be used for input or output or specifying the speed of
				communication between your chipKIT board and the
				computer.
				<br/><br/> 

				In contrast, the <code>loop()</code> function is called
				&ldquo;repeatedly.&rdquo; By repeatedly, we mean that
				after all the statements in the function have been
				executed and the function <i>returns</i>, the function
				is immediately called again.  This cycle repeats until
				the board loses power or until it is reprogrammed.  (It
				is worth noting that most of the sketches written for
				Arduino boards can be used in MPIDE with the chipKIT
				boards.)
				<br/><br/>
				</span>
			</td>
      </tr>
	</table>
  
	<table class="TBLAYOUT">
      <tr>
			<td valign="top">
			<span class="TB-H1">Writing Your Sketch</span>
			<br/><br/>
         <span class="TB-BODY">
				You will begin this project by creating
				the <code>setup()</code> function.
				The <code>setup()</code> function doesn't return
				anything, so its return type is
				<code>void</code>. Also, the <code>setup()</code>
				function has no inputs, so nothing should go between the
				parentheses.  Thus, a template for
				the <code>setup()</code> function in which the body is
				empty is:
	      <pre class="brush:mpide;">
void setup()
{
  // Body of function.
}
	      </pre>

				Within the <code>setup()</code> function, you will use the function
				<code>pinMode()</code> to tell the board that you wish
				to use a pin in a certain way (<code>pinMode()</code>
				may appear in other places in your sketch, but it is
				frequently called from within <code>setup()</code>).
				This function takes two input parameters, called
				arguments, corresponding to a pin (we must specify the
				pin number) and the <i>mode</i> for that pin.  The mode
				is either <code>INPUT</code> or <code>OUTPUT</code>.
				When set to <code>INPUT</code>, we can
				&ldquo;read&rdquo; signals from the pin.  Conversely,
				when the mode is set to <code>OUTPUT</code>, we can
				&ldquo;write&rdquo; to the pin.  Keep in mind that we
				can only write <code>HIGH</code> or <code>LOW</code>.
				When we write one of these values (using a function
				we'll describe in a little while), that establishes the
				pin's state.  If we write <code>HIGH</code>, the pin
				will be maintained at a &ldquo;high&rdquo; voltage of
				3.3 V.  On the other hand, if we write <code>LOW</code>,
				the pin will be maintained at a &ldquo;low&rdquo;
				voltage of 0 V.  These voltages are maintained until a
				different value is written to the pin.
				<br/><br/>

				On the chipKIT boards, one of the internal LEDs is tied
				to pin 13.  (When pin 13 is <code>HIGH</code>, this LED
				is illuminated.  When pin 13 is <code>LOW</code>, this
				LED is off.)  We want to configure pin 13
				for <code>OUTPUT</code> so that you can effectively
				&ldquo;write&rdquo; to the LED.  Thus, we need to have
				the following statement in the body of
				the <code>setup()</code> function:
	      <pre class="brush:mpide;">
pinMode(13, OUTPUT);
	      </pre>

				Within MPIDE, <code>OUTPUT</code> and <code>INPUT</code>
				are a particular kind of constant, essentially with
				names, even though they appear as words. But, hidden
				from us is the fact that they have numeric values that
				cannot be changed while the program is
				running. The <code>setup()</code> function should now
				look like this:

	      <pre class="brush: mpide;">
void setup()
{
  pinMode(13, OUTPUT);
}
	      </pre>

				Now that you've finished writing
				the <code>setup()</code> function, you can focus on
				creating the <code>loop()</code> function that the board
				will continuously run.  To make the LED blink, you will
				need two more functions.  The first
				is <code>digitalWrite()</code> and the second
				is <code>delay()</code>.
				The <code>digitalWrite()</code> function requires two
				arguments.  The first argument is the pin to which
				you're writing, and the second input is the pin's state,
				which is either <code>HIGH</code>
				or <code>LOW</code>. Thus, the function call that sets
				pin 13 to <code>HIGH</code> should look like this:

	      <pre class="brush:mpide;">
digitalWrite(13, HIGH);
	      </pre>

				And similarily, to set pin 13 to <code>LOW</code>, it
				should look like this:

	      <pre class="brush:mpide;">
digitalWrite(13,LOW);
	      </pre>

				The <code>delay()</code> function has only a single
				argument, which specifies the amount of delay in
				milliseconds.  By &ldquo;delay&rdquo; we mean the board
				simply does nothing for the specified amount of time.
				There are one thousand milliseconds in one second.
				Thus, to obtain a delay of one second, you would write:

	      <pre class="brush:mpide;">
delay(1000);
	      </pre>

				We can now combine these functions in the body of
				the <code>loop()</code> function such that the LED blink
				at one-second intervals (i.e., be on for one second,
				then off for one second):

	      <pre class="brush:mpide;">
void loop()
{
  digitalWrite(13,HIGH);
  delay(1000);
  digitalWrite(13,LOW);
  delay(1000);
}
	      </pre>

				At this point we have all the code necessary to obtain a
				blinking LED.  The following is the complete code
				listing that is now ready to be uploaded to your
				chipKIT board:

	      <pre class="brush:mpide;">
void setup()
{
  // Set pin 13, the LED, to OUTPUT
  pinMode(13, OUTPUT);
}

void loop()
{
  // Turn on the LED
  digitalWrite(13, HIGH);
  // Wait for a second
  delay(1000);
  // Turn off the LED
  digitalWrite(13, LOW);
  // Wait another second
  delay(1000);
}
// end program
	      </pre>

				If you need a refresher on how to upload your sketch to the board, see 
				the project <a href="P01.html">Introduction to MPIDE</a>.

			</span>
			</td>
      </tr>
	</table>

   <table class="TBLAYOUT">
      <tr>
         <td>
				<br/><br/>
				<span class="TB-H1">Core Concepts:</span><br/><br/>
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
                     <li>Digital Signals</li>
                     <li>Required Functions in Sketch</li>
                     </ul>
                  </td>
               </tr>
					<tr>
						<td width="20%">Functions Introduced:</td>
						<td width="80%">
							<ul>
							<li><code>setup()</code></li>
							<li><code>loop()</code></li>
							<li><code>pinMode(pin,mode)</code></li>
							<li><code>digitalWrite(pin,value)</code></li>
							<li><code>delay(time)</code></li>
							</ul>
						</td>
					</tr>
            </tbody>  
			  </table>
          <br/>
		  <span class="TB-H1">Project Code:</span><br/><br/>
		  <span class="TB-BODY">

<pre class="brush:mpide;">
void setup()
{
  // Set pin 13, the LED, to OUTPUT
  pinMode(13,OUTPUT);
}

void loop()
{
  // Turn on the LED
  digitalWrite(13,HIGH);
  // Wait for a second
  delay(1000);
  // Turn off the LED
  digitalWrite(13,LOW);
  // Wait another second
  delay(1000);
}
// end program
</pre>

        </span>
      </td>
    </tr>
  </table>
  
</cf_box>
</body></html>