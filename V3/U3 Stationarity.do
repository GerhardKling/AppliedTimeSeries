********************************************************************************
*U3: Stationarity
*Data from Yahoo Finance
********************************************************************************

*======================>>>>>>>>>DATA WRANGLING<<<<<<<<<<<<======================
*Data import
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Applied time series\U3 Stationarity"
insheet using "BTC-USD.csv", clear

*Convert time (string) to date
*See datetime translation
gen date_var = date(date, "YMD")
format date_var %td
label var date_var "Date variable, daily"

*Declare time dimension
tsset date_var

*Tidy up
drop date

*Line chart
line close date_var

*Summary of data
sum

*Save data
save BTC.dta, replace
*======================>>>>>>>>>DATA WRANGLING<<<<<<<<<<<<======================


*======================>>>>>>>>>STATIONARITY<<<<<<<<<<<<========================
use BTC.dta, clear

*Trading volume: seems to tend back to equilibrium
line volume date_var

*Log volume
gen l_vol = ln(volume)
line l_vol date_var
kdensity l_vol

*No well-defined moments

*Log returns using the lag operator
gen growth = l_vol-l.l_vol
gen gr = d.l_vol

line growth date_var

