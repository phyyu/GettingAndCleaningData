if(!file.exists("data")){
  dir.create("data")
}
fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,destfile="./data/fixedSpeedCamerasBaltimore.csv")

##list.files("./data")
