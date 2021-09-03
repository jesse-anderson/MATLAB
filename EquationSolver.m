%%%Jesse Anderson
%%Symbolic Solver for when Symbolab/Wolfram fail me to check my work
%2020
clear all
close all
clc
syms a b c d e f g h i j k l m n o p q r s t u v w x y z
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%equation = y*a*b*e^a == v*t + (1/2)*a*(exp(t)) ;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
equation = 0 == 5*t+25;%%%CHANGE ME EQUATION
solveFor = t; %%%CHANGE ME SOLVE FOR VARIABLE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%solveFor = t;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp(equation)
solveFor = arrayfun(@char, solveFor, 'uniform', 0);
solveMe = solve(equation, solveFor);
solveMe = arrayfun(@char, solveMe, 'uniform', 0);%converts syms to strings
solveUlt = strcat(solveFor,{' = '},solveMe);
disp(solveUlt)