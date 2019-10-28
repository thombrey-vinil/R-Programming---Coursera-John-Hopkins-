
complete <- function(directory, id = 1:332)
{
  setwd(directory)
  file_names <- list.files(directory,full.names = TRUE)
  
  sample_data <- data.frame()
  
  for(i in id)
  {
    files <- read.csv(file_names[i])
    comp_cases <- sum(complete.cases(files))
    temp <- data.frame(i,comp_cases)
    sample_data <- rbind(sample_data,temp)
  }
  
  colnames(sample_data) <- c("id","comp_cases")
  sample_data
}