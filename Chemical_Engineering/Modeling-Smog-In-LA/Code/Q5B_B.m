%%
%Question 5b Part B
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
k = 0.0001*3600; %hr^-1
FA0 = 5;
Ca0= FA0/v0; %FA0*v0 %mol/dm^3
Ca = Ca0*.01; %mol/(dm^3)
volCSTR = (v0*(Ca0-Ca))/(k*Ca);
units = 'dm^3';
answer = string(volCSTR);
disp(['Volume of CSTR is:', answer,units])
%
%%
%PFR Calculation
%
%
%
rA = -k*Ca;
FA = Ca*v0; %mol/hr
%[out,CO] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin)
volPFR = (v0/k)*log(Ca0/Ca);
syms x
funB = (v0/-k)*1/x;
intB = int(funB,FA0,FA); %integral here is correct
answer2 = string(intB);
answer3 = string(volPFR);
disp(['Volume of PFR is: ', answer2, units])
disp(['Volume of PFR is: ', answer3, units])
