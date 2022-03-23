## resubmission of 1.1.0
changed URL directed to CRAN spreval index page from README.md to honor https
(versus http) site.

## Test environments
* local R installation, R 4.1.1
* ubuntu 16.04 (on travis-ci), R 4.1.0
* win-builder (devel)

## change since v. 1.0.0
fixed bugs and errors. Some minor features added (graphics parameter passing) 
an additional vignette to illustrate landscape sprinkler system evaluation
was added.  Values returned from  spreval::eff, i.e.,"appeff"" and "appadeq" 
have been corrected.  Most functions that output plots, or allow optional plots
(i.e., eda.shape, plotss, sfplot, rotecdf) now allow optional graphical 
parameters to be passed via the ... convention and Rd help files updated. 
Landscape data added to catchcan dataset.

## R CMD check results (local)
── R CMD check results ───────────────────────── spreval 1.1.0 ────
Duration: 13.2s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

R CMD check succeeded

## Test environment rhub check_for_cran (debian)
── spreval 1.1.0: OK

  Build ID:   spreval_1.1.0.tar.gz-25fae9fe55fc4e9d895a60945a31b593
  Platform:   Debian Linux, R-devel, clang, ISO-8859-15 locale
  Submitted:  1h 14m 53.1s ago
  Build time: 17m 20.5s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

## Test environment rhub check_for_cran  (fedora)

── spreval 1.1.0: OK

  Build ID:   spreval_1.1.0.tar.gz-e0735d24f2bb47a1b676ef20077628cf
  Platform:   Fedora Linux, R-devel, clang, gfortran
  Submitted:  2h 9m 51.2s ago
  Build time: 15m 15.3s
0 errors ✓ | 0 warnings ✓ | 0 notes ✓


- R-hub fedora-clang-devel (r-devel)


## Test environment (rhub::check_on_windows())
── spreval 1.1.0: OK

  Build ID:   spreval_1.1.0.tar.gz-867b6fc43d424d699be2d1821b229d33
  Platform:   Windows Server 2008 R2 SP1, R-release, 32/64 bit
  Submitted:  7m 44.4s ago
  Build time: 3m 1.9s

0 errors ✓ | 0 warnings ✓ | 0 notes ✓

## Test environment devtools::check_win_dev()
* using log directory 'd:/RCompile/CRANguest/R-devel/spreval.Rcheck'
* using R Under development (unstable) (2022-03-22 r81960 ucrt)
* using platform: x86_64-w64-mingw32 (64-bit)
* using session charset: UTF-8
* checking for file 'spreval/DESCRIPTION' ... OK
* checking extension type ... Package
* this is package 'spreval' version '1.1.0'
* package encoding: UTF-8
* checking CRAN incoming feasibility ... Note_to_CRAN_maintainers
Maintainer: 'Garry Grabow <glgrabow@ncsu.edu>'
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
* checking examples ... [6s] OK
* checking for unstated dependencies in vignettes ... OK
* checking package vignettes in 'inst/doc' ... OK
* checking re-building of vignette outputs ... [19s] OK
* checking PDF version of manual ... OK
* checking for detritus in the temp directory ... OK
* DONE
Status: OK
