# Open the fastq file for reading
con <- file("SRR8185316.fastq", "r")

# Create an empty vector to store the first 4000 lines
first1000 <- character(4000)

# Read the first 4000 lines of the file into the vector
for (i in 1:4000) {
  first1000[i] <- readLines(con, n = 1)
}

# Close the file
close(con)

# Save the first 4000 lines as a new file
writeLines(first1000, "first1000.fastq")
print(first1000)
