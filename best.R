best <- function(state, outcome) {
	states <- read.csv("hospital-data.csv", colClasses = "character")
	outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
	if(is.na(state) | !any(states[,"State"] == state)){
		stop("invalid state")
	}
	if(is.na(outcome) | !any(c(11, 23, 17) == returnNumberOutcome(outcome))){
		stop("Invalid outcome")
	}

	numberOutcome <- returnNumberOutcome(outcome)
	## Outcomes by State
	outcomeByStates <- split(outcomes, outcomes[,7])

	## Considerando o total
	##saomenores <- as.numeric(outcome[,11]) ==  min(as.numeric(outcome[,11]))

	##pega somente os de AL 
	somenteEstado <- outcomeByStates[[state]]

	somenteNomesEstado <- somenteEstado[[2]][!is.na(as.numeric(somenteEstado[[numberOutcome]]))]
	somenteOutcomeEstado <- as.numeric(somenteEstado[[numberOutcome]][!is.na(as.numeric(somenteEstado[[numberOutcome]]))])
	

	saomenores <- somenteOutcomeEstado ==  min(somenteOutcomeEstado)
	sortedResults <- sort(somenteNomesEstado[saomenores])
	sortedResults[1]

## Read outcome data
## Check that state and outcome are valid
## Return hospital name in that state with lowest 30-day death
## rate
#summary(outcome)


}

returnNumberOutcome <- function(outcomeName){
	retorno <- 0
	if(outcomeName == "heart attack"){
		retorno <- 11
	}
	if(outcomeName == "pneumonia"){
		retorno <- 23
	}
	if(outcomeName == "heart failure"){
		retorno <- 17
	}
	retorno
}


rankhospital <- function(state, outcome, num = "best") {
## Read outcome data
## Check that state and outcome are valid
## Return hospital name in that state with the given rank
## 30-day death rate

	states <- read.csv("hospital-data.csv", colClasses = "character")
	outcomes <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
	if(is.na(state) | !any(states[,"State"] == state)){
		stop("invalid state")
	}
	if(is.na(outcome) | !any(c(11, 23, 17) == returnNumberOutcome(outcome))){
		stop("Invalid outcome")
	}

	numberOutcome <- returnNumberOutcome(outcome)
	## Outcomes by State
	outcomeByStates <- split(outcomes, outcomes[,7])

	## Considerando o total
	##saomenores <- as.numeric(outcome[,11]) ==  min(as.numeric(outcome[,11]))

	##pega somente os de AL 
	somenteEstado <- outcomeByStates[[state]]
	somenteNomesEstado <- somenteEstado[[2]][!is.na(as.numeric(somenteEstado[[numberOutcome]]))]
	somenteOutcomeEstado <- as.numeric(somenteEstado[[numberOutcome]][!is.na(as.numeric(somenteEstado[[numberOutcome]]))])
	

	saomenores <- somenteOutcomeEstado ==  min(somenteOutcomeEstado)
	sortedResults <- sort(somenteNomesEstado[saomenores])
	sortedResults[1]

}


rankall <- function(outcome, num = "best") {
## Read outcome data
## Check that state and outcome are valid
## For each state, find the hospital of the given rank
## Return a data frame with the hospital names and the
## (abbreviated) state name
}
