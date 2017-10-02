# transpose.R
# practice functions to duplicate t()

transpose_loop <- function(x)
{
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
