drying_data <- data.frame("Cloth_cat" = c(1, 1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3),
                          "dry_type" = c(1, 1, 1, 2,2,2,3,3,3,4,4,4,1,1,1,2,2,2,3,3,3,4,4,4,1,1,1,2,2,2,3,3,3,4,4,4),
                          "energ_effect"= c(1.157, 1.189, 1.190, 1.236, 1.244, 1.264, 2.140, 2.210, 2.190, 1.620, 1.520, 1.530, 1.418, 1.519, 1.380, 1.446, 1.441, 1.425, 2.117, 2.288, 2.500, 1.719, 1.764, 1.524, 1.360, 1.224, 1.291, 1.333, 1.348, 1.356, 2.180, 2.328, 2.342, 1.571, 1.567, 1.469),
                          "cycle_time" = c(25.83, 26.28, 26.05, 26.61, 27.37, 27.08, 26.52, 28.36, 26.74, 22.21, 20.67, 21.94, 31.26, 33.50, 29.31, 30.25, 30.41, 29.85, 25.61, 30.41, 31.10, 24.62, 24.19, 24.00, 26.13, 23.01, 24.06, 24.73, 25.15, 24.81, 23.76, 24.86, 26.74, 15.80, 17.40, 15.82))
drying_data$dry_type <- factor(drying_data$dry_type, levels = c(1,2,3,4), labels = c("Electr", "Bi-dir", "Gas-Fired", "LPG-Fired"))
drying_data$Cloth_cat <- factor(drying_data$Cloth_cat, levels = c(1, 2, 3), labels = c("Towels", "Jeans", "Thermal Clothing"))
table(drying_data$Cloth_cat, drying_data$dry_type)
if(!require(devtools)) install.packages("devtools")
install.packages("ggpubr")
