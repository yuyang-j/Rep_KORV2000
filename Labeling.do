
**************************
* Labeling the data
**************************

* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

quietly infix                ///
  int     year        1-4    ///
  long    serial      5-9    ///
  byte    month       10-11  ///
  double  cpsid       12-25  ///
  byte    asecflag    26-26  ///
  byte    hflag       27-27  ///
  double  asecwth     28-37  ///
  byte    pernum      38-39  ///
  double  cpsidp      40-53  ///
  double  asecwt      54-63  ///
  byte    age         64-65  ///
  byte    sex         66-66  ///
  int     race        67-69  ///
  int     ahrsworkt   70-72  ///
  int     occ50ly     73-75  ///
  int     occ90ly     76-78  ///
  byte    classwly    79-80  ///
  byte    workly      81-82  ///
  byte    wkswork1    83-84  ///
  byte    wkswork2    85-85  ///
  int     uhrsworkly  86-88  ///
  byte    fullpart    89-89  ///
  double  incwage     90-97  ///
  using ${data}/cps_00004.dat, clear

replace asecwth    = asecwth    / 10000
replace asecwt     = asecwt     / 10000

format cpsid      %14.0f
format asecwth    %10.4f
format cpsidp     %14.0f
format asecwt     %10.4f
format incwage    %8.0f

label var year       `"Survey year"'
label var serial     `"Household serial number"'
label var month      `"Month"'
label var cpsid      `"CPSID, household record"'
label var asecflag   `"Flag for ASEC"'
label var hflag      `"Flag for the 3/8 file 2014"'
label var asecwth    `"Annual Social and Economic Supplement Household weight"'
label var pernum     `"Person number in sample unit"'
label var cpsidp     `"CPSID, person record"'
label var asecwt     `"Annual Social and Economic Supplement Weight"'
label var age        `"Age"'
label var sex        `"Sex"'
label var race       `"Race"'
label var ahrsworkt  `"Hours worked last week"'
label var occ50ly    `"Occupation last year, 1950 basis"'
label var occ90ly    `"Occupation last year, 1990 basis"'
label var classwly   `"Class of worker last year"'
label var workly     `"Worked last year"'
label var wkswork1   `"Weeks worked last year"'
label var wkswork2   `"Weeks worked last year, intervalled"'
label var uhrsworkly `"Usual hours worked per week (last yr)"'
label var fullpart   `"Worked full or part time last year"'
label var incwage    `"Wage and salary income"'

label define month_lbl 01 `"January"'
label define month_lbl 02 `"February"', add
label define month_lbl 03 `"March"', add
label define month_lbl 04 `"April"', add
label define month_lbl 05 `"May"', add
label define month_lbl 06 `"June"', add
label define month_lbl 07 `"July"', add
label define month_lbl 08 `"August"', add
label define month_lbl 09 `"September"', add
label define month_lbl 10 `"October"', add
label define month_lbl 11 `"November"', add
label define month_lbl 12 `"December"', add
label values month month_lbl

label define asecflag_lbl 1 `"ASEC"'
label define asecflag_lbl 2 `"March Basic"', add
label values asecflag asecflag_lbl

label define hflag_lbl 0 `"5/8 file"'
label define hflag_lbl 1 `"3/8 file"', add
label values hflag hflag_lbl

label define age_lbl 00 `"Under 1 year"'
label define age_lbl 01 `"1"', add
label define age_lbl 02 `"2"', add
label define age_lbl 03 `"3"', add
label define age_lbl 04 `"4"', add
label define age_lbl 05 `"5"', add
label define age_lbl 06 `"6"', add
label define age_lbl 07 `"7"', add
label define age_lbl 08 `"8"', add
label define age_lbl 09 `"9"', add
label define age_lbl 10 `"10"', add
label define age_lbl 11 `"11"', add
label define age_lbl 12 `"12"', add
label define age_lbl 13 `"13"', add
label define age_lbl 14 `"14"', add
label define age_lbl 15 `"15"', add
label define age_lbl 16 `"16"', add
label define age_lbl 17 `"17"', add
label define age_lbl 18 `"18"', add
label define age_lbl 19 `"19"', add
label define age_lbl 20 `"20"', add
label define age_lbl 21 `"21"', add
label define age_lbl 22 `"22"', add
label define age_lbl 23 `"23"', add
label define age_lbl 24 `"24"', add
label define age_lbl 25 `"25"', add
label define age_lbl 26 `"26"', add
label define age_lbl 27 `"27"', add
label define age_lbl 28 `"28"', add
label define age_lbl 29 `"29"', add
label define age_lbl 30 `"30"', add
label define age_lbl 31 `"31"', add
label define age_lbl 32 `"32"', add
label define age_lbl 33 `"33"', add
label define age_lbl 34 `"34"', add
label define age_lbl 35 `"35"', add
label define age_lbl 36 `"36"', add
label define age_lbl 37 `"37"', add
label define age_lbl 38 `"38"', add
label define age_lbl 39 `"39"', add
label define age_lbl 40 `"40"', add
label define age_lbl 41 `"41"', add
label define age_lbl 42 `"42"', add
label define age_lbl 43 `"43"', add
label define age_lbl 44 `"44"', add
label define age_lbl 45 `"45"', add
label define age_lbl 46 `"46"', add
label define age_lbl 47 `"47"', add
label define age_lbl 48 `"48"', add
label define age_lbl 49 `"49"', add
label define age_lbl 50 `"50"', add
label define age_lbl 51 `"51"', add
label define age_lbl 52 `"52"', add
label define age_lbl 53 `"53"', add
label define age_lbl 54 `"54"', add
label define age_lbl 55 `"55"', add
label define age_lbl 56 `"56"', add
label define age_lbl 57 `"57"', add
label define age_lbl 58 `"58"', add
label define age_lbl 59 `"59"', add
label define age_lbl 60 `"60"', add
label define age_lbl 61 `"61"', add
label define age_lbl 62 `"62"', add
label define age_lbl 63 `"63"', add
label define age_lbl 64 `"64"', add
label define age_lbl 65 `"65"', add
label define age_lbl 66 `"66"', add
label define age_lbl 67 `"67"', add
label define age_lbl 68 `"68"', add
label define age_lbl 69 `"69"', add
label define age_lbl 70 `"70"', add
label define age_lbl 71 `"71"', add
label define age_lbl 72 `"72"', add
label define age_lbl 73 `"73"', add
label define age_lbl 74 `"74"', add
label define age_lbl 75 `"75"', add
label define age_lbl 76 `"76"', add
label define age_lbl 77 `"77"', add
label define age_lbl 78 `"78"', add
label define age_lbl 79 `"79"', add
label define age_lbl 80 `"80"', add
label define age_lbl 81 `"81"', add
label define age_lbl 82 `"82"', add
label define age_lbl 83 `"83"', add
label define age_lbl 84 `"84"', add
label define age_lbl 85 `"85"', add
label define age_lbl 86 `"86"', add
label define age_lbl 87 `"87"', add
label define age_lbl 88 `"88"', add
label define age_lbl 89 `"89"', add
label define age_lbl 90 `"90 (90+, 1988-2002)"', add
label define age_lbl 91 `"91"', add
label define age_lbl 92 `"92"', add
label define age_lbl 93 `"93"', add
label define age_lbl 94 `"94"', add
label define age_lbl 95 `"95"', add
label define age_lbl 96 `"96"', add
label define age_lbl 97 `"97"', add
label define age_lbl 98 `"98"', add
label define age_lbl 99 `"99+"', add
label values age age_lbl

label define sex_lbl 1 `"Male"'
label define sex_lbl 2 `"Female"', add
label define sex_lbl 9 `"NIU"', add
label values sex sex_lbl

