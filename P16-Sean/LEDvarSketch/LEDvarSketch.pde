
int valueGlb;

const int aPotGlb = 0;
const int aLEDGlb = 9;
// scaleFactorGlb = 255/1000 
const float scaleFactorGlb = .255;                           
                           
                          
void setup() 
{ 



// Tell the chipKIT AD converter the max analog voltage will be the default value 3.3V.
analogReference(DEFAULT);
pinMode(aLEDGlb, OUTPUT);

  
} 
 
void loop() 
{ 
  
      // Read the value from the analog pin connected to the potentiomiter, value will be between 0 and 1024.
      valueGlb = analogRead(aPotGlb);   
      // Convert input value to a degree.
      valueGlb = (int)((float)valueGlb * scaleFactorGlb);
       
      // Output analog value to LED
      analogWrite(aLEDGlb, valueGlb);
            
           
                                 
} 
