% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RIT.R
\name{RIT}
\alias{RIT}
\title{Tests whether x and y are unconditionally independent}
\usage{
RIT(x, y, approx = "lpd4", seed = NULL)
}
\arguments{
\item{x}{Random variable x.}

\item{y}{Random variable y.}

\item{approx}{Method for approximating the null distribution. Options include:
"lpd4," the Lindsay-Pilla-Basak method (default),
"gamma" for the Satterthwaite-Welch method,
"hbe" for the Hall-Buckley-Eagleson method,
"chi2" for a normalized chi-squared statistic,
"perm" for permutation testing (warning: this one is slow but recommended for small samples generally <500 )}

\item{seed}{The seed for controlling random number generation. Use if you want to replicate results exactly. Default is NULL.}
}
\value{
A list containing the p-value \code{p} and statistic \code{Sta}
}
\description{
Tests whether x and y are unconditionally independent
}
\examples{
RIT(rnorm(1000),rnorm(1000));

x=rnorm(1000);
y=(x+rnorm(1000))^2;
RIT(x,y);
}

