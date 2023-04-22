% Task 4
clear; clc;

% Trial and Error: Beta values and its corresponding maximum M value are both noted below.

betaList = [0 0.2 0.4 0.6 0.8 1.0];
MList = [0.031 0.030 0.028 0.025 0.020 0.017];

plot(betaList, MList)
title('Maximum Sustainable Rate of Oxygen Consumption vs Beta')
xlabel('Beta')
ylabel('Moles/min')
