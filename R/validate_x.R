# validate_x.R
# make sure end users give us the correct input (expecting a matrix)

validate_x <- function(x)
{
    if(class(x) != 'matrix')
        stop("x must be a matrix")
}
