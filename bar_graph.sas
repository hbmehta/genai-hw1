/* Demo Data: Medication Use by Drug Class in Older Adults */

data drug_use;
    input drug_class $ count;
    datalines;
Statins 320
ACE_Inhibitors 275
Beta_Blockers 240
Diuretics 190
Anticoagulants 155
;
run;

/* Bar Graph using SGPLOT */
proc sgplot data=drug_use;
    vbar drug_class / response=count
                      fillattrs=(color=steelblue)
                      datalabel
                      datalabelattrs=(size=10 weight=bold);
    xaxis label="Drug Class" labelattrs=(size=12 weight=bold);
    yaxis label="Number of Patients" labelattrs=(size=12 weight=bold)
          grid;
    title "Medication Use by Drug Class in Older Adults";
run;
