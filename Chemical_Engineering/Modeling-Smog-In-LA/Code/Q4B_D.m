%%
%Question 4B Part D
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
%F_CO,S = v_0 *C_S
volFlow = 1.6727e+13;%ft^3/hr
COConc = 2.04e-10; %(lb*mol)/ft^3
FCOS = volFlow*COConc; %lbmol/hr
FCOS2 = string(FCOS);
units = 'lbmol/hr';
Answer = [FCOS2, units];
disp(Answer)