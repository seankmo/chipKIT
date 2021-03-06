<html><head>
<meta name="author" content="Amber Mear"> 
<title>Introduction to MPIDE</title>
</head>
  
<body> 
  <table style="width:100%" class="BOX-IE-FIX" border="0" cellpadding="0" cellspacing="0" height="1">
    <tr style="height:8px">
      <td style="width:8px"><img src="/IMG/BOX-White-NW.gif" alt=""></td>
      
      
      <td class="BOX-WHITE-NOMARGINS-TOP"></td>
      
      
      <td style="width:8px"><img src="/IMG/BOX-White-NE.gif" alt=""></td>
    </tr>
    <tr style="height:100%;">
      
      <td colspan="3" class="BOX-WHITE-NOMARGINS-CONTENT">
		
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
	  <tr>
	    <td width="100%" align="center">
	      <span class="TB-PROJECTTITLE">
		Project 1:<br/>
		Introduction to MPIDE
	      </span>
	  </tr>
	  <tr><td colspan="3" align="right"><hr/><br/><br/></td></tr>
	</table>
	
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
	  <tr>
	    <td valign="top">
      	      <p>
		<span class="TB-H1">Introduction</span>
		<br/><br/>
		<span class="TB-BODY">

		  MPIDE (Multi-Platform Integrated Development
		  Environment) is software that can be used to program
		  chipKIT compatible boards. Programs written for
		  MPIDE are called &ldquo;sketches.&rdquo; (We will
		  often use the term <i>code</i> or <i>computer
		  code</i> to refer to all or part of a sketch. Note
		  that this &ldquo;<i>code</i>&rdquo; has nothing to
		  do with a secret code even though some of it may
		  initially appear mysterious!) You will run one of
		  the example sketches provided in MPIDE in order to
		  demonstrate how to use MPIDE with your chipKIT
		  board.  
		  <br/><br/>
		</span>
      	      </p>
	      
	  </tr>
	  <tr><td colspan="2"><br/><br/></td></tr>
	</table>
  
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
	  <tr>
	    <td valign="top" width="65%">
      	      <p>
		<span class="TB-H1">Getting Started</span>
		<br/><br/>
		<span class="TB-BODY">
		  To begin, make sure you have a USB A to mini B cable (see
		  Fig. 1) which is used to connect your computer and your chipKIT
		  board.  You may use the Uno32 (shown in Fig. 2), uC32, Max32,
		  or other chipKIT-compatible boards.
		</span>
	      </p>
	    </td>
	    <td width="4%">&nbsp;</td>
	    <td width="31%" align="center">
	      <img width="150" src="cable-usb-a-mini-b.jpg" /><br/><br/>
	      <span class="TB-FIGURES">Fig. 1. USB A to mini B cable.</span>
	    </td>
	  </tr>
	  <tr>
	    <td colspan="3"><br/><br/></td>
	  </tr>
	  <tr>
	    <td width="78%" align="center" colspan="3">
	      <img src="chipKIT-Uno32-revC-obl-1600.png" /><br/><br/>
	      <span class="TB-FIGURES">Fig. 2. A chipKIT Uno32 board.</span>
	    </td>
	  </tr>
	  <tr>
	    <td colspan="3">
	      <br/><br/>
	  </td></tr>
	</table>

	<table class="TBLAYOUT"
	       style="width:96%; margin-left:2%; margin-right:2%;" cellpadding="0">
	  <tr>
	    <td>
	      
	      <table style="width:100%"
		     class="BOX-IE-FIX" border="0" cellpadding="0" cellspacing="0" height="1">
		<tr style="height:8px">
		  <td style="width:8px"><img src="/IMG/BOX-Putty-NW.gif" alt=""></td>
		  
		  
		  <td class="BOX-PUTTY-TOP"></td>
		  
		  
		  <td style="width:8px"><img src="/IMG/BOX-Putty-NE.gif" alt=""></td>
		</tr>
		<tr style="height:100%;">
		  
		  
		  <td class="BOX-PUTTY-LEFT"></td>
		  <td class="BOX-PUTTY-CONTENT" valign="top">
		    
		    <span class="TB-H1">Step 1: Download MPIDE</span>
		    <br/><br/>
		    <span class="TB-BODY">
		      MPIDE is free software that is
		      available <a href="https://github.com/chipKIT32/chipKIT32-MAX/downloads">here</a>.
		      (Keep in mind that this page is a guide to
		      downloading in Windows; if you're downloading
		      MPIDE for Mac OS X, see
		      our <a href="https://dummypageformac">page</a>
		      that provides directions for that operating
		      system.  To download MPIDE for Linux, follow our
		      directions <a href="https://linuxdummypage">here</a>.)
		      To begin downloading, click on the package for
		      Windows (it will be one of the first few
		      packages listed, as shown in Fig. 3). After
		      MPIDE has finished downloading, unzip the file.
		      To unzip a file, right-click on the zipped file
		      (which should be in your Downloads folder) and
		      select &ldquo;Extract files...&rdquo; After
		      this, a folder will be created with the same
		      name as the zip file, but without the
		      &ldquo;<code>.zip</code>&rdquo; extension.  This
		      folder contains all the files associated with
		      MPIDE.
		      <br/><br/>
		      <div align="center">
			<img src="githubdownload.png" />
			<div class="TB-FIGURES">Fig. 3. MPIDE download option on GitHub.
			</div>
		      </div>
		      <br/>
		    </span>
			
		    <span class="TB-H1">Step 2: Running the Sketch</span>
		    <br/><br/>
		    <ol class="TB-BODY">
               	      <li>
			Connect your cable to your computer and your
			board. The driver (a piece of the software
			that facilitates communication between the
			software and device's hardware) will begin
			installing automatically.  Once it has
			installed, small red and green lights should
			be illuminated on the board. (Technically,
			these are &ldquo;light emitting diodes.&rdquo;
			In the reference material for the board [the
			Uno32], they are referred to as LED3, which is
			red, and LED4, which is green.)  Double-click
			on the MPIDE folder (as mentioned in Step 1,
			it will be
			called <code>mpide-0023-windows-20120903</code>
			or something similar).  Within that, you will
			find a folder of the same name.  Double-click
			on that and then you should see, as shown in
			Fig. 4, among various other things, the
			file <code>mpide.exe</code>.
			  
			<br/><br/>
			<div align="center">
			  <img src="mpidelibrary.png"/>
			  <div class="TB-FIGURES">Fig. 4. Contents of the
			    MPIDE folder, including the <tt>mpide.exe</tt>
			    file.
			  </div>
			</div>
			<br/>
			
			Double-click on <tt>mpide.exe</tt> to start
			MPIDE.  Figure 5 shows the window you will see
			after starting MPIDE.  Click on Run.
			  
			<br/><br/>
			<div align="center">
			  <img src="openfile.png"/>
			  <div class="TB-FIGURES">Fig. 5. This window will pop
			    up when you click on MPIDE. Click Run.</div>
			</div>
			<br/>
			  
			Figure 6 shows an example of the type of
	 		window that should now appear.  The central,
	 		white portion of the window is where you enter
	 		computer code, i.e., enter your
	 		sketch.
			<br/><br/>
			  
			<div align="center">
			  <img src="opensketch.png" /><br/>
			  <div class="TB-FIGURES">Fig. 6. After starting MPIDE,
			    you should see a window like this.
			  </div>
			</div>
			
			<br/> 
			
			MPIDE provides a default name for the sketch
			which is of the form:
			<tt>sketch_<i>dateletter</i></tt>
			where <tt><i>dateletter</i></tt> is the date
			(with a three-letter representation of the
			month and the numeric value for the day)
			followed by a letter. When you try to save
			your sketch, this is the name that will be
			associated with the saved file unless you
			indicate that you want to name it something
			else. (As an aside, if you open additional new
			windows on the same day, and stick with the
			default naming, the letter at the end of the
			file name changes. You can open 26 new windows
			this way. If you try for a 27th sketch, you're
			told it may be time to take a break!  However,
			you should provide more descriptive names for
			your sketches. By doing so, you can open any
			number of sketches in the same day!)
			<br/><br/>
		      </li>
		      
		      <li>
			
			Since the purpose of this project is to
			introduce you to MPIDE rather than teach you
			to write your own sketch, we are going to use
			an example sketch that comes with MPIDE.
			Select the menu
			entry <code>File>Examples>1.Basics>Blink.</code>
			This will open a new window in which the
			sketch's code appears.  In the
			&ldquo;header&rdquo; portion of the window,
			the name of the file where the code is stored
			will appear. In this example, the file name is
			&ldquo;<code>Blink</code>&rdquo; (on the
			computer this is stored
			as <code>Blink.pde</code>; the extension
			&ldquo;<code>.pde</code>&rdquo; indicates that
			this file is a sketch).  Figure 7 indicates
			how this should appear.<br><br>

			<div align="center">
			  <img src="blinkexample.png" />
			  <div class="TB-FIGURES">Fig. 7. The <code>Blink</code>
			    example sketch.
			    <br/><br/>
			  </div>
			</div>
			  
			Now we have a sketch, or a set of computer
			instructions, loaded into MPIDE.  However,
			this information has not been transfered to
			the chipKIT board.  Keep in mind that MPIDE
			runs on your computer and allows you to
			transfer information from your computer to the
			chipKIT boards (and as you will see later,
			allows us to transfer information from the
			chipKIT boards back to your computer).  You
			can, in fact, start MPIDE without a chipKIT
			board attached to your computer.  You might
			want to do this if you are writing a sketch
			but are not yet ready to run it on a board.
			The next steps describe what needs to be done
			to transfer the instructions in a sketch to a
			chipKIT board.

			<br/><br/>
			
		      </li>
		      
               	      <li>
			
			You can use MPIDE with a wide variety of
			boards, but MPIDE needs to know the type of
			board it is &ldquo;talking&rdquo; to. To do
			this, select the menu <code>Tools>Board</code>
			and choose your chipKIT board (as shown in
			Fig. 8). <br/><br/>

			<div align="center">
			  <img width="625" src="boardselect.png"/>
			  <div class="TB-FIGURES">Fig. 8. Selecting your chipKIT
			    board.
			    <br/><br/>
			  </div>
			</div> 
			  
			Next, go to <code>Tools>Serial Port</code> to
			select the proper serial port (see Fig. 9).
			This is usually COM3 or higher. An easy way to
			learn which serial port is the correct one is
			to disconnect your chipKIT board. The correct
			option will have disappeared from the dropdown
			menu. Reconnect your board and select that
			serial port.
			<br/><br/>
			
			<div align="center">
			  <img src="2serialport2.png"/>
			  <div class="TB-FIGURES">Fig. 9. Selecting the serial
			    port.
			  </div>
			</div>
		      </li>
		    </ol>
         	  </td>
		  <td class="BOX-PUTTY-RIGHT"></td>
		  
		</tr>
		<tr style="height:8px;">
		  <td style="width:8px"><img src="/IMG/BOX-Putty-SW.gif" alt=""></td>
		  
         	  <td class="BOX-PUTTY-BOTTOM"></td>
		  
         
		  <td style="width:8px"><img src="/IMG/BOX-Putty-SE.gif" alt=""></td>
		</tr>
	      </table>
	      
	    </td>
	  </tr>
	  <tr><td><br/><br/><br/></td></tr>
	  <tr>
	    <td class="BOX-PUTTY-CONTENT" valign="top">
      	      <p>
		<span class="TB-H1">Step 3: Running the Sketch</span> <br/><br/>
		<span class="TB-BODY">
		  Now you are almost ready to run the
		  sketch. Normally, before uploading the sketch, you
		  would &ldquo;verify&rdquo; the sketch to identify
		  any bugs or errors in the code. This can be
		  accomplished in any one of three ways. As indicated
		  in Fig. 10(a), you can click the Verify button.
		  Alternatively, you can click on the menu
		  entry <code>Sketch>Verify/Compile</code> or you can
		  type <code>Ctrl+R</code> (hold down the control key
		  and type the key R). You are welcome to verify this
		  sketch, but since it is one of the provided example
		  sketches, this isn't necessary. Figure 10(b) through
		  10(e) shows some of the other tools available in
		  MPIDE.
		</span>
              </p>
	    </td>
	  </tr>
	  <tr><td colspan="3"><br/><br/></td></tr>
	</table>
  
	<table class="TBLAYOUT" style="width:100%;" cellpadding="0">
	  <tr>
	    <td width="18%" align="center">
	      <img src="verifybutton.png" /></td>
	    <td width="2.5%">&nbsp;</td>
	    <td width="18%" align="center">
	      <img src="upload.png" /></td>
	    <td width="2.5%">&nbsp;</td>
	    <td width="18%" align="center">
	      <img src="newsketchbutton.png" /></td>
	    <td width="2.5%">&nbsp;</td>
	    <td width="18%" align="center">
	      <img src="openbutton.png" /></td>
	    <td width="2.5%">&nbsp;</td>
	    <td width="18%" align="center">
	      <img src="savebutton.png" /></td>
	  </tr>
	  <tr>
	    <td align="center"><br><span class="TB-FIGURES">(a) Verify the
		sketch</span></td>
	    <td>&nbsp;</td>
	    <td align="center"><br><span class="TB-FIGURES">(b) Upload the
		sketch</span></td>
	    <td>&nbsp;</td>
	    <td align="center"><br><span class="TB-FIGURES">(c) Start a new
		sketch</span></td>
	    <td>&nbsp;</td>
	    <td align="center"><br><span class="TB-FIGURES">(d) Open a
		pre-existing sketch</span></td>
	    <td>&nbsp;</td>
	    <td align="center"><br><span class="TB-FIGURES">(e) Save the
		sketch</span></td>
	  </tr>
	  <tr>
	    <td colspan="9"
		  align="center"><br/><br/><span class="TB-FIGURES">Fig. 10.
		Tool options in MPIDE.</span>
	    </td>
	  </tr>
	</table>
      </td>
    </tr>
    <tr><td colspan="3"><br/><br/><br/></td></tr>
  </table>
  <table class="TBLAYOUT" style="width:100%;" cellpadding="0">
    <tr>
      <td>
      	<p>
          <span class="TB-BODY">
	    Whether or not a sketch has been verified, you can
	    &ldquo;upload&rdquo; it to a board.  If there is a bug in
	    the code that would have been caught by verifying the
	    sketch, it will still be caught when you try to upload
	    it. To upload the sketch, you can click on the Upload
	    button, as indicated in Fig. 10(b).  You can also click on
	    the menu entry <code>File>Upload to I/O Board</code> (I/O
	    stands for input/output), or type <code>Ctrl+U</code>.
	    <br/><br/> Once the sketch starts to download, LED1 and
	    LED2 will flicker momentarily.  This will be followed by a
	    brief pause (on the order of a few seconds).

	    Finally, LED4 should start to blink! It will continue to
	    blink, being on for one second then off for one second,
	    until you remove the board from its power source.  The way
	    in which the code accomplishes this blinking is covered in
	    the next project.
  	  </span>
        </p>
      </td>
    </tr>
  </table>
  
</td>

</tr>
<tr style="height:8px;">
  <td style="width:8px">
    <img src="/IMG/BOX-White-SW.gif" alt="">
  </td>
  
  <td class="BOX-WHITE-NOMARGINS-BOTTOM">
  </td>
			       
  <td style="width:8px">
    <img src="/IMG/BOX-White-SE.gif" alt="">
  </td>
</tr>
</table>

</body>
</html>