label define race_lbl 100 `"White"'
label define race_lbl 200 `"Black/Negro"', add
label define race_lbl 300 `"American Indian/Aleut/Eskimo"', add
label define race_lbl 650 `"Asian or Pacific Islander"', add
label define race_lbl 651 `"Asian only"', add
label define race_lbl 652 `"Hawaiian/Pacific Islander only"', add
label define race_lbl 700 `"Other (single) race, n.e.c."', add
label define race_lbl 801 `"White-Black"', add
label define race_lbl 802 `"White-American Indian"', add
label define race_lbl 803 `"White-Asian"', add
label define race_lbl 804 `"White-Hawaiian/Pacific Islander"', add
label define race_lbl 805 `"Black-American Indian"', add
label define race_lbl 806 `"Black-Asian"', add
label define race_lbl 807 `"Black-Hawaiian/Pacific Islander"', add
label define race_lbl 808 `"American Indian-Asian"', add
label define race_lbl 809 `"Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 810 `"White-Black-American Indian"', add
label define race_lbl 811 `"White-Black-Asian"', add
label define race_lbl 812 `"White-American Indian-Asian"', add
label define race_lbl 813 `"White-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 814 `"White-Black-American Indian-Asian"', add
label define race_lbl 815 `"American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 816 `"White-Black--Hawaiian/Pacific Islander"', add
label define race_lbl 817 `"White-American Indian-Hawaiian/Pacific Islander"', add
label define race_lbl 818 `"Black-American Indian-Asian"', add
label define race_lbl 819 `"White-American Indian-Asian-Hawaiian/Pacific Islander"', add
label define race_lbl 820 `"Two or three races, unspecified"', add
label define race_lbl 830 `"Four or five races, unspecified"', add
label define race_lbl 999 `"Blank"', add
label values race race_lbl

