%Gabriel's Horn data generator to offload to python
%Jesse Anderson 2022
%%
space1 = linspace(1,15,100);
space2 = linspace(0,2*pi,100);
[X,Th] = meshgrid(space1,space2);
F = 1./X;
Y = F.*cos(Th);
Z = F.*sin(Th);
surf(X,Y,Z);
view(-25,15);
gg = colormap(jet);

%%
inputMe = input('do you want to save as a .txt file? Yes or no','s');
if inputMe == "Yes" || inputMe == "yes"
    writeMatrix = [X;Y;Z];
    writematrix(dataWrite,'Gabriels_Horn.txt')
elseif inputMe == "No" || inputMe == "no"
    disp('Ok, no data written')
else
    disp('That was not a yes or no, but I understand')
end