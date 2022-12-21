# check.names=FALSE prevents full stops replacing spaces in colnames
veh.2011 <- read.csv("./assets/veh2011.csv", check.names=FALSE)
veh.2001 <- read.csv("./assets/veh2001.csv", check.names=FALSE)
age.2011 <- read.csv("./assets/age2011.csv", check.names=FALSE)
age.2001 <- read.csv("./assets/age2001.csv", check.names=FALSE)

# clean up
veh.2001$"Underground, metro, light rail, tram" <- as.double(veh.2001$"Underground, metro, light rail, tram")
