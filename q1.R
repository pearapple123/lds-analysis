################################################################################
# Q1 Which district had the largest percentage of people who travel to work on #
# foot in 2001? Which had the smallest? Does this change in 2011?			   #
################################################################################

source("./cleaneddata.R")

veh <- merge(veh.2001, veh.2011, by=c("geography code", "local authority: \r\ndistrict / unitary", "Region"))

veh$foot.prop.01 <- veh["On foot.x"] * 100 / veh["All Categories of people in employment.x"]
veh$foot.prop.11 <- veh["On foot.y"] * 100 / veh["All Categories of people in employment.y"]

# 29th col is foot.prop.01, 30th is foot.prop.11
v01.q1 <- dplyr::arrange(veh, "foot.prop.01")[c(1,2,29)]
v11.q1 <- dplyr::arrange(veh, "foot.prop.11")[c(1,2,30)]

# Highest and lowest proportions of people walking to work in 2001 and 2011
lowest.prop.01  <- head(v01.q1, 5)
highest.prop.01 <- tail(v01.q1, 5)
lowest.prop.11  <- head(v11.q1, 5)
highest.prop.11 <- tail(v11.q1, 5)
