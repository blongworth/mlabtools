% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calibration.R
\name{cal_ox}
\alias{cal_ox}
\title{Calibrate Rinko Oxygen saturation}
\usage{
cal_ox(raw_do, temp, rinko_cals)
}
\arguments{
\item{raw_do}{A vector of raw dissolved oxygen voltage measurements}

\item{rinko_cals}{A named vector of rinko calibration coefficents}
}
\value{
A vector of calibrated oxygen saturation in percent
}
\description{
Calibrate Rinko Oxygen saturation
}
