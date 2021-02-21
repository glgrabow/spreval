\name{DU.lh}
\alias{DU.lh}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{function to compute distribution uniformity of lower half
%%  ~~function to do ... ~~
}
\description{Computes uniformity of lower half of a solid set sprinkler system
vs. lower quarter as does DU
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
DU.lh(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{
%%     ~~Describe \code{x} here~~
}
}
\details{
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
\examples{
# data below are volumes caught in ml.  Catch cans must be of
# equal surface area at top when using volume data
x<-c(47,42,45,24,13,26,33,34,27,30,40,44,32,12,12)
xdulh<-DU.lh(x)
#round results
dulhrnd<-round(xdulh,2)
xdulh
dulhrnd

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
