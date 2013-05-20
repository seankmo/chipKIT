<html>
<head>
	<meta name="author" content="Thor Steingrimsson">
	<script type="text/javascript" src="/templates/SH/scripts/shCore.js"></script>
	<script type="text/javascript" src="/templates/SH/scripts/shBrushmpide.js"></script>
	<link type="text/css" rel="stylesheet" href="/templates/SH/styles/shCoreDefault.css"/>
	<script type="text/javascript">SyntaxHighlighter.all();</script>
	</head>

	<body>
	<cf_box color="white">
  <table class="TBLAYOUT">
    <tr>
      <td align="center">
		<span class="TB-PROJECTTITLE">
		C/C++ Basics
		<hr/>
		</span>
      </td>
    </tr>
  </table>
  <br/><br/>
  
  <table class="TBLAYOUT">
    <tr>
      <td valign="top">
         <span class="TB-H1">Introduction</span> <br/><br/>
         <span class="TB-BODY">
				This is a brief overview of the basics of the C/C++ programming
				languages. This will only cover the basics that should get you
				started. More complex programming subjects
				will be covered in later projects as they come up.<br/><br/>
			</span>
      </td>
    </tr>
  </table>
  
  <table class="TBLAYOUT" >
    <tr>
	  <td >
		  <span class="TB-H1">Typical Line of Code</span> <br/><br/>
		  <span class="TB-BODY">
			<!--<table><tr><td>-->
			<cf_imagebox align="right"
								 path="C_line_dec.svg"
								 width="320"
								 caption="Figure 1. Deconstruction of a C line.">
								 
		    A line of code is often called a statement. There are a fews 
			things that can be done in a statement.
			The first is to declare a variable, which is discussed below and will be covered in later projects.
			The second is to call a function, which is also discussed below.
			The last is to do some operation. The most common operations are
			the arithmetic operations like addition, subtraction, etc... and they work
			like you would expect them to. Except for a few operations such as the assignment operator
			which is the equal sign(=), which is important because in 
			programming it is common to see a line like this: <code>x=x+1</code>
			In algebra, this is a contradiction. However, in C/C++, this is completely valid.
			In the context of C/C++, <code>x=x+1</code> is actually
			<code>x<sub>next</sub>=x<sub>current</sub>+1</code>. It is very important to keep in mind that 
			the mathematics in programming can act very differently than mathematics in algebra.
			<!--<br></td>
				<td align="center" width="320">
				<img src="C_line_dec.svg" height="150"> <br><br>
				<div class="TB-FIGURES">Figure 1. Deconstruction of a C line.</div> 
				</td>
			</tr></table>-->
			We can also have multiple operations occur on the 
			same line. Although, care should be taken to ensure that the order
			of operations in C/C++ is followed to get the desired result. (The order of operations in C/C++
			can be found online and it mostly follows the mathematical order of operations.)
			Every statement in C ends with a semicolon. This is a part of the
			language and must be done or the program will give a lot of confusing error messages
			and fail to program the board.<br/><br/>
		  </span>
		<br>
	  </td>
	</tr>
  </table>
  
  <table class="TBLAYOUT">
   <tr>
	  <td valign="top">
		  <span class="TB-H1">Variables</span> <br>
		  <span class="TB-BODY">
			A variable is a chunk of memory that stores some value for later reference.
			There are two components of a variable that
			are required for the computer to use it. The first is the data
			type of variable. Since everything in a computer is represented in 
			binary (which is a number system that is comprised of 
			either 1's or 0's) the computer needs to know the data type of the variable in order to
			use it correctly. We won't dive into the specifics here, 
			but this just means that these following data types have a limit 
			on how large a number (when it is a number) that they 
			can represent.<br/>
			<span class="TB-H2">Integers</span><br/>
			The most common type of variable used is the integer. An 
			integer is a number with no decimal point. ...,-1, 0, 1, 2,...
			are just a few examples of an integer.
			Integers can also be either signed or unsigned. This means 
			that either the integers are either positive or negative, or that
			the limit is double provided that the integers are positive.
			<br/>
			<table border="0" id="ST1-putty">
				<tr>
					<th>
						Limits of integers<br/>
						on the Uno32 and Max32
					</th>
					<th>
						Lower Limit
					</th>
					<th>
						Upper Limit
					</th>
				</tr>
				<tr>
					<th>
						Signed
					</th>
					<td>
						-2,147,483,648 (-2<sup>31</sup>)
					</td>
					<td>
						2,147,483,647 (2<sup>31</sup>-1)
					</td>
				</tr>
				<tr>
					<th>
						Unsigned
					</th>
					<td>
						0
					</td>
					<td>
						4,294,967,295 (2<sup>32</sup>-1)
					</td>
				</tr>
			</table><br/>
			<span class="TB-H2">Floating Point Numbers</span><br/>
			The second most common data type is the float, or 
			floating point number. This data type is called that
			because it represents numbers with a decimal point, e.g.
			1.5, 3.141, 0.33333, etc... It is called "floating" because the decimal point
			can "float" compared to its predecessor, fixed point numbers, which specified
			the numbers before and after the decimal point.<br/>
			This is an area where there is a difference between
			the Uno32 and the Max32. For the Uno32, its float and double
			are the same size and thus have the same precision. 
			However, for the Max32, the double has twice the bits as the float.
			This is just something to keep in mind while programming
			these boards, if a high precision (8 byte) floating point number 
			is needed on the Uno32, then instead of using <span class="TB-KEYWORD1">double</span>, use 
			<span class="TB-KEYWORD2">long</span> <span class="TB-KEYWORD1">double</span>, since this will force the board to use 8 bytes
			for the variable, instead of 4 bytes.<br/>
			<table border="0" id="ST1-putty">
				<tr>
					<th>Bytes</th><th>Float</th><th>Double</th>
				</tr>
				<tr>
					<th>Uno32</th><td>4</td><td>4</td>
				<tr/>
				<tr>
					<th>Max32</th><td>4</td><td>8</td>
				</tr>
			</table><span class="TB-BODY">
			It is a good idea to have a basic understanding of how a floating
			point number uses its bits to represent decimal numbers. There is 
			one bit that is used to indicate the sign of the number, whether it
			is positive or negative. Then there are a number of bits (the amount 
			depends on the number of bytes) that are used for the exponent (where the 
			decimal point should be. Finally, the rest of the bits are used for the number.<br/>
			The exact method on how these bits are translated into decimal, or 
			how the computer does arithmetic on them is beyond the scope of this
			supplement, but if you are interested, an internet search can
			reveal this information.</span><br/>
			<table border="0" id="ST1-putty">
				<tr>
					<th>
						Bit breakdown of<br/>
						float and double
					</th>
					<th>
						Sign Bit
					</th>
					<th>
						Exponent Bits
					</th>
					<th>
						Fraction Bits
					</th>
				</tr>
				<tr>
					<th>
						float (4 bytes)
					</th>
					<td>
						1
					</td>
					<td>
						8
					</td>
					<td>
						23
					</td>
				</tr>
				<tr>
					<th>
						double (8 bytes)
					</th>
					<td>
						1
					</td>
					<td>
						11
					</td>
					<td>
						52
					</td>
				</tr>
			</table><br/>
			<!--<img src="fd_bits.svg" height="150"/>
			<div class="TB-FIGURES">Figure 2. How bits are used in floating point numbers.</div><br/>-->
			<cf_imagebox align="right"
								 path="fd_bits.svg"
								 width="600"
								 caption="Figure 2. How bits are used in floating point numbers.">
								 
			An important thing to know about float point numbers is
			that the size of the number is inversely proportional (as one gets bigger,
			the other gets smaller) to the precision of the number. This is
			often called "floating point error" and it occurs when the  
			number gets very large, the number begins to jump in larger and larger amounts. <br/>
			<table border="0" id="ST1-putty">
				<tr>
					<th>
						Floating Point Number Range
					</th>
					<th>
						Minimum
					</th>
					<th>
						Maximum
					</th>
				</tr>
				<tr>
					<th>
						4 Bytes (float)
					</th>
					<td>
						1.1754943 e -38
					</td>
					<td>
						3.4028234 e +38
					</td>
				</tr>
				<tr>
					<th>
						8 Bytes (double)
					</th>
					<td>
						2.2250738585072014 e -308
					</td>
					<td>
						1.7976931348623157 e +308
					</td>
				</tr>
			</table>
			<br/><br/>
			<span class="TB-H2">Characters/Bytes</span><br/>
			Another data type is the char, or character data type. 
			This data type is only a byte long, 8 bits, and is used
			to represent a letter using ASCII, American Standard Code
			for Information Interchange, encoding. For example, 'A' in 
			ASCII is 0100 0001 in binary, or 65 in decimal.<br/> 
			A byte is often used as an integer with 8 bits, and it is more
			general use than a char (although you can interchange them with
			little side effects).
			<br/><br/>
			
			<span class="TB-H2">Naming a Variable</span><br/>
			For the most part, you can name a variable whatever you'd like. However,
			there are some rules on what can be used in a name.
			<ol>
				<li>Names can only contain letters, numbers, and underscores</li>
				<li>Names can not start with a number</li>
				<li>No duplicate names, for both special names(data types, etc...) and previous variables</li>
				<li>Capitalizaton is important</li>
			</ol>
		  </span>
		</p>
	  </td>
	</tr>
	</table>
  <br/>
  <table class="TBLAYOUT" >
    <tr>
	  <td valign="top">
		  <span class="TB-H1">Comments</span> <br><br>
		  <span class="TB-BODY">
			<!--<table><tr><td>-->
			Commenting code is for anyone who will be looking at the code later, so that the reader
			will be able to see what was trying to be done with the code.
			There are two ways in which you can comment your code.
			The first way is called inline comments, they are started with "//". 
			These are comments that consist of a single line and anything after the "//" is a comment,
			but anything before it on a line is still code. This means that these comments can be added 
			to the end of a line of code without commenting out that code.
			They look like this:


<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
// This is an example of a single line comment
</pre>
</cf_box>
</div>
			<!--</td>
			<td align="center" >
			<img src="comments.svg" height="50"> <br><br>
			<div class="TB-FIGURES">Figure 5. Types of Comments.</div>
			</td>
			</tr></table>-->

			The other way to comment code is by using multi-line or block comments, they start with "/*" and end with "*/". 
			They allow for better formatting of the comments and are often used at the top of the code to 
			say who programmed it and what the project is doing, or above a function to describe 
			what it needs for input and what it will output. Here is an example of a block comment:

<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
/*
This is a block comment.
It can have multiple lines
without needing "//" to start
every line.
*/
</pre>
</cf_box>
</div>
			<br/>
			This becomes even more important as the size of a project expands
			and its complexity increases. You can save your self a lot of 
			headaches if you add comments explaining what you are doing when
			it might not be obvious at first glance. Experience is the only way
			to truly know when you should comment something or not. Everyone has
			their style, so just use what works for you.
		  </span>
	  </td>
	</tr>
   </table>
	<br/>
  <table class="TBLAYOUT">
    <tr>
	  <td valign="top">
		  <span class="TB-H1">Function Definition</span> <br><br/>
		  <span class="TB-BODY">
			<!--<table><tr><td>-->
			<cf_imagebox align="right"
								 path="func_def.svg"
								 width="400"
								 caption="Figure 3. Elements of a function definition.">
			A function is code that is run whenever it is
			called in a program (calling a function will be covered below). 
			There are two kinds of functions in
			MPIDE; the ones that are built into the language, and the 
			ones that are created by the programmer. 
			<br><br>
			There are a number of built-in functions in MPIDE for the chipKIT 
			boards, and they are (mostly) interchangable with the same Arduino
			function. You will be introduced to them throughout the tutorials
			as they come up, or you can view them in the reference manual, which
			can be found in MPIDE-&gt;Help-&gt;Reference, which will open a local copy 
			of the reference manual in your default web browser.
			<!--</td>
			<td align="center">
      	<img src="func_def.svg" height="200"> <br/>
			<div class="TB-FIGURES">Figure 3.  Elements of a function definition.</div>
			</td>
			</tr></table>-->
			
			A function definition has four main parts. The first and foremost
			is the name of the function. There are some rules regarding
			what can be used and what cannot, just look at the variable naming
			rules considering that they are the same as the function name rules.
			<br/><br/>
			The next part of a function is the input parameters (or arguments). This allows a
			programmer to pass data into the function. What the function does
			with that data depends on what the function was programmed to do.
			These inputs are variables and when defining them, they need to 
			have a data type and a name. <br/> 
			The third part of a function is its return type. The return type
			is just the data type that the function returns when it is finished.
			If the function is not supposed to return anything, then the data
			type that the function &ldquo;returns&rdquo; is void. This topic will be 
			covered more in-depth in later projects.<br/>
			The final and most important part of a function is the code that it executes(runs) when the 
			function is called.
			This is the body of the function. Without this the function won't do anything. The body
			of the function is shown by curly braces: '{' and '}'. The left curly brace '{' starts the
			body of the function, and the right curly brace '}' ends the body of the function. So anything
			that is inbetween these two curly braces will be executed when the function is called.<br/>
			Example that defines two functions:

<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
// input an integer into the function
// and return an integer when done
int foo(int bar)
{
  // do something to the inputted int
  bar = bar + 1;
  // return it now that we are done
  return bar;
}

// input nothing and return nothing
void do_nothing()
{
  // Returning nothing,
  // because this is a
  // void function.
}
</pre>
</cf_box>
</div>
			
		<br>
	  </td>
	</tr>
	</table>
  
  <table class="TBLAYOUT">
    <tr>
	  <td valign="top">
		  <span class="TB-H1">Function Calls</span> <br><br>
		  <span class="TB-BODY">
			<!--<table><tr><td>-->
			<cf_imagebox align="right"
								 path="func_elems.svg"
								 width="400"
								 caption="Figure 4. Elements of a function call.">
		    Calling a function is much easier than defining a function.
			Just write the function name with parentheses at the end,
			and any inputs that are required by the function; those inputs go into the 
			parentheses in the same order as the function definition has listed.
			<!--</td>
			<td align="center">
			<img src="func_elems.svg" height="100"> <br/>
			<div class="TB-FIGURES">Figure 4.  Elements of a function call.</div>
			</td>
			</tr></table>-->
			If there are no inputs, then the parentheses should be empty.
			If the function is one that returns a value, you can set a variable to 
			that returned value. Also, since this is a call, and not a 
			definition, the line that is calling the function should end with a semicolon. <br/>
			Example with defined function <i>foo</i> and its respective function call:
<div align="center">
        <cf_box color="white" style="width:95%; margin:8em 0 8em 0 ">
        <pre class="brush: mpide;">
void foo(int bar, float baz)
{
  // do stuff with bar and baz
}

// inside some other function
foo(5,1.3); // calls foo with bar=5 and baz=1.3
</pre>
</cf_box>
</div>

		  </span>
	  </td>
	</tr>
  </table>
  <br/><br/>
	</cf_box>
</body></html>

