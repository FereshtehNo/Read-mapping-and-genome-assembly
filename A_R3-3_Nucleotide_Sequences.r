# Read the fastq file line by line using file to read the file.
data <- readLines("SRR8185316.fastq")

# Initialize a counter to count the subsequence.
count <- 0

# Loop through each line in the file and search for the subsequence. 
for (i in 1:length(data)) {
  if (grepl("TTAAATGGAA", data[i])) {
    count <- count + 1
  }
}

# Print the total count of subsequences 
cat("The subsequence TTAAATGGAA appears", count, "times in the fastq file.")
