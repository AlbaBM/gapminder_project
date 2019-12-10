
#Load dataframe
gapminder <- read.csv("~/Desktop/gapminder-project/data/gapminder_data.csv")

#Explore the datasate
str(gapminder)

#Subset into smaller datasets 
gapminder_se_asia.csv <- gapminder[which(gapminder$country %in% c("Thailand","Japan","India","Vietnam","China")),]
gapminder_2007.csv <- gapminder[which(gapminder$year == 2007),]

#Export datasets in csv into new folder
mkdir processed-data #in terminal 
write.csv(gapminder_se_asia.csv, "~/Desktop/gapminder-project/processed-data/gapminder_se_asia.csv", row.names = FALSE)
write.csv(gapminder_2007.csv, "~/Desktop/gapminder-project/processed-data/gapminder_2007.csv", row.names = FALSE)

