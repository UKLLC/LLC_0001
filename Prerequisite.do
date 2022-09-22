**Prerequisite Do-File**
**SB 14.09.2022
**Aim: Pull self-report data for key sociodemographic variables and save them to use consistent naming convention for uk llc harmonised variables 
**Save Clean Files: S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables
**See Footnote for 'Date Splitting Apart Help' 

*Glossary:
*Age-age 
*Year of Birth- yob
*Ethnicity-ethnic
*Sex-sex
*Gender-gender 

***CORE Denominator File**************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, cohort FROM [UKSERPUKLLC].[LLC_0001].[CORE_denominator_file1_20220801] where ukllc_status = '1' order by LLC_0001_stud_id") dsn (LLC_DB)
generate source="CORE_denominator_file1"
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\CORE_denominator_file1.dta", replace


***ALSPAC*****************************************************************************************************************************************

clear
odbc load, exec("select LLC_0001_stud_id, kz021, c993, c992 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave0y_v0001_20220531]") dsn (LLC_DB)
generate source="ALSPAC_wave0y"
generate llc_stamp_year=c993+1900
generate llc_stamp_month=c992
generate llc_stamp_day=01
replace llc_stamp_year=1991 if llc_stamp_year==.
replace llc_stamp_month=01 if llc_stamp_month==.
replace llc_stamp_day=01 if llc_stamp_day==.
drop c993 c992
rename kz021 sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave0y.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave0m_v0001_20220531]") dsn (LLC_DB)
generate source="ALSPAC_wave0m"
generate llc_stamp_year=2021
generate llc_stamp_month=01
generate llc_stamp_day=01
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave0m.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid1m_9620, covid1m_9621, covid1m_9622, covid1m_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave1m_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave1m"
generate llc_stamp_year=covid1m_9622
generate llc_stamp_month=covid1m_9621
generate llc_stamp_day=covid1m_9620
rename covid1m_9650 age
drop covid1m_9620 covid1m_9621 covid1m_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave1m.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid2m_9620, covid2m_9621, covid2m_9622, covid2m_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave2m_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave2m"
generate llc_stamp_year=covid2m_9622
generate llc_stamp_month=covid2m_9621
generate llc_stamp_day=covid2m_9620
rename covid2m_9650 age
drop covid2m_9620 covid2m_9621 covid2m_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave2m.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid3m_9620, covid3m_9621, covid3m_9622, covid3m_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave3m_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave3m"
generate llc_stamp_year=covid3m_9622
generate llc_stamp_month=covid3m_9621
generate llc_stamp_day=covid3m_9620
rename covid3m_9650 age
drop covid3m_9620 covid3m_9621 covid3m_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave3m.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid4m_9620, covid4m_9621, covid4m_9622, covid4m_0500, covid4m_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave4m_v0001_20220531]") dsn (LLC_DB)
generate source="ALSPAC_wave4m"
generate llc_stamp_year=covid4m_9622
generate llc_stamp_month=covid4m_9621
generate llc_stamp_day=covid4m_9620
rename covid4m_0500 ethnic
rename covid4m_9650 age
drop covid4m_9620 covid4m_9621 covid4m_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave4m.dta", replace


clear
odbc load, exec("select LLC_0001_stud_id, covid1yp_9620, covid1yp_9621, covid1yp_9622, covid1yp_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave1y_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave1yp"
generate llc_stamp_year=covid1yp_9622
generate llc_stamp_month=covid1yp_9621
generate llc_stamp_day=covid1yp_9620
rename covid1yp_9650 age
drop covid1yp_9620 covid1yp_9621 covid1yp_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave1yp.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid2yp_9620, covid2yp_9621, covid2yp_9622, covid2yp_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave2y_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave2yp"
generate llc_stamp_year=covid2yp_9622
generate llc_stamp_month=covid2yp_9621
generate llc_stamp_day=covid2yp_9620
rename covid2yp_9650 age
drop covid2yp_9620 covid2yp_9621 covid2yp_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave2yp.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid3yp_9620, covid3yp_9621, covid3yp_9622, covid3yp_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave3y_v0001_20211101]") dsn (LLC_DB)
generate source="ALSPAC_wave3yp"
generate llc_stamp_year=covid3yp_9622
generate llc_stamp_month=covid3yp_9621
generate llc_stamp_day=covid3yp_9620
rename covid3yp_9650 age
drop covid3yp_9620 covid3yp_9621 covid3yp_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave3yp.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, covid4yp_9620, covid4yp_9621, covid4yp_9622, covid4yp_9650 FROM [UKSERPUKLLC].[LLC_0001].[ALSPAC_wave4y_v0001_20220531]") dsn (LLC_DB)
generate source="ALSPAC_wave4yp"
generate llc_stamp_year=covid4yp_9622
generate llc_stamp_month=covid4yp_9621
generate llc_stamp_day=covid4yp_9620
rename covid4yp_9650 age
drop covid4yp_9620 covid4yp_9621 covid4yp_9622
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ALSPAC_wave4yp.dta", replace

