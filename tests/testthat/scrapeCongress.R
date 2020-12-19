######################
#### Test: csvOut ####
######################

testthat::context("scrapeCongress")

library(ScrapeCongress)

testthat::test_that('scrapeCongress', {
  skip_on_cran()
  expect_message(scrapeCongress('housemale'))
})

#> Test Passed
