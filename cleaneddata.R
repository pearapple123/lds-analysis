library(readxl)

veh.2011 <- read_excel("./assets/Large Data Set.xlsx", 2)
veh.2001 <- read_excel("./assets/Large Data Set.xlsx", 3)
age.2011 <- read_excel("./assets/Large Data Set.xlsx", 4)
age.2001 <- read_excel("./assets/Large Data Set.xlsx", 5)

# clean up
veh.2011 <- veh.2011[-c(16)]
veh.2001$"Underground, metro, light rail, tram" <- as.double(veh.2001$"Underground, metro, light rail, tram")

# rename col 3 to "LA" for brevity
colnames(veh.2011)[3] <- 'LA'
colnames(veh.2001)[3] <- 'LA'
colnames(age.2011)[3] <- 'LA'
colnames(age.2001)[3] <- 'LA'
