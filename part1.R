# Load house_prices.rda in R and perform the followings:
# (a) Use facet_wrap to draw line plots to represent the trend for house_price_index over years for each state. .
#  Please have three ticks on the x axis which are for years 1980, 2000, and 2020. Since you have limited space your
#  labels can be ’80, ’00, and ’20 for these ticks.
# (b) Use gather() function from tidyr to reshape your data in a way that it will have measure and value columns
#  for house_price_index and unemploy_perc, respectively, in two columns. You should leave out remaining
#  attributes by using ”-” in front them inside the function. Then, direct the output to a new data frame called
#  house_reshaped Please refer to examples we did in class.
# (c) Use house_reshaped to replicate the graph in 2a with two lines where each represents house_price_index
#  and unemploy_perc over the years for each state. Once you have the chart, please comment on it as to whether
#  it’s a good graph to present those two pieces of information.
# (d) When you achieve the goals above, please create a R markdown file and create an HTML page which has your
#  codes and charts including your comments.

library(ggplot2)
library(tidyr)
library(dplyr)

#load file
load(file='/home/rootuser/Downloads/house_prices.rda')

#send data to df
df <- house_prices %>% select(date, state, house_price_index)

#plot
ggplot(data=df) + geom_line(aes(x=date, y=house_price_index), color = "#09557f") + labs(x = "Date", y = "House Price Index", title = "HPI by State") +
  scale_x_date(minor_breaks = as.Date(c("1980-01-01", "2000-01-01", "2020-01-01")))
               