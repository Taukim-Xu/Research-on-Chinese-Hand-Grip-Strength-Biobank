%% Source codes for Figure 3(e).
% We show the correlation coefficient between Weight and Height*Weight for
% all data set on the same graph.
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
Color_6 = [164 105 189]/255;

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
load('Correlation_coefficient_Height_Weight_BCCPDS.mat')
load('Correlation_coefficient_Height_Weight_JDHLE.mat')
load('Correlation_coefficient_Height_Weight_Yun.mat')
load('Correlation_coefficient_Height_Weight_Ours.mat')
load('Correlation_coefficient_Height_Weight_Khan.mat')
load('Correlation_coefficient_Height_Weight_KSPF.mat')

%% We show the results
% For female
subplot(1,2,1)
xlim([0 22]);
ylim([0.95 1]);
HH1 = plot(Age_BCCPDS,Correlation_coefficient_Female_BCCPDS_1,'LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(Age_JDHLE,Correlation_coefficient_Female_JDHLE_1,'LineWidth',My_LineWidth,'Color',Color_2);
HH3 = plot(Age_Yun,Correlation_coefficient_Female_Yun_1,'LineWidth',My_LineWidth,'Color',Color_3);
HH4 = plot(Age_Ours,Correlation_coefficient_Female_Ours_1,'LineWidth',My_LineWidth,'Color',Color_4);
HH5 = plot(Age_KSPF,Correlation_coefficient_Female_KSPF,'LineWidth',My_LineWidth,'Color',Color_5);
HH6 = plot(Age_Khan,Correlation_coefficient_Female_Khan_1,'LineWidth',My_LineWidth,'Color',Color_6);

Legend = legend([HH1 HH2 HH3 HH4 HH5 HH6],'BCCPD, China, n=12,557','JDHLE, Japan, n=1,256',...
    'Jilin, China, n=4,884','Our data, China, n=2,823','KSPF, Korea, n=109,322',...
    'Bangladesh, n=19,564','Location','southwest');
set(Legend,'Box','off')

% For male
subplot(1,2,2)
xlim([0 22]);
ylim([0.95 1]);
HH1 = plot(Age_BCCPDS,Correlation_coefficient_Male_BCCPDS_1,'LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(Age_JDHLE,Correlation_coefficient_Male_JDHLE_1,'LineWidth',My_LineWidth,'Color',Color_2);
HH3 = plot(Age_Yun,Correlation_coefficient_Male_Yun_1,'LineWidth',My_LineWidth,'Color',Color_3);
HH4 = plot(Age_Ours,Correlation_coefficient_Male_Ours_1,'LineWidth',My_LineWidth,'Color',Color_4);
HH5 = plot(Age_KSPF,Correlation_coefficient_Male_KSPF,'LineWidth',My_LineWidth,'Color',Color_5);
Legend = legend([HH1 HH2 HH3 HH4 HH5],'BCCPD, China, n=14,969','JDHLE, Japan, n=1,308',...
    'Jilin, China, n=4,843','Our data, China, n=3,403','KSPF, Korea, n=162,709',...
    'Location','southwest');
set(Legend,'Box','off')

