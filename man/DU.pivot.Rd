\name{DU.pivot}
\alias{DU.pivot}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Distribution Uniformity of Center Pivot Systems
%%  ~~function to do ... ~~
}
\description{
Computes distribution uniformity (DU) of low quarter for center pivot systems using
catch can (collector) data.  Computation differs from fuction spreval::DU as
collector data is weighted by the area it represents in a pivoting system.
}
\usage{
DU.pivot(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{numeric array of catch can data.  Catch cans must have equidistant
  spacing.

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
Mirriam and Keller, 1978. Farm System Irrigation Evaluation: A Guide for Management.
PP 41-43. Utah State University, Logan, Utah. https://pdf.usaid.gov/pdf_docs/PNAAG745.pdf
%% ~put references to the literature/web site here ~
}
\author{Garry Grabow \email{glgrabow@ncsu.edu}

\note{If catch cans (collectors) are not placed near the pivot point, or have
incomplete catches (system not fully rotated through collectors) those must be
entered as missing (NA) to insure appropriate weighting of data from completely
collected containers.
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# data from Mirriam and Keller, p.85 (see references). Values in mls.

pivot.data<-c(NA,NA,NA,NA,NA,NA,NA,NA,141,160,122,130,143,150,134,123,144,138,
135,207,122,114,115,138,109,113,114,126,116,107,122,140,117,105,111,125,118,127,
115,147,127,122,118,144,112,124,126,151,120,122,115,143,124,114,115,160,120,110,
109,117,85,194,148,82)

out<-DU.pivot(pivot.data)

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
