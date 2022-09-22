
***************TEMPLATE*********************************************************************************
*replace #SOURCE# with the Source table name
*replace #TABLE OUTPUT# with the filepath you plan to save to
*Copy the table name down the bottom of the syntax to append

***LPS*******************************************************************************************************
*clear 
*use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\#SOURCE#"
*keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
*generate object= "llc_sex"
*generate value=#
*generate label=#
*drop sex
*save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_#TABLE OUTPUT#.dta", replace

*clear 
*use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\#SOURCE#"
*keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source gender  
*generate object= "llc_gender"
*generate value=#
*generate label=#
*drop gender
*save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_#TABLE OUTPUT#.dta", replace


***ALSPAC*********************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave0y.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_alspac_wave0y.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave0m.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source  
generate object= "llc_sex"
generate value=1
generate label= "1=Female"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_alspac_wave0m.dta", replace

***BCS70*********************************************************************************************************************************
**W1
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w1.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw1.dta", replace

**W2
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w2.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw2.dta", replace 

**w3
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w3.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw3.dta", replace

***BIB*********************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BIB_SOCIODEMO.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=sex
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bib_sociodemo.dta", replace

***ELSA*********************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w1_eul.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex 
generate object= "llc_sex"
generate value=0 if sex=="1"
replace value=1 if sex=="2"
replace value=2 if sex=="-9"|sex=="-8"|sex=="-1"
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw1covid.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w2_eul.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex 
generate object= "llc_sex"
generate value=0 if sex=="1"
replace value=1 if sex=="2"
replace value=2 if sex=="-9"|sex=="-8"|sex=="-1"
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw2covid.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_wave_9_ifs_derived_variables.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex=="1"
replace value=1 if sex=="2"
replace value=2 if sex=="-9"|sex=="-8"|sex=="-1"
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw9derived.dta", replace


***EPICN*********************************************************************************************************************************

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EPICN_HLQ.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex 
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_epicn_sex.dta", replace


***EXCEED*********************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EXCEED_exceed_selfcompletion_questionnaire.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source gender
generate object= "llc_gender"
generate value=0 if gender=="Male"
replace value=1 if gender=="Female"
replace value=2 if gender=="NA"
generate label= "0=Male, 1=Female, 2=NA"
drop gender
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_exceedgenderselfcompltionq.dta", replace

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EXCEED_exceed_selfcompletion_questionnaire.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex 
generate object= "llc_sex"
generate value=0 if sex=="Male"
replace value=1 if sex=="Female"
replace value=2 if sex=="Don't know"
replace value=5 if sex=="Prefer not to answer"
generate label= "0=Male, 1=Female, 2=NA, 5=Prefer not to answer"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_exceedsexselfcompltionq.dta", replace

***FENLAND*********************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\FENLAND_P1.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex=="M"
replace value=1 if sex=="F"
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_fenlandsex.dta", replace 

***GENSCOT*********************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_COVIDLIFE1.dta"
*Not reported in Dara's overlap doc, SB followed up with GENSCOT 19.08.2022 they confirmed coding for values 3 and 98 and updated metadata table to version 7
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source gender 
generate object= "llc_gender"
generate value=0 if gender==1
replace value=1 if gender==2
replace value=3 if gender==3
replace value=5 if gender==98
generate label= "0=Male, 1=Female, 3=Non-binary, 5=Prefer not to answer"
drop gender
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_genscotgendercovidlife1.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_DEMOGRAPHICS.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex=="M"
replace value=1 if sex=="F"
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_genscotsexdemographic.dta", replace


***GLAD*****************************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GLAD_FILE2.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source gender
generate object= "llc_gender"
generate value=0 if gender=="Male"
replace value=1 if gender=="Female"
replace value=3 if gender=="Non-binary"
replace value=6 if gender=="Prefer to self-define"
replace value=2 if gender=="Don't know"
replace value=5 if gender=="Prefer not to answer"
replace value=2 if gender=="Seen but not answered"
generate label= "0=Male, 1=Female, 3=Non-binary, 5=Prefer not to answer 6=Prefer to self-define, 2=NA"
drop gender
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\sex&gender\llc_0001_gladgenderfile2.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GLAD_FILE2.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex=="Male"
replace value=1 if sex=="Female"
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\sex&gender\llc_0001_gladsexfile2.dta", replace

