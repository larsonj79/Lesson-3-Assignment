
# Lesson 3 Assignment - Introduction to the Tidyverse

# Your assignment is to write the commands instructed in the comments below. To run your
# commands, simply hit Ctrl+Enter (command+return on a MAC) when the cursor is on that 
# command line. You can also type commands directly into the Console below, but you must
# save them in this file for your assignment.


# The data we'll be working with comes from a company that sells furniture all over the 
# country, both on its website and through Amazon. The dataset fexp contains data on its 
# advertising and sales from a three-week period, from November 4 to November 24, 2019.
# The data should be loaded in the Environment to the right. If it is not, run the six 
# lines of code below to read in the data and format it as a data frame.

# Do not change these six lines or GradeScope will not work
library(readxl)
library(dplyr)
library(ggplot2)
fexp <- read_excel("FieldExperiment.xlsx")
fexp <- data.frame(fexp)
fexp$DATE <- as.Date(fexp$DATE)
fexp$WEEK <- factor(fexp$WEEK)

#1. Take a look at the structure of the data.


# Tidyverse Verb Practice
# We will first get to the know the larger regions in the dataset (called DMA for 
# designated market area). 

#2. Create a report called rep1 that shows only the first day in the dataset (2019-11-04) 
# for regions that have a population (POPN) greater than 2 million.


#3. Create a report called rep1b that shows the same data as in rep1 but this time 
# sorted by population (POPN) in descending order.


#We want to calculate the total number of impressions and clicks that occurred on 
# the first day in each of the ten regions with the largest population. 

#4. Add to the fexp data frame the variable Tot_Imp, which should be a sum of 
# GOOGLE_PROSPECTING_IMPRESSIONS, GOOGLE_RETARGETING_IMPRESSIONS, 
# GOOGLE_BRAND_IMPRESSIONS, FACEBOOK_PROSPECTING_IMPRESSIONS, 
# and FACEBOOK_RETARGETING_IMPRESSIONS. Also add the variable Tot_Click, which should 
# be a sum of GOOGLE_PROSPECTING_CLICKS, GOOGLE_RETARGETING_CLICKS, 
# GOOGLE_BRAND_CLICKS, FACEBOOK_PROSPECTING_CLICKS, and FACEBOOK_RETARGETING_CLICKS.


#5. Now that you have total impressions and clicks, you can calculate the overall 
# click-through rate for each region. (Click-through rate is the percentage of impressions 
# that led to clicks.) Add to the fexp data frame the variable CTR that shows each region's 
# click-through rate. Multiply by 100 so it is displayed in percent. Sort this data by 
# click-through rate in descending order.


#6. Create a report called rep2 that reports the total website sales (SHOPIFY_US_SALES) and 
# Amazon sales (AMAZON_US_SALES) of the 5 highest-population DMAs. The report should label 
# them WebSales and AmznSales, respectively. The final output should look like the file
# TotalSalesReport.png. (Click the file in the Files pane to see it.)


#7. Create a report called rep2b that reports the same data as in rep2, but this time the 
# totals should be grouped by week. The report should look like the file TotalSalesbyWeek.png.


#8. Create that same report yet again, but this time group by both week and region (DMA_NAME). 
# Call it rep2c. The first ten rows should look like the file TotalSalesbyWeekandRegion.png.


#9. To that report (rep2c), add a column called PercAmzn that shows the percentage of sales 
# that come from Amazon, like in the file TotalSalesGroupedPercAmazon.png.


#10. Create a report called rep2d that reports the same data as in rep2c, sorted by PercAmzn 
# in descending order, but don't mix up the weeks. That is, keep the weeks in the same order 
# (58, then 59, then 60), but within each week, PercAmzn should be in descending order. 
# (HINT: If you including two variables within the *arrange()* command, separated by a comma, 
# it will sort the second variable within levels of the first variable.)


# Congratulations! You just used all five Tidyverse verbs in one code chunk.


# Tidyverse Plot Practice

# We want to see how sales on the website are related to Amazon sales. 

#11. Using fexp, the original data, create a scatter plot with Amazon Sales on the x-axis 
# and website sales on the y-axis.


# The outliers obscure the real relationship. 

#12. Create the same plot, but put both axes on a log scale. 
# (https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-visualization?ex=7)


#The log of 0 is negative infinity, so R gave us warnings. 

#13. To get rid of (most of) these problematic zeroes, we'll have to alter the fexp data. 
# Filter out any DMA's with populations under 500,000. Instead of plotting daily sales from 
# each region, plot the weekly sales of each region. (In other words, start with the code 
# from question 8, but change the filter number to 500000. Then pipe that data into the 
# *ggplot()* command.) Keep both axes on the log scale.


#14. Create the same plot, but color the dots by week. 
# (https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-visualization?ex=9)


#15. Let's take a look at how sales are evolving over time. Create a line plot of daily 
# website sales in New York. Give it the title "Daily Website Sales - New York".


#16. Create that same line plot, but show the daily website sales of the 5 most-populous 
# DMAs, with a different color for each DMA (use DMA_NAME).


#17. Now let's look at daily sales of the top 20 DMAs (POPN > 1,300,000). This plot will 
# get too messy, so create a different plot for each DMA (use DMA_NAME). 
# (https://campus.datacamp.com/courses/introduction-to-the-tidyverse/data-visualization?ex=13)


#18. Now let's compare total sales by DMA. Create a bar plot showing total website sales 
# (across all three weeks) for the top 20 DMAs.


#19. Let's examine the distribution of total website sales across all 210 DMAs. Create a 
# histogram of the total website sales of each DMA.


#20. Create that same histogram, but this time apply a log scale to the x-axis.


#21. Now we'd like to take a look at the distribution of daily Amazon sales for the top 8 
# DMAs (POPN > 2,400,000). Create boxplots showing the distribution of daily sales for the 
# top 8 DMAs.
