***************TEMPLATE*********************************************************************************
*replace #SOURCE# with the Source table name
*replace #TABLE OUTPUT# with the filepath you plan to save to
*Copy the table name down the bottom of the syntax to append

***LPS*******************************************************************************************************
*clear 
*use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\#SOURCE#"
*keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic
*generate value=#
*save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_#TABLE OUTPUT#.dta", replace


***************ALSPAC*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave4m.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic>=11 & ethnic<=14
replace value=1 if ethnic==41
replace value=2 if ethnic>=31 & ethnic<=33
replace value=3 if ethnic>=34 & ethnic<=35
replace value=4 if ethnic>=21 & ethnic<=24
replace value=5 if ethnic==51|ethnic==77
replace value=99 if ethnic<=0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ALSPAC_ethnic7_covid4.dta", replace 

***************BCS70*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_bcs6.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic==1|ethnic==2|ethnic==3
replace value=1 if ethnic==12|ethnic==13|ethnic==14
replace value=2 if ethnic==7|ethnic==7|ethnic==10
replace value=3 if ethnic==11|ethnic==15
replace value=4 if ethnic==4|ethnic==5|ethnic==99|ethnic==6
replace value=5 if ethnic==16
replace value=99 if ethnic==78|ethnic==79
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_bcs70ethnic7_bcs6.dta", replace

***************BIB*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BIB_SOCIODEMO.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic>=1 & ethnic<=3
replace value=1 if ethnic>=13 & ethnic<=15
replace value=2 if ethnic>=7 & ethnic<=10
replace value=3 if ethnic>=11 & ethnic<=12
replace value=4 if ethnic>=4 & ethnic<=6
replace value=5 if ethnic==16
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_BIB_ethnic7_sociodemo.dta", replace


***************ELSA*********************************************************************************
**3 Band Ethnicity (Ethnic3)
**Can only find Band Ethnicity (Ethnic3). Dara reports a variable called fqethnm which has 6 categories, but cannot find. 
clear
use"S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w1_eul.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic=="1"
replace value=7 if ethnic=="2"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ELSA_ethnic3_Covidw1.dta", replace

clear
use"S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w2_eul.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic=="1"
replace value=7 if ethnic=="2"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ELSA_ethnic3_Covidw2.dta", replace


***************EPICN*********************************************************************************
**3 Band Ethnicity (Ethnic3)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EPICN_HLQ.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=7 if ethnic==2
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_EPICN_ethnic3_HLQ.dta", replace


***************EXCEED*********************************************************************************
**6 Band Ethnicity (Ethnic6)

clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EXCEED_exceed_selfcompletion_questionnaire.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic=="White British"|ethnic=="Any other white background"|ethnic=="Irish"
replace value=1 if ethnic=="Black Caribbean"|ethnic=="Black or Black British"
replace value=4 if ethnic=="White and Black African"|ethnic=="White and Black Caribbean"|ethnic=="Any other mixed background"
replace value=6 if ethnic=="Any other Asian background"|ethnic=="Asian or Asian British"|ethnic=="Bangladeshi"|ethnic=="Chinese"|ethnic=="Indian"|ethnic=="Pakistani"
replace value=5 if ethnic=="Other ethnic group"
replace value=99 if ethnic=="NA"|ethnic=="Do not know"|ethnic=="Prefer not to answer"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_EXCEED_ethnic6_selfcompleteq.dta", replace



***************FENLAND*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\FENLAND_P1.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic==1|ethnic==2|ethnic==3
replace value=1 if ethnic==12|ethnic==13|ethnic==14
replace value=2 if ethnic==8|ethnic==9|ethnic==10
replace value=3 if ethnic==11|ethnic==15
replace value=4 if ethnic==4|ethnic==5|ethnic==7|ethnic==6
replace value=5 if ethnic==16
replace value=99 if ethnic==17
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_FENLAND_ethnic7_P1.dta", replace

***************GENSCOT*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_COVIDLIFE1.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic>=1 & ethnic<=7
replace value=1 if ethnic>=14 & ethnic<=16
replace value=2 if ethnic>=7 & ethnic<=11
replace value=4 if ethnic>=18 & ethnic<=21
replace value=3 if ethnic>=12 & ethnic<=13
replace value=5 if ethnic==17|ethnic==22
replace value=99 if ethnic==78
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GENSCOT_ethnic7_Covidlife1.dta", replace

