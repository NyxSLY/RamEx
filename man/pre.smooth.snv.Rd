% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pre-smooth.R
\name{pre.smooth.snv}
\alias{pre.smooth.snv}
\title{Apply Standard Normal Variate (SNV) Transformation}
\usage{
pre.smooth.snv(object)
}
\arguments{
\item{object}{A Ramanome object containing the raw spectral data.}
}
\value{
The updated Ramanome object with the SNV-transformed data.
}
\description{
This function applies the Standard Normal Variate (SNV) transformation to the raw
spectral data in a Ramanome object. The SNV transformation is a type of preprocessing
technique used to normalize the data and reduce the impact of multiplicative scatter.
The function also reports the number of spectra and the wavelength range after
the transformation.
}
