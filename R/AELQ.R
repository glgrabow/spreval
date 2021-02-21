#function to compute application uniformity of low quarter (AELQ)
#AELQ assumes an application depth in the low-quarter greater than current soil-moisture deficit (SMD) and thus
#accounts for losses below the root zone in addition to non-uniformity.  As such, AELQ<=PELQ by definition.
#When the application in the low-quarter matches the overall SMD, then AELQ=PELQ
#Formulaicly, the equation is SMD over average applied (pumped), not low-quarter pumped. Mirriam and Keller, 1978,
#Farm System Irrigation Evaluation: A Guide for Management, PP 43,44
#rate is sprinkler flow rate, ss is sprinkler spacing, sl is lateral spacing, dur is irrigation duration, smd is soil
#moisture deficit at the time of irrigation event

"AELQ"=function(SI=TRUE,rate,ss,sl,dur,smd)
{
  #get subarray of low quarter
  #SI use mm for depth, meters for spacing, lpm for sprinkler flow rate, minutes duration
  #US Customary use in. for depth, feet for spacing, gpm for sprinkler flow rate, minutes duration
 if(SI){smd/((rate/1000/(ss*sl)*dur)*1000)*100}
  else{smd/(96.3*rate/(ss*sl)*dur/60)*100}
}