label define occ50ly_lbl 000 `"Accountants and auditors"'
label define occ50ly_lbl 001 `"Actors and actresses"', add
label define occ50ly_lbl 002 `"Airplane pilots and navigators"', add
label define occ50ly_lbl 003 `"Architects"', add
label define occ50ly_lbl 004 `"Artists and art teachers"', add
label define occ50ly_lbl 005 `"Athletes"', add
label define occ50ly_lbl 006 `"Authors"', add
label define occ50ly_lbl 007 `"Chemists"', add
label define occ50ly_lbl 008 `"Chiropractors"', add
label define occ50ly_lbl 009 `"Clergymen"', add
label define occ50ly_lbl 010 `"College presidents and deans"', add
label define occ50ly_lbl 012 `"Agricultural sciences"', add
label define occ50ly_lbl 013 `"Biological sciences"', add
label define occ50ly_lbl 014 `"Chemistry"', add
label define occ50ly_lbl 015 `"Economics"', add
label define occ50ly_lbl 016 `"Engineering"', add
label define occ50ly_lbl 017 `"Geology and geophysics"', add
label define occ50ly_lbl 018 `"Mathematics"', add
label define occ50ly_lbl 019 `"Medical sciences"', add
label define occ50ly_lbl 023 `"Physics"', add
label define occ50ly_lbl 024 `"Psychology"', add
label define occ50ly_lbl 025 `"Statistics"', add
label define occ50ly_lbl 026 `"Natural science (n.e.c.)"', add
label define occ50ly_lbl 027 `"Social sciences (n.e.c.)"', add
label define occ50ly_lbl 028 `"Nonscientific subjects"', add
label define occ50ly_lbl 029 `"Subject not specified"', add
label define occ50ly_lbl 031 `"Dancers and dancing teachers"', add
label define occ50ly_lbl 032 `"Dentists"', add
label define occ50ly_lbl 033 `"Designers"', add
label define occ50ly_lbl 034 `"Dieticians and nutritionists"', add
label define occ50ly_lbl 035 `"Draftsmen"', add
label define occ50ly_lbl 036 `"Editors and reporters"', add
label define occ50ly_lbl 041 `"Engineers, aeronautical"', add
label define occ50ly_lbl 042 `"Engineers, chemical"', add
label define occ50ly_lbl 043 `"Engineers, civil"', add
label define occ50ly_lbl 044 `"Engineers, electrical"', add
label define occ50ly_lbl 045 `"Engineers, industrial"', add
label define occ50ly_lbl 046 `"Engineers, mechanical"', add
label define occ50ly_lbl 047 `"Engineers, metallurgical, metallurgists"', add
label define occ50ly_lbl 048 `"Engineers, mining"', add
label define occ50ly_lbl 049 `"Engineers (n.e.c.)"', add
label define occ50ly_lbl 051 `"Entertainers (n.e.c.)"', add
label define occ50ly_lbl 052 `"Farm and home management advisors"', add
label define occ50ly_lbl 053 `"Foresters and conservationists"', add
label define occ50ly_lbl 054 `"Funeral directors and embalmers"', add
label define occ50ly_lbl 055 `"Lawyers and judges"', add
label define occ50ly_lbl 056 `"Librarians"', add
label define occ50ly_lbl 057 `"Musicians and music teachers"', add
label define occ50ly_lbl 058 `"Nurses, professional"', add
label define occ50ly_lbl 059 `"Nurses, student professional"', add
label define occ50ly_lbl 061 `"Agricultural scientists"', add
label define occ50ly_lbl 062 `"Biological scientists"', add
label define occ50ly_lbl 063 `"Geologists and geophysicists"', add
label define occ50ly_lbl 067 `"Mathematicians"', add
label define occ50ly_lbl 068 `"Physicists"', add
label define occ50ly_lbl 069 `"Miscellaneous natural scientists"', add
label define occ50ly_lbl 070 `"Optometrists"', add
label define occ50ly_lbl 071 `"Osteopaths"', add
label define occ50ly_lbl 072 `"Personnel and labor relations workers"', add
label define occ50ly_lbl 073 `"Pharmacists"', add
label define occ50ly_lbl 074 `"Photographers"', add
label define occ50ly_lbl 075 `"Physicians and surgeons"', add
label define occ50ly_lbl 076 `"Radio operators"', add
label define occ50ly_lbl 077 `"Recreation and group workers"', add
label define occ50ly_lbl 078 `"Religious workers"', add
label define occ50ly_lbl 079 `"Social and welfare workers, except group"', add
label define occ50ly_lbl 081 `"Economists"', add
label define occ50ly_lbl 082 `"Psychologists"', add
label define occ50ly_lbl 083 `"Statisticians and actuaries"', add
label define occ50ly_lbl 084 `"Miscellaneous social scientists"', add
label define occ50ly_lbl 091 `"Sports instructors and officials"', add
label define occ50ly_lbl 092 `"Surveyors"', add
label define occ50ly_lbl 093 `"Teachers (n.e.c.)"', add
label define occ50ly_lbl 094 `"Technicians, medical and dental"', add
label define occ50ly_lbl 095 `"Technicians, testing"', add
label define occ50ly_lbl 096 `"Technicians (n.e.c.)"', add
label define occ50ly_lbl 097 `"Therapists and healers (n.e.c.)"', add
label define occ50ly_lbl 098 `"Veterinarians"', add
label define occ50ly_lbl 099 `"Professional, technical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 100 `"Farmers (owners and tenants)"', add
label define occ50ly_lbl 123 `"Farm managers"', add
label define occ50ly_lbl 200 `"Buyers and department heads, store"', add
label define occ50ly_lbl 201 `"Buyers and shippers, farm products"', add
label define occ50ly_lbl 203 `"Conductors, railroad"', add
label define occ50ly_lbl 204 `"Credit men"', add
label define occ50ly_lbl 205 `"Floormen and floor managers, store"', add
label define occ50ly_lbl 210 `"Inspectors, public administration"', add
label define occ50ly_lbl 230 `"Managers and superintendents, building"', add
label define occ50ly_lbl 240 `"Officers, pilots, pursers and engineers, ship"', add
label define occ50ly_lbl 250 `"Officials and administrators (n.e.c.), public administration"', add
label define occ50ly_lbl 260 `"Officials, lodge, society, union, etc."', add
label define occ50ly_lbl 270 `"Postmasters"', add
label define occ50ly_lbl 280 `"Purchasing agents and buyers (n.e.c.)"', add
label define occ50ly_lbl 290 `"Managers, officials, and proprietors (n.e.c.)"', add
label define occ50ly_lbl 300 `"Agents (n.e.c.)"', add
label define occ50ly_lbl 301 `"Attendants and assistants, library"', add
label define occ50ly_lbl 302 `"Attendants, physicians and dentists office"', add
label define occ50ly_lbl 304 `"Baggagemen, transportation"', add
label define occ50ly_lbl 305 `"Bank tellers"', add
label define occ50ly_lbl 310 `"Bookkeepers"', add
label define occ50ly_lbl 320 `"Cashiers"', add
label define occ50ly_lbl 321 `"Collectors, bill and account"', add
label define occ50ly_lbl 322 `"Dispatchers and starters, vehicle"', add
label define occ50ly_lbl 325 `"Express messengers and railway mail clerks"', add
label define occ50ly_lbl 335 `"Mail carriers"', add
label define occ50ly_lbl 340 `"Messengers and office boys"', add
label define occ50ly_lbl 341 `"Office machine operators"', add
label define occ50ly_lbl 342 `"Shipping and receiving clerks"', add
label define occ50ly_lbl 350 `"Stenographers, typists, and secretaries"', add
label define occ50ly_lbl 360 `"Telegraph messengers"', add
label define occ50ly_lbl 365 `"Telegraph operators"', add
label define occ50ly_lbl 370 `"Telephone operators"', add
label define occ50ly_lbl 380 `"Ticket, station, and express agents"', add
label define occ50ly_lbl 390 `"Clerical and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 400 `"Advertising agents and salesmen"', add
label define occ50ly_lbl 410 `"Auctioneers"', add
label define occ50ly_lbl 420 `"Demonstrators"', add
label define occ50ly_lbl 430 `"Hucksters and peddlers"', add
label define occ50ly_lbl 450 `"Insurance agents and brokers"', add
label define occ50ly_lbl 460 `"Newsboys"', add
label define occ50ly_lbl 470 `"Real estate agents and brokers"', add
label define occ50ly_lbl 480 `"Stock and bond salesmen"', add
label define occ50ly_lbl 490 `"Salesmen and sales clerks (n.e.c.)"', add
label define occ50ly_lbl 500 `"Bakers"', add
label define occ50ly_lbl 501 `"Blacksmiths"', add
label define occ50ly_lbl 502 `"Bookbinders"', add
label define occ50ly_lbl 503 `"Boilermakers"', add
label define occ50ly_lbl 504 `"Brickmasons, stonemasons, and tile setters"', add
label define occ50ly_lbl 505 `"Cabinetmakers"', add
label define occ50ly_lbl 510 `"Carpenters"', add
label define occ50ly_lbl 511 `"Cement and concrete finishers"', add
label define occ50ly_lbl 512 `"Compositors and typesetters"', add
label define occ50ly_lbl 513 `"Cranemen, derrickmen, and hoistmen"', add
label define occ50ly_lbl 514 `"Decorators and window dressers"', add
label define occ50ly_lbl 515 `"Electricians"', add
label define occ50ly_lbl 520 `"Electrotypers and stereotypers"', add
label define occ50ly_lbl 521 `"Engravers, except photoengravers"', add
label define occ50ly_lbl 522 `"Excavating, grading, and road machinery operators"', add
label define occ50ly_lbl 523 `"Foremen (n.e.c.)"', add
label define occ50ly_lbl 524 `"Forgemen and hammermen"', add
label define occ50ly_lbl 525 `"Furriers"', add
label define occ50ly_lbl 530 `"Glaziers"', add
label define occ50ly_lbl 531 `"Heat treaters, annealers, temperers"', add
label define occ50ly_lbl 532 `"Inspectors, scalers, and graders, log and lumber"', add
label define occ50ly_lbl 533 `"Inspectors (n.e.c.)"', add
label define occ50ly_lbl 534 `"Jewelers, watchmakers, goldsmiths, and silversmiths"', add
label define occ50ly_lbl 535 `"Job setters, metal"', add
label define occ50ly_lbl 540 `"Linemen and servicemen, telegraph, telephone, and power"', add
label define occ50ly_lbl 541 `"Locomotive engineers"', add
label define occ50ly_lbl 542 `"Locomotive firemen"', add
label define occ50ly_lbl 543 `"Loom fixers"', add
label define occ50ly_lbl 544 `"Machinists"', add
label define occ50ly_lbl 545 `"Mechanics and repairmen, airplane"', add
label define occ50ly_lbl 550 `"Mechanics and repairmen, automobile"', add
label define occ50ly_lbl 551 `"Mechanics and repairmen, office machine"', add
label define occ50ly_lbl 552 `"Mechanics and repairmen, radio and television"', add
label define occ50ly_lbl 553 `"Mechanics and repairmen, railroad and car shop"', add
label define occ50ly_lbl 554 `"Mechanics and repairmen (n.e.c.)"', add
label define occ50ly_lbl 555 `"Millers, grain, flour, feed, etc."', add
label define occ50ly_lbl 560 `"Millwrights"', add
label define occ50ly_lbl 561 `"Molders, metal"', add
label define occ50ly_lbl 562 `"Motion picture projectionists"', add
label define occ50ly_lbl 563 `"Opticians and lens grinders and polishers"', add
label define occ50ly_lbl 564 `"Painters, construction and maintenance"', add
label define occ50ly_lbl 565 `"Paperhangers"', add
label define occ50ly_lbl 570 `"Pattern and model makers, except paper"', add
label define occ50ly_lbl 571 `"Photoengravers and lithographers"', add
label define occ50ly_lbl 572 `"Piano and organ tuners and repairmen"', add
label define occ50ly_lbl 573 `"Plasterers"', add
label define occ50ly_lbl 574 `"Plumbers and pipe fitters"', add
label define occ50ly_lbl 575 `"Pressmen and plate printers, printing"', add
label define occ50ly_lbl 580 `"Rollers and roll hands, metal"', add
label define occ50ly_lbl 581 `"Roofers and slaters"', add
label define occ50ly_lbl 582 `"Shoemakers and repairers, except factory"', add
label define occ50ly_lbl 583 `"Stationary engineers"', add
label define occ50ly_lbl 584 `"Stone cutters and stone carvers"', add
label define occ50ly_lbl 585 `"Structural metal workers"', add
label define occ50ly_lbl 590 `"Tailors and tailoresses"', add
label define occ50ly_lbl 591 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ50ly_lbl 592 `"Tool makers, and die makers and setters"', add
label define occ50ly_lbl 593 `"Upholsterers"', add
label define occ50ly_lbl 594 `"Craftsmen and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 595 `"Members of the armed services"', add
label define occ50ly_lbl 600 `"Apprentice auto mechanics"', add
label define occ50ly_lbl 601 `"Apprentice bricklayers and masons"', add
label define occ50ly_lbl 602 `"Apprentice carpenters"', add
label define occ50ly_lbl 603 `"Apprentice electricians"', add
label define occ50ly_lbl 604 `"Apprentice machinists and toolmakers"', add
label define occ50ly_lbl 605 `"Apprentice mechanics, except auto"', add
label define occ50ly_lbl 610 `"Apprentice plumbers and pipe fitters"', add
label define occ50ly_lbl 611 `"Apprentices, building trades (n.e.c.)"', add
label define occ50ly_lbl 612 `"Apprentices, metalworking trades (n.e.c.)"', add
label define occ50ly_lbl 613 `"Apprentices, printing trades"', add
label define occ50ly_lbl 614 `"Apprentices, other specified trades"', add
label define occ50ly_lbl 615 `"Apprentices, trade not specified"', add
label define occ50ly_lbl 620 `"Asbestos and insulation workers"', add
label define occ50ly_lbl 621 `"Attendants, auto service and parking"', add
label define occ50ly_lbl 622 `"Blasters and powdermen"', add
label define occ50ly_lbl 623 `"Boatmen, canalmen, and lock keepers"', add
label define occ50ly_lbl 624 `"Brakemen, railroad"', add
label define occ50ly_lbl 625 `"Bus drivers"', add
label define occ50ly_lbl 630 `"Chainmen, rodmen, and axmen, surveying"', add
label define occ50ly_lbl 631 `"Conductors, bus and street railway"', add
label define occ50ly_lbl 632 `"Deliverymen and routemen"', add
label define occ50ly_lbl 633 `"Dressmakers and seamstresses, except factory"', add
label define occ50ly_lbl 634 `"Dyers"', add
label define occ50ly_lbl 635 `"Filers, grinders, and polishers, metal"', add
label define occ50ly_lbl 640 `"Fruit, nut, veg graders and packers, except factory"', add
label define occ50ly_lbl 641 `"Furnacemen, smeltermen and pourers"', add
label define occ50ly_lbl 642 `"Heaters, metal"', add
label define occ50ly_lbl 643 `"Laundry and dry cleaning operatives"', add
label define occ50ly_lbl 644 `"Meat cutters, except slaughter and packing house"', add
label define occ50ly_lbl 645 `"Milliners"', add
label define occ50ly_lbl 650 `"Mine operatives and laborers"', add
label define occ50ly_lbl 660 `"Motormen, mine, factory, logging camp, etc."', add
label define occ50ly_lbl 661 `"Motormen, street, subway, and elevated railway"', add
label define occ50ly_lbl 662 `"Oilers and greaser, except auto"', add
label define occ50ly_lbl 670 `"Painters, except construction or maintenance"', add
label define occ50ly_lbl 671 `"Photographic process workers"', add
label define occ50ly_lbl 672 `"Power station operators"', add
label define occ50ly_lbl 673 `"Sailors and deck hands"', add
label define occ50ly_lbl 674 `"Sawyers"', add
label define occ50ly_lbl 675 `"Spinners, textile"', add
label define occ50ly_lbl 680 `"Stationary firemen"', add
label define occ50ly_lbl 681 `"Switchmen, railroad"', add
label define occ50ly_lbl 682 `"Taxicab drivers and chauffers"', add
label define occ50ly_lbl 683 `"Truck and tractor drivers"', add
label define occ50ly_lbl 684 `"Weavers, textile"', add
label define occ50ly_lbl 685 `"Welders and flame cutters"', add
label define occ50ly_lbl 690 `"Operative and kindred workers (n.e.c.)"', add
label define occ50ly_lbl 700 `"Housekeepers, private household"', add
label define occ50ly_lbl 710 `"Laundressses, private household"', add
label define occ50ly_lbl 720 `"Private household workers (n.e.c.)"', add
label define occ50ly_lbl 730 `"Attendants, hospital and other institution"', add
label define occ50ly_lbl 731 `"Attendants, professional and personal service (n.e.c.)"', add
label define occ50ly_lbl 732 `"Attendants, recreation and amusement"', add
label define occ50ly_lbl 740 `"Barbers, beauticians, and manicurists"', add
label define occ50ly_lbl 750 `"Bartenders"', add
label define occ50ly_lbl 751 `"Bootblacks"', add
label define occ50ly_lbl 752 `"Boarding and lodging house keepers"', add
label define occ50ly_lbl 753 `"Charwomen and cleaners"', add
label define occ50ly_lbl 754 `"Cooks, except private household"', add
label define occ50ly_lbl 760 `"Counter and fountain workers"', add
label define occ50ly_lbl 761 `"Elevator operators"', add
label define occ50ly_lbl 762 `"Firemen, fire protection"', add
label define occ50ly_lbl 763 `"Guards, watchmen, and doorkeepers"', add
label define occ50ly_lbl 764 `"Housekeepers and stewards, except private household"', add
label define occ50ly_lbl 770 `"Janitors and sextons"', add
label define occ50ly_lbl 771 `"Marshals and constables"', add
label define occ50ly_lbl 772 `"Midwives"', add
label define occ50ly_lbl 773 `"Policemen and detectives"', add
label define occ50ly_lbl 780 `"Porters"', add
label define occ50ly_lbl 781 `"Practical nurses"', add
label define occ50ly_lbl 782 `"Sheriffs and bailiffs"', add
label define occ50ly_lbl 783 `"Ushers, recreation and amusement"', add
label define occ50ly_lbl 784 `"Waiters and waitresses"', add
label define occ50ly_lbl 785 `"Watchmen (crossing) and bridge tenders"', add
label define occ50ly_lbl 790 `"Service workers, except private household (n.e.c.)"', add
label define occ50ly_lbl 810 `"Farm foremen"', add
label define occ50ly_lbl 820 `"Farm laborers, wage workers"', add
label define occ50ly_lbl 830 `"Farm laborers, unpaid family workers"', add
label define occ50ly_lbl 840 `"Farm service laborers, self-employed"', add
label define occ50ly_lbl 910 `"Fishermen and oystermen"', add
label define occ50ly_lbl 920 `"Garage laborers and car washers and greasers"', add
label define occ50ly_lbl 930 `"Gardeners, except farm, and groundskeepers"', add
label define occ50ly_lbl 940 `"Longshoremen and stevedores"', add
label define occ50ly_lbl 950 `"Lumbermen, raftsmen, and woodchoppers"', add
label define occ50ly_lbl 960 `"Teamsters"', add
label define occ50ly_lbl 970 `"Laborers (n.e.c.)"', add
label define occ50ly_lbl 997 `"Unknown"', add
label define occ50ly_lbl 999 `"NIU"', add
label values occ50ly occ50ly_lbl

