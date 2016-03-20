#fileUrl <- "https://data.baltimorecity.gov/api/views/k5ry-ef3g/rows.csv?accessType=DOWNLOAD"
#download.file(fileUrl, destfile = "restaurants.csv")
#restData <- read.csv("restaurants.csv")
#restData$nearMe=restData$neighborhood %in% c("Roland Park", "Homeland")

download_housing <- function(){
fileUrl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv'
download.file(fileUrl, destfile = "housing.csv")
read.csv("housing.csv")
}

download_gdp <- function(){
  fileUrl = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
  download.file(fileUrl, destfile = "gdp.csv")
  read.csv("gdp.csv")
}

download_img <- function(){
  fileurl2 = 'https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg'
  download.file(fileurl2, destfile = "jeff.jpg")
  readJPEG("jeff.jpg",native=TRUE)
}


#agricultureLogical = housing_data$ACR == 3 & housing_data$AGS == 6
#head(which(agricultureLogical), 3)

download_edu <- function(){
  fileurl3a = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv'
  fileurl3b = 'https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv'
  download.file(fileurl3a, destfile = "gdp.csv" , mode = "wb")
  download.file(fileurl3b, destfile = "edstats_country.csv", mode = "wb")
}