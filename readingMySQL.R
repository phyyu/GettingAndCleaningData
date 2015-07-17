library(RMySQL)
ucscDb<-dbConnect(MySQL(),user="genome",host="genome-mysql.cse.ucsc.edu")
hg19Db<-dbConnect(MySQL(),user="genome",db="hg19",host="genome-mysql.cse.ucsc.edu")
showAllDb<-dbGetQuery(ucscDb, "show databases;")

allTables_hg19<- dbListTables(hg19Db)

length(allTables_hg19)
allTables_hg19[1:5]

count<- dbGetQuery(hg19Db,"select count(*) from affyU133Plus2")

affyData<-dbReadTable(hg19Db,"affyU133Plus2")
head(affyData)

query <- dbSendQuery(hg19Db, "select * from affyU133Plus2 where misMatches between 1 and 3")
affyMis <- fetch(query); quantile(affyMis$misMatches)

dbClearResult(query)
dbDisconnect(ucscDb)