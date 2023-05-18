%%
%Question 4b Part A
%Jesse Anderson
%CHE321
%2021
%N=(P*V)/(RT)
%clear all
%close all
%clc
Temp = 75; %Fahrenheit
Pres = 1; %atm
Vol = 4*10^13; %ft^3
R = 0.7302413; %(ft^3 atm) / (lb*mol*R)
%
Temp = FtoR(Temp); %F to Rankine
TotMols = (Pres*Vol)/(R*Temp) %solving for N
%
%%
Answer = string(TotMols);
units = 'lb mol';
Answer = [Answer, units];
disp(Answer)