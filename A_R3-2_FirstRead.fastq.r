# Specify the filepath of the fastq file
fastq_file <- "/home/Fereshteh/Project1-algorithim/inputs/SRR8185316.fastq"

# Open fastq file connection
fastq_filecon <- file(fastq_file, "r")

# Read the first line to get the identifier
first_line <- readLines(fastq_filecon, n = 1)
first_read_id <- first_line

# Read the second line to get the sequence
second_line <- readLines(fastq_filecon, n = 1)
first_read_seq <- second_line

# Skip the third line (the "+") and read the fourth line to get the quality scores
readLines(fastq_filecon, n = 1)
fourth_line <- readLines(fastq_filecon, n = 1)
first_read_quality <- fourth_line

# Close the fastq file connection
close(fastq_filecon)

# Print the identifier, quality, and sequence of the first read
cat("Identifier:", first_read_id, "\n")
cat("Quality:", first_read_quality, "\n")
cat("Sequence:", first_read_seq, "\n")