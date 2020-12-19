##################
#### Timeline ####
##################
#' Takes list of twitter handles and last names for each session of congress.
#' Runs rtweet::get_timelines to access twitter api using twitter handles specified by user.
#' @importFrom rtweet get_timelines
#' @export

congressTimeline <- function(x, y, n_tweets) {
  handles <- lapply(timelines.session.dictionary[["session"]][[y]][[x]][["indexes"]],
    FUN = function(indexes) {
      print(paste(timelines.session.dictionary[["session"]][[y]][[x]][["last.name"]][[indexes]], timelines.session.dictionary[["session"]][[y]][[x]][["handle"]][[indexes]], sep = ";"))
      tweets <- rtweet::get_timelines(timelines.session.dictionary[["session"]][[y]][[x]][["handle"]][[indexes]],
        n = n_tweets,
        max_id = NULL,
        home = FALSE,
        parse = TRUE,
        check = FALSE,
        token = token,
        include_rts = FALSE
      )
      return(tweets)
    }
  )
}
