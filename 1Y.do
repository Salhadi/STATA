// -----------------------------	
//*** Somaya Alhadi ***///
//Stata training for beginners
// -----------------------------	


* Open A New Do File

// Windows -> Do-file Editor -> New- Do- File Editor ,	Ctrl 9


//Clean up and restart

clear all
capture drop _all
capture log close
set more off


* Open A New Log File --> To save work including codes and results several times 

log using logfile, replace



//*********
// Load Data
//*********



import delimited "C:\Econ.CA.csv"


* Work with Time Series Data
	* Set date as ts
	
	
	***Set time series format for monthly, quarterly, yearly or daily data***


//Monthly
display m(1961m1)
generate months = tm(1961m1)+ _n-1
format %tm months
tsset months 

//Yearly
generate years = (1961)+ _n-1
tsset years 

//Quarterly 
display q(1961q1)
gen time=q(1961q1)+ _n-1
format time %tq
tsset time

//Daily
generate days = td(1jan1961)+ _n-1
format %td days
tsset days 





