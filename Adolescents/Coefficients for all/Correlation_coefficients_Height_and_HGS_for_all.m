%% In this code, we calculate correlation coefficients between HGS and Height*HGS
% for all DataSet.
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
%% 01-Data from Japanese Database for Human Life Engineering (JDHLE)
% Data source: https://www.hql.jp/database/cat/size/children
%
% Loading the data from Japanese Database for Human Life Engineering (JDHLE)
% Japanese_children_data2005_08.xlsx
Female_data = xlsread('Japanese_children_data2005_08.xlsx','Female');
Male_data = xlsread('Japanese_children_data2005_08.xlsx','Male');
% Stratified by age and gender
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];
Female_data_9 = [];
Female_data_10 = [];

Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];
Male_data_9 = [];
Male_data_10 = [];


% For female
[M N] = size(Female_data); % Height Weight HGS of right hand HGS of left hand
for i=1:M
    if Female_data(i,2) >=3 & Female_data(i,2) < 4 & Female_data(i,3)~= 0
        Female_data_3 = [Female_data_3;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=4 & Female_data(i,2) < 5 & Female_data(i,3)~= 0
        Female_data_4 = [Female_data_4;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=5 & Female_data(i,2) < 6 & Female_data(i,3)~= 0
        Female_data_5 = [Female_data_5;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=6 & Female_data(i,2) < 7 & Female_data(i,3)~= 0
        Female_data_6 = [Female_data_6;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=7 & Female_data(i,2) < 8 & Female_data(i,3)~= 0
        Female_data_7 = [Female_data_7;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=8 & Female_data(i,2) < 9 & Female_data(i,3)~= 0
        Female_data_8 = [Female_data_8;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=9 & Female_data(i,2) < 10 & Female_data(i,3)~= 0
        Female_data_9 = [Female_data_9;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end

    if Female_data(i,2) >=10 & Female_data(i,2) < 11 & Female_data(i,3)~= 0
        Female_data_10 = [Female_data_10;Female_data(i,3:4)/10 Female_data(i,5:6)];
    end
end

% For Male
[M N] = size(Male_data); % Height Weight HGS of right hand HGS of left hand
for i=1:M
    if Male_data(i,2) >=3 & Male_data(i,2) < 4 & Male_data(i,3)~= 0
        Male_data_3 = [Male_data_3;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=4 & Male_data(i,2) < 5 & Male_data(i,3)~= 0
        Male_data_4 = [Male_data_4;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=5 & Male_data(i,2) < 6 & Male_data(i,3)~= 0
        Male_data_5 = [Male_data_5;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=6 & Male_data(i,2) < 7 & Male_data(i,3)~= 0
        Male_data_6 = [Male_data_6;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=7 & Male_data(i,2) < 8 & Male_data(i,3)~= 0
        Male_data_7 = [Male_data_7;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=8 & Male_data(i,2) < 9 & Male_data(i,3)~= 0
        Male_data_8 = [Male_data_8;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=9 & Male_data(i,2) < 10 & Male_data(i,3)~= 0
        Male_data_9 = [Male_data_9;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end

    if Male_data(i,2) >=10 & Male_data(i,2) < 11 & Male_data(i,3)~= 0
        Male_data_10 = [Male_data_10;Male_data(i,3:4)/10 Male_data(i,5:6)];
    end
end
Temp_female_01 = [Female_data_3;Female_data_4;Female_data_5;Female_data_6;Female_data_7;Female_data_8;Female_data_9;Female_data_10];
Temp_male_01 = [Male_data_3;Male_data_4;Male_data_5;Male_data_6;Male_data_7;Male_data_8;Male_data_9;Male_data_10];

% we calculate correlation coefficients between HGS and Height*HGS
Correlation_coefficient_Female_Right_JDHLE = [];
Correlation_coefficient_Female_Left_JDHLE = [];
Correlation_coefficient_Male_Right_JDHLE = [];
Correlation_coefficient_Male_Left_JDHLE = [];

% For female
% Right hand
Correlation_coefficient_Female_Right_JDHLE = [My_Corr(Female_data_3(:,3),Female_data_3(:,1).*Female_data_3(:,3)) My_Corr(Female_data_4(:,3),Female_data_4(:,1).*Female_data_4(:,3)) ...
    My_Corr(Female_data_5(:,3),Female_data_5(:,1).*Female_data_5(:,3)) My_Corr(Female_data_6(:,3),Female_data_6(:,1).*Female_data_6(:,3)) ...
    My_Corr(Female_data_7(:,3),Female_data_7(:,1).*Female_data_7(:,3)) My_Corr(Female_data_8(:,3),Female_data_8(:,1).*Female_data_8(:,3)) ...
    My_Corr(Female_data_9(:,3),Female_data_9(:,1).*Female_data_9(:,3)) My_Corr(Female_data_10(:,3),Female_data_10(:,1).*Female_data_10(:,3))];
% Left hand
Correlation_coefficient_Female_Left_JDHLE = [My_Corr(Female_data_3(:,4),Female_data_3(:,1).*Female_data_3(:,4)) My_Corr(Female_data_4(:,4),Female_data_4(:,1).*Female_data_4(:,4)) ...
    My_Corr(Female_data_5(:,4),Female_data_5(:,1).*Female_data_5(:,4)) My_Corr(Female_data_6(:,4),Female_data_6(:,1).*Female_data_6(:,4)) ...
    My_Corr(Female_data_7(:,4),Female_data_7(:,1).*Female_data_7(:,4)) My_Corr(Female_data_8(:,4),Female_data_8(:,1).*Female_data_8(:,4)) ...
    My_Corr(Female_data_9(:,4),Female_data_9(:,1).*Female_data_9(:,4)) My_Corr(Female_data_10(:,4),Female_data_10(:,1).*Female_data_10(:,4))];

% For male
% Right hand
Correlation_coefficient_Male_Right_JDHLE = [My_Corr(Male_data_3(:,3),Male_data_3(:,1).*Male_data_3(:,3)) My_Corr(Male_data_4(:,3),Male_data_4(:,1).*Male_data_4(:,3)) ...
    My_Corr(Male_data_5(:,3),Male_data_5(:,1).*Male_data_5(:,3)) My_Corr(Male_data_6(:,3),Male_data_6(:,1).*Male_data_6(:,3)) ...
    My_Corr(Male_data_7(:,3),Male_data_7(:,1).*Male_data_7(:,3)) My_Corr(Male_data_8(:,3),Male_data_8(:,1).*Male_data_8(:,3)) ...
    My_Corr(Male_data_9(:,3),Male_data_9(:,1).*Male_data_9(:,3)) My_Corr(Male_data_10(:,3),Male_data_10(:,1).*Male_data_10(:,3))];
% Left hand
Correlation_coefficient_Male_Left_JDHLE = [My_Corr(Male_data_3(:,4),Male_data_3(:,1).*Male_data_3(:,4)) My_Corr(Male_data_4(:,4),Male_data_4(:,1).*Male_data_4(:,4)) ...
    My_Corr(Male_data_5(:,4),Male_data_5(:,1).*Male_data_5(:,4)) My_Corr(Male_data_6(:,4),Male_data_6(:,1).*Male_data_6(:,4)) ...
    My_Corr(Male_data_7(:,4),Male_data_7(:,1).*Male_data_7(:,4)) My_Corr(Male_data_8(:,4),Male_data_8(:,1).*Male_data_8(:,4)) ...
    My_Corr(Male_data_9(:,4),Male_data_9(:,1).*Male_data_9(:,4)) My_Corr(Male_data_10(:,4),Male_data_10(:,1).*Male_data_10(:,4))];

% We show the results
Age = 3:10;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female:Japanese')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age; % Right hand
y_data = Correlation_coefficient_Female_Right_JDHLE; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 2.5:0.1:10.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age; % Left hand
y_data = Correlation_coefficient_Female_Left_JDHLE; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 2.5:0.1:10.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'Right hand','Left hand','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male:Japanese')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_Right_JDHLE; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 2.5:0.1:10.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age;
y_data = Correlation_coefficient_Male_Left_JDHLE; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 2.5:0.1:10.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'Right hand','Left hand','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_JDHLE = Age;
save('Correlation_coefficient_Height_HGS_JDHLE.mat','Age_JDHLE','Correlation_coefficient_Female_Right_JDHLE',...
    'Correlation_coefficient_Female_Left_JDHLE','Correlation_coefficient_Male_Right_JDHLE','Correlation_coefficient_Male_Left_JDHLE');

%% 02-Data from our reaserch
% Loading the data
Female_data = xlsread('Data_for_analysis.xlsx','Female');
Male_data = xlsread('Data_for_analysis.xlsx','Male');
% Stratified by age and gender
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

Temp_female_02 = [Female_data_6;Female_data_7;Female_data_8;Female_data_9;Female_data_10;Female_data_11;Female_data_12;Female_data_13;...
    Female_data_14;Female_data_15;Female_data_16;Female_data_17;Female_data_18;Female_data_19;Female_data_20;Female_data_21];
Temp_male_02 = [Male_data_6;Male_data_7;Male_data_8;Male_data_9;Male_data_10;Male_data_11;Male_data_12;Male_data_13;...
    Male_data_14;Male_data_15;Male_data_16;Male_data_17;Male_data_18;Male_data_19;Male_data_20;Male_data_21];

% we calculate correlation coefficients between HGS and Height*HGS
Correlation_coefficient_Female_DH_Ours = [];
Correlation_coefficient_Female_NDH_Ours = [];
Correlation_coefficient_Male_DH_Ours = [];
Correlation_coefficient_Male_NDH_Ours = [];

% For female
% DH
Correlation_coefficient_Female_DH_Ours = [My_Corr(Female_data_6(:,6),Female_data_6(:,1).*Female_data_6(:,6)) ...
    My_Corr(Female_data_7(:,6),Female_data_7(:,1).*Female_data_7(:,6)) My_Corr(Female_data_8(:,6),Female_data_8(:,1).*Female_data_8(:,6)) ...
    My_Corr(Female_data_9(:,6),Female_data_9(:,1).*Female_data_9(:,6)) My_Corr(Female_data_10(:,6),Female_data_10(:,1).*Female_data_10(:,6)) ...
    My_Corr(Female_data_11(:,6),Female_data_11(:,1).*Female_data_11(:,6)) My_Corr(Female_data_12(:,6),Female_data_12(:,1).*Female_data_12(:,6)) ...
    My_Corr(Female_data_13(:,6),Female_data_13(:,1).*Female_data_13(:,6)) My_Corr(Female_data_14(:,6),Female_data_14(:,1).*Female_data_14(:,6)) ...
    My_Corr(Female_data_15(:,6),Female_data_15(:,1).*Female_data_15(:,6)) My_Corr(Female_data_16(:,6),Female_data_16(:,1).*Female_data_16(:,6)) ...
    My_Corr(Female_data_17(:,6),Female_data_17(:,1).*Female_data_17(:,6)) My_Corr(Female_data_18(:,6),Female_data_18(:,1).*Female_data_18(:,6)) ...
    My_Corr(Female_data_19(:,6),Female_data_19(:,1).*Female_data_19(:,6)) My_Corr(Female_data_20(:,6),Female_data_20(:,1).*Female_data_20(:,6)) ...
    My_Corr(Female_data_21(:,6),Female_data_21(:,1).*Female_data_21(:,6))];

% NDH
Correlation_coefficient_Female_NDH_Ours = [My_Corr(Female_data_6(:,7),Female_data_6(:,1).*Female_data_6(:,7)) ...
    My_Corr(Female_data_7(:,7),Female_data_7(:,1).*Female_data_7(:,7)) My_Corr(Female_data_8(:,7),Female_data_8(:,1).*Female_data_8(:,7)) ...
    My_Corr(Female_data_9(:,7),Female_data_9(:,1).*Female_data_9(:,7)) My_Corr(Female_data_10(:,7),Female_data_10(:,1).*Female_data_10(:,7)) ...
    My_Corr(Female_data_11(:,7),Female_data_11(:,1).*Female_data_11(:,7)) My_Corr(Female_data_12(:,7),Female_data_12(:,1).*Female_data_12(:,7)) ...
    My_Corr(Female_data_13(:,7),Female_data_13(:,1).*Female_data_13(:,7)) My_Corr(Female_data_14(:,7),Female_data_14(:,1).*Female_data_14(:,7)) ...
    My_Corr(Female_data_15(:,7),Female_data_15(:,1).*Female_data_15(:,7)) My_Corr(Female_data_16(:,7),Female_data_16(:,1).*Female_data_16(:,7)) ...
    My_Corr(Female_data_17(:,7),Female_data_17(:,1).*Female_data_17(:,7)) My_Corr(Female_data_18(:,7),Female_data_18(:,1).*Female_data_18(:,7)) ...
    My_Corr(Female_data_19(:,7),Female_data_19(:,1).*Female_data_19(:,7)) My_Corr(Female_data_20(:,7),Female_data_20(:,1).*Female_data_20(:,7)) ...
    My_Corr(Female_data_21(:,7),Female_data_21(:,1).*Female_data_21(:,7))];

% For male
% DH
Correlation_coefficient_Male_DH_Ours = [My_Corr(Male_data_6(:,6),Male_data_6(:,1).*Male_data_6(:,6)) ...
    My_Corr(Male_data_7(:,6),Male_data_7(:,1).*Male_data_7(:,6)) My_Corr(Male_data_8(:,6),Male_data_8(:,1).*Male_data_8(:,6)) ...
    My_Corr(Male_data_9(:,6),Male_data_9(:,1).*Male_data_9(:,6)) My_Corr(Male_data_10(:,6),Male_data_10(:,1).*Male_data_10(:,6)) ...
    My_Corr(Male_data_11(:,6),Male_data_11(:,1).*Male_data_11(:,6)) My_Corr(Male_data_12(:,6),Male_data_12(:,1).*Male_data_12(:,6)) ...
    My_Corr(Male_data_13(:,6),Male_data_13(:,1).*Male_data_13(:,6)) My_Corr(Male_data_14(:,6),Male_data_14(:,1).*Male_data_14(:,6)) ...
    My_Corr(Male_data_15(:,6),Male_data_15(:,1).*Male_data_15(:,6)) My_Corr(Male_data_16(:,6),Male_data_16(:,1).*Male_data_16(:,6)) ...
    My_Corr(Male_data_17(:,6),Male_data_17(:,1).*Male_data_17(:,6)) My_Corr(Male_data_18(:,6),Male_data_18(:,1).*Male_data_18(:,6)) ...
    My_Corr(Male_data_19(:,6),Male_data_19(:,1).*Male_data_19(:,6)) My_Corr(Male_data_20(:,6),Male_data_20(:,1).*Male_data_20(:,6)) ...
    My_Corr(Male_data_21(:,6),Male_data_21(:,1).*Male_data_21(:,6))];

% NDH
Correlation_coefficient_Male_NDH_Ours = [My_Corr(Male_data_6(:,7),Male_data_6(:,1).*Male_data_6(:,7)) ...
    My_Corr(Male_data_7(:,7),Male_data_7(:,1).*Male_data_7(:,7)) My_Corr(Male_data_8(:,7),Male_data_8(:,1).*Male_data_8(:,7)) ...
    My_Corr(Male_data_9(:,7),Male_data_9(:,1).*Male_data_9(:,7)) My_Corr(Male_data_10(:,7),Male_data_10(:,1).*Male_data_10(:,7)) ...
    My_Corr(Male_data_11(:,7),Male_data_11(:,1).*Male_data_11(:,7)) My_Corr(Male_data_12(:,7),Male_data_12(:,1).*Male_data_12(:,7)) ...
    My_Corr(Male_data_13(:,7),Male_data_13(:,1).*Male_data_13(:,7)) My_Corr(Male_data_14(:,7),Male_data_14(:,1).*Male_data_14(:,7)) ...
    My_Corr(Male_data_15(:,7),Male_data_15(:,1).*Male_data_15(:,7)) My_Corr(Male_data_16(:,7),Male_data_16(:,1).*Male_data_16(:,7)) ...
    My_Corr(Male_data_17(:,7),Male_data_17(:,1).*Male_data_17(:,7)) My_Corr(Male_data_18(:,7),Male_data_18(:,1).*Male_data_18(:,7)) ...
    My_Corr(Male_data_19(:,7),Male_data_19(:,1).*Male_data_19(:,7)) My_Corr(Male_data_20(:,7),Male_data_20(:,1).*Male_data_20(:,7)) ...
    My_Corr(Male_data_21(:,7),Male_data_21(:,1).*Male_data_21(:,7))];

% We show the results
Age = 6:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female:Ours')
xlabel('Age/yr');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age; % DH
y_data = Correlation_coefficient_Female_DH_Ours; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age; % NDH
y_data = Correlation_coefficient_Female_NDH_Ours; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'DH','NDH','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male:Ours')
xlabel('Age/yr');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age; % DH
y_data = Correlation_coefficient_Male_DH_Ours; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age; % NDH
y_data = Correlation_coefficient_Male_NDH_Ours; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'DH','NDH','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_Ours = Age;
save('Correlation_coefficient_Height_HGS_Ours.mat','Age_Ours','Correlation_coefficient_Female_DH_Ours',...
    'Correlation_coefficient_Female_NDH_Ours','Correlation_coefficient_Male_DH_Ours','Correlation_coefficient_Male_NDH_Ours');

%% 03-Data from Korea Sports Promotion Foundation (KSPF)
% Data source: https://www.bigdata-culture.kr/bigdata/user/data_market/detail.do?id=ace0aea7-5eee-48b9-b616-637365d665c1
% Loading the data
Female_data = xlsread('KSPF, Korea.xlsx','Female');
Male_data = xlsread('KSPF, Korea.xlsx','Male');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data); % No. Age Height Weight HGS of Left HGS of Right
for i=1:M
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end

    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end

    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end

    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end

    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end

    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end

    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end

    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,:)];
    end

    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20;Female_data(i,:)];
    end

    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data); % No. Age Height Weight HGS of Left HGS of Right
for i=1:M
    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,:)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,:)];
    end

    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,:)];
    end

    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,:)];
    end

    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,:)];
    end

    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,:)];
    end

    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,:)];
    end

    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,:)];
    end

    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19;Male_data(i,:)];
    end

    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20;Male_data(i,:)];
    end

    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21;Male_data(i,:)];
    end
