#rotate ecdf object for plot with reversed axes, and inverted y axix
"rotecdf"=function(x,ecdf,target=NA){
  fx<-ecdf(x)
  plot(fx,x,ylim=rev(c(0,max(x))),xlim=c(0,1),xlab="cum. prob.",ylab="depth applied (caught)")
  abline(h=target,col=2)
  if(target){text(0.2,target,"target depth",srt=0,adj=c(0,1))}
  }

"sfplot"=function(x,ecdf,target=NA){
  #plot a step function with y (depth) axis inverted (ground at top)
  fx<-ecdf(x)
  df1<-as.data.frame(cbind(x,fx))
  ordered.df1<-df1[order(df1$x), ]
  xx<-ordered.df1$x
  yy<-ordered.df1$fx
  xx1<-c(min(xx),xx) # need 1 additional y point
  sf<-stepfun(yy,xx1)
  plot(sf,ylim=rev(c(0,max(xx1))),xlim=c(0,1),xlab="cum. prob.",ylab="depth applied (caught)",main="")
  abline(h=target,col=2)
  if(target){text(0.2,target,"target depth",srt=0,adj=c(0,1))}
}



