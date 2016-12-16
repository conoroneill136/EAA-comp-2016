#Setting the working directory to where my results where stored
setwd ("C:\\Users\\mullally\\OneDrive\\YEAR4\\EAA\\CA2")

#reading in the results table from the directory into "prefData"
prefData <- read.table("results.dat", header=TRUE)
summary(prefData)

#Utilization of Resource - we subtract idle from 100 to get Ui
#then divide by 100 to get Ui in decimal as Ui canot be greater than 1
Ui <- (100 - prefData$IDLE) / 100
summary(Ui)
#opens new window for the graph
dev.new()
#command for Ui VS N graph
plot(prefData$N,Ui, xlab="Number of Users",
	ylab="Utilization of Resource", main="Ui Vs N")

#throughput is 10 from the bash script	timeout set T= 10
#needed for service Demand	
X0 <- prefData$C0 / 10
summary(X0)
#opens new window for the graph
dev.new()
plot(prefData$N,X0, xlab="Number of Users",
	ylab="through put of system", main="X0 Vs N")


#service demand
Di <- Ui/X0
summary(Di)
#opens new window for the graph
dev.new()
#command for the creation of graph for Di Vs N
plot(prefData$N,Di, xlab="Number of Users",
		ylab="Demand of Resource", main="Di Vs N")

#number of users		
N <- prefData$N

		
#littles law when rearranged
R <- N / X0
summary(R)

#command for the creation of graph for R Vs N
#opens new window for the graph
dev.new()
plot(prefData$N,R, xlab="Number of Users",
		ylab="Response Time (Seconds)", main="R Vs N")
		