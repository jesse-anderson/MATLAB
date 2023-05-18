%%
%Question 4B Part G
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
%%Previous
NumCars = 400000; %number of cars
windCor = 15;%mph
wide = 20; %miles
height = 2000; %ft
%convert
windCor = MtoF(windCor); %ft
wide = MtoF(wide); %ft
volFlow = windCor*wide*height; %ft^3/hr
%%
vol = 4e+13; %ft^3
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
n = 1.024e+11;%lb mols of air
CCOF = (2/1000000)*(n / vol);%(ppm/lbmol)*(lbmol/ft^3)=lbmol/ft^3
vcars = 3000*NumCars; %ft^3/hr * numberOfCars
vwind = volFlow; %ft^3/hr
v0 = vcars + vwind;
t = (vol/v0)*log((FCOA+FCOS-v0*CCOO)/(FCOA+FCOS-v0*CCOF)); %hr
answer = string(t);
units = 'hours';
answer = [answer, units];
disp(answer)