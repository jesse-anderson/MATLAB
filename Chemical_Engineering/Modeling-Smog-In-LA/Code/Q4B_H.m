%%
%Question 4B Part H
%Jesse Anderson
%CHE321
%2021
clear all
close all
%clc
%%Previous
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
vol = 4*10^13; %ft^3
%%
%
%FIGURE 1
%
timeSpan =[0:0.1:72];
a = 35000; %lbmol/hr
b = 30000; %lbmol/hr
volFlow = 1.67e+12; %ft^3/hr
COin = 2e-10;
[out,CO] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
figure('Name','LA Basin, sine function')
movegui('northwest')
plot(out,CO)
xlabel('t')
title('LA Basin, sine function')
legend('CO','Location', 'North')
xticks([0:7.2:75]);
xlim([0 75]);
high = 2.31e-8;
low = COin;
yticks([2.0e-9:2.49e-9:2.31e-8])
ylim([low high]);
%%
%
%FIGURE 2
%
%Needs to be an if/else function call or else logic doesn't work.
%Second plot from Polymath 
%make sure to define a/b/etc in function itself.
figure('Name','Wind Stops Blowing at 72hrs')
movegui('north')
timeSpan =[0:0.1:100];
[out,CO] = ode45(@windstop72 , timeSpan, COin);%only make function call
plot(out,CO)
xlabel('t')
title('Wind Stops Blowing at 72hrs')
legend('CO','Location', 'North')
xticks([0:10:100]);
xlim([0 100]);
high = 5.00e-8;
low = COin;
yticks([0:5.0e-9:5.0e-8])
ylim([low high]);
%%
%
%FIGURE 3
%
%
%Third plot from Polymath 
%make sure to define a/b/etc in function itself.
figure('Name','Wind begins to blow after 48 hours')
movegui('northeast')
timeSpan =[0:0.1:100];
[out,CO] = ode45(@windblow48 , timeSpan, COin);%only make function call
plot(out,CO)
xlabel('t')
title('Wind begins to blow after 48 hours')
legend('CO','Location', 'NorthWest')
xticks([0:10:100]);
xlim([0 100]);
high = 4.70e-8;
low = COin;
yticks([0:4.7e-9:4.7e-8]);
ylim([low high]);
%%
%
%Figure 4 variation in v0
%
%%%%Previous
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
vol = 4*10^13; %ft^3
%%
%
%
%
timeSpan =[0:0.1:48];
a = 35000; %lbmol/hr
b = 30000; %lbmol/hr
volFlow = 1.67e+11; %ft^3/hr
COin = 2e-10;
[out,CO1] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
volFlow = 1.67e+12; %ft^3/hr
[out,CO2] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
volFlow = 1.67e+13; %ft^3/hr
[out,CO3] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
figure('Name','Variations in vo')
movegui('southwest')
plot(out,CO1, 'b')
hold on
plot(out,CO2, 'g')
plot(out,CO3, 'c')
xlabel('t')
title('Variations in vo')
legend('CO1', 'CO2', 'CO3','Location', 'NorthWest')
xticks([0:4.8:48]);
xlim([0 48]);
high = 4.20e-8;
low = COin;
yticks([0:4.2e-9:4.2e-8]);
ylim([low high]);
hold off
%%
%
%Figure 5 variation in a
%
%%%%Previous
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
vol = 4*10^13; %ft^3
%%
%
%
%
timeSpan =[0:0.1:48];
a = 20000; %lbmol/hr
b = 30000; %lbmol/hr
volFlow = 1.67e+12; %ft^3/hr
COin = 2e-10;
[out,CO1] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
a = 35000; %lbmol/hr
[out,CO2] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
a = 50000; %lbmol/hr
[out,CO3] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
figure('Name','Variations in a')
movegui('south')
plot(out,CO1, 'b')
hold on
plot(out,CO2, 'g')
plot(out,CO3, 'c')
xlabel('t')
title('Variations in a')
xticks([0:4.8:48]);
xlim([0 48]);
high = 2.9e-8;
low = COin;
yticks([0:2.9e-9:2.9e-8]);
ylim([low high]);
legend('CO1', 'CO2', 'CO3','Location', 'NorthWest');
%%
%
%Figure 5 variation in b
%
%%%%Previous
FCOA = 6.68e+4; %lbmol[CO]/hr
FCOS = 3412.31; %lbmol[CO]/hr
CCOO = 2.04e-8; %lbmol[CO]/ft^3
vol = 4*10^13; %ft^3
%%
%
%
%
timeSpan =[0:0.1:48];
a = 35000; %lbmol/hr
b = 15000; %lbmol/hr
volFlow = 1.67e+12; %ft^3/hr
COin = 2e-10;
[out,CO1] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
b = 35000; %lbmol/hr
[out,CO2] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
b = 50000; %lbmol/hr
[out,CO3] = ode45(@(t,CO) (a + b * sin(pi * t/6) +FCOS - volFlow*CO)/vol, timeSpan, COin);
figure('name','Variations in b')
movegui('southeast')
plot(out,CO1, 'b')
hold on
plot(out,CO2, 'g')
plot(out,CO3, 'c')
xlabel('t')
title('Variations in b')
xticks([0:4.8:48]);
xlim([0 48]);
high = 2.2e-8;
low = COin;
yticks([0:2.2e-9:2.2e-8]);
ylim([low high]);
legend('CO1', 'CO2', 'CO3','Location', 'NorthWest')
%%
%As v0 is varied the slope of the average increase in CO accumulation changes. 
%When v0 is at its lowest CO has a steep slope. 
%At a very high v0 of 1.67e+13 the CO levels off.
%====
%As a is varied the y axis difference increases somewhat or the intercept. 
%That is, the final amount of CO changes with the different values of a proportionally.
%=====
%As b is varied the amplitude of the variation or curviness of the function changes. 
%b multiplies the sin function directly so it will change the amplitude of the sinusoidal function directly.