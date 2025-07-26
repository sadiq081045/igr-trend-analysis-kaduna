# igr-trend-analysis-kaduna
Time series analysis of internally generated revenue (IGR) in Kaduna State (2003–2023), with ARIMA forecasting and seasonal decomposition using R.
# igr-trend-analysis-kaduna

**Time series analysis of internally generated revenue (IGR) in Kaduna State (2003–2023), with ARIMA forecasting and seasonal decomposition using R.**

---

## 📌 Objectives

- Analyze the monthly trend of IGR over the past two decades.  
- Identify seasonal patterns in revenue collection.  
- Forecast future revenue trends using time series models (ARIMA).

See [`objectives.md`](objectives.md) for full breakdown.

---

## 📊 Dataset

- **Source**: Kaduna State Internal Revenue Service (KADIRS)
- **Time Range**: January 2003 – December 2023
- **File**: [`kaduna_igr_2003_2023.csv`](kaduna_igr_2003_2023.csv)

---

## 📈 Methodology

- **Trend Analysis**: Monthly line plots to observe long-term growth and fluctuations.  
- **Seasonal Decomposition**: STL method to separate trend, seasonality, and residuals.  
- **Forecasting**: ARIMA model selected based on ACF/PACF diagnostics.  
- **Tools Used**:  
  - `forecast` – Time series modeling  
  - `ggplot2` – Visualizations  
  - `tseries` – Statistical tests and diagnostics  

Details in [`methodology.md`](methodology.md)

---

## 🔬 Script & Outputs

- R Code: [`igr_forecasting_analysis.R`](igr_forecasting_analysis.R)  
- Charts & Plots: [`Outputs .docx`](Outputs%20.docx)

---

## 📌 Summary of Findings

- Long-term growth observed from 2003–2023, with volatility increasing after 2015.  
- January consistently records highest revenue; mid-year months (e.g., June–July) show declines.  
- ARIMA forecast for 2024–2025 indicates continued growth with some seasonal variation.  

See: [`findings-summary.md`](findings-summary.md)

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).
