library(collapsibleTree)
library(readr)
library(htmlwidgets)


######## useful to visualize hierarchical data #######3

products <- read_csv("dendrogram/Files/Products.csv")
View(products)

region <- read_csv("dendrogram/Files/Region.csv")
View(region)


r <- collapsibleTree( region, c("L2","L3","L4"))
r

p <- collapsibleTree( products, c("L2","L3","L4"))
p

####### save charts
saveWidget(p, file=paste0( "dendrogram/Charts/", "/HtmlWidget/dendrogram_interactive.html"))