**6 Band Ethnicity (Ethnic6)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_ETHNIC.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic  
generate value=0 if ethnic=="White"
replace value=1 if ethnic=="Black"
replace value=6 if ethnic=="Asian"
replace value=4 if ethnic=="Mixed"
replace value=5 if ethnic=="Other"
replace value=99 if ethnic=="Not disclosed"|ethnic=="Not specified"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GENSCOT_ethnic6_ETHNIC.dta", replace

***************GLAD*********************************************************************************
**6 Band Ethnicity (Ethnic6)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GLAD_FILE2.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic=="White"
replace value=1 if ethnic=="Black or Black British"
replace value=4 if ethnic=="Mixed or multiple ethnic origins"
replace value=6 if ethnic=="Asian or Asian British"
replace value=5 if ethnic=="Other ethnic group"|ethnic=="Arab"
replace value=99 if ethnic=="nan"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GLAD_ethnic6_file2.dta", replace

**************MCS***********************************************************************************
**7 Band Ethnicity (Ethnic7)

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs1_cm_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs1_cm_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs2_cm_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs2_cm_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs3_cm_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs3_cm_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs4_cm_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs4_cm_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs1_parent_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs1_parent_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs2_parent_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs2_parent_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs3_parent_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs3_parent_derived.dta", replace

use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs4_parent_derived"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=1 if ethnic==6|ethnic==7|ethnic==7
replace value=2 if ethnic==3|ethnic==4|ethnic==5
replace value=3 if ethnic==99|ethnic==10
replace value=4 if ethnic==2
replace value=5 if ethnic==11
replace value=99 if ethnic<0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs4_parent_derived.dta", replace

***************NCDS58*********************************************************************************
**7 Band Ethnicity (Ethnic7)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_ncds6"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1|ethnic==2|ethnic==3
replace value=1 if ethnic==12|ethnic==13|ethnic==14
replace value=2 if ethnic==7|ethnic==7|ethnic==10
replace value=3 if ethnic==11|ethnic==15
replace value=4 if ethnic==4|ethnic==5|ethnic==99|ethnic==6
replace value=5 if ethnic==16
replace value=99 if ethnic==78|ethnic==79
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ncds58ethnic7_ncds6.dta", replace

***************NEXTSTEP*********************************************************************************
**3 Band Ethnicity (Ethnic3)
clear
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_basic_demographic_data"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==1
replace value=7 if ethnic==2|ethnic==3|ethnic==4|ethnic==5|ethnic==99|ethnic==6|ethnic==7
replace value=99 if ethnic<0
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_NEXTSTEP_ethnic3_visit3.dta", replace


