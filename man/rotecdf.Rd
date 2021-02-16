\name{rotecdf}
\alias{rotecdf}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Swap axis of ecdf plot and reverse y axis
%%  ~~function to do ... ~~
}
\description{plots points generated from an ecdf object with x and y axis swapped
(x is cummulative freqency) and with y axis reversed so that min(y)=0 is at top.  Plots points
without the step function lines.
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
rotecdf(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
}
\details{A minimum y of 0 is forced such that the plot can be interpreted at 0 being ground surface. If "target"
is supplied, a horizontal line at the value of target is drawn. Points and area below the target line indicate
water applied in excess of the target amount.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{sfplot
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (x)
{
  }
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
