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

<cf_Box Color="White" NoMargins="1">
  <table class="TBLAYOUT">
    <tr>
      <td align="center">
	      <span class="TB-PROJECTTITLE">
		      Project 3:<br/>
		      Defining and using variables
	      </span>
	      <br>
	      <hr>      
      </td>
    </tr>
  </table>
  
<br><br><br>
  
  <table class="TBLAYOUT">
	  <tr>
		  <td>	    
			  <span class="TB-H1">Variables</span> <br/><br/>

			  <span class="TB-BODY"> <!--this is a comment -->
				  A variable in programming is very similar to a variable seen in algebra. It can take on any value we assign it.   Unlike algebra, variables in programming follow slightly different rules.
				  There is more on what a variable is in <a href="P02.cfm">a previous project<a />.
			</span><br /><br />	 

			<span class="TB-BODY"> 
			<span class="TB-H1">Naming Conventions:</span> <br/>
		
			<span>          
			
				For the most part you can name your variable whatever you want as long as you follow the guidelines below.
				<br />

				NOTE:Quotation marks surrounding words indicate a variable name. The quotation marks are not part of the variable name. <br>

			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->1. Variable names can only be made up of letters, digits and underscores.<br>
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Example:<br> 
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Bad Variable name: “F  oo1”<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Good Variable name: “Foo1”<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Good Variable name: “F_oo1”<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Bad Variable name: “Bl@rg”<br />
			<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->2. Variable names must start with a letter<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Ex.<br /> 
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Bad Variable name: “_Foo”<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Bad Variable name: “1Foo”<br />
					<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->3. Variable names cannot be the same as a Keyword. Keywords like void, setup or LOW will typically be a different color. Variable names that aren’t key words show up as black. <br />
					<br />
			 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->4. Variables are case sensitive, so be careful with your capitals.“Foo” is different from “foo”<br /><br /><br />
			</span>
		  </td>
	  </tr>
  </table>
  
  <table class="TBLAYOUT">
	  <tr>
		  <td>
			  <span class="TB-H1">Variable Scope:</span> <br>

			  <span class="TB-BODY">          
				  When defining a variable it is important to keep track of where it is defined. Depending on where you define the variable, you may or
				  may not be able to make use of it. This is referred to as the variables <i>scope</i>. If a variable is defined outside of a function this means it can be seen, used and changed 
				  by all other functions. This is called a <i>global</i> variable (see Fig. 3). If you define a variable inside of a function it cannot be seen by any external functions and can only be
				  used and changed inside of the function body it was defined in. This is known as a <i>local</i> variable (see Fig. 4).
			  </span>
		  </td>
	  </tr>
  </table>
  
 <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
		<tr>
			<td valign="top">
					<img style="height: 354px; width: 395px;" src="Global%20Variable.png">
				<div class="TB-FIGURES">Fig. 3. Global Variable</div>
			</td>
			<td  valign="top">
				<img style="width: 504px; height: 361px;" src="Local Variable.png"><br>
				<div class="TB-FIGURES">Fig. 4. Local Variables</div>
			</td>
		</tr>
</table>
 
 <table class="TBLAYOUT">
	 <tr>
		 <td>
			 <span class="TB-BODY">       
				 It is also important to be aware that calling a function in the same scope as a variable definition does not mean the variable can be directly referenced in the functions body. See Fig. 5 below.<br />
			 </span>
		 </td>
	 </tr>
 </table>
 
 <table class="TBLAYOUT">
	 <tr>			
		 <td valign="top">
			 <div align="left">
				 <img src="Function Call Scope.png" width="391"/> 
				 <div class="TB-FIGURES" >Fig. 5. Function Call Scope</div>
			 </div> <br/>
		 </td>
	 </tr>	
 </table>

 <table class="TBLAYOUT">
	 <tr>
		 <td>
			 <span class+"TB-BODY">
				 Some other important&nbsp; rules to be aware of include the following.<br/><br/> 
				 1.Two variables with the same name cannot be defined in the same scope.<br/><br/>  
				 2.Variables can be defined with the same name if they are in different scopes.<br/><br/> 
				 3.If a local variable has the same name as a global variable, the value of the local variable is used in its local scope. See the example in Fig. 6.<br/>
			 </span>
			 <br/>	
		 </td>
	 </tr>	
 </table>			
 
			
 <table class="TBLAYOUT">
	 <tr>			
		 <td>
			 <div align="left">
				 <img alt="" dir="rtl" src="Global Local Variable Name conflict.png" style="height: 411px; width: 332px; margin-right: 0px; margin-left: 0px; margin-top: 0px;" />
				 <div class="TB-FIGURES" >Fig. 6. Global and Local Variable Name Conflicts </div>
			 </div>
		 </td>
	 </tr>	
 </table>

 <table class="TBLAYOUT">
	 <tr>
		 <td>
			 <span class="TB-BODY">          
				 4.The const qualifier prevents a variable form accidentally being changed outside of its scope. 
				 The qualifier const stands for constant and is placed in front of a variables type to make it unchangeable.<br/> 
				 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->Ex.<br/> 
				 <!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent--><!--Indent-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<!--Indent-->
				 <br/>
					<pre class="brush: mpide;">const int my_variable = 56;</pre>  
			 </span>
		 </td>
	 </tr>
 </table>
 
 <cf_Box>
</body>
</html>
