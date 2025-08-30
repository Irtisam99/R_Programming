# WEB SCRAPING 

if (!require(rvest)) {
  install.packages("rvest")
  library(rvest)
} else {
  library(rvest)
}

#Step-1  : Reading the HTML content

url<-"https://www.imdb.com/chart/top/"

# Reading the HTML from the url
webpage<-read_html(url)


#Step-2 Extracting the data elements

library(stringr)
#Extracting Links
links_raw <- webpage %>%
  html_elements("a.ipc-title-link-wrapper") %>%
  html_attr("href")

# Keep only valid links (remove NA and the first "IMDb Charts")
links <- links_raw[1:25]

# Prepend full domain
full_links <- paste0("https://www.imdb.com", links)

print(full_links)

# Extracting the titles
titles_raw<-webpage %>%
  html_elements("h3.ipc-title__text") %>%
  html_text2()


titles<-titles_raw[2:26]
print(titles)


# Extract the movie years 

years<-webpage%>%
  html_elements(".cli-title-metadata-item:nth-child(1)") %>%
  html_text2()

print(years)
  
ratings<-webpage%>%
  html_elements(".ipc-rating-star--rating") %>%
  html_text2()
print(ratings)


# Combine into a data frame

movies_df<-data.frame(
  Rank=1:25,
  Title=titles,
  Year=as.integer(years),
  Ratings=as.numeric(ratings),
  links= full_links
)


head(movies_df)
View(movies_df)

# Saving to a excel file
write.csv(movies_df, "IMDB.csv", row.names = FALSE)
