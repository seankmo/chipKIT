<html><head>
<meta name="author" content="Thor Steingrimsson">
<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
<script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
<link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
<script type="text/javascript">SyntaxHighlighter.all();</script>
<title>Internal Blinking LED</title>

  <style>
  LITERAL1 {font-family:"Courier";color:#0066ff}
  KEYWORD1 {font-family:"Courier";color:#ff0000}
  KEYWORD2 {font-family:"Courier";color:#ff8000}
  KEYWORD3 {font-family:"Courier";color:#8b308b}
  BLACK {font-family:"Courier";color:#000000}
  </style>
</head>
<body>
  <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
    <tbody>
      <tr>
	<td align="center" width="100%">
	  <span class="TB-PROJECTTITLE">
	    Project 2:<br>
	    Blinking the Internal LED
	  </span>
	</td>
      </tr>
      <tr>
	<td colspan="3" align="right"><hr><br><br></td>
      </tr>
    </tbody>
  </table>
  
  <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
    <tbody>
      <tr>
	<td valign="top">
      	  <p>
            <span class="TB-H1">Introduction</span> 

	    <br/><br/>

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
	<td align="center" width="320">
      	  <img src="P02files/led_on_uno32.png" height="150"> <br><br>
          <div class="TB-FIGURES">Fig. 1.  Uno32 with pin 13 <LITERAL1>HIGH</LITERAL1>.</div>
	</td>
      </tr>
      <tr><td colspan="2"><br><br></td></tr>
    </tbody>
  </table>
  
  <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
    <tbody>
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



	      Electrical signals are classified as being of one of two
	      types&mdash;either <i>digital</i> or <i>analog</i>.
	      Analog signals are ones that vary continuously over
	      time.  In contrast, digital signals vary discontinuously
	      from one level to another.  The most common digital
	      signal is <i>binary</i>, meaning the signal varies
	      between only two different levels that we often refer to
	      as <LITERAL1>HIGH</LITERAL1> and <LITERAL1>LOW</LITERAL1>.  Another name
	      for a level is <i>state</i>, so that a signal may be
	      said to be in either a <LITERAL1>HIGH</LITERAL1> state or
	      a <LITERAL1>LOW</LITERAL1> state.  In addition to calling
	      them <LITERAL1>HIGH</LITERAL1> and <LITERAL1>LOW</LITERAL1>, these
	      binary states are sometimes called one and zero, on and
	      off, or even true and false.

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
	      be <LITERAL1>HIGH</LITERAL1>, which should be <LITERAL1>LOW</LITERAL1>,
	      and when the pins should be in these different states.
	      One of the pins on the chipKIT boards is already
	      associated with an LED.  For now, the important thing to
	      keep in mind is that when this pin is <LITERAL1>HIGH</LITERAL1>
	      the LED is on, and when it is <LITERAL1>LOW</LITERAL1> the LED
	      will be off.

	      <br/><br/>

	      <td align="center" width="320">
      		<img src="P02files/Cont vs Disc.png" height="100"/>
		<br/><br/>
		<div class="TB-FIGURES">Fig. 2.  Depiction of a
		continuous and discrete signal</div>
	      </td>

	    </span>
	</td>
      </tr>
    </tbody>
  </table>
  
  <table class="TBLAYOUT" style="width: 100%;" cellpadding="0">
    <tbody>
      <tr>
	<td valign="top">
            <span class="TB-H1">MPIDE Basics</span>
	    
            <br/><br/>
	    
            <span class="TB-BODY">
	      
	      The language that MPIDE uses is based on the C++
	      programming language (read C++ as
	      &ldquo;C-plus-plus&rdquo;).  C++ was developed from the
	      language C, which dates back to the late 1960's.  C++
	      subsumes C, meaning that everything you can do in C, you
	      can do with equivalent statements in C++.  However, the
	      converse is not true.  If you are not familiar with
	      either C or C++, you should read the introduction to the
	      basic syntax of these
	      languages <a href="P02files/P02Cbasics.html">here</a>.

	      <br/><br/>

	      In C++, every program must have a function
	      named <BLACK>main</BLACK><tt>()</tt>.  However, in MPIDE, you do
	      not have to write the <BLACK>main</BLACK><tt>()</tt> function
	      yourself because one has already been written for you.
	      In fact, not only has one been written for you, but you
	      do not have access to it.  Instead, you must define two
	      functions: <KEYWORD3>setup</KEYWORD3><tt>()</tt> and <KEYWORD3>loop</KEYWORD3><tt>()</tt>.

	      <br/><br/>

	      The <KEYWORD3>setup</KEYWORD3><tt>()</tt> function is run once at the
	      start of execution of your sketch (when your sketch
	      first starts to run).  The statements in this function
	      are typically used to perform &ldquo;one-time&rdquo;
	      set-up operations, such as specifying which pins should
	      be used for input or output or specifying the speed of
	      communication between your chipKIT board and the
	      computer.

	      <br/><br/> 

	    
	      In contrast, the <KEYWORD3>loop</KEYWORD3><tt>()</tt> function is called
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
    </tbody>
  </table>
  
  <table class="TBLAYOUT" cellpadding="0">
    <tbody>
      <tr>
	<td valign="top">
            <span class="TB-H1">Writing Your Sketch</span>

	    <br/><br/>
	  
            <span class="TB-BODY">

              You will begin this project by creating
	      the <KEYWORD3>setup</KEYWORD3><tt>()</tt> function.
	      The <KEYWORD3>setup</KEYWORD3><tt>()</tt> function doesn't return
	      anything, so its return type is
	      <KEYWORD1>void</KEYWORD1>. Also, the <KEYWORD3>setup</KEYWORD3><tt>()</tt>
	      function has no inputs, so nothing should go between the
	      parentheses.  Thus, a template for
	      the <KEYWORD3>setup</KEYWORD3><tt>()</tt> function in which the body is
	      empty is:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide;">
void setup()
{
  // Body of function.
}
</pre>
</cf_box>
</div>

	      Within the <KEYWORD3>setup</KEYWORD3><tt>()</tt> function, you will use the function
	      <KEYWORD2>pinMode</KEYWORD2><tt>()</tt> to tell the board that you wish
	      to use a pin in a certain way (<KEYWORD2>pinMode</KEYWORD2><tt>()</tt>
	      may appear in other places in your sketch, but it is
	      frequently called from within <KEYWORD3>setup</KEYWORD3><tt>()</tt>).
	      This function takes two input parameters, called
	      arguments, corresponding to a pin (we must specify the
	      pin number) and the <i>mode</i> for that pin.  The mode
	      is either <LITERAL1>INPUT</LITERAL1> or <LITERAL1>OUTPUT</LITERAL1>.
	      When set to <LITERAL1>INPUT</LITERAL1>, we can
	      &ldquo;read&rdquo; signals from the pin.  Conversely,
	      when the mode is set to <LITERAL1>OUTPUT</LITERAL1>, we can
	      &ldquo;write&rdquo; to the pin.  Keep in mind that we
	      can only write <LITERAL1>HIGH</LITERAL1> or <LITERAL1>LOW</LITERAL1>.
	      When we write one of these values (using a function
	      we'll describe in a little while), that establishes the
	      pin's state.  If we write <LITERAL1>HIGH</LITERAL1>, the pin
	      will be maintained at a &ldquo;high&rdquo; voltage of
	      3.3 V.  On the other hand, if we write <LITERAL1>LOW</LITERAL1>,
	      the pin will be maintained at a &ldquo;low&rdquo;
	      voltage of 0 V.  These voltages are maintained until a
	      different value is written to the pin.

	      <br/><br/>

	      On the chipKIT boards, one of the internal LEDs is tied
	      to pin 13.  (When pin 13 is <LITERAL1>HIGH</LITERAL1>, this LED
	      is illuminated.  When pin 13 is <LITERAL1>LOW</LITERAL1>, this
	      LED is off.)  We want to configure pin 13
	      for <LITERAL1>OUTPUT</LITERAL1> so that you can effectively
	      &ldquo;write&rdquo; to the LED.  Thus, we need to have
	      the following statement in the body of
	      the <KEYWORD3>setup</KEYWORD3><tt>()</tt> function:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; gutter: false">
  pinMode(13, OUTPUT);
</pre>
</cf_box>
</div>

	      Within MPIDE, <LITERAL1>OUTPUT</LITERAL1> and <LITERAL1>INPUT</LITERAL1>
	      are a particular kind of constant, essentially with
	      names, even though they appear as words. But, hidden
	      from us is the fact that they have numeric values that
	      cannot be changed while the program is
	      running. The <KEYWORD3>setup</KEYWORD3><tt>()</tt> function should now
	      look like this:

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

	      Now that you've finished writing
	      the <KEYWORD3>setup</KEYWORD3><tt>()</tt> function, you can focus on
	      creating the <KEYWORD3>loop</KEYWORD3><tt>()</tt> function that the board
	      will continuously run.  To make the LED blink, you will
	      need two more functions.  The first
	      is <KEYWORD2>digitalWrite</KEYWORD2><tt>()</tt> and the second
	      is <KEYWORD2>delay</KEYWORD2><tt>()</tt>.
	      The <KEYWORD2>digitalWrite</KEYWORD2><tt>()</tt> function requires two
	      arguments.  The first argument is the pin to which
	      you're writing, and the second input is the pin's state,
	      which is either <LITERAL1>HIGH</LITERAL1>
	      or <LITERAL1>LOW</LITERAL1>. Thus, the function call that sets
	      pin 13 to <LITERAL1>HIGH</LITERAL1> should look like this:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; gutter: false">
  digitalWrite(13, HIGH);
</pre>
</cf_box>
</div>

	      And similarily, to set pin 13 to <LITERAL1>LOW</LITERAL1>, it
	      should look like this:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; gutter: false">
  digitalWrite(13,LOW);
</pre>
</cf_box>
</div>

	      The <KEYWORD2>delay</KEYWORD2><tt>()</tt> function has only a single
	      argument, which specifies the amount of delay in
	      milliseconds.  By &ldquo;delay&rdquo; we mean the board
	      simply does nothing for the specified amount of time.
	      There are one thousand milliseconds in one second.
	      Thus, to obtain a delay of one second, you would write:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; gutter: false">
  delay(1000);
</pre>
</cf_box>
</div>

	      We can now combine these functions in the body of
	      the <KEYWORD3>loop</KEYWORD3><tt>()</tt> function such that the LED blink
	      at one-second intervals (i.e., be on for one second,
	      then off for one second):

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; toolbar: false;">
void loop()
{
  digitalWrite(13,HIGH);
  delay(1000);
  digitalWrite(13,LOW);
  delay(1000);
}
</pre>
</cf_box>
</div>


	      At this point we have all the code necessary to obtain a
	      blinking LED.  The following is the complete code
	      listing that is now ready to be uploaded to your
	      chipKIT board:

	      <div align="center">
    <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
    <pre class="brush: mpide; toolbar: false;">
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
</cf_box>
</div>

	      If you need a refresher on how to upload your sketch to the board, see 
	      the project <a href="P01.html">Introduction to MPIDE</a>.

	    </span>
	</td>
      </tr>
    </tbody>
  </table>
  
  <span class="TB-BODY">
    <table>
      <tbody>
	<tr>
	  <td valign="top">
              <span class="TB-H1">Summary</span>
	      <table border="1">
		<tbody>
		  <tr>
		    <td>
		      Digital Signals
		    </td>
		    <td>
		      Can be either HIGH or LOW.
		    </td>
		  </tr>
		  <tr>
		    <td>
		      Required Functions
		    </td>
		    <td>
		      <table border="1">
			<tbody><tr>
			    <td>
			      <KEYWORD1>void</KEYWORD1> <KEYWORD3>setup</KEYWORD3><tt>(){}</tt>
			    </td>
			    <td>
			      This function is for anything that only
			      needs to be initialized or run once at
			      startup.
			    </td>
			  </tr>
			  <tr>
			    <td>
			      <KEYWORD1>void</KEYWORD1> <KEYWORD3>loop</KEYWORD3><tt>(){}</tt>
			    </td>
			    <td>
			      This function starts after setup and
			      constantly runs. It only ends when the
			      board is reset or reprogrammed.
			    </td>
			  </tr>
			</tbody>
		      </table>
		    </td>
		  </tr>
		  <tr>
		    <td>
		      New built-in functions
		    </td>
		    <td>
		      <table border="1">
			<tbody><tr>
			    <td>
			      <KEYWORD2>pinMode</KEYWORD2><tt>(pin, mode)</tt>
			    </td>
			    <td>
			      Sets the mode of the pin to
			      either <LITERAL1>INPUT</LITERAL1>
			      or <LITERAL1>OUTPUT</LITERAL1>.
			    </td>
			  </tr>
			  <tr>
			    <td>
			      <KEYWORD2>digitalWrite</KEYWORD2><tt>(pin, value)</tt>
			    </td>
			    <td>
			      Writes the value, <LITERAL1>HIGH</LITERAL1>
			      or <LITERAL1>LOW</LITERAL1>, to the pin.
			    </td>
			  </tr>
			  <tr>
			    <td>
			      <KEYWORD2>delay</KEYWORD2><tt>(time)</tt>
			    </td>
			    <td>
			      Pauses execution for the number of
			      milliseconds specified by <tt>time</tt>.
			    </td>
			  </tr>
			</tbody>
		      </table>
		    </td>
		  </tr>
		</tbody>
	      </table>
	  </td>
	</tr>
      </tbody>
    </table>
  </span>

</body>
</html>