label define occ90ly_lbl 003 `"Legislators"'
label define occ90ly_lbl 004 `"Chief executives and public administrators"', add
label define occ90ly_lbl 007 `"Financial managers"', add
label define occ90ly_lbl 008 `"Human resources and labor relations managers"', add
label define occ90ly_lbl 013 `"Managers and specialists in marketing, advertising, and public relations"', add
label define occ90ly_lbl 014 `"Managers in education and related fields"', add
label define occ90ly_lbl 015 `"Managers of medicine and health occupations"', add
label define occ90ly_lbl 016 `"Postmasters and mail superintendents"', add
label define occ90ly_lbl 017 `"Managers of food-serving and lodging establishments"', add
label define occ90ly_lbl 018 `"Managers of properties and real estate"', add
label define occ90ly_lbl 019 `"Funeral directors"', add
label define occ90ly_lbl 021 `"Managers of service organizations, n.e.c."', add
label define occ90ly_lbl 022 `"Managers and administrators, n.e.c."', add
label define occ90ly_lbl 023 `"Accountants and auditors"', add
label define occ90ly_lbl 024 `"Insurance underwriters"', add
label define occ90ly_lbl 025 `"Other financial specialists"', add
label define occ90ly_lbl 026 `"Management analysts"', add
label define occ90ly_lbl 027 `"Personnel, HR, training, and labor relations specialists"', add
label define occ90ly_lbl 028 `"Purchasing agents and buyers, of farm products"', add
label define occ90ly_lbl 029 `"Buyers, wholesale and retail trade"', add
label define occ90ly_lbl 033 `"Purchasing managers, agents and buyers, n.e.c."', add
label define occ90ly_lbl 034 `"Business and promotion agents"', add
label define occ90ly_lbl 035 `"Construction inspectors"', add
label define occ90ly_lbl 036 `"Inspectors and compliance officers, outside construction"', add
label define occ90ly_lbl 037 `"Management support occupations"', add
label define occ90ly_lbl 043 `"Architects"', add
label define occ90ly_lbl 044 `"Aerospace engineer"', add
label define occ90ly_lbl 045 `"Metallurgical and materials engineers, variously phrased"', add
label define occ90ly_lbl 047 `"Petroleum, mining, and geological engineers"', add
label define occ90ly_lbl 048 `"Chemical engineers"', add
label define occ90ly_lbl 053 `"Civil engineers"', add
label define occ90ly_lbl 055 `"Electrical engineer"', add
label define occ90ly_lbl 056 `"Industrial engineers"', add
label define occ90ly_lbl 057 `"Mechanical engineers"', add
label define occ90ly_lbl 059 `"Not-elsewhere-classified engineers"', add
label define occ90ly_lbl 064 `"Computer systems analysts and computer scientists"', add
label define occ90ly_lbl 065 `"Operations and systems researchers and analysts"', add
label define occ90ly_lbl 066 `"Actuaries"', add
label define occ90ly_lbl 067 `"Statisticians"', add
label define occ90ly_lbl 068 `"Mathematicians and mathematical scientists"', add
label define occ90ly_lbl 069 `"Physicists and astronomers"', add
label define occ90ly_lbl 073 `"Chemists"', add
label define occ90ly_lbl 074 `"Atmospheric and space scientists"', add
label define occ90ly_lbl 075 `"Geologists"', add
label define occ90ly_lbl 076 `"Physical scientists, n.e.c."', add
label define occ90ly_lbl 077 `"Agricultural and food scientists"', add
label define occ90ly_lbl 078 `"Biological scientists"', add
label define occ90ly_lbl 079 `"Foresters and conservation scientists"', add
label define occ90ly_lbl 083 `"Medical scientists"', add
label define occ90ly_lbl 084 `"Physicians"', add
label define occ90ly_lbl 085 `"Dentists"', add
label define occ90ly_lbl 086 `"Veterinarians"', add
label define occ90ly_lbl 087 `"Optometrists"', add
label define occ90ly_lbl 088 `"Podiatrists"', add
label define occ90ly_lbl 089 `"Other health and therapy"', add
label define occ90ly_lbl 095 `"Registered nurses"', add
label define occ90ly_lbl 096 `"Pharmacists"', add
label define occ90ly_lbl 097 `"Dietitians and nutritionists"', add
label define occ90ly_lbl 098 `"Respiratory therapists"', add
label define occ90ly_lbl 099 `"Occupational therapists"', add
label define occ90ly_lbl 103 `"Physical therapists"', add
label define occ90ly_lbl 104 `"Speech therapists"', add
label define occ90ly_lbl 105 `"Therapists, n.e.c."', add
label define occ90ly_lbl 106 `"Physicians' assistants"', add
label define occ90ly_lbl 113 `"Earth, environmental, and marine science instructors"', add
label define occ90ly_lbl 114 `"Biological science instructors"', add
label define occ90ly_lbl 115 `"Chemistry instructors"', add
label define occ90ly_lbl 116 `"Physics instructors"', add
label define occ90ly_lbl 118 `"Psychology instructors"', add
label define occ90ly_lbl 119 `"Economics instructors"', add
label define occ90ly_lbl 123 `"History instructors"', add
label define occ90ly_lbl 125 `"Sociology instructors"', add
label define occ90ly_lbl 127 `"Engineering instructors"', add
label define occ90ly_lbl 128 `"Math instructors"', add
label define occ90ly_lbl 139 `"Education instructors"', add
label define occ90ly_lbl 145 `"Law instructors"', add
label define occ90ly_lbl 147 `"Theology instructors"', add
label define occ90ly_lbl 149 `"Home economics instructors"', add
label define occ90ly_lbl 150 `"Humanities profs/instructors, college, nec"', add
label define occ90ly_lbl 154 `"Subject instructors (HS/college)"', add
label define occ90ly_lbl 155 `"Kindergarten and earlier school teachers"', add
label define occ90ly_lbl 156 `"Primary school teachers"', add
label define occ90ly_lbl 157 `"Secondary school teachers"', add
label define occ90ly_lbl 158 `"Special education teachers"', add
label define occ90ly_lbl 159 `"Teachers , n.e.c."', add
label define occ90ly_lbl 163 `"Vocational and educational counselors"', add
label define occ90ly_lbl 164 `"Librarians"', add
label define occ90ly_lbl 165 `"Archivists and curators"', add
label define occ90ly_lbl 166 `"Economists, market researchers, and survey researchers"', add
label define occ90ly_lbl 167 `"Psychologists"', add
label define occ90ly_lbl 168 `"Sociologists"', add
label define occ90ly_lbl 169 `"Social scientists, n.e.c."', add
label define occ90ly_lbl 173 `"Urban and regional planners"', add
label define occ90ly_lbl 174 `"Social workers"', add
label define occ90ly_lbl 175 `"Recreation workers"', add
label define occ90ly_lbl 176 `"Clergy and religious workers"', add
label define occ90ly_lbl 178 `"Lawyers"', add
label define occ90ly_lbl 179 `"Judges"', add
label define occ90ly_lbl 183 `"Writers and authors"', add
label define occ90ly_lbl 184 `"Technical writers"', add
label define occ90ly_lbl 185 `"Designers"', add
label define occ90ly_lbl 186 `"Musician or composer"', add
label define occ90ly_lbl 187 `"Actors, directors, producers"', add
label define occ90ly_lbl 188 `"Art makers: painters, sculptors, craft-artists, and print-makers"', add
label define occ90ly_lbl 189 `"Photographers"', add
label define occ90ly_lbl 193 `"Dancers"', add
label define occ90ly_lbl 194 `"Art/entertainment performers and related"', add
label define occ90ly_lbl 195 `"Editors and reporters"', add
label define occ90ly_lbl 198 `"Announcers"', add
label define occ90ly_lbl 199 `"Athletes, sports instructors, and officials"', add
label define occ90ly_lbl 200 `"Professionals, n.e.c."', add
label define occ90ly_lbl 203 `"Clinical laboratory technologies and technicians"', add
label define occ90ly_lbl 204 `"Dental hygenists"', add
label define occ90ly_lbl 205 `"Health record tech specialists"', add
label define occ90ly_lbl 206 `"Radiologic tech specialists"', add
label define occ90ly_lbl 207 `"Licensed practical nurses"', add
label define occ90ly_lbl 208 `"Health technologists and technicians, n.e.c."', add
label define occ90ly_lbl 213 `"Electrical and electronic (engineering) technicians"', add
label define occ90ly_lbl 214 `"Engineering technicians, n.e.c."', add
label define occ90ly_lbl 215 `"Mechanical engineering technicians"', add
label define occ90ly_lbl 217 `"Drafters"', add
label define occ90ly_lbl 218 `"Surveyors, cartographers, mapping scientists and technicians"', add
label define occ90ly_lbl 223 `"Biological technicians"', add
label define occ90ly_lbl 224 `"Chemical technicians"', add
label define occ90ly_lbl 225 `"Other science technicians"', add
label define occ90ly_lbl 226 `"Airplane pilots and navigators"', add
label define occ90ly_lbl 227 `"Air traffic controllers"', add
label define occ90ly_lbl 228 `"Broadcast equipment operators"', add
label define occ90ly_lbl 229 `"Computer software developers"', add
label define occ90ly_lbl 233 `"Programmers of numerically controlled machine tools"', add
label define occ90ly_lbl 234 `"Legal assistants, paralegals, legal support, etc"', add
label define occ90ly_lbl 235 `"Technicians, n.e.c."', add
label define occ90ly_lbl 243 `"Supervisors and proprietors of sales jobs"', add
label define occ90ly_lbl 253 `"Insurance sales occupations"', add
label define occ90ly_lbl 254 `"Real estate sales occupations"', add
label define occ90ly_lbl 255 `"Financial services sales occupations"', add
label define occ90ly_lbl 256 `"Advertising and related sales jobs"', add
label define occ90ly_lbl 258 `"Sales engineers"', add
label define occ90ly_lbl 274 `"Salespersons, n.e.c."', add
label define occ90ly_lbl 275 `"Retail sales clerks"', add
label define occ90ly_lbl 276 `"Cashiers"', add
label define occ90ly_lbl 277 `"Door-to-door sales, street sales, and news vendors"', add
label define occ90ly_lbl 283 `"Sales demonstrators / promoters / models"', add
label define occ90ly_lbl 290 `"Sales workers--allocated (1990 internal census)"', add
label define occ90ly_lbl 303 `"Office supervisors"', add
label define occ90ly_lbl 308 `"Computer and peripheral equipment operators"', add
label define occ90ly_lbl 313 `"Secretaries"', add
label define occ90ly_lbl 314 `"Stenographers"', add
label define occ90ly_lbl 315 `"Typists"', add
label define occ90ly_lbl 316 `"Interviewers, enumerators, and surveyors"', add
label define occ90ly_lbl 317 `"Hotel clerks"', add
label define occ90ly_lbl 318 `"Transportation ticket and reservation agents"', add
label define occ90ly_lbl 319 `"Receptionists"', add
label define occ90ly_lbl 323 `"Information clerks, nec"', add
label define occ90ly_lbl 326 `"Correspondence and order clerks"', add
label define occ90ly_lbl 328 `"Human resources clerks, except payroll and timekeeping"', add
label define occ90ly_lbl 329 `"Library assistants"', add
label define occ90ly_lbl 335 `"File clerks"', add
label define occ90ly_lbl 336 `"Records clerks"', add
label define occ90ly_lbl 337 `"Bookkeepers and accounting and auditing clerks"', add
label define occ90ly_lbl 338 `"Payroll and timekeeping clerks"', add
label define occ90ly_lbl 343 `"Cost and rate clerks (financial records processing)"', add
label define occ90ly_lbl 344 `"Billing clerks and related financial records processing"', add
label define occ90ly_lbl 345 `"Duplication machine operators / office machine operators"', add
label define occ90ly_lbl 346 `"Mail and paper handlers"', add
label define occ90ly_lbl 347 `"Office machine operators, n.e.c."', add
label define occ90ly_lbl 348 `"Telephone operators"', add
label define occ90ly_lbl 349 `"Other telecom operators"', add
label define occ90ly_lbl 354 `"Postal clerks, excluding mail carriers"', add
label define occ90ly_lbl 355 `"Mail carriers for postal service"', add
label define occ90ly_lbl 356 `"Mail clerks, outside of post office"', add
label define occ90ly_lbl 357 `"Messengers"', add
label define occ90ly_lbl 359 `"Dispatchers"', add
label define occ90ly_lbl 361 `"Inspectors, n.e.c."', add
label define occ90ly_lbl 364 `"Shipping and receiving clerks"', add
label define occ90ly_lbl 365 `"Stock and inventory clerks"', add
label define occ90ly_lbl 366 `"Meter readers"', add
label define occ90ly_lbl 368 `"Weighers, measurers, and checkers"', add
label define occ90ly_lbl 373 `"Material recording, scheduling, production, planning, and expediting clerks"', add
label define occ90ly_lbl 375 `"Insurance adjusters, examiners, and investigators"', add
label define occ90ly_lbl 376 `"Customer service reps, investigators and adjusters, except insurance"', add
label define occ90ly_lbl 377 `"Eligibility clerks for government programs; social welfare"', add
label define occ90ly_lbl 378 `"Bill and account collectors"', add
label define occ90ly_lbl 379 `"General office clerks"', add
label define occ90ly_lbl 383 `"Bank tellers"', add
label define occ90ly_lbl 384 `"Proofreaders"', add
label define occ90ly_lbl 385 `"Data entry keyers"', add
label define occ90ly_lbl 386 `"Statistical clerks"', add
label define occ90ly_lbl 387 `"Teacher's aides"', add
label define occ90ly_lbl 389 `"Administrative support jobs, n.e.c."', add
label define occ90ly_lbl 390 `"Professional, technical, and kindred workers--allocated (1990 internal census)"', add
label define occ90ly_lbl 391 `"Clerical and kindred workers--allocated (1990 internal census)"', add
label define occ90ly_lbl 405 `"Housekeepers, maids, butlers, stewards, and lodging quarters cleaners"', add
label define occ90ly_lbl 407 `"Private household cleaners and servants"', add
label define occ90ly_lbl 408 `"Private household workers--allocated (1990 internal census)"', add
label define occ90ly_lbl 415 `"Supervisors of guards"', add
label define occ90ly_lbl 417 `"Fire fighting, prevention, and inspection"', add
label define occ90ly_lbl 418 `"Police, detectives, and private investigators"', add
label define occ90ly_lbl 423 `"Other law enforcement: sheriffs, bailiffs, correctional institution officers"', add
label define occ90ly_lbl 425 `"Crossing guards and bridge tenders"', add
label define occ90ly_lbl 426 `"Guards, watchmen, doorkeepers"', add
label define occ90ly_lbl 427 `"Protective services, n.e.c."', add
label define occ90ly_lbl 434 `"Bartenders"', add
label define occ90ly_lbl 435 `"Waiter/waitress"', add
label define occ90ly_lbl 436 `"Cooks, variously defined"', add
label define occ90ly_lbl 438 `"Food counter and fountain workers"', add
label define occ90ly_lbl 439 `"Kitchen workers"', add
label define occ90ly_lbl 443 `"Waiter's assistant"', add
label define occ90ly_lbl 444 `"Misc food prep workers"', add
label define occ90ly_lbl 445 `"Dental assistants"', add
label define occ90ly_lbl 446 `"Health aides, except nursing"', add
label define occ90ly_lbl 447 `"Nursing aides, orderlies, and attendants"', add
label define occ90ly_lbl 448 `"Supervisors of cleaning and building service"', add
label define occ90ly_lbl 453 `"Janitors"', add
label define occ90ly_lbl 454 `"Elevator operators"', add
label define occ90ly_lbl 455 `"Pest control occupations"', add
label define occ90ly_lbl 456 `"Supervisors of personal service jobs, n.e.c."', add
label define occ90ly_lbl 457 `"Barbers"', add
label define occ90ly_lbl 458 `"Hairdressers and cosmetologists"', add
label define occ90ly_lbl 459 `"Recreation facility attendants"', add
label define occ90ly_lbl 461 `"Guides"', add
label define occ90ly_lbl 462 `"Ushers"', add
label define occ90ly_lbl 463 `"Public transportation attendants and inspectors"', add
label define occ90ly_lbl 464 `"Baggage porters"', add
label define occ90ly_lbl 465 `"Welfare service aides"', add
label define occ90ly_lbl 468 `"Child care workers"', add
label define occ90ly_lbl 469 `"Personal service occupations, nec"', add
label define occ90ly_lbl 473 `"Farmers (owners and tenants)"', add
label define occ90ly_lbl 474 `"Horticultural specialty farmers"', add
label define occ90ly_lbl 475 `"Farm managers, except for horticultural farms"', add
label define occ90ly_lbl 476 `"Managers of horticultural specialty farms"', add
label define occ90ly_lbl 479 `"Farm workers"', add
label define occ90ly_lbl 480 `"Farm laborers and farm foreman--allocated (1990 internal census)"', add
label define occ90ly_lbl 483 `"Marine life cultivation workers"', add
label define occ90ly_lbl 484 `"Nursery farming workers"', add
label define occ90ly_lbl 485 `"Supervisors of agricultural occupations"', add
label define occ90ly_lbl 486 `"Gardeners and groundskeepers"', add
label define occ90ly_lbl 487 `"Animal caretakers except on farms"', add
label define occ90ly_lbl 488 `"Graders and sorters of agricultural products"', add
label define occ90ly_lbl 489 `"Inspectors of agricultural products"', add
label define occ90ly_lbl 496 `"Timber, logging, and forestry workers"', add
label define occ90ly_lbl 498 `"Fishers, hunters, and kindred"', add
label define occ90ly_lbl 503 `"Supervisors of mechanics and repairers"', add
label define occ90ly_lbl 505 `"Automobile mechanics"', add
label define occ90ly_lbl 507 `"Bus, truck, and stationary engine mechanics"', add
label define occ90ly_lbl 508 `"Aircraft mechanics"', add
label define occ90ly_lbl 509 `"Small engine repairers"', add
label define occ90ly_lbl 514 `"Auto body repairers"', add
label define occ90ly_lbl 516 `"Heavy equipment and farm equipment mechanics"', add
label define occ90ly_lbl 518 `"Industrial machinery repairers"', add
label define occ90ly_lbl 519 `"Machinery maintenance occupations"', add
label define occ90ly_lbl 523 `"Repairers of industrial electrical equipment"', add
label define occ90ly_lbl 525 `"Repairers of data processing equipment"', add
label define occ90ly_lbl 526 `"Repairers of household appliances and power tools"', add
label define occ90ly_lbl 527 `"Telecom and line installers and repairers"', add
label define occ90ly_lbl 533 `"Repairers of electrical equipment, n.e.c."', add
label define occ90ly_lbl 534 `"Heating, air conditioning, and refigeration mechanics"', add
label define occ90ly_lbl 535 `"Precision makers, repairers, and smiths"', add
label define occ90ly_lbl 536 `"Locksmiths and safe repairers"', add
label define occ90ly_lbl 538 `"Office machine repairers and mechanics"', add
label define occ90ly_lbl 539 `"Repairers of mechanical controls and valves"', add
label define occ90ly_lbl 543 `"Elevator installers and repairers"', add
label define occ90ly_lbl 544 `"Millwrights"', add
label define occ90ly_lbl 549 `"Mechanics and repairers, n.e.c."', add
label define occ90ly_lbl 558 `"Supervisors of construction work"', add
label define occ90ly_lbl 563 `"Masons, tilers, and carpet installers"', add
label define occ90ly_lbl 567 `"Carpenters"', add
label define occ90ly_lbl 573 `"Drywall installers"', add
label define occ90ly_lbl 575 `"Electricians"', add
label define occ90ly_lbl 577 `"Electric power installers and repairers"', add
label define occ90ly_lbl 579 `"Painters, construction and maintenance"', add
label define occ90ly_lbl 583 `"Paperhangers"', add
label define occ90ly_lbl 584 `"Plasterers"', add
label define occ90ly_lbl 585 `"Plumbers, pipe fitters, and steamfitters"', add
label define occ90ly_lbl 588 `"Concrete and cement workers"', add
label define occ90ly_lbl 589 `"Glaziers"', add
label define occ90ly_lbl 593 `"Insulation workers"', add
label define occ90ly_lbl 594 `"Paving, surfacing, and tamping equipment operators"', add
label define occ90ly_lbl 595 `"Roofers and slaters"', add
label define occ90ly_lbl 596 `"Sheet metal duct installers"', add
label define occ90ly_lbl 597 `"Structural metal workers"', add
label define occ90ly_lbl 598 `"Drillers of earth"', add
label define occ90ly_lbl 599 `"Construction trades, n.e.c."', add
label define occ90ly_lbl 614 `"Drillers of oil wells"', add
label define occ90ly_lbl 615 `"Explosives workers"', add
label define occ90ly_lbl 616 `"Miners"', add
label define occ90ly_lbl 617 `"Other mining occupations"', add
label define occ90ly_lbl 628 `"Production supervisors or foremen"', add
label define occ90ly_lbl 634 `"Tool and die makers and die setters"', add
label define occ90ly_lbl 637 `"Machinists"', add
label define occ90ly_lbl 643 `"Boilermakers"', add
label define occ90ly_lbl 644 `"Precision grinders and filers"', add
label define occ90ly_lbl 645 `"Patternmakers and model makers"', add
label define occ90ly_lbl 646 `"Lay-out workers"', add
label define occ90ly_lbl 649 `"Engravers"', add
label define occ90ly_lbl 653 `"Tinsmiths, coppersmiths, and sheet metal workers"', add
label define occ90ly_lbl 657 `"Cabinetmakers and bench carpenters"', add
label define occ90ly_lbl 658 `"Furniture and wood finishers"', add
label define occ90ly_lbl 659 `"Other precision woodworkers"', add
label define occ90ly_lbl 666 `"Dressmakers and seamstresses"', add
label define occ90ly_lbl 667 `"Tailors"', add
label define occ90ly_lbl 668 `"Upholsterers"', add
label define occ90ly_lbl 669 `"Shoe repairers"', add
label define occ90ly_lbl 674 `"Other precision apparel and fabric workers"', add
label define occ90ly_lbl 675 `"Hand molders and shapers, except jewelers"', add
label define occ90ly_lbl 677 `"Optical goods workers"', add
label define occ90ly_lbl 678 `"Dental laboratory and medical appliance technicians"', add
label define occ90ly_lbl 679 `"Bookbinders"', add
label define occ90ly_lbl 684 `"Other precision and craft workers"', add
label define occ90ly_lbl 686 `"Butchers and meat cutters"', add
label define occ90ly_lbl 687 `"Bakers"', add
label define occ90ly_lbl 688 `"Batch food makers"', add
label define occ90ly_lbl 693 `"Adjusters and calibrators"', add
label define occ90ly_lbl 694 `"Water and sewage treatment plant operators"', add
label define occ90ly_lbl 695 `"Power plant operators"', add
label define occ90ly_lbl 696 `"Plant and system operators, stationary engineers"', add
label define occ90ly_lbl 699 `"Other plant and system operators"', add
label define occ90ly_lbl 703 `"Lathe, milling, and turning machine operatives"', add
label define occ90ly_lbl 706 `"Punching and stamping press operatives"', add
label define occ90ly_lbl 707 `"Rollers, roll hands, and finishers of metal"', add
label define occ90ly_lbl 708 `"Drilling and boring machine operators"', add
label define occ90ly_lbl 709 `"Grinding, abrading, buffing, and polishing workers"', add
label define occ90ly_lbl 713 `"Forge and hammer operators"', add
label define occ90ly_lbl 717 `"Fabricating machine operators, n.e.c."', add
label define occ90ly_lbl 719 `"Molders, and casting machine operators"', add
label define occ90ly_lbl 723 `"Metal platers"', add
label define occ90ly_lbl 724 `"Heat treating equipment operators"', add
label define occ90ly_lbl 726 `"Wood lathe, routing, and planing machine operators"', add
label define occ90ly_lbl 727 `"Sawing machine operators and sawyers"', add
label define occ90ly_lbl 728 `"Shaping and joining machine operator (woodworking)"', add
label define occ90ly_lbl 729 `"Nail and tacking machine operators  (woodworking)"', add
label define occ90ly_lbl 733 `"Other woodworking machine operators"', add
label define occ90ly_lbl 734 `"Printing machine operators, n.e.c."', add
label define occ90ly_lbl 735 `"Photoengravers and lithographers"', add
label define occ90ly_lbl 736 `"Typesetters and compositors"', add
label define occ90ly_lbl 738 `"Winding and twisting textile/apparel operatives"', add
label define occ90ly_lbl 739 `"Knitters, loopers, and toppers textile operatives"', add
label define occ90ly_lbl 743 `"Textile cutting machine operators"', add
label define occ90ly_lbl 744 `"Textile sewing machine operators"', add
label define occ90ly_lbl 745 `"Shoemaking machine operators"', add
label define occ90ly_lbl 747 `"Pressing machine operators (clothing)"', add
label define occ90ly_lbl 748 `"Laundry workers"', add
label define occ90ly_lbl 749 `"Misc textile machine operators"', add
label define occ90ly_lbl 753 `"Cementing and gluing maching operators"', add
label define occ90ly_lbl 754 `"Packers, fillers, and wrappers"', add
label define occ90ly_lbl 755 `"Extruding and forming machine operators"', add
label define occ90ly_lbl 756 `"Mixing and blending machine operatives"', add
label define occ90ly_lbl 757 `"Separating, filtering, and clarifying machine operators"', add
label define occ90ly_lbl 759 `"Painting machine operators"', add
label define occ90ly_lbl 763 `"Roasting and baking machine operators (food)"', add
label define occ90ly_lbl 764 `"Washing, cleaning, and pickling machine operators"', add
label define occ90ly_lbl 765 `"Paper folding machine operators"', add
label define occ90ly_lbl 766 `"Furnace, kiln, and oven operators, apart from food"', add
label define occ90ly_lbl 768 `"Crushing and grinding machine operators"', add
label define occ90ly_lbl 769 `"Slicing and cutting machine operators"', add
label define occ90ly_lbl 773 `"Motion picture projectionists"', add
label define occ90ly_lbl 774 `"Photographic process workers"', add
label define occ90ly_lbl 779 `"Machine operators, n.e.c."', add
label define occ90ly_lbl 783 `"Welders and metal cutters"', add
label define occ90ly_lbl 784 `"Solderers"', add
label define occ90ly_lbl 785 `"Assemblers of electrical equipment"', add
label define occ90ly_lbl 789 `"Hand painting, coating, and decorating occupations"', add
label define occ90ly_lbl 796 `"Production checkers and inspectors"', add
label define occ90ly_lbl 799 `"Graders and sorters in manufacturing"', add
label define occ90ly_lbl 803 `"Supervisors of motor vehicle transportation"', add
label define occ90ly_lbl 804 `"Truck, delivery, and tractor drivers"', add
label define occ90ly_lbl 808 `"Bus drivers"', add
label define occ90ly_lbl 809 `"Taxi cab drivers and chauffeurs"', add
label define occ90ly_lbl 813 `"Parking lot attendants"', add
label define occ90ly_lbl 815 `"Transport equipment operatives--allocated (1990 internal census)"', add
label define occ90ly_lbl 823 `"Railroad conductors and yardmasters"', add
label define occ90ly_lbl 824 `"Locomotive operators (engineers and firemen)"', add
label define occ90ly_lbl 825 `"Railroad brake, coupler, and switch operators"', add
label define occ90ly_lbl 829 `"Ship crews and marine engineers"', add
label define occ90ly_lbl 834 `"Water transport infrastructure tenders and crossing guards"', add
label define occ90ly_lbl 844 `"Operating engineers of construction equipment"', add
label define occ90ly_lbl 848 `"Crane, derrick, winch, and hoist operators"', add
label define occ90ly_lbl 853 `"Excavating and loading machine operators"', add
label define occ90ly_lbl 859 `"Misc material moving occupations"', add
label define occ90ly_lbl 865 `"Helpers, constructions"', add
label define occ90ly_lbl 866 `"Helpers, surveyors"', add
label define occ90ly_lbl 869 `"Construction laborers"', add
label define occ90ly_lbl 874 `"Production helpers"', add
label define occ90ly_lbl 875 `"Garbage and recyclable material collectors"', add
label define occ90ly_lbl 876 `"Materials movers: stevedores and longshore workers"', add
label define occ90ly_lbl 877 `"Stock handlers"', add
label define occ90ly_lbl 878 `"Machine feeders and offbearers"', add
label define occ90ly_lbl 883 `"Freight, stock, and materials handlers"', add
label define occ90ly_lbl 885 `"Garage and service station related occupations"', add
label define occ90ly_lbl 887 `"Vehicle washers and equipment cleaners"', add
label define occ90ly_lbl 888 `"Packers and packagers by hand"', add
label define occ90ly_lbl 889 `"Laborers outside construction"', add
label define occ90ly_lbl 890 `"Laborers, except farm--allocated (1990 internal census)"', add
label define occ90ly_lbl 905 `"Military"', add
label define occ90ly_lbl 991 `"Unemployed"', add
label define occ90ly_lbl 999 `"NIU"', add
label values occ90ly occ90ly_lbl

