
****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON SEX*****
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_gender.dta"
keep if object=="llc_sex"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_+base.dta", replace
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_+base.dta"
****add object in for missing values****
replace object="llc_sex" if object==""
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_+base.dta", replace


****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON GENDER*****
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_gender.dta"
keep if object=="llc_gender"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_gender_+base.dta", replace
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_gender_+base.dta"
****add object in for missing values****
replace object="llc_gender" if object==""
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_gender_+base.dta", replace


****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON ETHNICITY 3*****
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity.dta"
keep if object=="llc_ethnic3"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity3_+base.dta", replace
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity3_+base.dta"
****add object in for missing values****
replace object="llc_ethnic3" if object==""
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity3_+base.dta", replace


****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON ETHNICITY 6*****
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity.dta"
keep if object=="llc_ethnic6"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity6_+base.dta", replace
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity6_+base.dta"
****add object in for missing values****
replace object="llc_ethnic6" if object==""
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity6_+base.dta", replace

****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON ETHNICITY 7*****
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity.dta"
keep if object=="llc_ethnic7"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity7_+base.dta", replace
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity7_+base.dta"
****add object in for missing values****
replace object="llc_ethnic7" if object=="" 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity7_+base.dta", replace

****ADDING IN ALL PARTICIPANTS WITHOUT DATA ON AGE*****
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_age.dta"
merge 1:1 LLC_0001_stud_id using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta"
****add object in for missing values****
replace object="llc_age" if object==""
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_age_+base.dta", replace
***merging all datasets back into one dataset which has the missing participants 

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity3_+base.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity6_+base.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity7_+base.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_+base.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_gender_+base.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_age_+base.dta"
drop _merge
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_full_harmonised_+base", replace









