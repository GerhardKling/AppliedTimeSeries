# Applied Time Series
This repository contains material (data, code) for the Applied Time Series course on YUNIKARN. The full course is available for USD 19.99 on [Udemy](https://www.udemy.com/course/applied-time-series-using-stata/learn/lecture/38500386?referralCode=BD2C5527F49135B8A71D#overview)) The course covers the following topics:
- Unit 0: Mathematical toolkit
- Unit 1: Time series analysis and forecasting
- Unit 2: ARIMA and seasonality
- Unit 3: Intervention analysis
- Unit 4: Vector autoregression (VAR)
- Unit 5: Cointegration and VECM
- Unit 6: Modelling conditional volatility
- Unit 7: Structural breaks
- Unit 8: Panel VAR and cointegration

# V1: Applied Time Series: Course Overview
This video introduces the playlist "Applied Time Series", which covers deterministic time series models, stochastic processes, ARIMA, VAR, and structural breaks among other topics. We briefly highlight the main purpose of time series analysis: forecasting - and inherent limitations. 
### [YouTube Video 1](https://youtu.be/Y6Im7Mvknlg)

# V2: Deterministic Time Series Models
This video introduces deterministic time series models using data on food price inflation from the ONS (link on GitHub). I show you how to import the data into Stata and convert a string into a date variable. We discuss in-sample and out-of-sample forecasting. Using regression models, we fit a linear time trend and add high-order terms. Forecasts perform well in-sample - but not out-of-sample.
### [ONS data](https://www.ons.gov.uk/economy/inflationandpriceindices/datasets/consumerpriceindices)
### [YouTube Video 2](https://youtu.be/HiVjD3v1yoQ)

# V3 What is Stationarity in Time Series Analysis?
This video introduces the concept of stationarity in time series analysis. First, I show you how to download free financial data from Yahoo Finance. Second, we explore the Bitcoin price and volume. Third, we demonstrate stationarity. The data is imported into Stata, and we plot the time series, price and volume. We discuss the implications of non-stationary time series for forecasting.
### [YouTube Video 3](https://youtu.be/1Ygv-4SSqQE)

# V4 Data Generating Processes: Stata Simulation
This video introduces Data Generating Processes using simulations in Stata. You will learn how to run a simulation in Stata (random number generator, loops, initial values, setting observations). We will explore first-order autoregressive processes AR(1) and check their behaviour for different values of the first-order autoregression coefficient. 
### [YouTube Video 4](https://youtu.be/mUc9MipVgYk)

# V5 Unit Root Test: An Introduction using Stata
This video explains Unit Root Tests and illustrates their use using a time series of Bitcoin prices. We discuss the visual inspection of time series. Then we discuss the Dickey-Fuller test and implement the test in Stata. Finally, first-differencing removes the unit root, leading to a stationary time series that can be analysed.
### [YouTube Video 5](https://youtu.be/jLB8RwA6Wm4)

# V6: Autoregressive Integrated Moving Average Models: An Introduction
This video introduces autoregressive integrated moving average models – or ARIMA in short. By the end of this video, you will understand how to use the autocorrelation and partial autocorrelation functions to identify ARIMA models. Using data generating processes, we simulate AR(1) and MA(1) processes and use the autocorrelation and partial autocorrelation functions to detect the lag structure.
### [YouTube Video 6](https://youtu.be/RaH4b0CHD7o)

