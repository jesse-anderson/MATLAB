%%
%Question 5b Part A
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
k = 0.05; %mol/dm^3
Ca0= 0.5; %mol/dm^3
Ca = Ca0*.01; %mol/(dm^3)
volCSTR = (v0*(Ca0-Ca))/k;
units = 'dm^3';
answer = string(volCSTR);
disp(['Volume of CSTR is:', answer,units])
%
%%
%PFR Calculation
rA = -k;
FA = Ca*v0; %mol/hr
FA0 = Ca0 * v0; %mol/hr
%volPFR = (v0/k)*(Ca0-Ca)
funA = sym(v0/rA);
volPFR = int(funA,Ca0,Ca); %integrate function A from FA0 to FA
answer2 = string(volPFR);
disp(['Volume of PFR is: ', answer2, units])