% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parsers.R
\name{lecs_missing}
\alias{lecs_missing}
\title{Calculate number of missing lines}
\usage{
lecs_missing(count, line = NULL)
}
\arguments{
\item{count}{Vector of ADV count}

\item{line}{vector indicating line of send}
}
\value{
A vector with a guess at the number of missing lines from
previous to current
}
\description{
Calculate number of missing lines
}
