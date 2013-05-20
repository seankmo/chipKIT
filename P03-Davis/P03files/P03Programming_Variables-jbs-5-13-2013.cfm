<html>  
	
	<head>
		<meta name="author" content="Davis Cook">
		<title>Defining and Using Variables</title>
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
				<span class="TB-PROJECTTITLE">
					Project 3:<br>
					Defining and Using Variables
				</span>
				<br>
				<hr>      
			</td>
		</tr>
	</table>
	
	<br><br>
  
	<table class="TBLAYOUT">
		<tr>
			<td>	    
				<span class="TB-H1">Variables</span> <br><br>
				
				<span class="TB-BODY">
					A variable in C and C++ is similar to a variable in algebra&mdash;essentially a
					variable is a name we associate with an underlying quantity.  However, the use of
					variables in C/C++ is governed by various rules that we discuss here.  There is more
					on what a variable is in <a href="P02.cfm">a previous project</a>.  Note that the
					rules that govern the selection of a variable name are essentially the same for
					selecting the name for a function.
				</span>
				
				<br><br>
				
				<span class="TB-H1">Naming Convention</span>
				<br><br>
				<span class="TB-BODY"> 
					
					You are free to choose whatever name you like for a variable provided the name adhere
					to the following rules:

					<br><br>
					
					<ol>
						<li> Variable names can only contain letters (upper and lower case), digits, and
						the underscore character.
							<ul>
								<li>Correct variable	names:
									<ul>
										<li> <code>Foo1</code> </li>
										<li> <code>blarg</code> </li>
										<li> <code>F_oo1_b</code> </li> 
									</ul>
								</li>
								<li>Incorrect variable names:
									<ul>
										<li> <code>F oo1</code> (cannot include a	space) </li>
										<li> <code>bl@rg</code> (ampersand not allowed) </li>
										<li> <code>F_oo1-b</code> (hyphen not allowed) </li> 
									</ul>
								</li>
							</ul>
						</li>
						<li>Variable names must start with a letter or an underscore.
							<ul>
								<li> Correct variable
									names: <code>one_two</code>, <code>__Foo</code>, <code>foo</code>,
									<code>_bar_</code>. </li>
								<li> Incorrect variable name: <code>1foo</code> (cannot start with a
									digit). </li>
							</ul>
						</li>
						<li>Variable names cannot be the same as a <i>keyword</i>.  Within MPIDE, keywords
							like <code>void</code>, <code>int</code>, and <code>if</code>, will typically
							be highlighted in red or orange.  (If you have written a variable name that 
							appears in black, you can be confident it is not a keyword.) </li>
						<li>Variables are case sensitive, so pay attention to the use of
							capitalization. For example, the
							variable name <code>Foo</code> is different from <code>foo</code> which is
							different from <code>fOO</code>.</li>
						<li>In our projects, we will use the convention known
							as <code>lowerCamelCase</code> for the names of variables and functions.  In
							this convention the first letter is lowercase and any subsequent
							&ldquo;words&rdquo; have their first letter capitalized.
							<ul>
								<li>Examples of lower camel
									case: <code>pinMode()</code>, <code>digitalRead()</code>,
									<code>nameFirst</code>, <code>nameLast</code>.</li>
								<li>Examples of names that do not adhere to lower camel case (but that are
									still valid names): <code>PinMode</code>,
									<code>led_pin</code>, <code>Lastname</code>.</li>
							</ul>
						</li>
						<li> Variable names can be as short as a single letter (or a single underscore),
							but generally variables names should be long enough to convey some additional
							information about what the variable represents or how it should be used.  An
							exception to this is that variables that are used as counters are often a
							single letter.  Additionally, it is something of a convention, that these
							single-character variables are
							either <code>i</code>, <code>j</code>, <code>k</code>, <code>m</code>,
							or <code>n</code>.  These letters are in the range <code>i</code>
							through <code>n</code> which are the first two letters of the
							word <i>integer</i>.  This convention is motivated by the fact that counters
							are typically integer values, but we exclude the letter <code>l</code> (ell)
							from this range because it can easily be confused with the digit 1 (one).  (One
							should also be careful with the use of the letter <code>O</code> (oh) since it
							can easily be mistaken for the digit 0 (zero).)
					</ol>
					
					<br>

				</span>
				<span class="TB-H1">Variable Scope</span>
				<br><br>
				<span class="TB-BODY"> 

					When defining a variable, it is important to keep track of where it is
					defined. Depending on where you define the variable within your sketch, you may or
					may not be able to make use of it at other points in your sketch.  The places where
					the variable is defined is known as the variable's <i>scope</i>. If a variable is
					defined outside of a function, it can be &ldquo;seen,&rdquo; used, and changed within
					all functions that follow the variable's definition.  Variables defined outside of a
					function are known as a <i>global</i> variables.  Figure 1 shows a sketch that
					contains a global variable.

					<br>

					<div align="center">
					<cf_imagebox
						 align="center"
						 width="500px"
						 path="global_variable_scope.png"
						 caption="Fig. 1. The variable &ldquo;ledPin&rdquo; is defined outside the
						          functions. Its scope is thus that of a global variable.">
					</div>


					If you define a variable inside of a particular function, it cannot be
					&ldquo;seen&rdquo; anywhere outside of that function.  Said another way, the variable
					can only be used and changed inside of the body of the function in which it is
					defined.  A function defined in this way is known as a <i>local</i> variable.  Figure
					2 illustrates the creation of a local variable called <code>ledPin</code> within the
					body of the <code>setup()</code> function.  Unfortunately, the programmer tried to
					reference the <code>ledPin</code> variable with the <code>loop()</code> function, but
					that falls outside the variable's score.  Thus this code cannot be compiled (i.e., it
					cannot be uploaded to a chipKIT board).

					<br>

					<div align="center">
					<cf_imagebox
						 align="center"
						 width="500px"
						 path="local_variable_1.png"
						 caption="Fig. 2. The variable ledPin is local to the setup() function and thus
						          cannot be used inside the loop() function.  Thus, this code cannot be
						          compiled.">

					</div>

					The sketch is Fig. 3 suffers from the same underlying problem that exists in Fig. 2:
					the programmer is attempting to access a variable outside of its scope.  In this case
					the variable <code>ledPin</code> is declared in the <code>loop()</code> function, but
					the programmer tries to reference it from within the <code>setup()</code> function.

					<br>

					<div align="center">
					<cf_imagebox
						 align="center"
						 width="500px"
						 path="local_variable_2.png"

						 caption="Fig. 3. The variable ledPin is local to loop() and cannot be used in the
					          setup() function.  Said another way, the body of the setup() function is
					          outside of the scope of ledPin.">
					</div>

					<br>

					Here are some other important rules about defining variables:
				 
					<br><br>
					
					<ol>
						<li>Two variables with the same name <i>cannot</i> be defined in the same scope.</li> 
						<li>You can define two variables with the same name if they are in different
							scopes.  This is not a problem if the variables with the same name are local
							variables (i.e., they are defined with the bodies of different functions).

							<br><br>
							<i><b>However</b></i>, it is considered very bad programming style if one of
							the variables is a global variable and the other one is a local variable (using
							global and local variables with the same name can cause quite a bit of
							confusion).  If a local variable has the same name as a global variable, the
							value of the local variable is used in the local scope.  This is illustrated in
							the Fig. 5.
						
							<div align="center">
							<cf_imagebox
								 width="500px"
								 align="center"
								 path="nameconflict_global_local.png"
								 caption="Fig. 5. Naming conflicts arise when both global and local
								 variables are defined.">
							</div>
							
							<br>
							
							Because of the confusion that can be caused by the mix of global and local
							variables, it is usually considered best to avoid the use of global variables
							whenever possible.
						</li>
						<li>When a variable is declared, one must specify the variables type (for
							example, <code>int</code> for an integer variable or <code>float</code> for a
							real number that can have a fractional part).  Optionally, when a variable is
							declared, one can also provide
							<i>qualifiers</i> that specify additional aspects about the behavior of a
							variable.  The <code>const</code> qualifier specifies that the variable should
							be treated as a constant.  Strictly speaking, this qualifier is never truly
							necessary, but it helps document the code and it prevents programmers from
							accidentally changing a variable that shouldn't be changed.  You can write this
							qualifier either before or after the variable type.

							<br><br>
							
							As an example of the use of <code>const</code>, the following sets the integer
							variable <code>my_variable</code> to 56:

							<pre class="brush: mpide; gutter: false;">
const int my_variable = 56;
							</pre>  

							Note that if a variable is declared to be constant, it must be initialized to a
							value when it is declared.  Thus, the following code is broken and will not
							compile:

							<pre class="brush: mpide;">
const int my_variable;
my_variable = 56;       // ERROR! my_variable is constant and cannot be changed.
							</pre>  
							
						</li>
					</ol>
				</span>
			</td>
		</tr>
	</table>
</body>
</html>
