%%
%Question 5b Part C
%Jesse Anderson
%CHE321
%2021
%
%clear all
%close all
%clc
%Rxn A->B, isothermal, continuous flow reactor
%%CSTR Calculation
v0=10; %dm^3/hr %L/hr
k = 300; %dm^3/mol*hr
FA0 = 5;
Ca0= FA0/v0; %FA0*v0 %mol/dm^3
Ca = Ca0*.01; %mol/(dm^3)
volCSTR = (v0*(Ca0-Ca))/(k*Ca^2);
units = 'dm^3';
answer = string(volCSTR);
disp(['Volume of CSTR is:', answer,units])
%
%%
%PFR Calculation
%
%
k=300;
rA = -k*Ca^2;
FA = Ca*v0; %mol/hr
volPFR = ((v0/k)*(1/Ca-1/Ca0));
answer2 = string(volPFR); 
disp(['Volume of PFR is: ', answer2, units])
syms x
funB = ((v0/-k)*(1/x)^2);
intB = int(funB,Ca0,Ca);
answer3 = string(intB);
disp(['Volume of PFR is: ', answer3, units])