end
% we calculate correlation coefficients between HGS and Height*HGS
Correlation_coefficient_Female_DH_KSPF = [];
Correlation_coefficient_Female_NDH_KSPF = [];
Correlation_coefficient_Male_DH_KSPF = [];
Correlation_coefficient_Male_NDH_KSPF = [];

% For female
% DH
Correlation_coefficient_Female_DH_KSPF = [My_Corr(Female_data_11(:,6),Female_data_11(:,3).*Female_data_11(:,6)) My_Corr(Female_data_12(:,6),Female_data_12(:,3).*Female_data_12(:,6)) ...
    My_Corr(Female_data_13(:,6),Female_data_13(:,3).*Female_data_13(:,6)) My_Corr(Female_data_14(:,6),Female_data_14(:,3).*Female_data_14(:,6)) ...
    My_Corr(Female_data_15(:,6),Female_data_15(:,3).*Female_data_15(:,6)) My_Corr(Female_data_16(:,6),Female_data_16(:,3).*Female_data_16(:,6)) ...
    My_Corr(Female_data_17(:,6),Female_data_17(:,3).*Female_data_17(:,6)) My_Corr(Female_data_18(:,6),Female_data_18(:,3).*Female_data_18(:,6)) ...
    My_Corr(Female_data_19(:,6),Female_data_19(:,3).*Female_data_19(:,6)) My_Corr(Female_data_20(:,6),Female_data_20(:,3).*Female_data_20(:,6)) ...
    My_Corr(Female_data_21(:,6),Female_data_21(:,3).*Female_data_21(:,6))];