***************NICOLA*********************************************************************************
*Not being deposited (see Dara's handover notes)

***************NIHRBIO_COPING*************************************************************************************
**6 Band Ethnicity (Ethnic6)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NIHRBIO_COPING_Bioresource.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic=="White"
replace value=1 if ethnic=="Black or Black British"
replace value=4 if ethnic=="Mixed or multiple ethnic origins"
replace value=6 if ethnic=="Asian or Asian British"
replace value=5 if ethnic=="Other ethnic group"|ethnic=="Arab"
replace value=99 if ethnic=="nan"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_NIHRBIO_COPING_Bioresource_ethnic6.dta", replace

***************NSHD46*********************************************************************************
*N/A No Variable Available 


***************SABRE*************************************************************************************
**6 Band Ethnicity (Ethnic6)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit3.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic==3|ethnic==7|ethnic==10|ethnic==12|ethnic==17|ethnic==20
replace value=6 if ethnic==1|ethnic==6|ethnic==7|ethnic==11|ethnic==16|ethnic==18|ethnic==19
replace value=1 if ethnic==2|ethnic==5|ethnic==99
replace value=4 if ethnic==4|ethnic==13|ethnic==14|ethnic==15
replace value=99 if ethnic==21
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_SABRE_ethnic6_visit3.dta", replace

***************TRACKC19*************************************************************************************
**7 Band Ethnicity (Ethnic7)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TRACKC19_basicInfo.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic=="White"|ethnic=="Eng/W/Scot/NI/Brit"|ethnic=="White Irish"|ethnic=="Other White backgrnd"
replace value=1 if ethnic=="Any other Black/Afr/Cbn"|ethnic=="Black- African"|ethnic=="Black- Caribbean"
replace value=3 if ethnic=="Chinese"|ethnic=="Other Asian backgrnd"
replace value=2 if ethnic=="Asian- Bangladeshi"|ethnic=="Asian- Indian"|ethnic=="Asian- Pakistani"
replace value=4 if ethnic=="Any other Mixed/multiple EB"|ethnic=="Mixed White + Asian"|ethnic=="Mixed White + Black African"|ethnic=="Mixed White + Black Caribbean"
replace value=5 if ethnic=="Any other group"|ethnic=="Arab"
replace value=99 if ethnic=="Unknown"
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_TRACKC19_ethnic7_basicinfo.dta", replace

***************TWINSUK*************************************************************************************
**7 Band Ethnicity (Ethnic7)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TWINSUK_DEMOGRAPHICS.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic=="White"
replace value=1 if ethnic=="Black"
replace value=2 if ethnic=="East Asian"|ethnic=="South Asian"
replace value=4 if ethnic=="Mixed"
replace value=5 if ethnic=="Ethnic minority (any)"|ethnic=="Other"|ethnic=="Other non-white"
replace value=99 if ethnic=="#N/A"
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_TWINSUK_ethnic7_visit3.dta", replace

***************UKHLS*************************************************************************************
**7 Band Ethnicity (Ethnic7)
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_xsample.dta"
keep LLC_0001_stud_id llc_stamp_day llc_stamp_month llc_stamp_year source ethnic 
generate value=0 if ethnic>=1 & ethnic<=4
replace value=1 if ethnic>=14 & ethnic<=16
replace value=2 if ethnic>=7 & ethnic<=11
replace value=3 if ethnic>=12 & ethnic<=13
replace value=4 if ethnic>=5 & ethnic<=7
replace value=5 if ethnic==17|ethnic==77
replace value=99 if ethnic<=0
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_UKHLS_ethnic7_xsample.dta", replace

***Append All Ethnic7*****
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ALSPAC_ethnic7_covid4.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_bcs70ethnic7_bcs6.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_BIB_ethnic7_sociodemo.dta"
*append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_FENLAND_ethnic7_P1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GENSCOT_ethnic7_Covidlife1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs1_cm_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs2_cm_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs3_cm_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs4_cm_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs1_parent_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs2_parent_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs3_parent_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_mcs_ethnic7_mcs4_parent_derived.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ncds58ethnic7_ncds6.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_TRACKC19_ethnic7_basicinfo.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_TWINSUK_ethnic7_visit3.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_UKHLS_ethnic7_xsample.dta"
generate object= "llc_ethnic7"
generate label= "0=White, 1=Black, 2=South-east Asian, 3=Other Asian, 4=Mixed, 5=Other, 99=NA"
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonised_ethnic7.dta", replace 


****Create Harmonised Ethnic 6****
***Step 1. Recode Harmonised Ethnic 7****
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonised_ethnic7.dta"
drop object label 
replace value=6 if value==2|value==3

***Step 2. Append other Ethnic 6 Tables****
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_EXCEED_ethnic6_selfcompleteq.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GENSCOT_ethnic6_ETHNIC.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_GLAD_ethnic6_file2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_NIHRBIO_COPING_Bioresource_ethnic6.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_SABRE_ethnic6_visit3.dta"
generate label= "0=White, 1=Black, 4=Mixed, 5=Other, 99=NA, 6=Asian(inc. Chinese)"
generate object="llc_ethnic6"
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonsised_ethnic6.dta", replace

****Create Harmonised Ethnic 3****
***Step 1. Recode Harmonised Ethnic 6****
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonsised_ethnic6.dta"
drop object label 
replace value=7 if value==1|value==4|value==5|value==6
***Step 2. Append other Ethnic 3 Tables****
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ELSA_ethnic3_Covidw1.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_ELSA_ethnic3_Covidw2.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_EPICN_ethnic3_HLQ.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_NEXTSTEP_ethnic3_visit3.dta"

generate label= "0=White, 7=Non-white, 99=NA"
generate object="llc_ethnic3"
drop ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonsised_ethnic3.dta", replace

***Append All Ethnicity Together****
clear 
use "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonised_ethnic7.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonsised_ethnic6.dta"
append using "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Ethnicity\llc_0001_harmonsised_ethnic3.dta"

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
***Save the raw file without additing in the missing participants****
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\llc_0001_harmonised_ethnicity.dta", replace










