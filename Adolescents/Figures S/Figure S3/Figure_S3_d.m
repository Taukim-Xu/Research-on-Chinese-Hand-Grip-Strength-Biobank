%% Source codes for Figure S3(d).
% We calculate and display the correlation between FCF, HGS and BMI
% for DH hand only.
% FCF VS HGS, BMI VS FCF, BMI VS mHGS
% Abbreviations: mHGS = maximum Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand, BMI = Body mass index
%
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1;
My_MarkerSize = 7;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;
%% Stratified by age and gender
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];
Female_data_9 = [];
Female_data_10 = [];
Female_data_11 = [];
Female_data_12 = [];
Female_data_13 = [];
Female_data_14 = [];
Female_data_15 = [];
Female_data_16 = [];
Female_data_17 = [];
Female_data_18 = [];
Female_data_19 = [];
Female_data_20 = [];
Female_data_21 = [];

Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];
Male_data_9 = [];
Male_data_10 = [];
Male_data_11 = [];
Male_data_12 = [];
Male_data_13 = [];
Male_data_14 = [];
Male_data_15 = [];
Male_data_16 = [];
Male_data_17 = [];
Male_data_18 = [];
Male_data_19 = [];
Male_data_20 = [];
Male_data_21 = [];

% Female
[M N] = size(Female_data); % Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
for i=1:M
    if Female_data(i,4) == 6
        Female_data_6 = [Female_data_6;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 7
        Female_data_7 = [Female_data_7;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 8
        Female_data_8 = [Female_data_8;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 9
        Female_data_9 = [Female_data_9;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 10
        Female_data_10 = [Female_data_10;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 11
        Female_data_11 = [Female_data_11;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end

    if Female_data(i,4) == 12
        Female_data_12 = [Female_data_12;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 13
        Female_data_13 = [Female_data_13;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 14
        Female_data_14 = [Female_data_14;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 15
        Female_data_15 = [Female_data_15;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 16
        Female_data_16 = [Female_data_16;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 17
        Female_data_17 = [Female_data_17;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 18
        Female_data_18 = [Female_data_18;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 19
        Female_data_19 = [Female_data_19;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 20
        Female_data_20 = [Female_data_20;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
    
    if Female_data(i,4) == 21
        Female_data_21 = [Female_data_21;Female_data(i,2) Female_data(i,3) Female_data(i,5:9)];
    end
end

% Male
[M N] = size(Male_data); % Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
for i=1:M
    if Male_data(i,4) == 6
        Male_data_6 = [Male_data_6;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 7
        Male_data_7 = [Male_data_7;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 8
        Male_data_8 = [Male_data_8;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 9
        Male_data_9 = [Male_data_9;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 10
        Male_data_10 = [Male_data_10;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 11
        Male_data_11 = [Male_data_11;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end

    if Male_data(i,4) == 12
        Male_data_12 = [Male_data_12;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 13
        Male_data_13 = [Male_data_13;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 14
        Male_data_14 = [Male_data_14;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 15
        Male_data_15 = [Male_data_15;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 16
        Male_data_16 = [Male_data_16;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 17
        Male_data_17 = [Male_data_17;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 18
        Male_data_18 = [Male_data_18;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 19
        Male_data_19 = [Male_data_19;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 20
        Male_data_20 = [Male_data_20;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
    
    if Male_data(i,4) == 21
        Male_data_21 = [Male_data_21;Male_data(i,2) Male_data(i,3) Male_data(i,5:9)];
    end
end

%% We calculate the correlation coefficient between height, weight, FCF, and HGS.
% For female
% FCF VS HGS for DH
R_FCF_HGS_DH_Female = [My_Corr(Female_data_6(:,3),Female_data_6(:,6)) My_Corr(Female_data_7(:,3),Female_data_7(:,6)) My_Corr(Female_data_8(:,3),Female_data_8(:,6)) ...
    My_Corr(Female_data_9(:,3),Female_data_9(:,6)) My_Corr(Female_data_10(:,3),Female_data_10(:,6)) My_Corr(Female_data_11(:,3),Female_data_11(:,6)) ...
    My_Corr(Female_data_12(:,3),Female_data_12(:,6)) My_Corr(Female_data_13(:,3),Female_data_13(:,6)) My_Corr(Female_data_14(:,3),Female_data_14(:,6)) ...
    My_Corr(Female_data_15(:,3),Female_data_15(:,6)) My_Corr(Female_data_16(:,3),Female_data_16(:,6)) My_Corr(Female_data_17(:,3),Female_data_17(:,6)) ...
    My_Corr(Female_data_18(:,3),Female_data_18(:,6)) My_Corr(Female_data_19(:,3),Female_data_19(:,6)) My_Corr(Female_data_20(:,3),Female_data_20(:,6)) ...
    My_Corr(Female_data_21(:,3),Female_data_21(:,6))];
% BMI VS FCF of DH
R_BMI_FCF_DH_Female = [My_Corr(Female_data_6(:,5),Female_data_6(:,3)) My_Corr(Female_data_7(:,5),Female_data_7(:,3)) My_Corr(Female_data_8(:,5),Female_data_8(:,3)) ...
    My_Corr(Female_data_9(:,5),Female_data_9(:,3)) My_Corr(Female_data_10(:,5),Female_data_10(:,3)) My_Corr(Female_data_11(:,5),Female_data_11(:,3)) ...
    My_Corr(Female_data_12(:,5),Female_data_12(:,3)) My_Corr(Female_data_13(:,5),Female_data_13(:,3)) My_Corr(Female_data_14(:,5),Female_data_14(:,3)) ...
    My_Corr(Female_data_15(:,5),Female_data_15(:,3)) My_Corr(Female_data_16(:,5),Female_data_16(:,3)) My_Corr(Female_data_17(:,5),Female_data_17(:,3)) ...
    My_Corr(Female_data_18(:,5),Female_data_18(:,3)) My_Corr(Female_data_19(:,5),Female_data_19(:,3)) My_Corr(Female_data_20(:,5),Female_data_20(:,3)) ...
    My_Corr(Female_data_21(:,5),Female_data_21(:,3))];
% BMI VS HGS of DH
R_BMI_HGS_DH_Female = [My_Corr(Female_data_6(:,5),Female_data_6(:,6)) My_Corr(Female_data_7(:,5),Female_data_7(:,6)) My_Corr(Female_data_8(:,5),Female_data_8(:,6)) ...
    My_Corr(Female_data_9(:,5),Female_data_9(:,6)) My_Corr(Female_data_10(:,5),Female_data_10(:,6)) My_Corr(Female_data_11(:,5),Female_data_11(:,6)) ...
    My_Corr(Female_data_12(:,5),Female_data_12(:,6)) My_Corr(Female_data_13(:,5),Female_data_13(:,6)) My_Corr(Female_data_14(:,5),Female_data_14(:,6)) ...
    My_Corr(Female_data_15(:,5),Female_data_15(:,6)) My_Corr(Female_data_16(:,5),Female_data_16(:,6)) My_Corr(Female_data_17(:,5),Female_data_17(:,6)) ...
    My_Corr(Female_data_18(:,5),Female_data_18(:,6)) My_Corr(Female_data_19(:,5),Female_data_19(:,6)) My_Corr(Female_data_20(:,5),Female_data_20(:,6)) ...
    My_Corr(Female_data_21(:,5),Female_data_21(:,6))];

% For male
% FCF VS HGS for DH
R_FCF_HGS_DH_Male = [My_Corr(Male_data_6(:,3),Male_data_6(:,6)) My_Corr(Male_data_7(:,3),Male_data_7(:,6)) My_Corr(Male_data_8(:,3),Male_data_8(:,6)) ...
    My_Corr(Male_data_9(:,3),Male_data_9(:,6)) My_Corr(Male_data_10(:,3),Male_data_10(:,6)) My_Corr(Male_data_11(:,3),Male_data_11(:,6)) ...
    My_Corr(Male_data_12(:,3),Male_data_12(:,6)) My_Corr(Male_data_13(:,3),Male_data_13(:,6)) My_Corr(Male_data_14(:,3),Male_data_14(:,6)) ...
    My_Corr(Male_data_15(:,3),Male_data_15(:,6)) My_Corr(Male_data_16(:,3),Male_data_16(:,6)) My_Corr(Male_data_17(:,3),Male_data_17(:,6)) ...
    My_Corr(Male_data_18(:,3),Male_data_18(:,6)) My_Corr(Male_data_19(:,3),Male_data_19(:,6)) My_Corr(Male_data_20(:,3),Male_data_20(:,6)) ...
    My_Corr(Male_data_21(:,3),Male_data_21(:,6))];
% BMI VS FCF of DH
R_BMI_FCF_DH_Male = [My_Corr(Male_data_6(:,5),Male_data_6(:,3)) My_Corr(Male_data_7(:,5),Male_data_7(:,3)) My_Corr(Male_data_8(:,5),Male_data_8(:,3)) ...
    My_Corr(Male_data_9(:,5),Male_data_9(:,3)) My_Corr(Male_data_10(:,5),Male_data_10(:,3)) My_Corr(Male_data_11(:,5),Male_data_11(:,3)) ...
    My_Corr(Male_data_12(:,5),Male_data_12(:,3)) My_Corr(Male_data_13(:,5),Male_data_13(:,3)) My_Corr(Male_data_14(:,5),Male_data_14(:,3)) ...
    My_Corr(Male_data_15(:,5),Male_data_15(:,3)) My_Corr(Male_data_16(:,5),Male_data_16(:,3)) My_Corr(Male_data_17(:,5),Male_data_17(:,3)) ...
    My_Corr(Male_data_18(:,5),Male_data_18(:,3)) My_Corr(Male_data_19(:,5),Male_data_19(:,3)) My_Corr(Male_data_20(:,5),Male_data_20(:,3)) ...
    My_Corr(Male_data_21(:,5),Male_data_21(:,3))];
% BMI VS HGS of DH
R_BMI_HGS_DH_Male = [My_Corr(Male_data_6(:,5),Male_data_6(:,6)) My_Corr(Male_data_7(:,5),Male_data_7(:,6)) My_Corr(Male_data_8(:,5),Male_data_8(:,6)) ...
    My_Corr(Male_data_9(:,5),Male_data_9(:,6)) My_Corr(Male_data_10(:,5),Male_data_10(:,6)) My_Corr(Male_data_11(:,5),Male_data_11(:,6)) ...
    My_Corr(Male_data_12(:,5),Male_data_12(:,6)) My_Corr(Male_data_13(:,5),Male_data_13(:,6)) My_Corr(Male_data_14(:,5),Male_data_14(:,6)) ...
    My_Corr(Male_data_15(:,5),Male_data_15(:,6)) My_Corr(Male_data_16(:,5),Male_data_16(:,6)) My_Corr(Male_data_17(:,5),Male_data_17(:,6)) ...
    My_Corr(Male_data_18(:,5),Male_data_18(:,6)) My_Corr(Male_data_19(:,5),Male_data_19(:,6)) My_Corr(Male_data_20(:,5),Male_data_20(:,6)) ...
    My_Corr(Male_data_21(:,5),Male_data_21(:,6))];
%% We display the results.
Age = 6:21;
%
figure;
% For female
subplot(1,3,1)
hold on;
xlim([5.5 21.5]);
ylim([0 1.0]);
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = R_FCF_HGS_DH_Female; % FCF VS HGS for DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = R_BMI_FCF_DH_Female; % BMI VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = R_BMI_HGS_DH_Female; % BMI VS HGS of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
HH3 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

% For male
subplot(1,3,2)
hold on;
xlim([5.5 21.5]);
ylim([0 1.0]);
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = R_FCF_HGS_DH_Male; % FCF VS HGS for DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = R_BMI_FCF_DH_Male; % BMI VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = R_BMI_HGS_DH_Male; % BMI VS HGS of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
HH3 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

% For legends
subplot(1,3,3)
hold on
ylim([0 20]);
xlim([0 5]);
ax = gca;
ax.XAxis.Visible = 'off';
ax.YAxis.Visible = 'off';
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','right')
HHHH1 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w');
HHHH2 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w');
HHHH3 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_3,'MarkerFaceColor','w');
Legend = legend([HHHH1 HHHH2 HHHH3],'FCF VS mHGS','BMI VS FCF',...
    'BMI VS mHGS');
set(Legend,'Box','off')