***BCS70**********************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, ethnic, intdate FROM [UKSERPUKLLC].[LLC_0001].[BCS70_bcs6_v0001_1_20211101]") dsn (LLC_DB)
generate source="BCS70_bcs6"
generate llc_stamp_year=mod(intdate, 10000)
generate llc_stamp_month=01
generate llc_stamp_day=01
drop intdate 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_bcs6.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw1_psex, cw1_enddate FROM [UKSERPUKLLC].[LLC_0001].[BCS70_COVID_w1_v0001_20211101]") dsn (LLC_DB)
keep LLC_0001_stud_id cw1_psex cw1_enddate
generate source="BCS70_COVID_w1"
generate llc_stamp_year=2020
generate llc_stamp_month=5
generate llc_stamp_day=cw1_enddate
drop cw1_enddate
rename cw1_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w1.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw2_psex, cw2_enddated, cw2_enddatem FROM [UKSERPUKLLC].[LLC_0001].[BCS70_COVID_w2_v0001_20211101]") dsn (LLC_DB)
keep LLC_0001_stud_id cw2_psex cw2_enddated cw2_enddatem
generate source="BCS70_COVID_w2"
generate llc_stamp_year=2020
generate llc_stamp_month=cw2_enddatem
generate llc_stamp_day=cw2_enddated
drop cw2_enddated
drop cw2_enddatem
rename cw2_psex sex 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w2.dta", replace

clear 
odbc load, exec("select LLC_0001_stud_id, cw3_psex, cw3_enddatem, cw3_enddated FROM [UKSERPUKLLC].[LLC_0001].[BCS70_COVID_w3_v0001_20211101]") dsn (LLC_DB)
generate source="BCS70_COVID_w3"
generate llc_stamp_year=2021
generate llc_stamp_month=cw3_enddatem
generate llc_stamp_day=cw3_enddated
drop cw3_enddated
drop cw3_enddatem
rename cw3_psex sex 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BCS70_COVID_w3.dta", replace

***BIB******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, bib_timestamp, bib_eth16cat, bib_sex FROM [UKSERPUKLLC].[LLC_0001].[BIB_SOCIODEMO_v0001_20220118]") dsn (LLC_DB)
generate source="BIB_SOCIODEMO"
generate llc_timestamp=dofc(bib_timestamp)
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
replace llc_stamp_year=2008 if llc_stamp_year==.
generate llc_stamp_month=month(llc_timestamp)
replace llc_stamp_month=01 if llc_stamp_month==.
generate llc_stamp_day=day(llc_timestamp)
replace llc_stamp_day=01 if llc_stamp_day==.
rename bib_eth16cat ethnic
drop bib_timestamp llc_timestamp
rename bib_sex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\BIB_SOCIODEMO.dta", replace

***ELSA******************************************************************************************************************************

clear
odbc load, exec("select LLC_0001_stud_id, sex, cintdatd, cintdatm, cintdaty, ethnicity_arch  FROM [UKSERPUKLLC].[LLC_0001].[ELSA_elsa_covid_w1_eul_v0001_20211101]") dsn (LLC_DB)
generate source="ELSA_elsa_covid_w1_eul"
generate llc_stamp_year=cintdaty
generate llc_stamp_month=cintdatm
generate llc_stamp_day=cintdatd
drop cintdatd cintdatm cintdaty
rename ethnicity_arch ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w1_eul.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, sex, cintdatd, cintdatm, cintdaty, ethnicity_arch  FROM [UKSERPUKLLC].[LLC_0001].[ELSA_elsa_covid_w2_eul_v0001_20211101]") dsn (LLC_DB)
generate source="ELSA_elsa_covid_w2_eul"
generate llc_stamp_year=cintdaty
generate llc_stamp_month=cintdatm
generate llc_stamp_day=cintdatd
drop cintdatd cintdatm cintdaty
rename ethnicity_arch ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_elsa_covid_w2_eul.dta", replace
 
