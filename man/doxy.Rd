% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doxygen_tools.R
\name{doxy}
\alias{doxy}
\title{Calls doxygen for an R package}
\usage{
doxy(doxygen = file.exists("src"), roxygen = FALSE,
  pathToDoxyfile = "./inst/doxygen/Doxyfile")
}
\arguments{
\item{doxygen}{A boolean: should doxygen be ran on documents in src/?
Default: TRUE if a src folder exist and FALSE if not}

\item{roxygen}{A boolean: should devtools::document() be ran after the 
creation of the doxygen documentation?
Default: FALSE}

\item{pathToDoxyfile}{A string with the relative path to the Doxyfile.
Default: "./inst/doxygen/Doxyfile"}
}
\value{
NULL or the value returned by devtools::document()
}
\description{
Triggers doxygen documentation for the code in src/. Triggers also 
the setup (with \code{doxy_init()}) at the first run.
}
\examples{
\dontrun{
  doxy()
}

}
