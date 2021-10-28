/* 1a */
proc import datafile = 'C:\Users\marco.muto\Documents\BCDATA.txt'
/* I'm importing the data set asa text file since my vapps isn't working correctly. 
Copying the data to a tab delimitted text file did the trick*/
 out = bcdata
 dbms = dlm
 replace;
 delimiter = '09'x;/*code for tab delimitted*/
run;


proc print data=bcdata(obs=10);

/* b */
ods graphics on;
proc hpsplit data=bcdata;
class class age menopause tumor_size inv_nodes node_caps deg_malig breast breast_quad irradiat;
model class = age menopause tumor_size inv_nodes node_caps deg_malig breast breast_quad irradiat;
grow ENTROPY;
prune costcomplexity;
run;
/* 2) */
T=194+7+62+23;
x=(194+23)/T;

y=194/194+7;

z=194/194+62;

/* 3) */
ods graphics on;
proc hpsplit data=bcdata;
class class age menopause tumor_size inv_nodes node_caps deg_malig breast breast_quad irradiat;
model class = age menopause tumor_size inv_nodes node_caps deg_malig breast breast_quad irradiat;
grow gini;
prune costcomplexity;
run;
