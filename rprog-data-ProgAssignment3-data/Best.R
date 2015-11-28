best <- function (state,outcome){
  
allData <- read.csv("outcome-of-care-measures.csv")
  stateData <- data.frame()
  stateData <- stateData <- allData[allData$State =="state"]
  
  dataOutcome <- if(outcome =="heart attack") {11}
  dataOutcome <- if(outcome =="heart failure") {17}
  dataOutcome <- if(outcome == "pneumonia") {27}
  
  dataLength <- length(stateData)
  bestHospital <- data.frame()
  testVar <- 99999999999999
  
  
  for (i in dataLength){
    if(stateData[i,dataOutcome]<testVar){
      testVar <- stateData[i,dataOutcome] 
      bestHospital <- stateData[i,]}
    
  }
    



  bestHospital[,2]
}