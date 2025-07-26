# Load the data
data <- read.csv("C:\\Users\\hp\\Documents\\MONTHLY COLLECTIONS FROM 2003-2023 (version 1).csv", stringsAsFactors = FALSE)

# Convert MONTHS to numbers (JANUARY = 1, FEBRUARY = 2, etc.)
month_map <- c("JANUARY"=1, "FEBRUARY"=2, "MARCH"=3, "APRIL"=4, "MAY"=5, "JUNE"=6, 
               "JULY"=7, "AUGUST"=8, "SEPTEMBER"=9, "OCTOBER"=10, "NOVEMBER"=11, "DECEMBER"=12)
data$MONTHS <- month_map[toupper(data$MONTHS)]  # Convert to uppercase for safety

# Fill missing YEAR values with previous year
data$YEAR <- zoo::na.locf(data$YEAR)  # Install 'zoo' package if needed

# Convert MONTHLY.TOTALS to numeric (removing commas & spaces)
data$MONTHLY.TOTALS <- as.numeric(gsub(",", "", data$MONTHLY.TOTALS))

# Remove any remaining NA values
data <- na.omit(data)

# Check structure again
str(data)



# Plot Revenue Over Time
plot(data$YEAR + (data$MONTHS - 1) / 12, data$MONTHLY.TOTALS, type = "l",
     main = "Trend of Internally Generated Revenue (2003-2023)",
     xlab = "Year", ylab = "Monthly Revenue", col = "blue")


# Average revenue for each month
seasonal_pattern <- tapply(data$MONTHLY.TOTALS, data$MONTHS, mean)

# Bar plot of seasonality
barplot(seasonal_pattern, main = "Average Revenue by Month",
        xlab = "Month", ylab = "Average Revenue", col = "red")

# Fit a Linear Regression Model
model <- lm(MONTHLY.TOTALS ~ YEAR + MONTHS, data = data)

# Generate Future Data
future_years <- rep(2024:2025, each = 12)
future_months <- rep(1:12, times = 2)

# Predict Revenue
predictions <- predict(model, newdata = data.frame(YEAR = future_years, MONTHS = future_months))

# Print Forecasted Values
print(data.frame(Year = future_years, Month = future_months, Predicted_Revenue = predictions))
