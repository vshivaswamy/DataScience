download_pdf <- function(){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FPUMSDataDict06.pdf"
  f <- file.path(getwd(), "PUMSDataDict06.pdf")
  download.file(url, f, mode = "wb")
}

download_csv <- function(){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
  f <- file.path(getwd(), "ss06hid.csv")
  download.file(url, f)

}


calculate <- function(){

  dt <- data.table(read.csv("ss06hid.csv"))
  setkey(dt, VAL)
  dt[, .N, key(dt)]
}

question3_dowload <- function(){
    #if (!file.exists("data")) {
    #  dir.create("data")
    #}
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
    #download.file(fileUrl, destfile = "gas.xlsx")
    dateDownloaded <- date()
    
    f <- file.path(getwd(), "DATA.gov_NGAP.xlsx")
    download.file(fileUrl, f, mode = "wb")
}

calculate_q3 <- function(){
    library(xlsx)
    rows = 18 : 23
    cols = 7 : 15
    #dat <- read.xlsx("gas.xlsx", f,1, colIndex = colIndex, header = TRUE)
    dat <- read.xlsx("DATA.gov_NGAP.xlsx", 1, colIndex = cols, rowIndex = rows)
    sum(dat$Zip * dat$Ext, na.rm=T)
}

question4_dowload <- function(){
  library(XML)
  fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml"
  doc <- xmlInternalTreeParse(fileUrl)
  rootNode <- xmlRoot(doc)
  names(rootNode)
  zipcode <- xpathSApply(rootNode, "//zipcode", xmlValue)
  table(zipcode == 21231)
}


