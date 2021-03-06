% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/doxygen_tools.R
\name{doxy_edit}
\alias{doxy_edit}
\title{Edits an existing Doxyfile}
\usage{
doxy_edit(pathToDoxyfile = "./inst/doxygen/Doxyfile", options = c())
}
\arguments{
\item{pathToDoxyfile}{A string with the relative path to the Doxyfile.
Default: "./inst/doxygen/Doxyfile"}

\item{options}{A named vector with new settings. The names represent
the tags.  
A list of options can be found here:
\url{https://www.stack.nl/~dimitri/doxygen/manual/config.html}}
}
\description{
Changes options in doxygen config files.
}
\examples{

\dontrun{
doxy_edit(options = c("EXTRACT_PRIVATE" = "YES"))
}

}
