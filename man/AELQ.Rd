\name{AELQ}
\alias{AELQ}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Function to determine application efficiency of the low quarter, (AELQ) for sprinkler irrigation system
%%  ~~function to do ... ~~
}
\description{This measure is based upon soil moisture depletion (SMD) at time of irrigation and
is SMD/avg. applied depth in \%.  The AELQ will always be less than or equal to the Potential Application
Efficiency of the low quarter (PELQ) if the goal is to satisfy the low quarter (and not less).
AELQ=PELQ when the irrigation depth satifies the SMD in the low quarter. AELQ is a measure of both operation and sprinkler system uniformity.

%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
AELQ(SI=T,rate,ss,sl,dur,smd)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{SI}{logical; units SI (mm, m, lpm) or US Customary (in., ft, gpm).  SI is default}
  \item{rate}{sprinkler discharge rate (lpm or gpm)}
  \item{ss}{sprinkler spacing (m or ft)}
  \item{sl}{lateral spacing (m or ft)}
  \item{dur}{duration or irrigation event, min}
  \item{smd}{soil moisture depletion at begin irrigation, mm or in.}
%%     ~~Describe \code{x} here~~
}

\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{AELQ (application efficiency of low quarter, \%)
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
Mirriam and Keller, 1978. Farm System Irrigation Evaluation: A Guide for Management.  PP 43,44.
Utah State University, Logan, Utah. \url{https://pdf.usaid.gov/pdf_docs/PNAAG745.pdf}

%% ~put references to the literature/web site here ~
}
\author{Garry Grabow \email{glgrabow@ncsu.edu}
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{\code{\link{PELQ}}
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
#see pp 41-44 of reference document
SI=F # use U.S. customary units
smd<-4.4 #soil moisture depletion of 4.4 inches
rate<-4.6 # 4.6 gpm sprinkler discharge
sl<-50; ss<-30 # 30 x 50 ft sprinkler x lateral spacing
dur<-60*23.5 #23.5 hr duration (dur in min)
AELQ(FALSE,rate,ss,sl,dur,smd)

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