label define classwly_lbl 00 `"NIU"'
label define classwly_lbl 10 `"Self-employed"', add
label define classwly_lbl 13 `"Self-employed, not incorporated"', add
label define classwly_lbl 14 `"Self-employed, incorporated"', add
label define classwly_lbl 20 `"Works for wages or salary"', add
label define classwly_lbl 22 `"Wage/salary, private"', add
label define classwly_lbl 24 `"Wage/salary, government"', add
label define classwly_lbl 25 `"Federal government employee"', add
label define classwly_lbl 27 `"State government employee"', add
label define classwly_lbl 28 `"Local government employee"', add
label define classwly_lbl 29 `"Unpaid family worker"', add
label define classwly_lbl 99 `"Missing/Unknown"', add
label values classwly classwly_lbl

label define workly_lbl 00 `"NIU"'
label define workly_lbl 01 `"No"', add
label define workly_lbl 02 `"Yes"', add
label values workly workly_lbl

label define wkswork2_lbl 0 `"NIU"'
label define wkswork2_lbl 1 `"1-13 weeks"', add
label define wkswork2_lbl 2 `"14-26 weeks"', add
label define wkswork2_lbl 3 `"27-39 weeks"', add
label define wkswork2_lbl 4 `"40-47 weeks"', add
label define wkswork2_lbl 5 `"48-49 weeks"', add
label define wkswork2_lbl 6 `"50-52 weeks"', add
label define wkswork2_lbl 9 `"Missing data"', add
label values wkswork2 wkswork2_lbl

label define fullpart_lbl 0 `"NIU"'
label define fullpart_lbl 1 `"Full-time"', add
label define fullpart_lbl 2 `"Part-time"', add
label define fullpart_lbl 9 `"Unknown"', add
label values fullpart fullpart_lbl


