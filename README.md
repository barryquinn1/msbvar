msbvar
======

This is msbvar package from cran with 3 errors corrected:
* variable `p` is saved in the output of `szbsvar` function. Otherwise summary() will produce an error.
* function `message` is used instead of `cat` during the package startup. So you can suppress it during startup using knitr or otherwise.
* `as.bit.integer` change to `as.bit` to update to the new `bit` package

You may install package using
```R
require("devtools")
install_github("barryquinn1/msbvar")
```

On macos one needs to install
* [xcode](https://developer.apple.com/xcode/downloads/)
* [fortran 4.2](http://cran.r-project.org/bin/macosx/tools/) 


