########################
#### ScrapeCongress ####
########################
#' Takes tweets from previous function and creates a csv for each member of congress where there are reported tweets.
#' Titles each csv as "ScrapeCongress i" where i represents the alphabetical order in which that member of Congress appears in the list that the user selected when entering in the timeline option in ScrapeCongress().
#' @import rtweet
#' @import utils
#' @export

scrapeCongress <- function(timelines = "all", session = "116", n_tweets = 50, csvOut = FALSE) {
  if (csvOut == TRUE) {
    if (timelines == "all" | timelines == "senate" | timelines == "house" | timelines == "senmaleD" | timelines == "senmaleR" | timelines == "senfemaleD" | timelines == "senfemaleR" | timelines == "hormaleD" | timelines == "hormaleR" | timelines == "horfemaleD" | timelines == "horfemaleR") {
      if (session == "116" | session == "118") {
        x <- timelines
        y <- session
        tweets <<- congressTimeline(timelines, session, n_tweets)
        csvOut(tweets)
      } else {
        print("Please enter a valid session of congress.")
      }
    } else {
      if (session == "116" | session == "118") {
        print("Please enter a valid subset of timelines.")
      } else {
        print("Please enter a valid subset of timelines and a valid session of congress.")
      }
    }
  } else {
    if (timelines == "all" | timelines == "senate" | timelines == "house" | timelines == "senmaleD" | timelines == "senmaleR" | timelines == "senfemaleD" | timelines == "senfemaleR" | timelines == "hormaleD" | timelines == "hormaleR" | timelines == "horfemaleD" | timelines == "horfemaleR") {
      if (session == "116" | session == "118") {
        x <- timelines
        y <- session
        tweets <<- congressTimeline(timelines, session, n_tweets)
      } else {
        print("Please enter a valid session of congress.")
      }
    } else {
      if (session == "116" | session == "118") {
        print("Please enter a valid subset of timelines.")
      } else {
        print("Please enter a valid subset of timelines and a valid session of congress.")
      }
    }
  }
}
