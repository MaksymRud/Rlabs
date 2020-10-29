data_crime <- read.csv("Europe/crime_2016.csv")
data_gdp <- read.csv("Europe/gdp_2016.csv")
data_life_expectancy <- read.csv("Europe/life_expectancy_2016.csv")
data_low_savings <- read.csv("Europe/low_savings_2016.csv")
data_work_hours <-read.csv("Europe/work_hours_2016.csv")

total < data.frame()

l <- list(data_crime,
          data_gdp,
          data_life_expectancy,
          data_low_savings, 
          data_work_hours)

