%%
%Question 4B Part C
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
windCor = 15;%mph
wide = 20; %miles
height = 2000; %ft
%convert
windCor = MtoF(windCor); %ft
wide = MtoF(wide); %ft
volFlow = windCor*wide*height %ft^3/hr
volFlow2 = string(volFlow);
units = 'ft^3/hr';
Answer = [volFlow2, units];
disp(Answer)