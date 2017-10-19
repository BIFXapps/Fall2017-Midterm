# transpose.R
# practice functions to duplicate t()

transpose_loop <- function(x)
{
  # check assumption that we are working with a matrix
  validate_x(x)

  # trasnposed matrix to reutrn
  tx <- matrix(nrow = dim(x)[2], ncol = dim(x)[1])

  for(i in 1:dim(x)[1]) # loop over rows
  {
    for(j in 1:dim(x)[2]) # loop over columns
    {
      tx[j,i] <- x[i,j]
    }
  }

  return(tx)
}

# --solutions--
# transpose x using vectorized notation (i.e. not a nested for loop)
transpose_vector <- function(x)
{
    # check assumption that we are working with a matrix
    validate_x(x)

    # using a *single* for loop
    # tx <- matrix(ncol = dim(x)[1], nrow = dim(x)[2])
    #
    # for(i in 1:dim(x)[1])
    # {
    #     tx[,i] <- x[i,]
    # }

    # using sapply()
    tx <- sapply(1:dim(x)[1], function(i) x[i,])

    # using apply()
    # tx <- apply(x, 1, identity)

    # using map2()
    # tx <- matrix(ncol = dim(x)[1], nrow = dim(x)[2])
    #
    # tx[,] <- map2(rep(1:dim(x)[1], each = dim(x)[2]),
    #               rep(1:dim(x)[2], dim(x)[1]),
    #               ~ x[.x, .y]) %>%
    #          unlist()

    # using matrix() directly
    # tx <- matrix(as.vector(x), ncol = dim(x)[1], nrow = dim(x)[2], byrow = TRUE)

    return(tx)
}
