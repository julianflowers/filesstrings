% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/strings.R
\name{GetCurrencies}
\alias{GetCurrencies}
\alias{GetCurrency}
\title{Get the currencies of numbers within a string.}
\usage{
GetCurrencies(string)

GetCurrency(strings)
}
\arguments{
\item{string}{A string.}

\item{strings}{A character vector.}
}
\value{
\itemize{
\item \code{GetCurrency} returns a character vector.
\item \code{GetCurrencies} returns a data frame with one column for the
currency symbol and one for the amount.
}
}
\description{
The currency of a number is defined as the character coming before the number
in the string. If nothing comes before (i.e. if the number is the first thing
in the string), the currency is the empty string, similarly the currency can
be a space, comma or any manner of thing.
\itemize{
\item \code{GetCurrency}
takes a string and returns the currency of the first number therein. It is
vectorised over string.
\item \code{GetCurrencies} takes a string and returns
the currencies of all of the numbers within that string. It is not
vectorised. }
}
\details{
These functions do not allow for leading decimal points.
}
\examples{
GetCurrencies("35.00 $1.14 abc5 $3.8 77")
GetCurrency(c("ab3 13", "$1"))
}
