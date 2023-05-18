%%
%Question 5b Part D
%Jesse Anderson
%CHE321
%2021
%
%clear all
%close all
%clc
%%
%Previous
Ca0 = 0.5; %mol/dm^3 %mol/L
V = 1000; %dm^3 %constant volume
v0=10; %dm^3/hr %L/hr
FA0 = 5;
Ca0= 0.5; %FA0*v0 %mol/dm^3
Ca = Ca0*.001; %mol/(dm^3)
%%
%Part a
disp('Part A')
k = 0.05;
t1 = (1/k)*(Ca0-.001*Ca0);
t1 = string(t1);
t1 = [t1, ' hours'];
disp(t1)
%%
%Part a Int
disp('Part A Integral')
funA = Ca0*sym(1/k);
t1int = int(funA,0,0.999);
t1int = string(t1int);
t1int = [t1int, 'hours'];
disp(t1int)
%%
% Part b
disp('Part B')
k = 0.0001;
t2 = (1/k)*log(Ca0/Ca); %gives time in seconds because k
t2 = t2/(60*60);
t2 = string(t2);
t2 = [t2, 'hours'];
disp(t2)
%%
%Part B integral 
%%
%Part c
disp('Part C')
k = 300;
t3 = (1/k)*(1/Ca-1/Ca0);
t3 = string(t3);
t3 = [t3, 'hours'];
disp(t3)
%%
%Part C integral
disp('Part C Integral')
k=300;
syms x
funC = (1/(Ca0*k)*1/((1-x)^2));
t3int = int(funC,0,0.999);
t3int = string(t3int);
t3int = [t3int, 'hours'];
disp(t3int)