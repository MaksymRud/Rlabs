library(ggplot2)

my_data <- read.delim(file.choose())
 
if(any(is.na(my_data$Father))){
  
  print("Середнє")
  mean <- mean(my_data$Father)
  print(mean)
  
  print("Медіана")
  med <- median(my_data$Father)
  print(med)
  
} else{
  
  print("Not a valid data")
  break
  
}
var_ <- var(my_data$Father)
print("Дисперсія", var_)

sd_ <- sd(my_data$Father)
print("Стандартне Відхилення", sd_)

coef_var <- sd_/mean(my_data$Father)
print("Коефіцієнт Варіації", coef_var)

abs_var <- max(my_data$Father) - min(my_data$Father)
print("Розмах варіації", abs_var)

qunant_var <- quantile(my_data$Father)[4] - quantile(my_data$Father)[2]

print("Інтеркванртильний розмах", qunant_var)

ggplot(samp_df) +
  aes(y = Fathers_height) +
  geom_boxplot() +
  coord_flip()











  
