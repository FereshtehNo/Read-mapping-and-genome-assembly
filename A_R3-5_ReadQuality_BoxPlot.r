# Open the file in read mode
file_con <- file("SRR8185316.fastq", "r")

scores_list <- list()
count= 1


while (length(line <- readLines(file_con, n = 4)) == 4) {
  quality_score <- as.integer(charToRaw(line[[4]])) - 33
  scores_list[[length(scores_list)+1]] <- quality_score
  count= count+1
  print(count)
  
  if (count>100000)
  break
  
  }
}

mat<- do.call(rbind, scores_list)

boxplot(mat, main= "The result of  the quality scores are here", xlab = "Bases", ylab = "Quality Score", outline= FALSE)
close(file_con)