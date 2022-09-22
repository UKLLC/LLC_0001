****Creating Full Harmonised Dataset
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_gender.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_age.dta"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_full_harmonised.dta", replace