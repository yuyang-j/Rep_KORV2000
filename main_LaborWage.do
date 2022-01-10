
set more off
estimates clear
clear

* Set wd and globals 

cd 	 "C:\Users\Yuki\Desktop\GradSchool\2021Fall\528\Replication_CapitalSkillComplement\Workdir"
do   set_globals.do

* Prepare crosswalk file to be merged
use ${data}/occ1990_occ1990dd.dta, clear
rename occ occ90ly
tempfile crosswalk
save `crosswalk'

* Prepare minimum wage data to be merged
import delimited ${data}/FEDMINNFRWG.csv, clear
gen str4 year = substr(date, 1,4)
gen str2 month = substr(date, 6,7)
destring year, replace
destring month, replace
keep if month == 3			/* keep data of March -- survey time in CPS data */
rename fedminnfrwg minimum_wage
keep year minimum_wage
tempfile mwage
save `mwage', replace

* Pull in CPS data and add labels
do Labeling.do

* Merge with Dorn's occupation classification
merge m:1 occ90ly using `crosswalk',  keep (3) nogen
			/* not matched: other telecom operators (63 obs), military, NIU */
label var occ1990dd "Occupation last year, dd system"

* Merge with minimum wage data
merge m:1 year using `mwage', keep(3) nogen

* Routinely drop ill-behaved observations

drop if age<16|age>70

drop if classwly == 29  /* unpaid family workers */
drop if classwly == 10 | classwly == 13 | classwly == 14 
							/* self-employed    */
drop if (occ1990dd>=473 & occ1990dd<=475)  /* farm operators and managers */     
drop if (occ1990dd>=479 & occ1990dd<=498)  /* other agricultural and related occs */
drop if occ90ly == 349	/* Other telecommunication operators not classified by dd */
drop if occ90ly == 905	/* Military */
drop if occ90ly == 999  /* Occupations not in universe */ 
drop if uhrsworkly==0		/* report zero usual hours worked (0 dropped) */

* aggregate to 3 occupation groups
do subfile_occ1990dd_occgroups.do

gen occ_major = occ1_managproftech
replace occ_major =  2*(occ1_service + occ1_transmechcraft) if occ_major==0
replace occ_major =  3*(occ1_clericretail + occ1_product + occ1_operator) if occ_major==0

label define occ_major_lbl 1 `"Abstract"'
label define occ_major_lbl 2 `"Manual"', add
label define occ_major_lbl 3 `"Routine"', add
label values occ_major occ_major_lbl

* replace occ_manl = 1 if (occ1990dd >=451 & occ1990dd <=453) 
							/* bring back janitor, pest control and gardeners */
							
assert occ_major>0 if occ1990dd<4 | occ1990dd>889 | occ1990dd==.
drop occ1_* occ2_* occ3_*

* Generate race groups 
gen cat_race = 0
replace cat_race = 1 if race == 100
replace cat_race = 2 if race == 200

label define cat_race_lbl 1 `"White"'
label define cat_race_lbl 2 `"Black/Negro"', add
label define cat_race_lbl 0 `"Others"', add
label values cat_race cat_race_lbl

* Generate age groups 
gen cat_age = 1
replace cat_age = 2 if (age>=21 & age<=25)
replace cat_age = 3 if (age>=26 & age<=30)
replace cat_age = 4 if (age>=31 & age<=35)
replace cat_age = 5 if (age>=36 & age<=40)
replace cat_age = 6 if (age>=41 & age<=45)
replace cat_age = 7 if (age>=46 & age<=50)
replace cat_age = 8 if (age>=51 & age<=55)
replace cat_age = 9 if (age>=56 & age<=60)
replace cat_age = 10 if (age>=61 & age<=65)
replace cat_age = 11 if (age>=66 & age<=70)

