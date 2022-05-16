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
\value{Distribution Uniformity (weighted low quarter) of Center Pivot system
in percentage.
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
}
\note
{If catch cans (collectors) are not placed near the pivot point, or have
incomplete catches (system not fully rotated through collectors) those must be
entered as missing (NA) to insure appropriate weighting of data from completely
collected containers.}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# data from catchcan data set
# Center pivot data from from Mirriam and Keller, p.85 (see references).
# Values in mls.
  data(catchcan)
  pivot.data <- catchcan$MKpivot
  out<-DU.pivot(pivot.data)
  out # print DU
  eda.shape (pivot.data) # distribution of raw catch data
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
