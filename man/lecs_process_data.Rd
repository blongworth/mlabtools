% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/processing.R
\name{lecs_process_data}
\alias{lecs_process_data}
\title{Process all LECS files in a dated folder}
\usage{
lecs_process_data(
  date = NULL,
  file_dir = NULL,
  files = NULL,
  out_dir = ".",
  clean = TRUE,
  dedupe = FALSE,
  resample = FALSE,
  csv = FALSE,
  parquet = TRUE
)
}
\arguments{
\item{date}{A date to use for constructing output filenames and default file path}

\item{file_dir}{An optional directory to use instead of the default}

\item{files}{An optional list of files to process. Supersedes \code{date} and
\code{file_dir} for generating file list}

\item{out_dir}{An optional directory to use instead of the default}

\item{clean}{Set TRUE to remove bad data and timestamps}

\item{dedupe}{Set TRUE to remove lines with duplicate timestamps}

\item{resample}{Set to "second", "minute", etc. to output downsampled data}

\item{csv}{Set TRUE to write csv data}

\item{parquet}{Set TRUE to write parquet (Arrow) data}
}
\description{
Process all LECS files in a dated folder
}