label define cat_age_lbl 1 `"White"'
label define cat_age_lbl 2 `"Black/Negro"', add
label define cat_age_lbl 0 `"Others"', add
label values cat_race cat_race_lbl

* impute weeks worked last year by average of later years obs of the same interval
replace wkswork1 = 8.1 if (year <= 1975 & wkswork1 ==. &wkswork2 == 1)
replace wkswork1 = 21.5 if (year <= 1975 & wkswork1 ==. & wkswork2 == 2)
replace wkswork1 = 33.6 if (year <= 1975 & wkswork1 ==. & wkswork2 == 3)
replace wkswork1 = 42.6 if (year <= 1975 & wkswork1 ==. & wkswork2 == 4)
replace wkswork1 = 48.3 if (year <= 1975 & wkswork1 ==. & wkswork2 == 5)
replace wkswork1 = 51.8 if (year <= 1975 & wkswork1 ==. & wkswork2 == 6)

* impute hours worked last week to proxy usual hours per week worked last year

* Need to top-code hours worked last week: 15% reports 999hrs
replace ahrsworkt = 70 if (ahrsworkt>70 & ahrsworkt!=.)
replace uhrsworkly = 70 if (uhrsworkly>70 & uhrsworkly!=.)

replace uhrsworkly = ahrsworkt ///
				       if (year<=1975 & uhrsworkly ==. & ahrsworkt>0 & ahrsworkt!=.)
					   
* replace with group mean of usual hours worked per week 
*         if last week hours = 0 but incwage last year > 0 
replace uhrsworkly = . if (uhrsworkly==0 & year<=1975)
gen pos_income = incwage>0
bysort year cat_age cat_race sex fullpart occ_major pos_income : ///
						egen avghrswork = mean(uhrsworkly) 
replace uhrsworkly = avghrswork if (uhrsworkly == . & year <1975 & incwage>0)
*		 Didn't really see these examples, though Musa's JMP claimed there to be


* calculate hours and hourly wage
gen hours = wkswork1 * uhrsworkly
gen hrwage = .
replace hrwage = incwage/hours if (hours>0 & hours!=.)

* drop those with hours below quarter of part time work 
* and wage less than half minimum wage
drop if hours<260 
drop if hrwage < 0.5*minimum_wage

* compute group average hours and wage
gen wgt_hours = asecwt * hours
bysort year cat_age cat_race sex occ_major : egen hours_raw = total(wgt_hours)
bysort year cat_age cat_race sex occ_major : egen weight_g = total(asecwt)
gen hours_g = hours_raw / weight_g

gen wgt_wage = asecwt * hrwage
bysort year cat_age cat_race sex occ_major : egen wage_raw = total(wgt_wage)
gen wage_g = wage_raw / weight_g

* collapse to 198 groups
collapse hours_g wage_g weight_g,  by(year cat_age cat_race sex occ_major)
bys year cat_age cat_race sex occ_major: gen wage_80 = wage_g * (year==1980)
sort cat_age cat_race sex occ_major wage_80
bys cat_age cat_race sex occ_major: replace wage_80 = wage_80[_N]
bys year cat_age cat_race sex occ_major: gen hour_occ80 = hours_g * weight_g * wage_80
bys year cat_age cat_race sex occ_major: gen wage_occraw = hours_g * weight_g * wage_g
bys year occ_major: egen hour_occ = total(hour_occ80)
bys year occ_major: egen wage_occtot = total(wage_occraw)
gen wage_occ = wage_occtot / hour_occ

* collapse to major occupation x year and reshape 
collapse hour_occ wage_occ, by(year occ_major)
reshape wide hour_occ wage_occ, i(year) j(occ_major)

rename hour_occ1 L_a
rename hour_occ2 L_m
rename hour_occ3 L_r
rename hour_occ0 L_NIU

rename wage_occ1 w_a
rename wage_occ2 w_m
rename wage_occ3 w_r 
rename wage_occ0 w_NIU

export excel using labor_input.xlsx, firstrow(var) replace





















































