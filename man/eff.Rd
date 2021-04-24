\name{eff}
\alias{eff}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Application efficiency and adequacy of a sprinkler irrigation system
%%  ~~function to do ... ~~
}
\description{determines amount of water above and below target depth to determine efficiency and adequacy
from catch can data. If target depth is equal to soil moisture depletion in the root zone, all catch can depths greater than target are, in concept, lost to deep percolation and reduce efficiency, and all depths less than target are 100\% efficient but reduce adequacy.

%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
eff(x, target)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{numeric array of catch can depths}
 %%     ~~Describe \code{x} here~~
  \item{target}{target depth}
%%     ~~Describe \code{target} here~~
}

\details{computes efficiency and adequacy as amount of catch equal or less than
target depth (efficiency is applied water retained in root zone divide by total water applied), and amount of catch equal or exceeding target depth (adequacy). Amounts obtained using results of a density (frequency) plot and normalized to target depth and reported in decimal (not percent) form.
%%  ~~ If necessary, more details than the description above ~~
}
\value{A named list with the following items:
\item{appeff}{application efficiency based on target depth, decimal}
\item{appadeq}{application adequacy based on target depth, decimal}
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{Garry Grabow \email{glgrabow@ncsu.edu}
%%  ~~who you are~~
}
\note{If all catch can depths (and resultant density curve) are all below the target depth, the application efficiency is 100\%.  This assumes that the target depth is equal to the soil water deficit (or less). So deficit irrigations are likely to be 100\% or near 100\% efficient.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{adper}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
target<-3
# generate data with mean of target amount and high variability (non-uniformity)
x<-rnorm(25,3,1.75)
eff(x,target)
# generate data with mean of target amount and low varibility (uniformity)
xx<-rnorm(25,3,0.5)
eff(xx,target)

}

