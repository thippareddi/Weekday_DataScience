
install.packages('UsingR')
install.packages('timeSeries')
library(UsingR)
library(timeSeries)



?timeseries()



#Assigning a list variable
whale = c(74, 122, 235, 111, 292, 111, 211, 133, 156, 79)

# Computing basic statistics 
whale_mean = mean(whale)
whale_mean
Trimed_mean = mean(whale,trim=1/10) # trim 1/10 off top and bottom 

#Various output options
print(paste0("Full Mean:",whale_mean))
print(paste0("Trimed Mean:",Trimed_mean))
sprintf("Full Mean: %s", whale_mean)
sprintf("Trimed Mean: %s", Trimed_mean)
paste("Full Mean is:", whale_mean)

median(whale)
summary(whale)
var(whale)
?var()
?std()

std(whale)
sqrt(var(whale))
sqrt( sum( (whale - mean(whale))^2 /(length(whale)-1)))
#Lets make a function of SD
std_dev = function(x) sqrt(var(x))
std(whale)
std(9999,87898,879876)
sorted_whale = sort(whale)

quantile(whale,.25) 
quantile(whale,c(.25,.75)) # two values of p at once 
IQR(whale)

miles = c(65311, 65624, 65908, 66219, 66499, 66821, 67145, 67447)
x = diff(miles)
?data()
data()
data_Table = data(movies) 
str(data_Table)
?str
names(movies)
head(data_Table)
head(movies)
attach(movies)
head(movies)
boxplot(current,main="current receipts",horizontal=TRUE)
boxplot(gross,main="gross receipts",horizontal=TRUE)

#Categorical data is data that records categories.
#Examples could be, a survey that records whether a person
#is for or against a particular opinion.

#A survey asks people if they smoke or not. The data is
#Yes, No, No, Yes, Yes
#We can enter this into R with the c() command, 
# and summarize with the table command as follows

Smoking_Survey=c("Yes","No","No","Yes","Yes") 
table(Smoking_Survey)
factor(Smoking_Survey) # notice levels are printed.

#Let's plot some histograms

beer = scan() 
barplot(beer) # this isn't correct 
barplot(table(beer)) # Yes, call with summarized data
barplot(table(beer)/length(beer)) # divide by n for proportion
table(beer)/length(beer) # Lets start putting up a un-grouped FD
beer.counts = table(beer) # store the table result 
pie(beer.counts) # first pie -- kind of dull
names(beer.counts) = c("Domestic\n can","Domestic\n bottle", "Microbrew","Import") # give names
pie(beer.counts) # prints out names
pie(beer.counts,col=c("purple","green2","cyan","white")) # now with colors

## Lets draw a histogram now

x= c(29.6, 28.2, 19.6, 13.7, 13.0, 7.8, 3.4, 2.0, 1.9, 1.0,
     0.7, 0.4, 0.4, 0.3, 0.3, 0.3, 0.3, 0.3, 0.2, 0.2, 0.2,
     0.1, 0.1, 0.1, 0.1, 0.1)

hist(x) # frequencies
hist(x,probability=TRUE) # proportions (or probabilities) 
hist(x,breaks=10) # 10 breaks, or just hist(x,10) 
hist(x,breaks=c(0,1,2,3,4,5,10,20,max(x))) # specify break points

Histogram_data = c(.314,.289,.282,.279,.275,.267,.266,.265,
                   .256,.250,.249,.211,.161)
tmp = hist(Histogram_data) # store the results
lines(c(min(tmp$breaks),tmp$mids,max(tmp$breaks)),c(0,tmp$counts,0),type="l")


?faithful
data(faithful)
attach(faithful) # make eruptions visible
hist(eruptions,15,prob=T) # proportions, not frequencies
lines(density(eruptions)) # lines makes a curve, default bandwidth
lines(density(eruptions,bw="SJ"),col="red") # Use SJ bandwidth, in red

data_table <- read.csv("C:/my docu/myfile.csv")
attach(data_table)
Age_col = data_table$Age