clear
odbc load, exec("select LLC_0001_stud_id, sex, iintdatd, iintdatm, iintdaty, indobyr FROM [UKSERPUKLLC].[LLC_0001].[ELSA_wave_9_ifs_derived_variables_v0001_20211101]") dsn (LLC_DB)
generate source="ELSA_wave_9_ifs_derived_variables"
generate llc_stamp_year=iintdaty
generate llc_stamp_month=iintdatm
generate llc_stamp_day=iintdatd
destring llc_stamp_year, replace
foreach var in llc_stamp_day llc_stamp_month {
	destring `var', replace
}
drop iintdatd iintdatm iintdaty 
rename indobyr yob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\ELSA_wave_9_ifs_derived_variables.dta", replace
 
***EPICN******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, doc_hlq, AGE_HLQ, ethnic, SEX FROM [UKSERPUKLLC].[LLC_0001].[EPICN_HLQ_v0001_20220405]") dsn (LLC_DB)
generate source="EPICN_HLQ"
generate llc_timestamp= date(doc_hlq, "DMY")
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop doc_hlq 
rename llc_timestamp dos
rename AGE_HLQ age
rename SEX sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EPICN_HLQ.dta", replace

***EXCEED******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, gen5, gen2, gen2b, timestamp  FROM [UKSERPUKLLC].[LLC_0001].[EXCEED_exceed_selfcompletion_questionnaire_v0002_20220302]") dsn (LLC_DB)
generate source="exceed_selfcompletion_questionnaire"
generate llc_timestamp=dofc(timestamp)
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop timestamp llc_timestamp
rename gen5 ethnic
rename gen2 gender 
rename gen2b sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\EXCEED_exceed_selfcompletion_questionnaire.dta", replace
 


***FENLAND******************************************************************************************************************************
clear
odbc load, exec("select * FROM [UKSERPUKLLC].[LLC_0001].[FENLAND_P1_v0001_20220810]") dsn (LLC_DB)
keep LLC_0001_stud_id appdate_attended_ukllc gq_eth_der sex g_ageattest_attended 
rename g_ageattest_attended age 
rename gq_eth_der ethnic 
generate source="FENLAND_P1"
generate llc_timestamp= date(appdate_attended_ukllc, "DMY")
format llc_timestamp %td 
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
rename llc_timestamp dos
drop appdate_attended_ukllc 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\FENLAND_P1.dta", replace

***GENSCOT******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, yob, mob, sex, appt FROM [UKSERPUKLLC].[LLC_0001].[GENSCOT_DEMOGRAPHICS_v0001_20211101]") dsn (LLC_DB)
generate source="GENSCOT_DEMOGRAPHICS"
generate llc_timestamp=dofc(appt)
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop appt llc_timestamp
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_DEMOGRAPHICS.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, gender, Ethnic_Origin, enddate FROM [UKSERPUKLLC].[LLC_0001].[GENSCOT_COVIDLIFE1_v0001_20211101]") dsn (LLC_DB)
generate source="GENSCOT_COVIDLIFE1"
generate temp=word(enddate,1)
generate llc_timestamp= date(temp, "DMY")
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop enddate temp llc_timestamp
rename Ethnic_Origin ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_COVIDLIFE1.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, race, appt  FROM [UKSERPUKLLC].[LLC_0001].[GENSCOT_ETHNIC_v0002_20220302]") dsn (LLC_DB)
generate source="GENSCOT_ETHNIC"
generate llc_timestamp= date(appt, "YMD")
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
rename race ethnic
drop appt llc_timestamp
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GENSCOT_ETHNIC.dta", replace


***GLAD******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, Ethnicity, age, gender, sex, startdate_prepandemic FROM [UKSERPUKLLC].[LLC_0001].[GLAD_FILE2_v0001_20211101]") dsn (LLC_DB)
generate source="GLAD_FILE2"
generate temp=word(startdate_prepandemic,1)
generate llc_timestamp= date(temp, "YMD")
format llc_timestamp %td
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
rename llc_timestamp dos
drop startdate_prepandemic temp
rename Ethnicity ethnic 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\GLAD_FILE2.dta", replace

***MCS*******************************************************************************************************************************
******CM******
*1
clear
odbc load, exec("select LLC_0001_stud_id, ADC11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs1_cm_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs1_cm_derived"
generate llc_stamp_year=2003
generate llc_stamp_month=01
generate llc_stamp_day=01
rename ADC11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs1_cm_derived", replace
*2
clear
odbc load, exec("select LLC_0001_stud_id, BDC11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs2_cm_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs2_cm_derived"
generate llc_stamp_year=2005
generate llc_stamp_month=01
generate llc_stamp_day=01
rename BDC11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs2_cm_derived", replace
*3
clear
odbc load, exec("select LLC_0001_stud_id, CDC11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs3_cm_derived_v0001_20211101]") dsn (LLC_DB)
generate source="MCS_mcs3_cm_derived"
generate llc_stamp_year=2007
generate llc_stamp_month=01
generate llc_stamp_day=01
rename CDC11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs3_cm_derived", replace
*4
clear
odbc load, exec("select LLC_0001_stud_id, DDC11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs4_cm_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs4_cm_derived"
generate llc_stamp_year=2009
generate llc_stamp_month=01
generate llc_stamp_day=01
rename DDC11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs4_cm_derived", replace

******Parent******
*1
clear
odbc load, exec("select LLC_0001_stud_id, ADD11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs1_parent_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs1_parent_derived"
generate llc_stamp_year=2003
generate llc_stamp_month=01
generate llc_stamp_day=01
rename ADD11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs1_parent_derived", replace
*2
clear
odbc load, exec("select LLC_0001_stud_id, BDD11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs2_parent_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs2_parent_derived"
generate llc_stamp_year=2005
generate llc_stamp_month=01
generate llc_stamp_day=01
rename BDD11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs2_parent_derived", replace
*3
clear
odbc load, exec("select LLC_0001_stud_id, CDD11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs3_parent_derived_v0001_20211101]") dsn (LLC_DB)
generate source="MCS_mcs3_parent_derived"
generate llc_stamp_year=2007
generate llc_stamp_month=01
generate llc_stamp_day=01
rename CDD11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs3_parent_derived", replace
*4
clear
odbc load, exec("select LLC_0001_stud_id, DDD11E00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_mcs4_parent_derived_v0001_20211101]") dsn (LLC_DB)
generate source="mcs4_parent_derived"
generate llc_stamp_year=2009
generate llc_stamp_month=01
generate llc_stamp_day=01
rename DDD11E00 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_mcs4_parent_derived", replace

*Demographics
clear
odbc load, exec("select LLC_0001_stud_id, AHPDBM00, AHPDBY00 FROM [UKSERPUKLLC].[LLC_0001].[MCS_basic_demographic_hhgrid_v0001_20211101]") dsn (LLC_DB)
generate source="MCS_basic_demographic_hhgrid"
rename AHPDBM00 mob 
rename AHPDBY00 yob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_basic_demographic_hhgrid", replace

*Covid1
clear
odbc load, exec("select LLC_0001_stud_id, cw1_psex, cw1_enddate FROM [UKSERPUKLLC].[LLC_0001].[MCS_COVID_w1_v0001_20211101]") dsn (LLC_DB)
rename cw1_psex sex 
generate source="MCS_COVID_w1"
generate llc_stamp_year=2020
generate llc_stamp_month=5
generate llc_stamp_day=cw1_enddate
drop cw1_enddate
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w1", replace 

*Covid2
clear
odbc load, exec("select LLC_0001_stud_id, cw2_psex, cw2_enddated, cw2_enddatem FROM [UKSERPUKLLC].[LLC_0001].[MCS_COVID_w2_v0001_20211101]") dsn (LLC_DB)
generate source="MCS_COVID_w2"
generate llc_stamp_year=2020
generate llc_stamp_month=cw2_enddatem
generate llc_stamp_day=cw2_enddated
drop cw2_enddated
drop cw2_enddatem
rename cw2_psex sex 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w2", replace 

*Covid3
clear
odbc load, exec("select LLC_0001_stud_id, cw3_psex, cw3_enddatem, cw3_enddated FROM[UKSERPUKLLC].[LLC_0001].[MCS_COVID_w3_v0001_20211101]") dsn (LLC_DB)
generate source="MCS_COVID_w3"
generate llc_stamp_year=2021
generate llc_stamp_month=cw3_enddatem
generate llc_stamp_day=cw3_enddated
drop cw3_enddated
drop cw3_enddatem
rename cw3_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\MCS_COVID_w3", replace 


***NCDS58***************************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, ethnic, intdate FROM [UKSERPUKLLC].[LLC_0001].[NCDS58_ncds6_v0001_1_20211101]") dsn (LLC_DB)
generate source="NCDS58_ncds6"
generate llc_stamp_year=mod(intdate, 10000)
generate llc_stamp_month=01
generate llc_stamp_day=01
drop intdate
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_ncds6", replace

clear 
odbc load, exec("select LLC_0001_stud_id, cw1_psex, cw1_enddate FROM [UKSERPUKLLC].[LLC_0001].[NCDS58_COVID_w1_v0001_20211101]") dsn (LLC_DB)
keep LLC_0001_stud_id cw1_psex cw1_enddate
generate source="NCDS58_COVID_w1"
generate llc_stamp_year=2020
generate llc_stamp_month=5
generate llc_stamp_day=cw1_enddate
drop cw1_enddate
rename cw1_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w1", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw2_psex, cw2_enddated, cw2_enddatem FROM [UKSERPUKLLC].[LLC_0001].[NCDS58_COVID_w2_v0001_20211101]") dsn (LLC_DB)
generate source="NCDS58_COVID_w2"
generate llc_stamp_year=2020
generate llc_stamp_month=cw2_enddatem
generate llc_stamp_day=cw2_enddated
drop cw2_enddated
drop cw2_enddatem
rename cw2_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w2", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw3_psex, cw3_enddatem, cw3_enddated FROM [UKSERPUKLLC].[LLC_0001].[NCDS58_COVID_w3_v0001_20211101]") dsn (LLC_DB)
generate source="NCDS58_COVID_w3"
generate llc_stamp_year=2021
generate llc_stamp_month=cw3_enddatem
generate llc_stamp_day=cw3_enddated
drop cw3_enddated
drop cw3_enddatem
rename cw3_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NCDS58_COVID_w3", replace

***NEXTSTEP***************************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, W1ethgrpYP, W8BDATM, W8BDATY FROM [UKSERPUKLLC].[LLC_0001].[NEXTSTEP_basic_demographic_data_v0001_20211101]") dsn (LLC_DB)
generate source="NEXTSTEP_basic_demographic_data"
generate llc_stamp_year=2004
generate llc_stamp_month=01
generate llc_stamp_day=01
rename W1ethgrpYP ethnic
rename W8BDATM mob 
rename W8BDATY yob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_basic_demographic_data", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw1_psex, cw1_enddate FROM [UKSERPUKLLC].[LLC_0001].[NEXTSTEP_COVID_w1_v0001_20211101]") dsn (LLC_DB)
keep LLC_0001_stud_id cw1_psex cw1_enddate
generate source="NEXTSTEP_COVID_w1"
generate llc_stamp_year=2020
generate llc_stamp_month=5
generate llc_stamp_day=cw1_enddate
drop cw1_enddate
rename cw1_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w1", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw2_psex, cw2_enddated, cw2_enddatem FROM [UKSERPUKLLC].[LLC_0001].[NEXTSTEP_COVID_w2_v0001_20211101]") dsn (LLC_DB)
generate source="NEXTSTEP_COVID_w2"
generate llc_stamp_year=2020
generate llc_stamp_month=cw2_enddatem
generate llc_stamp_day=cw2_enddated
drop cw2_enddated
drop cw2_enddatem
rename cw2_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w2", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw3_psex, cw3_enddatem, cw3_enddated FROM [UKSERPUKLLC].[LLC_0001].[NEXTSTEP_COVID_w3_v0001_20211101]") dsn (LLC_DB)
generate source="NEXTSTEP_COVID_w3"
generate llc_stamp_year=2021
generate llc_stamp_month=cw3_enddatem
generate llc_stamp_day=cw3_enddated
drop cw3_enddated
drop cw3_enddatem
rename cw3_psex sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NEXTSTEP_COVID_w3", replace

***NICOLA*****************
clear
odbc load, exec("select LLC_0001_stud_id, DN002, DN003, GD002, wave1interviewdate FROM [UKSERPUKLLC].[LLC_0001].[NICOLA_Wave1CAPI_v0001_20211101]") dsn (LLC_DB)
generate source="NICOLA_Wave1CAPI"
generate dob= 01 
rename DN002 mob 
rename DN003 yob
generate llc_timestamp=dofc(wave1interviewdate)
format llc_timestamp %td 
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop wave1interviewdate llc_timestamp
rename GD002 sex
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NICOLA_Wave1CAPI", replace


***NIHRBIO_COPING******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, Ethnicity, age, sex, gender FROM [UKSERPUKLLC].[LLC_0001].[NIHRBIO_COPING_Bioresource_v0001_20210719]") dsn (LLC_DB)
generate source="NIHRBIO_COPING_Bioresource"
***start data is null ..  no date provided ... range is 2018 to 2021
generate llc_stamp_year=2021
generate llc_stamp_month=01
generate llc_stamp_day=01
rename Ethnicity ethnic 
generate dos=mdy(llc_stamp_month,llc_stamp_day,llc_stamp_year)
format dos %td
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NIHRBIO_COPING_Bioresource.dta", replace

***NSHD46******************************************************************************************************************************
**Approx 1996-2014
clear
odbc load, exec("select LLC_0001_stud_id, sex FROM [UKSERPUKLLC].[LLC_0001].[NSHD46_SOCIODEMOGRAPHICS_v0001_20211101]") dsn (LLC_DB)
generate source="NSHD46_SOCIODEMOGRAPHICS"
generate llc_stamp_year=2014
generate llc_stamp_month=01
generate llc_stamp_day=01
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_SOCIODEMOGRAPHICS.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw1_sext, cw1_covdtmnth, cw1_covdtday FROM [UKSERPUKLLC].[LLC_0001].[NSHD46_COVIDW1WEBPOSTAL_v0001_20211101]") dsn (LLC_DB)
generate source="NSHD46_COVIDW1WEBPOSTAL"
generate llc_stamp_year=2020
generate llc_stamp_month=cw1_covdtmnth
generate llc_stamp_day=cw1_covdtday
replace llc_stamp_day=01 if llc_stamp_day==.
replace llc_stamp_month=01 if llc_stamp_month==.
rename cw1_sext sex
drop cw1_covdtmnth cw1_covdtday
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW1WEBPOSTAL.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw2_psex, cw2_covdtmnth, cw2_covdtday FROM [UKSERPUKLLC].[LLC_0001].[NSHD46_COVIDW2WEBPOSTAL_v0001_20211101]") dsn (LLC_DB)
generate source="COVIDW2WEBPOSTAL"
generate llc_stamp_year=2020
generate llc_stamp_month=cw2_covdtmnth
generate llc_stamp_day=cw2_covdtday
replace llc_stamp_day=01 if llc_stamp_day==.
replace llc_stamp_month=01 if llc_stamp_month==.
rename cw2_psex sex
drop cw2_covdtmnth cw2_covdtday
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW2WEBPOSTAL.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, cw3_psex, CW3_ENDDATED, CW3_ENDDATEM FROM [UKSERPUKLLC].[LLC_0001].[NSHD46_COVIDW3WEB_v0001_20211101]") dsn (LLC_DB)
generate source="NSHD46_COVIDW3WEB"
generate llc_stamp_year=2021
generate llc_stamp_month=CW3_ENDDATEM
generate llc_stamp_day=CW3_ENDDATED
replace llc_stamp_day=01 if llc_stamp_day==.
replace llc_stamp_month=01 if llc_stamp_month==.
rename cw3_psex sex
drop CW3_ENDDATED CW3_ENDDATEM
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\NSHD46_COVIDW3WEBPOSTAL.dta", replace


***SABRE******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, sex FROM [UKSERPUKLLC].[LLC_0001].[SABRE_sociodemographic_visit1_v0001_20211101]") dsn (LLC_DB)
generate source="SABRE_sociodemographic_visit1"
generate llc_stamp_year=1990
generate llc_stamp_month=01
generate llc_stamp_day=01
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit1.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, sexv3, agev3, ethnicity_srdetail_encv3 FROM [UKSERPUKLLC].[LLC_0001].[SABRE_sociodemographic_visit3_v0001_20211101]") dsn (LLC_DB)
generate source="SABRE_sociodemographic_visit3"
generate llc_stamp_year=2018
generate llc_stamp_month=01
generate llc_stamp_day=01
rename sexv3 sex 
rename agev3 age
rename ethnicity_srdetail_encv3 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\SABRE_sociodemographic_visit3.dta", replace

***TRACKC19******************************************************************************************************************************

clear
odbc load, exec("select LLC_0001_stud_id, ethnicity, consented, age, sex FROM [UKSERPUKLLC].[LLC_0001].[TRACKC19_basicInfo_v0001_20210915]") dsn (LLC_DB)
generate source="TRACKC19_basicInfo"
generate llc_timestamp= date(consented, "DMY")
format llc_timestamp %td 
generate llc_stamp_year=year(llc_timestamp)
generate llc_stamp_month=month(llc_timestamp)
generate llc_stamp_day=day(llc_timestamp)
drop consented 
rename llc_timestamp dos
rename ethnicity ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TRACKC19_basicInfo.dta", replace

***TWINSUK******************************************************************************************************************************
*Harmonised already from COPE1/joining registry etc.
clear
odbc load, exec("select LLC_0001_stud_id, A1, A2, A4 FROM [UKSERPUKLLC].[LLC_0001].[TWINSUK_DEMOGRAPHICS_v0001_20220531]") dsn (LLC_DB)
generate source="TWINSUK_DEMOGRAPHICS"
generate llc_stamp_year=2020
generate llc_stamp_month=01
generate llc_stamp_day=01
rename A1 sex 
rename A2 yob
rename A4 ethnic
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\TWINSUK_DEMOGRAPHICS.dta", replace


***UKHLS******************************************************************************************************************************
clear
odbc load, exec("select LLC_0001_stud_id, j_sex FROM [UKSERPUKLLC].[LLC_0001].[UKHLS_j_indresp_v0003_1_20220531]") dsn (LLC_DB)
generate source="UKHLS_j_indresp"
generate llc_stamp_year=2019
generate llc_stamp_month=01
generate llc_stamp_day=01
rename j_sex sex 
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_j_indresp.dta", replace

clear
odbc load, exec("select LLC_0001_stud_id, sex_dv, birthy, racel_dv FROM [UKSERPUKLLC].[LLC_0001].[UKHLS_xsample_v0003_20220531]") dsn (LLC_DB)
generate source="UKHLS_xsample"
generate llc_stamp_year=2021
generate llc_stamp_month=01
generate llc_stamp_day=01
rename sex_dv sex 
rename racel_dv ethnic
rename birthy yob
save "S:\LLC_0001\Self-Reported Harmonised Variables\Datasets\Tables\Self-Report Tables\UKHLS_xsample.dta", replace

***FOOTNOTE 

*****DATE SPLITTING APART HELP*****
** From this: 2020-03-07 07:45:02.000
*generate temp=word(originalvar,1)
** To this: 2020-03-07
*generate llc_timestamp= date(temp, "YMD")
** To this: 22056 (1960 thing)
**********************************************************
** From this: 21/05/2020 13:20 
*generate temp=word(originalvar,1)
** To this: 21/05/2020
*generate llc_timestamp= date(temp, "DMY")
** To this: 22056 (1960 thing)

**********************************************************
**From this: 02jun2010 00:00:00
*generate llc_timestamp=dofc(appt)
** To this: 22056 (1960 thing)

*********************************************************
**Use this to get to readable stata date: 
*format llc_timestamp %td 
**once in stata date format split apart timestamp into year, month, day 
*generate llc_stamp_year=year(llc_timestamp)
*generate llc_stamp_month=month(llc_timestamp)
*generate llc_stamp_day=day(llc_timestamp)



