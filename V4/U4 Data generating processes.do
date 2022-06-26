********************************************************************************
*U4: Data generating processes
********************************************************************************

*======================>>>>>>>>>Stochastic processes<<<<<<<<<<<<================
*Add observations
clear
set obs 1000

*Time dimension
gen t=_n
tsset t

*Initial value
gen p = .
replace p = 10 if t==1

*Error terms
gen error = rnormal()

forvalues i=2/1000 {
	qui: replace p = 0.8*l.p + error if t==`i'
	}
	
line p t
	
