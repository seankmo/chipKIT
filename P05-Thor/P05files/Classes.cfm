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
			<td align="center">
				<span class="TB-PROJECTTITLE">
				C++ Classes
				<hr/>
				</span>
			</td>
		</tr>
	<br/><br/>
	<table class="TBLAYOUT">
		<tr>
			<td>
					<span class="TB-H1">Introduction</span><br/><br/>
					<span class="TB-BODY">
						This supplement will cover one of the most important concepts in C++, which is 
						the concept of a class. It will also cover the similar concept of a struct in C 
						to help give a starting point.
					</span>
					<br/><br/>
			</td>
		</tr>
	</table>
	<table class="TBLAYOUT">
		<tr>
			<td>
					<span class="TB-H1">Background With Structs</span>
					<br/><br/>
					<span class="TB-H2">Defining Structs</span>
					<br/><br/>
					<span class="TB-BODY">
						We have already discussed what are called primative data types in project 2, but
						it is possible to create your own data types, that are collections of others. 
						The <code>struct</code> is used to define a data type built from other data types, 
						other structs, and even itself (although this use won't be covered as it concerns
						building data structures, which is beyond this introduction to structs and 
						classes). Structs are used when there are several different data types that are
						related and would be beneficial to be grouped together. Consider a basic student 
						data type. A student has a name, ID, and GPA. A name is an array of characters so 
						it can be represented by <code>char*</code> (don't worry about what <code>char*</code> 
						does or how to use it, this is for an example), an ID is simply an integer so an 
						integer should be used, and GPA often has a decimal point so double (or float) would 
						work. The following shows how to define this "student" <code>struct</code>:

<pre class="brush:mpide;">
struct student {
  char* name;
  int ID;
  double GPA;
};
</pre>
						Of course in an actual system there are far more properties, but this is just 
						an example. However, when you want to use this student struct for a variable, 
						you couldn't just type <code>student S</code>, instead you'd have to type
						<code>struct student S</code>. Programmers being an efficient bunch, use the 
						typedef to simplify the use of a struct. Lets define the previous struct again, 
						but using typedef.

<pre class="brush:mpide;">
typedef struct {
  char* name;
  int ID;
  double GPA;
} Student;
</pre>
						Now instead of having to type <code>struct student S</code>, we instead can just
						type <code>Student S</code>. Note how the syntax changes between the structs with
						and without typedef. Typedef has other uses, but we won't be covering them here.<br/>
					</span>
					<br/><br/>
					<span class="TB-H2">Using Structs</span>
					<br/><br/>
					<span class="TB-BODY">
						Now that the student struct is defined, how is it used? The variables in the 
						struct are called members, and these members can be accessed using the "period"
						character. The general format for accessing a member of a struct is 
						<code>structVariable.memberVariable</code>, where "structVariable" is a variable
						that is a struct and memberVariable is some member in that struct, this expression
						now acts as it were just the member. So using the student struct from before;
						observe this code segment that sets the member variables.

