## Test environments
* local R installation, R 4.1.0
* ubuntu 16.04 (on travis-ci), R 4.1.0
* win-builder (devel)

## change since third submission
* provided URL for Christiansen reference (build_site had generated an
incorrect URL based on ISBN no.). This had triggered a "fix" request.
* changed default function parameters related to graphics titles to NULL
from "" (empty string) for cleaner and more conventional programming

## change since second submission
* added par(no.readonly-TRUE) and on.exit commands to retain user set graphics
* added verbiage to better describe purpose and function of the package
and added references from which implemented methods came.  
* Notes from rhub checks concerning possible misspellings in description file
are either an author name or function names that are explicitly listed to the stated references

## change since first submission
* replaced akima package with interp package
interp is a FOSS package to avoid ACM license issue of akima
* moved "fields" library to "suggests" list as it is only used in examples and vignettes

## R CMD check results (local)
── R CMD check results ───────────── spreval 1.0.0 ────
Duration: 46s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

R CMD check succeeded

## R CMD check results (debian)
On debian-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'
  
  New submission
  
  Possibly mis-spelled words in DESCRIPTION:
    AELQ (12:90)
    catchcan (26:82)
    Christiansen (9:64, 10:36)
    lh (15:64)
    PELQ (12:36, 17:45)
    PELQT (17:14)
    Skogerboe (20:33)
    SMD (22:51, 23:21)
    spreval (15:52, 15:81, 17:5, 17:36, 18:70, 26:73)

## Test environments (fedora)

- R-hub fedora-clang-devel (r-devel)

## R CMD check results
> On fedora-clang-devel (r-devel)
  checking CRAN incoming feasibility ... NOTE
  Maintainer: ‘Garry Grabow <glgrabow@ncsu.edu>’
  
  New submission
  
  Possibly mis-spelled words in DESCRIPTION:
    AELQ (12:90)
    Christiansen (9:64, 10:36)
    PELQ (12:36, 17:45)
    PELQT (17:14)
    SMD (22:51, 23:21)
    Skogerboe (20:33)
    catchcan (26:82)
    lh (15:64)
    spreval (15:52, 15:81, 17:5, 17:36, 18:70, 26:73)

0 errors ✓ | 0 warnings ✓ | 1 note x


## Test environments (rhub::check_on_windows())
- R-hub windows-x86_64-release (r-release)

## R CMD check results
0 errors ✓ | 0 warnings ✓ | 0 notes ✓

## rhub::check_win_dev()
* using log directory 'd:/RCompile/CRANguest/R-devel/spreval.Rcheck'
* using R Under development (unstable) (2021-07-03 r80596)
* using platform: x86_64-w64-mingw32 (64-bit)
* using session charset: ISO8859-1
* checking for file 'spreval/DESCRIPTION' ... OK
* checking extension type ... Package
* this is package 'spreval' version '1.0.0'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... NOTE
Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'

New submission

Possibly mis-spelled words in DESCRIPTION:
  AELQ (12:90)
  Christiansen (9:64, 10:36)
  PELQ (12:36, 17:45)
  PELQT (17:14)
  SMD (22:51, 23:21)
  Skogerboe (20:33)
  catchcan (26:82)
  lh (15:64)
  spreval (15:52, 15:81, 17:5, 17:36, 18:70, 26:73)
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
* checking R code for possible problems ... [7s] OK
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
* checking examples ... [5s] OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in 'inst/doc' ... OK
* checking re-building of vignette outputs ... [6s] OK
* checking PDF version of manual ... OK
* checking for detritus in the temp directory ... OK
* DONE
Status: 1 NOTE