***MCS************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w1"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw1.dta", replace 

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w2"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw2.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w3"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw3.dta", replace

***NCDS58**************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w1"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw1.dta", replace 

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w2"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw2.dta", replace

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w3"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw3.dta", replace

***NEXTSTEP***************************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w1"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw1.dta", replace 

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w2"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw2.dta", replace

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w3"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw3.dta", replace

***NICOLA***************************************************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NICOLA_Wave1CAPI"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex  
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nicola_wave1capi.dta", replace

***NIHRBIO_COPING*****************************************************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NIHRBIO_COPING_Bioresource.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source gender
generate object= "llc_gender"
generate value=0 if gender=="Male"
replace value=1 if gender=="Female"
replace value=3 if gender=="Non-binary"
replace value=6 if gender=="Prefer to self-define"
replace value=2 if gender=="Don't know"
replace value=5 if gender=="Prefer not to answer"
replace value=2 if gender=="Seen but not answered"
generate label= "0=Male, 1=Female, 3=Non-binary, 5=Prefer not to answer, 6=Prefer to self-define, 2=NA"
drop gender
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\sex&gender\llc_0001_nihrbio_copinggender.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NIHRBIO_COPING_Bioresource.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex=="Male"
replace value=1 if sex=="Female"
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\sex&gender\llc_0001_nihrbio_copingsex.dta", replace

***NSHD46*************************************************************************************************
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_SOCIODEMOGRAPHICS.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexsociodemo.dta", replace 

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW1WEBPOSTAL.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex=="Male"
replace value=1 if sex=="Female"
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid1.dta", replace 

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW2WEBPOSTAL.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid2.dta", replace 

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW3WEBPOSTAL.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid3.dta", replace 

***SABRE*********************************************************************************************

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit1.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_sabresexsociodemov1.dta", replace 

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit3.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_sabresexsociodemov3.dta", replace 

***TRACKC19*********************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TRACKC19_basicInfo.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
generate label= "0=Male, 1=Female"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_trackc19basicinfo.dta", replace

***TWINSUK*********************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TWINSUK_DEMOGRAPHICS.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex==9
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_twinsuksexdemographic.dta", replace


***UKHLS*********************************************************************************************
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_j_indresp.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ukhls_j_indresp.dta", replace

clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_xsample.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source sex
generate object= "llc_sex"
generate value=0 if sex==1
replace value=1 if sex==2
replace value=2 if sex<=0
generate label= "0=Male, 1=Female, 2=NA"
drop sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ukhls_xsample.dta", replace


***APPEND ALL TOGETHER*************************************************

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_alspac_wave0m.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_alspac_wave0y.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bcs70sexw1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_bib_sociodemo.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw9derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw2covid.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_elsasexw1covid.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_epicn_sex.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_exceedsexselfcompltionq.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_exceedgenderselfcompltionq.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_fenlandsex.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_genscotsexdemographic.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_genscotgendercovidlife1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_gladsexfile2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_gladgenderfile2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_mcssexw1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ncds58sexw1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nextstepsexw1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nicola_wave1capi.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nihrbio_copingsex.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nihrbio_copinggender.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexcovid3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_nshd46sexsociodemo.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_sabresexsociodemov3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_sabresexsociodemov1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_trackc19basicinfo.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_twinsuksexdemographic.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ukhls_xsample.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Sex&Gender\llc_0001_ukhls_j_indresp.dta"


***Drop all without a value****
keep if value!=.
**MAKE TIMESTAMP
***Fill in blank timestamps***
replace llc_stamp_month=01 if llc_stamp_month==.
replace llc_stamp_day=01 if llc_stamp_day==.
replace llc_stamp_year=1900 if llc_stamp_year==.
generate llc_timestamp=mdy(llc_stamp_month,llc_stamp_day,llc_stamp_year)
format llc_timestamp %td
drop llc_stamp_month llc_stamp_day llc_stamp_year
****Keeping only 1 row per participant per object****
bysort LLC_0001_stud_id object: egen rank=rank(-llc_timestamp), unique
keep if rank==1
duplicates report LLC_0001_stud_id
drop rank
***Save (this file does not add in participants with data missing******
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_sex_gender.dta", replace

***Generate table of gender and sex***
*duplicates tag LLC_0001_stud_id, generate (newvar)
*keep if newvar==1
*tab value object, missing