<pre class="brush:mpide;">
Student exampleStudent;
exampleStudent.name = "John Doe";
exampleStudent.ID   = 1234567890;
exampleStudent.GPA  = 3.2;
</pre>

						Note that each member acts as according to its type. ID wouldn't accept 3.2 for
						example because ID is an integer and 3.2 is a floating point number.<br/>
						Advanced data structures (which will not be covered here) use structs and a number 
						of functions that store and access the data in that data structure. <br/>
					</span>
			</td>
		</tr>
	</table>
	
	<table class="TBLAYOUT">
		<tr>
			<td>
					<span class="TB-H1">Classes</span>
					<br/><br/>
					<span class="TB-H2">Classes Compared to Structs</span>
					<br/><br/>
					<span class="TB-BODY">
						C++ (and other object-oriented programming languages) combines the data structure 
						and its relevant functions into a single object called a class. Looking at the
						interface for a class looks the same as for a struct, only that there are also 
						functions in that class. Although, when discussing functions that exist inside 
						a class, these functions are called methods (just like how variables in structs
						are called members). They are accessed the same way, with the "." between the 
						variable and the member or method name. If calling a method, then the method 
						acts like a function, which means that it requires the parentheses and any
						inputs that are required.<br/>
						There is another aspect to classes that doesn't exist in structs, and that is
						the concept of how the members and methods can be accessed. There are two 
						(actually three, but <code>protected</code> gets into more advanced programming) 
						specifiers that either make it so a member variable function can only be accessed 
						or modified by anyone or by a method of that class. Members that are public act just 
						like a struct, i.e. public members can be accessed and modified by using the "." operator.
						Private members can only be accessed and changed by the class.<br/>
						When working with classes, it is considered good practice to keep everything
						private and to keep the public members and methods minimal. This practice makes
						more sense when working with more complex classes where modifying an arbitrary
						member can cause problems. Also, "setters" and "getters" are terms that are often
						heard, these terms refer to public methods that either "set" or "get" private
						members. Rewriting the Student struct into the Student class following good
						practice will give the result: <br/>
						(MAJOR NOTE: This is pure C++, this won't compile in MPIDE, you have been warned)<br/>

<pre class="brush:mpide;">
#include &lt;String&gt;

using std::string;

class Student{
	private:
		string name;
		int ID;
		double GPA;
	public:
		void setName(string newName){
			name = newName;
		}
		String getName(){
			return name;
		}
		
		void setID(int newID){
			ID = newID;
		}
		int getID(){
			return ID;
		}
		
		void setGPA(double newGPA){
			GPA = newGPA;
		}
		double getGPA(){
			return GPA;
		}
		
		Student(){
			name = "";
			ID = 0;
			GPA = 0;
		}
};
</pre>

						As it can be seen, every member is private and has its own setter and getter that
						are public so those values can be indirectly accessed and modified. There is also
						a <code>Student()</code> method definition in this class; it is called the default
						constructor, and it is called whenever class variable is created. There can be 
						multiple constructors provided that the input parameters are different. The 
						default constructor (no input parameters) does not need to be defined, only when it
						is important for the variable to have some known starting value and not a random
						uninitialized value. There are also destructors that are called when a class is
						deleted, but unless you are doing manual memory management, you will not need to
						define the destructor.<br/><br/>
						It is common to split the implementation from the header file of a class. That is,
						the methods inside the class are defined in a different file. We will use the previous 
						example to allow for easy comparasion.<br/><br/>
						<span class="TB-H2">student.h</span><br/>
<pre class="brush:mpide;">
#include &lt;String&gt;

class Student{
	private:
		string name;
		int ID;
		double GPA;
	public:
		void setName(String newName);
		string getName();
		
		void setID(int newID);
		int getID();
		
		void setGPA(double newGPA);
		double getGPA();
		
		Student();
};
</pre>
						<span class="TB-H2">student.cpp</span>
<pre class="brush:mpide;">
#include "student.h"

void Student::setName(string newName){
	name = newName;
}
string Student::getName(){
	return name;
}

void Student::setID(int newID){
	ID = newID;
}
int Student::getID(){
	return ID;
}

void Student::setGPA(double newGPA){
	GPA = newGPA;
}
double Student::getGPA(){
	return GPA;
}

Student::Student(){
	name="";
	ID=0;
	GPA=0;
}
</pre>
						The main reason to split the class up like this is so that the class definition is not 
						cluttered by the implementation of its methods. This can be seen in this example, it is 
						easy to see what is in the Student class and what methods it has. To see what those 
						methods actually do, you just look into the student.cpp file and look at the 
						implementation of those methods. Also, note how in the student.cpp file
						each method name is preceeded by a "Student::", this simply tells the compiler that this
						method actually belongs in the class Student. 
					</span>
					<br/><br/>
					<span class="TB-H2">Using Classes</span>
					<br/><br/>
					<span class="TB-BODY">
						The way you would use a class is just like a struct, but with functions in the
						members as well. So, if the class has any public members, then the general way
						to access those members is just like structs: 
						<code>classVariable.memberVariable</code>, where "classVariable" is some variable
						of type class and memberVariable is the name of one the member in that class.
						Classes also have methods, or functions that are members, and the general way to
						use a public method is: <code>classVariable.memberMethod([inputParameters])</code>,
						where memberMethod is the name of the method and [inputParameters] are any, if any,
						input that the method requires. Using the Student class defined above; observe this
						code segment:

<pre class="brush:mpide;">
// Create a new Student class
Student exampleStudent;

// Set the name, ID, and GPA of the student using the class' setters.
exampleStudent.setName("John Doe");
exampleStudent.setID(1234567890);
exampleStudent.setGPA(3.2);

// Get the name, ID, and GPA of the student using the class' getters.
string name = exampleStudent.getName();
int id      = exampleStudent.getID();
double gpa  = exampleStudent.getGPA();

// This will cause a compiler error because name is private.
exampleStudent.name = "WON'T WORK!";
</pre>

					</span>
				</p>
			</td>
		</tr>
	</table>
	</cf_box>
</body>
</html>