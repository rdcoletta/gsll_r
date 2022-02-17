# load this file with genotypic information
markers <- read.table("data/markers_genotypes.txt", header = TRUE, sep = "\t")

# this file only contain markers with AA, AT or TT genotypes
# any missing data is coded as NN

# the goal of this script is to transform the genotypes into a numeric format
# where TT is transformed into 2, AT into 1, AA into 0, and NN into NA

# the code below does this task, but it's very slow as it takes ~2.5 mins to run

markers_num <- markers
for (row in 1:NROW(markers_num)) {

  markers_num[row, which(markers_num[row, ] == "NN")] <- NA
  markers_num[row, which(markers_num[row, ] == "AA")] <- 0
  markers_num[row, which(markers_num[row, ] == "AT")]  <- 1
  markers_num[row, which(markers_num[row, ] == "TA")]  <- 1
  markers_num[row, which(markers_num[row, ] == "TT")]  <- 2

}

# your goal is to speed up this code

# people can do that in many different ways, but I usually choose one of the following:
#   1. apply() function in R
#   2. run things in parallel with the foreach() function of 'doParallel' package

# if you are running this on Rstudio Cloud, then option 2 is not really an option
# as you cannot use multiple processors in the basic Rstudio Cloud plan

# if you choose option 1, there's extra info about apply() functions there
# if you choose option 2, you'll have to google :)

# finally, prove to me that your code runs considerably faster than ~2.5 min
