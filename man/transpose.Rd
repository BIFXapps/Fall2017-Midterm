\name{transpose functions}
\alias{transpose_loop}

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
nothing complicated, just transposes the matrix.
}

\value{
Returns a transposed matrix
}

\author{
Randy Johnson
}

\examples{
x <- matrix(1:6, nrow = 2, byrow = TRUE)
transpose_loop(x)
}

\keyword{array}
