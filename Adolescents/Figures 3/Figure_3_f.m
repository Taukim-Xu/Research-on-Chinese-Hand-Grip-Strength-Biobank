%% Source codes for Figure 3(f).
% We show the correlation coefficient between HGS and Height*HGS for
% all data set on the same graph
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_LineWidth = 1.5;
My_MarkerSize = 7;
My_FontName = 'Times New Roman';
My_fontSize = 12;
Edgealpha = 0;
Alpha = 1;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;
Color_5 = [63 154 128]/255;
%% 
figure;
subplot(1,2,1)
hold on
title('Female')
xlabel('Age (yr)');
ylabel('Correlation Coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
subplot(1,2,2)
hold on
title('Male')
xlabel('Age (yr)');
ylabel('Correlation Coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%% Loading data
load('Correlation_coefficient_Height_HGS_JDHLE.mat')
load('Correlation_coefficient_Height_HGS_Ours.mat')
load('Correlation_coefficient_Height_HGS_KSPF.mat')
%% We show the results
% For female
subplot(1,2,1)
xlim([0 22]);
ylim([0.95 1]);
HH1 = plot(Age_JDHLE,Correlation_coefficient_Female_Right_JDHLE,'LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(Age_Ours,Correlation_coefficient_Female_DH_Ours,'LineWidth',My_LineWidth,'Color',Color_2);
HH3 = plot(Age_KSPF,Correlation_coefficient_Female_DH_KSPF,'LineWidth',My_LineWidth,'Color',Color_3);
Legend = legend([HH1 HH2 HH3],'JDHLE, Japan, n=641','Our data, China, n=2,823','KSPF, Korea, n=109,322',...
    'Location','southwest');
set(Legend,'Box','off')

% For male
subplot(1,2,2)
xlim([0 22]);
ylim([0.95 1]);
HH1 = plot(Age_JDHLE,Correlation_coefficient_Male_Right_JDHLE,'LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(Age_Ours,Correlation_coefficient_Male_DH_Ours,'LineWidth',My_LineWidth,'Color',Color_2);
HH3 = plot(Age_KSPF,Correlation_coefficient_Male_DH_KSPF,'LineWidth',My_LineWidth,'Color',Color_3);
Legend = legend([HH1 HH2 HH3],'JDHLE, Japan, n=647','Our data, China, n=3,403','KSPF, Korea, n=162,709',...
    'Location','southwest');
set(Legend,'Box','off')
