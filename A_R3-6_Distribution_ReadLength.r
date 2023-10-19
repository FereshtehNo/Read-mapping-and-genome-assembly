# open file connection
con <- file("SRR8185316.fastq", "r")

# initialize variables
read_lengths <- c()

# loop through every 4 lines (reads) in the file
while(length(line1 <- readLines(con, n = 1)) > 0) {
  # read second line (sequence)
  line2 <- readLines(con, n = 1)
  # extract read length
  len <- nchar(line2)
  # add read length to vector
  read_lengths <- c(read_lengths, len)
  # skip next two lines (quality scores)
  readLines(con, n = 2)
}

# close file connection
close(con)
dens <- density(read_lengths)
# plot density plot
plot(dens, type = "l", xlab = "Read Length", ylab = "Density")

