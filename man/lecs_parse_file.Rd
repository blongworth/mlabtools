% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processing.R
\name{lecs_parse_file}
\alias{lecs_parse_file}
\title{Read LECS data from file and parse into dataframes}
\usage{
lecs_parse_file(file, clean = FALSE)
}
\arguments{
\item{file}{A file path in LECS data format}

\item{clean}{Filter bad data and timestamps if true}
}
\value{
a list containing LECS post_times, met data, status data, and ADV data
}
\description{
Runs file parsers, time alignment, and selects columns for output.
}
