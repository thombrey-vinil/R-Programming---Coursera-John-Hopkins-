
pollutantmean <- function(directory,pollutant, id=1:332)
{
  setwd(directory)
  file_names <- list.files(directory,full.names = TRUE)
  pollutant_data <- vector("numeric") #3 create an empty vector and use for look to fill in the data
  
  for(i in 1:id)
  {
    data <- read.csv(file_names[i])
    pollutant_data <- c(pollutant_data, data[,pollutant])
  }
  
  mean(pollutant_data, na.rm = TRUE)
  
}