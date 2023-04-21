%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

% Task 3

betaRange = 0:0.1:1;
PIRange = zeros(1,length(betaRange)); % Inspired partial pressure of oxygen
PAbarRange = zeros(1,length(betaRange)); % Mean alveolar partial pressure of oxygen
PabarRange = zeros(1,length(betaRange)); % Mean arterial partial pressure of oxygen
PvRange = zeros(1,length(betaRange)); % Venous partial pressure of oxygen


for i = 1:length(betaRange)
    beta = betaRange(i);
    setup_lung
    cvsolve
    outchecklung

    PIRange(i) = PI; 
    PAbarRange(i) = PAbar; 
    PabarRange(i) = Pabar;
    PvRange(i) = Pv;
end

figure(4)
hold on
plot(betaRange,PIRange)
plot(betaRange,PabarRange)
plot(betaRange,PAbarRange)
plot(betaRange,PvRange)
legend('PI', 'PAbar', 'Pabar', 'Pv')
title('Beta vs PI, PAbar, Pabar, and Pv')
xlabel('Beta')
ylabel('Partial Pressure of Oxygen')
