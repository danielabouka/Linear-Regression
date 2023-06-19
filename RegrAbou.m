clear all
close all
clc
format long
X1=xlsread('CO2.xlsx','Full_dataset','AL2:AL1000');
y=xlsread('CO2.xlsx','Full_dataset','AK2:AK1000');
x1 = ones(size(X1,1),1);
X = [x1 X1];    % Includes column of ones
[b,~,~,~,stats] = regress(y,X1)
l=X1*b;
scatter(X1,y);
hold on;
plot(X1,l);
xlabel('Población *100');
ylabel('kt CO2');
legend('DATA','Regresión')