% NDH
Correlation_coefficient_Female_NDH_KSPF = [My_Corr(Female_data_11(:,5),Female_data_11(:,3).*Female_data_11(:,5)) My_Corr(Female_data_12(:,5),Female_data_12(:,3).*Female_data_12(:,5)) ...
    My_Corr(Female_data_13(:,5),Female_data_13(:,3).*Female_data_13(:,5)) My_Corr(Female_data_14(:,5),Female_data_14(:,3).*Female_data_14(:,5)) ...
    My_Corr(Female_data_15(:,5),Female_data_15(:,3).*Female_data_15(:,5)) My_Corr(Female_data_16(:,5),Female_data_16(:,3).*Female_data_16(:,5)) ...
    My_Corr(Female_data_17(:,5),Female_data_17(:,3).*Female_data_17(:,5)) My_Corr(Female_data_18(:,5),Female_data_18(:,3).*Female_data_18(:,5)) ...
    My_Corr(Female_data_19(:,5),Female_data_19(:,3).*Female_data_19(:,5)) My_Corr(Female_data_20(:,5),Female_data_20(:,3).*Female_data_20(:,5)) ...
    My_Corr(Female_data_21(:,5),Female_data_21(:,3).*Female_data_21(:,5))];

% For male
% DH
Correlation_coefficient_Male_DH_KSPF = [My_Corr(Male_data_11(:,6),Male_data_11(:,3).*Male_data_11(:,6)) My_Corr(Male_data_12(:,6),Male_data_12(:,3).*Male_data_12(:,6)) ...
    My_Corr(Male_data_13(:,6),Male_data_13(:,3).*Male_data_13(:,6)) My_Corr(Male_data_14(:,6),Male_data_14(:,3).*Male_data_14(:,6)) ...
    My_Corr(Male_data_15(:,6),Male_data_15(:,3).*Male_data_15(:,6)) My_Corr(Male_data_16(:,6),Male_data_16(:,3).*Male_data_16(:,6)) ...
    My_Corr(Male_data_17(:,6),Male_data_17(:,3).*Male_data_17(:,6)) My_Corr(Male_data_18(:,6),Male_data_18(:,3).*Male_data_18(:,6)) ...
    My_Corr(Male_data_19(:,6),Male_data_19(:,3).*Male_data_19(:,6)) My_Corr(Male_data_20(:,6),Male_data_20(:,3).*Male_data_20(:,6)) ...
    My_Corr(Male_data_21(:,6),Male_data_21(:,3).*Male_data_21(:,6))];

