library(XML)
fileUrl <- "http://www.w3schools.com/xml/simple.xml"
doc <- xmlTreeParse(fileUrl, useInternalNodes=TRUE)
rootNode <-xmlRoot(doc)
xmlName(rootNode)

##rootNode[[1]]

xpathSApply(rootNode,"//name",xmlValue)

xpathSApply(rootNode, "//price",xmlValue)
