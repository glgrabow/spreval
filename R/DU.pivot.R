"DU.pivot"=function(x){
  # x is array of catch volumes or depths, order proximal to distal from pivot point.
  # assumes constant catch can spacing layout
  #generate array of position numbers for weighted scaling of catches
  #weighting required due to increasing area irrigated with increasing distance
  #from pivot point. ss Mirriam and Keller 1978 pg. 81 ff.
  posno<-seq(1,length(x),1)
  wtd<-x*posno # catch weighted by position number
  swtd<-sum(wtd,na.rm=TRUE) # get sum of weighted catches
  sposno<-sum(posno[which(!is.na(x))]) # sum of used position numbers.
# now combine position numbers and catches to sort by catch volumes/depths
  comb<-as.data.frame(cbind(posno,x,wtd))
  comb.sort<-with(comb,comb[order(comb$x), ])# sort by raw catch
  lqsposno<-sposno/4 #sum low quarter position numbers
  # cumulate sorted position numbers
  cumsort.posno<-cumsum(comb.sort$posno)
  cumsort.wtd<-cumsum(comb.sort$wtd)
  lqind<-which.min((abs(cumsort.posno-lqsposno))) # find index of lqsorted
  lq<-cumsort.wtd[lqind]/cumsort.posno[lqind]
  sys<-swtd/sposno # weighted system average catch
  DU<-lq/sys*100 # convert to percentage
}

