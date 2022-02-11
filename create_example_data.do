
clear
input str1 long_cutoff_name str42(t1 t2) int(long_cutoff_number x) float(long_cutoff_float ft)
"i" "as;kc asl;kj aslkj oi u"                    "as;kc asl;kj aslkj oi u"                    9 6482 2.24272 2.24272
"b" "asdf"                                       "asdf"                                       2 5481 6.74855 6.74855
"c" "qwer"                                       "qwer"                                       3 6266 4.12106 4.12106
"d" "asdf"                                       "asdf"                                       6 9710 1.37849 1.37849
"e" "sdgh"                                       "sdgh"                                       4 3478 5.65284 5.65284
"f" "et"                                         "et"                                         6 3926 1.08749 1.08749
"g" "bs"                                         "bs"                                         8 1515 3.33354 3.33354
"h" "s4e"                                        "s4e"                                        5 1749 6.48579 6.48579
"a" "this is a long string that goes on forever" "this is a long string that goes on forever" 4 8262 4.27891 4.27891
end

char t1[_de_col_width_] 10
char t2[_de_col_width_] 120
format ft %5.2f
gen really_long_date_name = date("20210603", "YMD")+_n
gen dt = really_long_date_name - 250
format %tdnn/dd/YY really_long_date_name
format %td dt
replace really_long_date_name = date("20211212", "YMD") in -1
gen s = 1 in 1/5
replace s = 2 if mi(s)
label define slbl 1 "male person blah" 2 "female person blah"
label values s slbl
label define slbl2 1 "m" 2 "f"
gen gender_of_the_person = s
label values gender_of_the_person slbl2
