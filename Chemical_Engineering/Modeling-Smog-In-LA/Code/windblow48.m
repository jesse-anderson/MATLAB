function out = windblow48(t,CO)
%%
%Jesse Anderson
%CHE321
%2021
%Previous
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
vol = 4*10^13; %ft^3
a = 35000; %lbmol/hr
b = 30000; %lbmol/hr
volFlow = 1.67e+12; %ft^3/hr
COin = 2e-10;
%%
%Actual call
    if t<=48
        volFlow = 0; %ft^3/hr
    else
        volFlow = 1.67e+12; %ft^3/hr
    end
out = (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol;
    end