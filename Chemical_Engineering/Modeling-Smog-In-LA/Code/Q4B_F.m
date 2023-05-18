%%
%Question 4B Part F
%Jesse Anderson
%CHE321
%2021
%clear all
%close all
%clc
%disp('(In-Out)+(Generation-Consumption)=Accumulation')
syms FCOA FCOS v0 CCO V dCCO dt 
syms a y(t)
syms dCCO(dt)
In = FCOA + FCOS;
Out = v0*CCO;
Generation = 0;
Consumption = 0;
Accumulation = V * (dCCO/dt);
Answer = In - Out + Generation - Consumption == Accumulation;
%%
%%Theoretically solving for dt symbolically...
%dtSymbolic = SimpMe(Answer, dt); % SimpMe(equation, variable to be solved for)
%used if we had a mess and wanted to separate the variables and integrate
eqn = diff(dCCO,dt) == (FCOA + FCOS - CCO*v0)/V;
%right here had issues integrating the bounds 0 to t and CCO0 to CCO
%its weird bounds so if I had concrete bounds it wouldn't be an issue to do
%it with dsolve....
%doing that we get
ans = 't == (V/v0)*ln((FCOA+FCOS-v0*CCO0)/(FCOA+FCOS-v0*CCO))'

