%%
%Question 4B Part E
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
disp('(In-Out)+(Generation-Consumption)=Accumulation')
syms FCOA FCOS v0 CCO V dCCO dt
In = FCOA + FCOS;
Out = v0*CCO;
Generation = 0;
Consumption = 0;
Accumulation = V * (dCCO/dt);
Answer = In - Out + Generation - Consumption == Accumulation;
disp(Answer)
%%Theoretically solving for dt symbolically...
dtSymbolic = SimpMe(Answer, v0); % SimpMe(equation, variable to be solved for)