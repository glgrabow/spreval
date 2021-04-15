#function to compute potential efficiency of low quarter
#of low-quarter. From Mirriam and Keller, 1978, p. 41. Note that rates (as suggested in Mirriam and Keller)
#are used in the calculation, not depths, asin AELQ , but the numberical result is identical if depths are used
# x is caught depth (catch cans), rate is sprinkler flow rate (lpm or gpm), ss is sprinkler spacing, sl is lateral spacing
"PELQ"=function(x,SI=TRUE,rate,ss,sl,dur)
{
  #get subarray of low quarter
  x<-sort(x)
  end<-round(length(x)/4,digits=0)
  #use applied depth rather than caught depth for denominator
  #SI use mm for depth, meters for spacing, lpm for sprinkler flow rate, hr duration
  #US Customary use in. for depth, feet for spacing, gpm for sprinkler flow rate, hr duration
 if(SI){(mean(x[1:end])/dur)/((rate/1000/(ss*sl)*60*dur)*1000)*100}
  else{(mean(x[1:end])/dur)/(96.3*rate/(ss*sl))*100}
}
