\name{transpose functions}
\alias{transpose_loop}
\alias{transpose_vector}

\title{
Transpose matrices
}
\description{
Transpose a matrix
}
\usage{
transpose_loop(x)
}

\arguments{
  \item{x}{A matrix}
}

\details{
Transposes the matrix. The output should be identical to the function t(), but the functions in this package have a longer execution time.
}

\value{
Returns a transposed matrix.
}

\author{
BIFX 552 class
}

\examples{
x <- matrix(1:6, nrow = 2, byrow = TRUE)
transpose_loop(x)
transpose_vector(x)
}

\keyword{array}
