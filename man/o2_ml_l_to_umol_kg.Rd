% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/calibration.R
\name{o2_ml_l_to_umol_kg}
\alias{o2_ml_l_to_umol_kg}
\title{Convert Dissolved Oxygen from ml/L to μmol/kg}
\usage{
o2_ml_l_to_umol_kg(
  oxygen_ml_l,
  absolute_salinity,
  temperature_celsius,
  pressure_dbar
)
}
\arguments{
\item{absolute_salinity}{Numeric. Absolute salinity in g/kg.}

\item{temperature_celsius}{Numeric. In-situ temperature in degrees Celsius.}

\item{pressure_dbar}{Numeric. Sea pressure in decibars.}

\item{oxygen_ml_L}{Numeric. Dissolved oxygen concentration in ml/L.}
}
\value{
Numeric. Dissolved oxygen concentration in μmol/kg.
}
\description{
This function converts dissolved oxygen concentration from milliliters per liter (ml/L)
to micromoles per kilogram (μmol/kg) using seawater density calculated with the gsw package.
}
\examples{
# Example parameters
oxygen_ml_l <- 5.0
absolute_salinity <- 35.0
temperature_celsius <- 25.0
pressure_dbar <- 0

# Convert oxygen concentration
result <- convert_oxygen_ml_l_to_umol_kg(
  oxygen_ml_l, absolute_salinity, temperature_celsius, pressure_dbar
)
}
