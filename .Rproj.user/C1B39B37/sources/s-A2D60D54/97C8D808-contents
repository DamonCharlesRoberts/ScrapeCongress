##################
#### CSV Output ####
##################


#############################
#### -(3) csv.out -####
#############################
#' Takes tweets from previous function and creates a csv for each member of congress where there are reported tweets.
#' Titles each csv as "ScrapeCongress i" where i represents the alphabetical order in which that member of Congress appears in the list that the user selected when entering in the timeline option in ScrapeCongress().
#' @import rtweet
#' @import utils
#' @export


csvOut <- function(tweets) {
  lapply(seq_along(tweets), function(i) data.table::fwrite(tweets[[i]], paste0("ScrapeCongress", i, ".csv")))
}
