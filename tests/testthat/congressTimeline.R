################################
#### Test: congressTimeline ####
################################

testthat::context("congressTimeline")

library("ScrapeCongress")

testthat::test_that("congressTimeline", {
  skip_on_cran()
  expect_warning(congressTimeline("horfemD","116",1))
})
#> Test Passed
