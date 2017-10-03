context("transpose_loop")

test_that("transpose_loop works",
{
    # input
    x <- matrix(1:6, ncol = 2)

    # expected output
    out <- matrix(1:6, ncol = 3, byrow = TRUE)

    expect_equal(transpose_loop(x), out)
})

test_that("transpose_loop without input stops",
{
    expect_error(transpose_loop())
})
