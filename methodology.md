## Methodology

### Research Design
This quantitative study uses time series analysis to:
- Analyze monthly trends in IGR from 2003 to 2023
- Identify seasonal patterns
- Forecast future revenue using ARIMA models

### Data Collection
- **Source**: Government records from KADIRS and other agencies
- **Variables**: Year, Month, Monthly Revenue (₦)
- **Duration**: January 2003 to December 2023
- Data was cleaned, imputed for missing values, and outliers addressed.

### Data Analysis Techniques
- **Trend Analysis**: Line plots for long-term trend visualization
- **Seasonal Decomposition**: STL method to isolate trend, seasonality, and residuals
- **Forecasting**: ARIMA model (based on ACF/PACF), validated using test sets

### Geographic and Climatic Considerations
- Urban LGAs showed stable trends; rural LGAs had seasonal variation
- Climate (e.g. wet/dry seasons) impacted agriculturally dependent regions

### Software Used
- **R Programming** with:
  - `forecast` – ARIMA modeling
  - `ggplot2` – Visualization
  - `tseries` – Stationarity tests and time series utilities

This methodology supports transparent, reproducible, and data-driven forecasting.
