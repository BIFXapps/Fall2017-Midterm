context("transpose_vector")

test_that("transpose_vector works",
{
    # input
    x <- matrix(1:6, ncol = 2)

    # expected output
    out <- matrix(1:6, ncol = 3, byrow = TRUE)

    expect_equal(transpose_vector(x), out)
})

test_that("transpose_vector without input stops",
{
    expect_error(transpose_vector())
})

test_that("transpose_vector with vector stops",
{
    expect_error(transpose_vector(1:6))
})
