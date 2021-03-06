rdoxygen
--------

R package for the automatic creation of [doxygen](http://www.doxygen.org) documentation for source code in R packages. 

It's based on [cmbarbus](http://stackoverflow.com/users/1174052/cmbarbu) answer to this [stackoverflow question](http://stackoverflow.com/questions/20713521/using-roxygen2-and-doxygen-on-the-same-package). 


Installation
------------

:exclamation: To use rdoxygen you need a working installation of the system program [doxygen](http://www.stack.nl/~dimitri/doxygen/download.html). 

You can install the development version of rdoxygen with [devtools](https://CRAN.R-project.org/package=devtools) via

    if(!require('devtools')) install.packages('devtools')
    library(devtools)
    install_github('nevrome/rdoxygen')

Usage
-----

To setup and afterwards update your doxygen documentation, you can simply run 

```{r}
doxy()
```

in your package root directory. `doxy()` calls `doxy_init()` if there's no Doxyfile (doxygen configuration file) yet. Otherwise it just updates the documentation. 

The package provides a [RStudio Addin](https://rstudio.github.io/rstudioaddins/) named **rdoxygenize** that binds to the function `doxy()`. `doxy()` can therefore be called with a keyboard shortcut (I personally use <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>-</kbd>). This makes the user experience comparable to [roxygen2](https://github.com/yihui/roxygen2) documentation via `devtools::document()` (usually <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>D</kbd>). 

`doxy_edit()` allows to change settings in the Doxyfile. For example to also include private elements, you can call

```{r}
doxy_edit(options = c("EXTRACT_PRIVATE" = "YES"))
```

Licence
-------

rdoxygen is released under the [GNU General Public Licence, version 2](https://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html). Comments and feedback are welcome, as are code contributions.