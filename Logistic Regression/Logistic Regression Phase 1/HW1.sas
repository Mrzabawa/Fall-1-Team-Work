%let log1=C:\Users\Iqra Munawar\Documents\Homework1_LR;

libname log "&log1";

ods pdf;
title "Detecting Binary Association";
/* Detecting binary association  */
proc freq data=log.insurance_t;
	tables (dda dirdep nsf sav atm cd loc ira ils inv mm mtg cc sdb hmown moved inarea)*ins /
	chisq measures cl; 
	run;
	
title "Detecting ordinal Association";
proc freq data=log.insurance_t;
	tables (CCPURC CASHBK MMCRED)*ins /
	chisq measures cl; 
	run;


title "Detecting nominal Association";
proc freq data=log.insurance_t;
	tables (RES)*ins /
	chisq measures cl; 
	run;
ods pdf close;
	
	



	