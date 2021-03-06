% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/proc_functions.R
\name{calculateauc}
\alias{calculateauc}
\title{Helper function to compute AUC (partialAUC, AUC at Random, AUC ratio) values}
\usage{
calculateauc(xytable, omissionval, iterationno)
}
\arguments{
\item{xytable}{A table with the output of the function generatexytableb}

\item{omissionval}{Omission value.}

\item{iterationno}{Number of boostrap interation.}
}
\description{
Helper function to compute AUC (partialAUC, AUC at Random, AUC ratio) values
}
