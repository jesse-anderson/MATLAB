%%
%Question 4B Part B
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
NumCars = 400000; %number of cars
Pres = 1; %atm
Vol = 3000; % ft^3/hour
Temp = 32; %Fahrenheit
R = 0.7302413; %(ft^3 atm) / (lb*mol*R)
molPercent = 2/100; % exhaust contain 2% carbon monoxide
Temp = FtoR(Temp);

MolFlow = (Pres*Vol)/(R*Temp) * molPercent * NumCars
Answer = string(MolFlow);
units = 'lb mol/hr';
Answer = [Answer, units];
disp(Answer)