% NDH
Correlation_coefficient_Male_NDH_KSPF = [My_Corr(Male_data_11(:,5),Male_data_11(:,3).*Male_data_11(:,5)) My_Corr(Male_data_12(:,5),Male_data_12(:,3).*Male_data_12(:,5)) ...
    My_Corr(Male_data_13(:,5),Male_data_13(:,3).*Male_data_13(:,5)) My_Corr(Male_data_14(:,5),Male_data_14(:,3).*Male_data_14(:,5)) ...
    My_Corr(Male_data_15(:,5),Male_data_15(:,3).*Male_data_15(:,5)) My_Corr(Male_data_16(:,5),Male_data_16(:,3).*Male_data_16(:,5)) ...
    My_Corr(Male_data_17(:,5),Male_data_17(:,3).*Male_data_17(:,5)) My_Corr(Male_data_18(:,5),Male_data_18(:,3).*Male_data_18(:,5)) ...
    My_Corr(Male_data_19(:,5),Male_data_19(:,3).*Male_data_19(:,5)) My_Corr(Male_data_20(:,5),Male_data_20(:,3).*Male_data_20(:,5)) ...
    My_Corr(Male_data_21(:,5),Male_data_21(:,3).*Male_data_21(:,5))];

% We show the results
Age = 11:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female:Ours')
xlabel('Age/yr');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age; % DH
y_data = Correlation_coefficient_Female_DH_KSPF; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age; % NDH
y_data = Correlation_coefficient_Female_NDH_KSPF; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'DH','NDH','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male:Ours')
xlabel('Age/yr');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0.95 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age; % DH
y_data = Correlation_coefficient_Male_DH_KSPF; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

x_data = Age; % NDH
y_data = Correlation_coefficient_Male_NDH_KSPF; % HGS VS Height*HGS
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H2 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);

Legend = legend([H1 H2],'DH','NDH','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_KSPF = Age;
save('Correlation_coefficient_Height_HGS_KSPF.mat','Age_KSPF','Correlation_coefficient_Female_DH_KSPF',...
    'Correlation_coefficient_Female_NDH_KSPF','Correlation_coefficient_Male_DH_KSPF','Correlation_coefficient_Male_NDH_KSPF');

