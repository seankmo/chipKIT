<html>  

<head>
	<meta name="author" content="Davis Cook">
	<title>Defining and Using Variables</title>
	<script type="text/javascript" src="../SH/scripts/shCore.js"></script>
   <script type="text/javascript" src="../SH/scripts/shBrushmpide.js"></script>
   <link type="text/css" rel="stylesheet" href="../SH/styles/shCoreDefault.css"/>
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
				A variable in programming is very similar to a variable seen in algebra. It can take on
				any value we assign it.  Unlike in algebra, variables in programming follow slightly
				different rules.  There is more on what a variable is in <a href="P02.cfm">a previous
				project</a>.
			</span>

			<br><br>
			
			<span class="TB-H1">Naming Conventions</span>
			<br><br>
			<span class="TB-BODY"> 
			
				For the most part you can name your variable whatever you
				want as long as you follow the guidelines below.
				<br>
				
				<ol>
					<li> Variable names can only be made up of letters, digits, and underscores.
						<ul>
							<li>Bad variable names: F  oo1, Bl@rg, F-oo<br> </li>
							<li>Good variable names: Foo1, F_oo1<br> </li>
						</ul>
					</li>
					<li>Variable names must start with a letter or an underscore.
						<ul>
							<li>			 Good variable name: _Foo </li>
							<li>			 Bad Variable name: 1Foo  </li>
						</ul>
					</li>
					<li>Variable names cannot be the same as a <i>keyword</i>. Keywords
					like <code>void</code>, <code>setup</code> or <code>LOW</code> will typically be a
					different color. Variable names that aren't keywords show up as black. </li>
					<li>Variables are case sensitive, so be careful with your capitalizing. Foo is
					different from foo.</li>
					<li>In our projects, we will use the convention known as <code>lowerCamelCase</code> when naming variables and functions.
						<ul>
							<li>Good function/variable names: <code>pinMode</code>, <code>digitalRead</code>, nameFirst, nameLast</li>
							<li>Bad function/variable names: PinMode, led_pin, Lastname</li>
						</ul>
					</li>
				</ol>
				
				<br><br>
				
			</span>
		</td>
	</tr>
</table>


<table>
	<tr>
		<td>
			<span class="TB-H1">Variable Scope</span> <br>
			
			<span class="TB-BODY"> When defining a variable, it is important to keep track of where it
				is defined. Depending on where you define the variable, you may or may not be able to
				make use of it. This is referred to as the variable's <i>scope</i>. If a variable is
				defined outside of a function this means it can be seen, used and changed by all other
				functions. This is called a <i>global</i> variable (see Fig. 1). If you define a
				variable inside of a function, it cannot be seen by any external functions and can only
				be used and changed inside of the function body in which it was defined. This is known
				as a <i>local</i> variable (see Figs. 2 and 3).
			</span>
		</td>
	</tr>

	<tr>
		<td>
			<cf_imagebox align="right" path="global_variable_scope.png" caption="Fig. 1. The variable &ldquo;ledPin&rdquo; is introduced outside the
			functions. Its scope is thus that of a global variable.">
		</td>
		<td>
		<cf_imagebox align="center" path="local_variable_1.png" caption="Fig. 2. The local variable cannot be used inside the loop() function because it's defined in a different scope.">
		</td>
		<td>
			<cf_imagebox align="left" path="local_variable_2.png" caption="Fig. 3. The local variable cannot be used in the setup() function because it's defined in a different scope.">
		</td>
	</tr>



	<tr>
		<td>
			<span class="TB-BODY"> It is also important to be aware that calling a function in the same
				scope as a variable definition does not mean the variable can be directly referenced in
				the functions body. See Fig. 4 below.

				<br><br>
			
				<div align="center">
				<cf_imagebox align="center" path="functioncall_variable_scope.png" caption="Fig. 4. Function call scope.">
				</div>
		 </td>
	 </tr>	


	 <tr>
		 <td>
			 <span class="TB-BODY">
				 There are some other important rules about defining variables:
				 
				 <br>
 
				 <ol>
					 <li>Two variables with the same name cannot be defined in the same scope.<br></li>  
					 <li>Variables can be defined as the same name if they are in different scopes.<br></li> 
					 <li>If a local variable has the same name as a global variable, the value of the local variable is used in its local scope. See the example in Fig. 5.<br></li>
					 
					 <div align="center">
						 <cf_imagebox align="center" path="nameconflict_global_local.png" caption="Fig. 5. Naming conflicts arise when both global and local variables are defined.">
					 </div>
					 <li>The const qualifier<!--what's this--> prevents a variable from accidentally being changed outside of its scope. 
					 The qualifier const stands for constant and is placed in front of a variables type to make it unchangeable.<br> 
						 <ul>Here's an example: <br>
							 <pre class="brush: mpide; gutter: false;">
const int my_variable = 56;
							 </pre>  
						 </ul>
					 </li>
				 </ol>
			 </span>
		 </td>
	 </tr>
</table>
 
</body>
</html>
