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
               How Hardware Implements Pulse Width Modulation
					<hr/>
            </span>
         </td>
      </tr>
   </table>
   <table>
      <tr>
         <td>
            <span class="TB-H1">Introduction</span><br/><br/>
            <span class="TB-BODY">
					This supplement will cover how hardware implements pulse width modulation. This is
					primarily for the purpose of understanding, considering that most projects won't require going 
					this deep into hardware.
            </span><br/>
         </td>
      </tr>
   </table>
   <table>
      <tr>
         <td>
            <span class="TB-H1">How It Works</span><br/><br/>
				<span class="TB-H2">The Registers Used in PWM</span><br/><br/>
				<span class="TB-BODY">
					Pulse width modulation uses three registers for control. The timer register, TMRy, which counts
					at the frequency of the peripheral bus clock divided by the timer's pre-scaler value. The next
					register is the period register, PRy, which resets the timer register when the value of the timer 
					equals the value of the period register. Finally we have the output compare register, OCxR, which 
					toggles the pin OCx to either <code>HIGH</code> or <code>LOW</code>. The value of OCxR should be 
					less than the value of PRy, otherwise it won't toggle the OCx pin. With pulse width modulation enabled
					the OCx pin is asserted <code>HIGH</code> when the timer resets (TMRy = 0) and toggles to <code>LOW</code>
					when the value of the timer equals the value of the output compare register (TMRy = OCxR). 
					<br/><br/>
					<img src="HW PWM.svg" style="width:100%;"/>
					<div class="TB-FIGURES">Fig 1. How TMR, PR, and OCxR Effect OCx</div>
				</span><br/><br/>
				
				<span class="TB-H2">Calculations For PWM</span><br/><br/>
				<span class="TB-H3">Duty Cycle</span><br/><br/>
				<span class="TB-BODY">
					<table><tr><td>
						Many aspects of pulse width modulation are governed by a few equations. The simplest of which is
						the duty cycle equation, which can be written one of two ways. Either in terms of the time the 
						output compare pin is high to the rest of the period and in terms of the values of the period register
						and the output compare register. Figure 2a is the equation in terms of time and figure 2b is the 
						equation in terms of the period register and output compare register.<br/>
						The reason that the duty in terms of the period and output compare registers has a 1 added to the 
						period register is because of an additional cycle when the timer resets, resulting in a period that
						lasts the period register plus 1. 
					</td><td>
						<img src="dc1.svg" width="300"/>
						<div class="TB-FIGURES">Figure 2a. Duty cycle in terms of time.</div>
						<br/><br/>
						<img src="dc2.svg" width="300"/>
						<div class="TB-FIGURES">Figure 2b. Duty cycle in terms of register values.</div>
					</td></tr></table>
					<br/>
				</span>
				<span class="TB-H3">Relation Between the Peripheral Bus and PWM</span><br/>
				<span class="TB-BODY">
					<table><tr><td>
						We can find the period of the pulse width modulation by multiplying the period of the peripheral
						bus clock by the TMRy prescaler and the value of the period register with one added due to the reset
						lag, PRy + 1, figure 3a is this equation. We can then put this into terms of frequency by finding
						the reciprocal, i.e. put both sides to the -1 power, since frequency is one over the period. The 
						result equation for frequency is figure 3b.
					</td><td>
						<img src="per.svg" width="300"/>
						<div class="TB-FIGURES">Figure 3a. Period of PWM in Terms of Period of Peripheral Bus.</div>
						<br/><br/>
						<img src="freq.svg" width="300"/>
						<div class="TB-FIGURES">Figure 3b. Frequency of PWM in Terms of Frequency of Peripheral Bus.</div>
					</td></tr></table>
				</span>
				<span class="TB-H3">Resolution of PWM</span><br/><br/><br/>
				<span class="TB-BODY">
				<table><tr><td>
					The resolution of pulse width modulation is the number of individual steps between always <code>LOW</code>
					and always <code>HIGH</code>. Since the time that the output compare pin is <code>HIGH</code> is 
					dependant on the ratio between OCxR and PRy, we can find the resolution (in number of bits) by taking
					the log base 2 of PR+1. <br/>
					To find the smallest step in voltage that output compare can do, divide the voltage of what is considered
					<code>HIGH</code> and then divide by PR+1. That being said, the chipKIT boards, Uno32 and Max32, are
					limited to a resolution of 8 bits since the max value of <code>analogWrite()</code> is 255, we use that
					as our PR and then find the log base 2 of 255 + 1 and find that the result is 8. So for the chipKIT boards
					the smallest step in average voltage for PWM is 3.3 V divided by 256, which is about 12.9 mV per step.
				</td><td>
					<img src="tres.svg" width="300"/>
					<div class="TB-FIGURES">Figure 4. Resolution of PWM in Terms of Period Register.</div>
				</td></tr></table>
				</span>
         </td>
      </tr>
   </table>
   </cf_box>
   </body>
</html>