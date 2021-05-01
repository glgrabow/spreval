
<!-- README.md is generated from README.Rmd. Please edit that file -->
# spreval

<!-- badges: start -->
<!-- badges: end -->
## Brief Description of spreval package

The `spreval` package contains a number of functions to assess irrigation sprinkler system application uniformity and efficiency. Use of the functions allow for assessment of lateral-move, solid-set, and hose pull (big gun) irrigation systems.

`spreval::catchcan` is a data file included in this package. Data used in the vignettes are taken from the references below:

## References

{Mirriam and Keller, 1978. Farm System Irrigation Evaluation: A Guide for Management. Form II-1, item 10, p.29. Utah State University, Logan, Utah. (<https://pdf.usaid.gov/pdf_docs/PNAAG745.pdf>)

Evans, R.O., Barker J.C., Smith J.T., Sheffield R.E. 1997b. Field calibration procedures for animal wastewater application equipment, hard hose and cable tow traveler irrigation system. NC Cooperative Extension Service publication AG-553-2. Raleigh, NC. (<https://content.ces.ncsu.edu/hard-hose-and-cable-tow-traveler-irrigation-systems>)

Evans, R.O., Barker J.C., Smith J.T., Sheffield R.E. 1997a. Field calibration procedures for animal wastewater application equipment, stationary sprinkler irrigation system. NC Cooperative Extension Service publication AG 553-1. Raleigh, NC. (<https://irrigation.wordpress.ncsu.edu/files/2017/01/ag-553-1-stationary-sprinkler.pdf>)

## Installation

You can install the released version of spreval from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("spreval")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(spreval)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`? You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You'll still need to render `README.Rmd` regularly, to keep `README.md` up-to-date. `devtools::build_readme()` is handy for this. You could also use GitHub Actions to re-render `README.Rmd` every time you push. An example workflow can be found here: <https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don't forget to commit and push the resulting figure files, so they display on GitHub and CRAN.
