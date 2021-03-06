<img src="2ea424c2-8966-49f3-819a-b0b75215fb61_200x200.png" align="right" />
<h4 align="center">ScrapeCongress</h4>

<p align="center">
    <a href="https://github.com/DamonCharlesRoberts/ScrapeCongress/commits/master">
    <img src="https://img.shields.io/github/last-commit/DamonCharlesRoberts/ScrapeCongress.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub last commit">
    <a href="https://github.com/DamonCharlesRoberts/ScrapeCongress/issues">
    <img src="https://img.shields.io/github/issues-raw/DamonCharlesRoberts/ScrapeCongress.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub issues">
    <a href="https://github.com/DamonCharlesRoberts/ScrapeCongress/pulls">
    <img src="https://img.shields.io/github/issues-pr-raw/DamonCharlesRoberts/ScrapeCongress.svg?style=flat-square&logo=github&logoColor=white"
         alt="GitHub pull requests">
</p>

# Setting up ScrapeCongress()
```{r setup eval = FALSE}
install.packages("devtools")
devtools::install_github("damoncharlesroberts/ScrapeCongress")
library(ScrapeCongress)


# You also need to load you Twitter Developer Credentials and API Keys into your R script

api_key <- "YOUR API KEY HERE"
api_secret <- "YOUR API SECRET KEY HERE"
access_token <- "YOUR ACCESS TOKEN HERE"
access_token_secret <- "YOUR ACCESS TOKEN SECRET HERE"

token <- rtweet::create_token(
app = "YOUR APP NAME HERE",
consumer_key = api_key,
consumer_secret = api_secret,
access_token = access_token,
access_secret = access_token_secret,
set_renv = FALSE #The `rtweet` package has this set to TRUE by default. This saves your token to your R environment as a .rds file. See the documentation from the package `rtweet` for more information.
)
```

To set up a twitter developer account, you must apply on their website: dev.twitter.com. Once your account has been approved, you must create an APP. Once you have created an APP, you can access your API KEY, API SECRET KEY, ACCESS TOKEN, ACCESS TOKEN SECRET.

## To Start Scraping Tweets, use the `ScrapeCongress::scrapeCongress()` function:

This function will allow you to scrape the most recent tweets from members of the United States Congress. You have a variety of options to choose from for the scope of your twitter scraping.

```{r eval = FALSE}
scrapeCongress(
  timelines = 'all',
  session = '116',
  n_tweets = 50,
  csvOut = FALSE
)
```
### Timelines Option

You can choose from a number of ways to subset the scope of your search for that particular session of congress. 
 * 'all' (which is the default) will pull all tweets from all members of Congress who have a twitter account. 
 * 'senate' pulls from all members of the U.S. Senate who have a twitter account.
 * 'house' pulls from all members of the U.S. House of Representatives who have a twitter account.
 * 'senmaleD' pulls from all Male, Democratic members of the U.S. Senate who have a twitter account.
 * 'senmaleR' pulls from all Male, Republican members of the U.S. Senate who have a twitter account.
 * 'senfemaleD' pulls from all Female, Democratic members of the U.S. Senate who have a twitter account.
 * 'senfemaleR' pulls from all Female, Republican members of the U.S. Senate who have a twitter account.
 * 'hormaleD' pulls from all Male, Democratic members of the U.S. House of Representatives who have a twitter account.
 * 'hormaleR' pulls from all Male, Republican members of the U.S. House of Representatives who have a twitter account.
 * 'horfemaleD' pulls from all Female, Democratic members of the U.S. House of Representatives who have a twitter account.
 * 'horfemaleR' pulls from all Female, Republican members of the U.S. House of Representatives who have a twitter account.
 
### Session Option

You can specify that you'd like to pull the tweets from members of either the 116th (2019-2020) (set to default) or the 117th (2021-2022) sessions of congress.

### n_tweets Option

With this option, you can specify the number of recent tweets you want from each member in your selection of timelines. The default is set to 50 of the most recent tweets from each member of the 116th Congress. Be careful with the number of tweets you enter in n_tweets. Twitter limits the number of tweets that you can pull from their API each hour. So, keep in mind that with the default settings, you'd be pulling the 50 most recent tweets from each member of the 16th congress (so over 26,000 tweets if each account has at least 50 tweets on it).

### csvOut Option

This is set to be FALSE by default. This option gives you the ability to download a csv for each Twitter Handle. This is useful if you will be doing any of your analysis somewhere besides R or would like to have CSV files of your results from your API call for exploratory analysis. 
 
## Notes
When Running the commands, you may see a couple of different types of warning messages either stating something to the effect of not finding a page or not having access to the page. This means that these member's twitter handles have changed or have security settings that make it impossible for the API to download t
token <- create_token(heir data.
