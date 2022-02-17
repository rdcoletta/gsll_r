helpReadingFile <- function() {
  cat("
There are many functions that does that, but the most popular is probably
the 'read.table()' function. Type '?read.table' on your R console to see
all the arguments it can take

The most basic arguments are 'file' (the name of the file you want to open),
'header' (if you want to read the first row of your table as header; TRUE or
FALSE values only) and 'sep' (the character separating columns in your dataset;
'\\t' and ',' are the most common)

Don't forget to assign the function to a variable, like:
    my_data <- read.table(...)

If you get an error saying R can't find the file but you know it's there:
  - Check your working directory with 'getwd()' and make sure you are where you
    think you are. If not, adjust with 'setwd()'. More info about working
    directories in the workshop slides
  - Check for typos :)

"
  )
}

helpFilteringMarkers <- function() {
  cat("
There are many ways to do that, but because we know all deletions have 'del' in
their name, the quickest way I can think of is to use the 'grep()' function.
Type '?grep' on your R console to for detailed info

Basically, 'grep()' will try to find a certain 'pattern' in each element of a
vector (provided in the argument 'x'). If it's successfuly, 'grep()' will return
another vector with the position of each element that has a match. As an example,
try running the following lines of code and check their results:

fruits <- c('apples', 'bananas', 'pineapples')
grep('apple', fruits)
fruits[grep('apple', fruits)]

"
  )
}

helpForLoop <- function() {
  cat("
You can create a 'for' loop to go through one chromosome at a time. In other words,
at each iteration, you subset the data frame to have only the respective chromosome
and then do your calculations on that subset

Make sure to create a new variable for this subset (i.e., don't overwrite your
variable containing the full dataset)

You can use the 'print()' or 'cat()' function to print the missing data at each
iteration of your loop. Run the commands below and pay attention on how they
take arguments and how they output their message:

plant <- 'corn'
print(c('Best plant is:', plant))
cat('Best plant is', plant, '\n')

"
  )
}

helpForLoopChallenge <- function() {
  cat("
Use the 'if' statement to change what you print based on a certain codition.
The condition for this particular example is to check whether the filtered
dataset has any rows (i.e., if there's no marker in a particular chromosome,
then R will return a dataset with zero rows). Now google the rest :)

"
  )
}
