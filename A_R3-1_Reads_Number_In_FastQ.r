fastq_file <- "/home/Fereshteh/Project1-algorithim/inputs/SRR8185316.fastq"
lines_per_read <- count.fields(fastq_file, sep = "\n")
num_reads <- length(lines_per_read) / 4
cat(paste0("The fastq file has ", num_reads, " reads."))