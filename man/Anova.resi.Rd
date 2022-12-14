% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Anova.resi.R
\name{anova.resi}
\alias{anova.resi}
\title{Anova method for resi objects}
\usage{
\method{anova}{resi}(object, alpha = NULL, ...)
}
\arguments{
\item{object}{an object resulting from resi function}

\item{alpha}{an optional new specification for the confidence level. Can be vector-valued}

\item{...}{ignored}
}
\value{
Returns an `anova` object containing the computed Anova-style table
}
\description{
After running the \code{\link{resi}} function on a fitted model, this function can be used to print the Anova-style table component. If the resi function was run with the `store.boot = TRUE` option to store the full matrix of bootstrapped estimates, the user can specify a different alpha level for this function's confidence intervals.
}
\details{
The resi function uses the car::Anova function to compute the Anova table.
}
\examples{
# fit a model
mod = lm(charges ~ bmi + sex, data = RESI::insurance)

# run resi with the store.boot = TRUE option
resi.obj = resi(mod, nboot = 100, store.boot = TRUE, alpha = 0.01)

# run anova, specifying a different alpha level if desired
anova(resi.obj, alpha = 0.05)
}
