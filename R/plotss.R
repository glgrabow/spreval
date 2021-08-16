plotss2=function(cdata,sploc,con=TRUE,xlab=NULL,ylab=NULL,xlim=NULL,ylim=NULL,main=NULL,labelpoints=TRUE,pos=NULL,spklab=NULL,
asp=NULL,pch=16,cex=0.8,edastat=FALSE,...)
{
#cdata is n x 3 matrix of catch can data; 1st column x, 2nd column y can locations, 3rd column catch depths
#sploc is n x 2 matrix of 1st column x, second column y sprinkler location.  x=4, y = 4 for 4 sprinklers
#with cans in-between
# xlab and ylab for plan view plot of sprinklers and catch cans, provide units too if wish
#setup plotting space
#plot.new()
#user input of pch other than default of 16 changes only sprinkler location symbols, catch cans are fixed at pch=1.
#col as other graphical parameter imput only applies to image plot. See wrapper functions for exclusions.
oldpar<-par(no.readonly = TRUE) #get current plot parameters
on.exit(par(oldpar)) # at exit return to originating plot par on device. Should not need this as no par() set.
#write wrappers for plot and plot related functions
limage<-function(...,xaxs,yaxs,axes,log,labcex,pos) image(...)
lcontour<-function(...,xlim,ylim,col,pos) contour(...) # can pass 'labcex' in contour for line label (not 'cex.lab')
lpoints<-function(...,log, axes, frame.plot, panel.first, panel.last,labcex,pos,lty,col) points(...)
ltext<-function(...,log, axes, frame.plot, panel.first, panel.last,labcex,col,lty) text(...)
sprinklerx<-sploc[ ,1];sprinklery<-sploc[ ,2]
cx<-cdata[ ,1];cy<-cdata[ ,2]
nmx<- deparse(substitute(cx));nmy<- deparse(substitute(y)) # get default x and y array names for default xlab, ylab
depth<-cdata[ ,3]
densigram<-interp::interp(cx,cy,depth)
# set range of plot to either maximum space of sprinklers (external to cans) or to catch can range, e.g., 1 lateral
# add a border for room for can and sprinkler labels
xpin<-par("pin")[1];ypin<-par("pin")[2]; as.ratio<-xpin/ypin #fetch aspect ratios in pin
border.x<-0.06*(max(cy)-min(cy)) #just use 5%
border.y<-0.06*(max(cy)-min(cy)) #ditto
xmin<-min(min(sprinklerx),min(cx))-border.x;xmax<-max(max(sprinklerx),max(cx))+border.x
ymin<-min(min(sprinklery),min(cy))-2*border.y;ymax<-max(max(sprinklery),max(cy))+border.y
print(ymin);print(ymax);print(border.y)
#set asp=1 for image.  added points will follow true aspect ratio
if(is.null(xlim)) xlim=c(xmin,xmax); if(is.null(ylim)) ylim=c(ymin,ymax)
if(is.null(asp)) asp=1 # set 1:1 aspect ratio by default if not provided
limage(densigram,xlim=xlim,ylim=ylim,
      xaxs="i",yaxs="i",asp=asp,...)
lpoints(sprinklerx,sprinklery,pch=pch,cex=cex,...)
title(main=main,xlab=xlab,ylab=ylab)

if(con){
lcontour(densigram, add=TRUE, plotit=TRUE,...)
}
lpoints(cx,cy,pch=1,cex=cex,...)#plot rain gages -plan view
if(labelpoints){
   if(is.null(pos)) pos=1
   gage.labels<-depth
   ltext(cx,cy,gage.labels,pos=pos,cex=cex,...)
}
#label sprinklers if labels are provided (!null).  Bold italic to distinguish from can labels.
if(!is.null(spklab)){
  if(is.null(pos)) pos=1
  ltext(sprinklerx, sprinklery,spklab,pos=pos,cex=cex,...)
}

if(edastat){
eda.shape(depth,title=title)
eda.stats(depth)
}

}

