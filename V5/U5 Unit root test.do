********************************************************************************
*U5: Unit root test
********************************************************************************

*======================>>>>>>>>>STATIONARITY<<<<<<<<<<<<========================
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Applied time series\U5 Unit root test"
use BTC.dta, clear

*Declare time series
tsset date_var

*Closing price: seems to be non-stationary
line close date_var

*Dickey-Fuller test
dfuller close

*First-difference
line d.close date_var

dfuller d.close



