best <- function (state, outcome){
  
allData <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
  stateData <- data.frame()
  stateData <- allData[allData$State == state, ]
  
   if(outcome%in%"heart attack" == TRUE) {dataOutcome <- 11}
   if(outcome%in%"heart failure"== TRUE) {dataOutcome <-17}
   if(outcome%in%"pneumonia"== TRUE) {dataOutcome <-23}
  
  minNumber <- which.min(stateData[ ,dataOutcome])
  stateData[minNumber, 2]

 
}