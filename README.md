# Rep_KORV2000
A replication work that extends the findings on skill premium to capital-skill complementarity and substitutability, where occupations are classified into "abstract, manual and routine". 
To get the labor input data:
1. in main_LaborWage.do, set the working directory after "cd";
2. in set_globals.do, set the directories that store data (and potentially any figures and tables), which includes
 - cps_00004.dat, the CPS data 1962~2019 extracted from IPUMS, documenting cross-sections of individual income, occupation (in the 1990 system) and socioeconomic information.
 - FEDMINNFRWG.csv, the minimum wage data starting from 1961, provided by FRED.
 - occ1990_occ1990dd.dta, the crosswalk linking 1990 occupational classification to the occupation code developed in David Dorn's dissertation. 
 
3. Make sure the following .do files are in the working directory: 
 - Labeling.do, which processes the CPS data and do labeling work
 - subfile_occ1990dd_occgroups.do,  which aggregates occupations into 6 major groups defined in Autor and Dorn (2013). 
 
4. execute main_LaborWage.do . The output contains wages and annual labor supply in hours by four occupational classes: abstract, manual, routine and NIU. The last one contains occupations not in the universe of David Dorn's occupation system. 
