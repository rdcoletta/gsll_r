#### extra help ----

# run following line for extra help I wrote for you
source("gsll_r-master/scripts/extra_help.R")




#### data wrangling ----

# read table with summary of marker data

# keep only columns of interest: site name, chromosome, marker position,
# minor allele frequency, minor allele proportion, proportion missing and
# proportion heterozygous

# create a new data frame with only markers that are deletions
# tip: all deletions have "del" in their name

# if you need extra help, uncomment and run the lines below
#helpReadingFile()
#helpFilteringMarkers()




#### data analysis ----

# calculate the mean missing data (or other marker data) per chromosome
# do this for all markers and for deletions only
# tip: try a for loop!

# print what type of data you chose to calculate the mean and its respective values
# (try to round the missing data values as well to make them pretty)

# challenge -- if there's no marker in that chromosome, print the following:
# "no marker in chromosome (...add number of chromosome here...)"

# if you need extra help, uncomment and run the lines below
#helpForLoop()
#helpForLoopChallenge()




#### data visualization ----

# we will make plots with the "ggplot2" package, so install and load it
install.packages("ggplot2")
library(ggplot2)

# plot histogram of missing data

# plot distribution of markers per chromosome

# plot scatterplot of heterozygoity on the x axis and allele proportion on the y axis
# color each marker according to the proportion of missing data
