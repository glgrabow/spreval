## Test environments
* local R installation, R 4.1.0
* ubuntu 16.04 (on travis-ci), R 4.1.0
* win-builder (devel)

## change since first submission
* replaced akima package with interp package
interp is a FOSS package to avoid ACM license issue of akima
* moved "fields" library to "suggests" list as it is only used in examples and vignettes

## R CMD check results

0 errors | 0 warnings | 1 note

* This is a new release.
## Test environments
- R-hub debian-clang-devel (r-devel)

## R CMD check results
> On debian-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'
  
  New submission

0 errors ✓ | 0 warnings ✓ | 1 note x

## Test environments
- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: ‘Garry Grabow <glgrabow@ncsu.edu>’
  
  New submission

0 errors ✓ | 0 warnings ✓ | 1 note x

## R CMD check results
> On windows-x86_64-release (r-release)
  checking CRAN incoming feasibility ... NOTE
  
  Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'
  New submission

0 errors ✓ | 0 warnings ✓ | 1 note x

## Test environments (rhub::check_on_windows())
- R-hub windows-x86_64-release (r-release)

## R CMD check results
0 errors ✓ | 0 warnings ✓ | 0 notes ✓

## rhub::check_win_dev()
* using log directory 'd:/RCompile/CRANguest/R-devel/spreval.Rcheck'
* using R Under development (unstable) (2021-06-11 r80486)
* using platform: x86_64-w64-mingw32 (64-bit)
* using session charset: ISO8859-1
* checking for file 'spreval/DESCRIPTION' ... OK
* checking extension type ... Package
* this is package 'spreval' version '1.0.0'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'

New submission
* checking package namespace information ... OK
* checking package dependencies ... OK
* checking if this is a source package ... OK
* checking if there is a namespace ... OK
* checking for hidden files and directories ... OK
* checking for portable file names ... OK
* checking whether package 'spreval' can be installed ... OK
* checking installed package size ... OK
* checking package directory ... OK
* checking for future file timestamps ... OK
* checking 'build' directory ... OK
* checking DESCRIPTION meta-information ... OK
* checking top-level files ... OK
* checking for left-over files ... OK
* checking index information ... OK
* checking package subdirectories ... OK
* checking R files for non-ASCII characters ... OK
* checking R files for syntax errors ... OK
* checking whether the package can be loaded ... OK
* checking whether the package can be loaded with stated dependencies ... OK
* checking whether the package can be unloaded cleanly ... OK
* checking whether the namespace can be loaded with stated dependencies ... OK
* checking whether the namespace can be unloaded cleanly ... OK
* checking loading without being on the library search path ... OK
* checking use of S3 registration ... OK
* checking dependencies in R code ... OK
* checking S3 generic/method consistency ... OK
* checking replacement functions ... OK
* checking foreign function calls ... OK
* checking R code for possible problems ... [5s] OK
* checking Rd files ... [1s] OK
* checking Rd metadata ... OK
* checking Rd line widths ... OK
* checking Rd cross-references ... OK
* checking for missing documentation entries ... OK
* checking for code/documentation mismatches ... OK
* checking Rd \usage sections ... OK
* checking Rd contents ... OK
* checking for unstated dependencies in examples ... OK
* checking contents of 'data' directory ... OK
* checking data for non-ASCII characters ... OK
* checking LazyData ... OK
* checking data for ASCII and uncompressed saves ... OK
* checking installed files from 'inst/doc' ... OK
* checking files in 'vignettes' ... OK
* checking examples ... [3s] OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in 'inst/doc' ... OK
* checking re-building of vignette outputs ... [4s] OK
* checking PDF version of manual ... OK
* checking for detritus in the temp directory ... OK
* DONE
Status: 1 NOTE