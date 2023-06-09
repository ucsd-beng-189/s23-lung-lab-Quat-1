%filename: lung.m (main program)
clear all
clf
global Pstar cstar n maxcount M Q camax RT cI;

% % Task 5
% cIRange = linspace(0.0079, 0, 11); % Range of cI values, decreasing to 0
% 
% PAbarRange = zeros(1,length(cIRange)); % Mean alveolar partial pressure of oxygen
% PabarRange = zeros(1,length(cIRange)); % Mean arterial partial pressure of oxygen
% PvRange = zeros(1,length(cIRange)); % Venous partial pressure of oxygen
% 
% cAbarRange = zeros(1,length(cIRange)); % Mean alveolar oxygen concentration
% cabarRange = zeros(1,length(cIRange)); % Mean arterial oxygen concentration
% cvRange = zeros(1,length(cIRange)); % Oxygen concentration in venous blood
% 
% for i = 1:length(cIRange)
%     cI = cIRange(i);
%     setup_lung_soln
%     cvsolve_soln
%     outchecklung
% 
%     PAbarRange(i) = PAbar; 
%     PabarRange(i) = Pabar;
%     PvRange(i) = Pv;
% 
%     cAbarRange(i) = cAbar;
%     cabarRange(i) = cabar;
%     cvRange(i) = cv;
% end
% 
% figure(4)
% subplot(2,1,1)
% hold on
% plot(cIRange, PAbarRange)
% plot(cIRange, PabarRange)
% plot(cIRange, PvRange)
% title('Partial Pressure of Oxygen vs Inspired Concentration of Oxygen')
% xlabel('cI')
% ylabel('Partial Pressure of Oxygen')
% legend('PABar', 'Pabar', 'Pv')
% subplot(2,1,2)
% hold on
% plot(cIRange, cAbarRange)
% plot(cIRange, cabarRange)
% plot(cIRange, cvRange)
% title('Concentration of Oxygen vs Inspired Concentration of Oxygen')
% xlabel('cI')
% ylabel('Concentration of Oxygen')
% legend('cAbar', 'cabar', 'cv')

% Task 6, Task 7, Task 8, Task 10
PIRange = linspace(152,0,11);
PAbarRange = zeros(1,length(PIRange)); % Mean alveolar partial pressure of oxygen
PabarRange = zeros(1,length(PIRange)); % Mean arterial partial pressure of oxygen
PvRange = zeros(1,length(PIRange)); % Venous partial pressure of oxygen

cAbarRange = zeros(1,length(PIRange)); % Mean alveolar oxygen concentration
cabarRange = zeros(1,length(PIRange)); % Mean arterial oxygen concentration
cvRange = zeros(1,length(PIRange)); % Oxygen concentration in venous blood

for i = 1:length(PIRange)
    PI = PIRange(i);
    setup_lung_soln
    cvsolve_soln
    outchecklung

    PAbarRange(i) = PAbar; 
    PabarRange(i) = Pabar;
    PvRange(i) = Pv;

    cAbarRange(i) = cAbar;
    cabarRange(i) = cabar;
    cvRange(i) = cv;
end

figure(4)
subplot(2,1,1)
hold on
plot(PIRange, PAbarRange)
plot(PIRange, PabarRange)
plot(PIRange, PvRange)
title('Partial Pressure of Oxygen vs Inspired Partial Pressure of Oxygen')
xlabel('PI')
ylabel('Partial Pressure of Oxygen')
legend('PABar', 'Pabar', 'Pv')
subplot(2,1,2)
hold on
plot(PIRange, cAbarRange)
plot(PIRange, cabarRange)
plot(PIRange, cvRange)
title('Concentration of Oxygen vs Inspired Partial Pressure of Oxygen')
xlabel('PI')
ylabel('Concentration of Oxygen')
legend('cAbar', 'cabar', 'cv')

% % Task 9
% cstarRange = linspace(0.0079, 0, 11); % Range of cstar values, from default to 0.
% 
% PIRange = zeros(1,length(cstarRange)); % Inspired partial pressure of oxygen
% PAbarRange = zeros(1,length(cstarRange)); % Mean alveolar partial pressure of oxygen
% PabarRange = zeros(1,length(cstarRange)); % Mean arterial partial pressure of oxygen
% PvRange = zeros(1,length(cstarRange)); % Venous partial pressure of oxygen
% 
% cIRange = zeros(1,length(cstarRange)); % Inspired concentration of oxygen
% cAbarRange = zeros(1,length(cstarRange)); % Mean alveolar oxygen concentration
% cabarRange = zeros(1,length(cstarRange)); % Mean arterial oxygen concentration
% cvRange = zeros(1,length(cstarRange)); % Oxygen concentration in venous blood
% 
% for i = 1:length(cstarRange)
%     cstar = cstarRange(i);
%     setup_lung_soln
%     cvsolve_soln
%     outchecklung
% 
%     PIRange(i) = PI;
%     PAbarRange(i) = PAbar; 
%     PabarRange(i) = Pabar;
%     PvRange(i) = Pv;
% 
%     cIRange(i) = cI;
%     cAbarRange(i) = cAbar;
%     cabarRange(i) = cabar;
%     cvRange(i) = cv;
% end
% 
% figure(4)
% subplot(2,1,1)
% hold on
% plot(cstarRange, PIRange)
% plot(cstarRange, PAbarRange)
% plot(cstarRange, PabarRange)
% plot(cstarRange, PvRange)
% title('Partial Pressure of Oxygen vs Hemoglobin Concentration')
% xlabel('cstar (mol/L)')
% ylabel('Partial Pressure of Oxygen')
% legend('PI', 'PABar', 'Pabar', 'Pv')
% subplot(2,1,2)
% hold on
% plot(cstarRange, cIRange)
% plot(cstarRange, cAbarRange)
% plot(cstarRange, cabarRange)
% plot(cstarRange, cvRange)
% title('Concentration of Oxygen vs Hemoglobin Concentration')
% xlabel('cstar (mol/L)')
% ylabel('Concentration of Oxygen')
% legend('cI', 'cAbar', 'cabar', 'cv')