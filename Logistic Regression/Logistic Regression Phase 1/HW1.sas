%let log1=C:\Users\Iqra Munawar\Documents\Homework1_LR;

libname log "&log1";

ods pdf;
ods trace on;
title "Detecting Binary Association";
/* Detecting binary association  */
proc freq data=log.insurance_t;
	tables (dda dirdep nsf sav atm cd loc ira ils inv mm mtg cc sdb hmown moved inarea)*ins /
	chisq measures cl; 
	ods output chisq = work.binary;
	run;
ods trace off;

data work.binary;
	set work.binary;
	where statistic = "Mantel-Haenszel Chi-Square";
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
	
	



	