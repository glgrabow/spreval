\name{plotss}
\alias{plotss}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Plot a plan view of sprinklers and catch cans with collected depths.
%%  ~~function to do ... ~~
}
\description{plots a densigram with optional contour plot of catch can depths, with an option to label points.  Both contour and point labeling are invoked by default (TRUE).
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plotss(cdata,sploc,con=TRUE,xlab=NULL,ylab=NULL,xlim=NULL,
ylim=NULL,main=NULL,labelpoints=TRUE,pos=1,spklab=NULL,asp=1,
pch=16,cex=0.8,edastat=FALSE,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{cdata}{n x 3 matrix of catch can data; 1st column x, 2nd column y can locations, 3rd column catch depths}
  \item{sploc}{n x 2 matrix of sprinkler location data; 1st column xi, second column yi.  i=4 for 4 sprinklers with cans in-between.}
  \item{con}{Logical; TRUE to overlay contour plot on densigram.}
  \item{xlab}{label for x axis of plot.}
  \item{ylab}{label for y axis of plot.}
  \item{xlim}{bounds of x-axis.}
  \item{ylim}{bounds of y-axis.}
  \item{main}{main title for plot.}
  \item{labelpoints}{logical; plot amounts at can locations? Default is TRUE.}
  \item{pos}{if labelpoints=TRUE, position of point labels, see \code{\link[graphics]{text}}}
  \item{spklab}{character vector of labels for sprinklers.}
  \item{asp}{aspect ratio of x and y axis. See \code{\link[graphics]{plot.default}}.}
  \item{pch}{symbol type. See \code{\link[graphics]{par}}.}
  \item{cex}{scaling factor for plotting points and labels.See \code{\link[graphics]{par}}.}
  \item{edastat}{Logical; call eda.stat function for stats on catch depths?}
%%     ~~Describe \code{x} here~~
}

\value{densigram (from \code{\link[interp]{interp}} with optional contour plot overlay) and optional summary catch can statistics.}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...

\author{Garry Grabow \email{glgrabow@ncsu.edu}
%%  ~~who you are~~
}
\note{requires interp package}
%%  ~~further notes~~


%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link[interp]{interp}}, \code{\link[graphics]{contour}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# set sprinkler locations (ft here)
sprinklerx<-c(0,0,60,60)
sprinklery<-c(60,0,60,0)
sploc<-cbind(sprinklerx,sprinklery)
#construct can data matrix
gage.space<-15
x<-c(rep(7.5,4),rep(22.5,4),rep(37.5,4),rep(52.5,4))
y<-rep(seq(52.5,7.5,-gage.space),4)
depth<-c(0.3,0.32,0.26,0.26,0.16,0.32,0.14,0.41,
0.14,0.27,0.38,0.34,0.29,0.32,0.45,0.25)
cdata<-cbind(x,y,depth)
plotss(cdata,sploc,xlab="ft",ylab="ft")
#now black and white, pass "col"
plotss(cdata,sploc,xlab="ft",ylab="ft",col=grey.colors(16))
}



% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
