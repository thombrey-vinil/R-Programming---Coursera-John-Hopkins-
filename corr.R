corr <- function(directory, threshold = 0)
  
{
  setwd(directory)
  file_names <- list.files(directory, full.names = TRUE)
  sample_data <- numeric()
  for (i in 1:length(file_names))
  {
    temp <- read.csv(file_names[i])
    comp_cases <- sum(complete.cases(temp))
    
    if (comp_cases > threshold)
    {
      sample_data <- c(sample_data, cor(temp$sulfate, temp$nitrate, use = "complete.obs"))
    }
  }
  sample_data  
}
