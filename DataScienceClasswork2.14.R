library(tidyverse)
ca <- read.csv(file = 'ca-educational-attainment-personal-income-2008-2014.csv')
head(ca)
summary(ca)
dim(ca)
str(ca)

na.omit(ca)
ca <- subset(ca,Educational.Attainment != "Children under 15")
ca <- subset(ca,Personal.Income != "No Income")
boxplot(ca$Population.Count, data = ca)

ggplot(data=ca, aes(x=Gender, y=Population.Count)) +   geom_bar(stat="identity", width=0.5) + labs(title = "Population Count by Gender")

ggplot(data=ca, aes(x=Year, y=Population.Count)) +  geom_bar(stat="identity", width=0.5) + labs(title = "Population Count by Year")

ggplot(data=ca, aes(x=Educational.Attainment, y=Population.Count)) +  geom_bar(stat="identity", width=0.5) + labs(title = "Educational Attainment vs Population")

ggplot(data=ca, aes(x=Educational.Attainment, y=Population.Count, group = Age, color = Age)) +  geom_bar(stat="identity", width=0.5) + labs(title = "Educational Attainment by Population and Age Group")