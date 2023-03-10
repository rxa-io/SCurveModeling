% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/parse_drm_curve.R
\name{parse_curve_drm_BC5}
\alias{parse_curve_drm_BC5}
\title{Parse Coefficients from Curve}
\usage{
parse_curve_drm_BC5(curve)
}
\arguments{
\item{curve}{The results from the Modeled data.}
}
\value{
A list of all coefficients for a drm curve
}
\description{
Using the result of the modeled data, this method parses out the coefficients
that are needed throughout the creation of the s-curve.
}
