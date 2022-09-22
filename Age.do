
***************TEMPLATE*********************************************************************************
*replace #SOURCE# with the Source table name
*replace #TABLE OUTPUT# with the filepath you plan to save to
*Copy the table name down the bottom of the syntax to append

***LPS*******************************************************************************************************
*clear 
*use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\#SOURCE#"
*keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year mob dob dos source
*generate value=#
*drop #
*save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_#TABLE OUTPUT#.dta", replace

***ALSPAC**************************************************************************************************************************** 
**Mothers Wave 1 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave1m.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_1m_alspacage.dta", replace
**Mothers Wave 2
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave2m.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_2m_alspacage.dta", replace
**Mothers Wave 3 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave3m.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_3m_alspacage.dta", replace
**Mothers Wave 4 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave4m.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_4m_alspacage.dta", replace
**YP Wave 1 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave1yp.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_1yp_alspacage.dta", replace
**YP Wave 2
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave2yp.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_2yp_alspacage.dta", replace
**YP Wave 3 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave3yp.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_3yp_alspacage.dta", replace
**YP Wave 4 
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave4yp.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age llc_stamp_month llc_stamp_day llc_stamp_year
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_4yp_alspacage.dta", replace

***BCS70**************************************************************************************************************************** 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta", replace
keep if cohort=="BCS70"
drop cohort
generate dob= 01 
generate mob= 04
generate yob= 1970
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_bcs70age.dta", replace 

***BIB**************************************************************************************************************************** 
*Submitted DOB (y and month)

***ELSA**************************************************************************************************************************** 
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_wave_9_ifs_derived_variables.dta"
keep LLC_0001_stud_id yob source
destring yob, replace
generate dob= 01
generate mob= 01 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_ELSA_wave9derived_Age.dta", replace

***EPICN*********************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EPICN_HLQ.dta"
keep LLC_0001_stud_id age dos source
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_HLQ_EPICN_Age.dta", replace


***EXCEED*********************************************************************************************************************************
*submitted 

***FENLAND*********************************************************************************************************************************

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\FENLAND_P1.dta"
keep LLC_0001_stud_id source dos age source
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop age datbirth dos 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_fenlandage.dta", replace 


***GENSCOT*********************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_DEMOGRAPHICS.dta"
keep LLC_0001_stud_id source mob yob source
generate dob= 01 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_genscotagedemographic.dta", replace


***GLAD*********************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GLAD_FILE2.dta"
keep LLC_0001_stud_id age dos source
destring age, replace 
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop age datbirth dos
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_GLAD_AGE.dta", replace

***MCS**************************************************************************************************************************
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_basic_demographic_hhgrid"
keep LLC_0001_stud_id yob mob
generate dob= 01 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_MCS_basic_dem_hhgrid_age.dta", replace

***NCDS58*****************************************************************************************************************************
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta", replace
keep if cohort=="NCDS58"
drop cohort
generate dob= 01 
generate mob= 05
generate yob= 1970
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NCDS58age.dta", replace 

***NEXTSTEP****************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_basic_demographic_data.dta"
keep LLC_0001_stud_id mob yob source
generate dob=01
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NEXTSTEP_age.dta", replace

***NICOLA****************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NICOLA_Wave1CAPI.dta"
keep LLC_0001_stud_id mob yob source
generate dob=01
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth yob mob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_CAPI1_Nicola_Age.dta", replace

***NIHRBIO_COPING****************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NIHRBIO_COPING_Bioresource.dta"
keep LLC_0001_stud_id age dos source
destring age, replace 
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop age datbirth dos
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NIHRBIO_COPING_AGE.dta", replace

***NSHD46*************************************************************************************************************************
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta", replace
keep if cohort=="NSHD46"
drop cohort
generate dob= 01 
generate mob= 03
generate yob= 1946 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_nshd46agesociodemo.dta", replace 

***SABRE*************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit3.dta"
keep LLC_0001_stud_id age llc_stamp_year llc_stamp_month llc_stamp_day source
generate dos=mdy(llc_stamp_month, llc_stamp_day, llc_stamp_year)
format dos %td
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop llc_stamp_day llc_stamp_month llc_stamp_year age datbirth dos
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_sabreagesociodemov3.dta", replace 

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TRACKC19_basicInfo.dta"
keep LLC_0001_stud_id age dos source
generate datbirth= dos-(age*365)
format datbirth %td 
generate value=(td(01aug2022)-datbirth)/365
drop datbirth dos age
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_trackc19basicinfoage.dta", replace

***TWINSUK*************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TWINSUK_DEMOGRAPHICS.dta"
keep LLC_0001_stud_id yob source
generate dob= 01
generate mob= 01 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_twinsuagedemographic.dta", replace


***UKHLS*************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_xsample.dta"
keep LLC_0001_stud_id yob source
generate dob= 01
generate mob= 01 
generate datbirth=mdy(mob,dob,yob)
format datbirth %td
generate value=(td(01aug2022)-datbirth)/365
drop datbirth mob yob dob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_ukhls_xsample_age.dta", replace


*****append together 
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_4yp_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_3yp_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_2yp_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_1yp_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_4m_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_3m_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_2m_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_1m_alspacage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_bcs70age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_ELSA_wave9derived_Age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_HLQ_EPICN_Age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_fenlandage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_genscotagedemographic.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_GLAD_AGE.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_MCS_basic_dem_hhgrid_age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NCDS58age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NEXTSTEP_age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_CAPI1_Nicola_Age.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_NIHRBIO_COPING_AGE.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_sabreagesociodemov3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_nshd46agesociodemo.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_trackc19basicinfoage.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_twinsuagedemographic.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Age\llc_0001_ukhls_xsample_age.dta"

**Delete Blanks 
keep if value!=.
***Add Object***
generate object= "llc_age"
***Keep the oldest measure (Biggest value) 1 measure per participant****
bysort LLC_0001_stud_id object: egen rank=rank(-value), unique
keep if rank==1
duplicates report LLC_0001_stud_id
drop rank

***Save the raw file without additing in the missing participants****
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_age.dta", replace
