********************************************************************************
*U2: Deterministic models
*CPI Food
********************************************************************************

*======================>>>>>>>>>DATA WRANGLING<<<<<<<<<<<<======================
*Data import
cd "C:\Users\User\Documents\Gerhard\Aberdeen HOME\Yunikarn\Youtube\Projects\Applied time series\U2 Deterministic models"
insheet using "CPI food.csv", clear

*Convert time (string) to date
*See datetime translation
gen date_var = date(time, "YM")
gen m_date = mofd(date_var)
format m_date %tm
tsset m_date, monthly
label var m_date "Monthly time variable"

*Tidy up
drop date_var time

*Line chart
line cpifood m_date

*Time dimension
gen t = _n

*Summary of data
sum

*Save data
save cpifood.dta, replace
*======================>>>>>>>>>DATA WRANGLING<<<<<<<<<<<<======================


*======================>>>>>>>>>TREND MODELS<<<<<<<<<<<<========================
use cpifood.dta, clear

*Focus on data 12 months prior to now
*In-sample and out-of-sample
reg cpifood t if t<=400
estimates store A

*Consider higher-order terms
forvalues i=1/5 {
	gen t_`i' = t^`i'
	}
	
qui: {
	reg cpifood t t_2 if t<=400
	estimates store B

	reg cpifood t t_2 t_3 if t<=400
	estimates store C

	reg cpifood t t_2 t_3 t_4 if t<=400
	estimates store D

	reg cpifood t t_2 t_3 t_4 t_5 if t<=400
	estimates store E
	predict forecast
	}

estimates table A B C D E, star b(%9.3f) stats(aic bic)

*Plot forecast
twoway (line cpifood m_date if t<=400) (line forecast m_date if t<=400)

*Out-of-sample
twoway (line cpifood m_date if t>400) (line forecast m_date if t>400)
