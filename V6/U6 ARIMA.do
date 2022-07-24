********************************************************************************
*U6: ARIMA Models
**Use U4: Data generating processes
********************************************************************************

*======================>>>>>>>>>Stochastic processes<<<<<<<<<<<<================
*Add observations
clear
set obs 1000

*Time dimension
gen t=_n
tsset t

*Create an AR(1) process
*Initial value
gen ar_1 = .
replace ar_1 = 2 if t==1

*Error terms
gen error = rnormal()

forvalues i=2/1000 {
	qui: replace ar_1 = 0.8*l.ar_1 + error if t==`i'
	}
	
*Drop error term	
drop error
	
line ar_1 t
	
	
*Create an MA(1) process
*Initial value
gen ma_1 = .
replace ma_1 = 0 if t==1

*Error terms
gen error = rnormal()

forvalues i=2/1000 {
	qui: replace ma_1 = error + 0.7*l.error if t==`i'
	}
	
*Drop error term	
drop error
	
line ma_1 t


*======================>>>>>>>>>Autocorrelation Function<<<<<<<<<<<<============
*Large spike and slow decay
ac ar_1

*Spike and quick decay
ac ma_1

*==============>>>>>>>>>Partial Autocorrelation Function<<<<<<<<<<<<============
*Spike at 0.8 and quick decay
pac ar_1

*Spike and decay (oscillation)
pac ma_1

*==============>>>>>>>>>Tables for Comparison<<<<<<<<<<<<=======================
*For AR(1)
corrgram ar_1, lags(10)

*For MA(1)
corrgram ma_1, lags(10)
