%% In this code, we calculate correlation coefficients between Height and Height*Weight
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
%% 01-Data from Body Composition of Chinese People Data Set (BCCPDS)
% Data source: https://www.ncmi.cn//phda/dataDetails.do?id=CSTR:A0006.11.A0005.201905.000346
% Loading the data
Female_data = xlsread('BCCPDS.xlsx','Female');
Male_data = xlsread('BCCPDS.xlsx','Male');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data); % Height Weight
for i=1:M
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 9
        Female_data_9 = [Female_data_9;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21;Female_data(i,3) Female_data(i,4)];
    end
end

% For male
[M N] = size(Male_data); % Height Weight
for i=1:M
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 9
        Male_data_9 = [Male_data_9;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 10
        Male_data_10 = [Male_data_10;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21;Male_data(i,3) Male_data(i,4)];
    end
end
Temp_female_01 = [Female_data_7;Female_data_8;Female_data_9;Female_data_10;Female_data_11;Female_data_12;Female_data_13;...
    Female_data_14;Female_data_15;Female_data_16;Female_data_17;Female_data_18;Female_data_19;Female_data_20;Female_data_21];
Temp_male_01 = [Male_data_7;Male_data_8;Male_data_9;Male_data_10;Male_data_11;Male_data_12;Male_data_13;...
    Male_data_14;Male_data_15;Male_data_16;Male_data_17;Male_data_18;Male_data_19;Male_data_20;Male_data_21];

% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_BCCPDS_1 = [];
Correlation_coefficient_Male_BCCPDS_1 = [];

% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_BCCPDS_1 = [My_Corr(Female_data_7(:,2),Female_data_7(:,1).*Female_data_7(:,2)) My_Corr(Female_data_8(:,2),Female_data_8(:,1).*Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,1).*Female_data_9(:,2)) My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2)) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,1).*Female_data_11(:,2)) My_Corr(Female_data_12(:,2),Female_data_12(:,1).*Female_data_12(:,2)) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,1).*Female_data_13(:,2)) My_Corr(Female_data_14(:,2),Female_data_14(:,1).*Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,1).*Female_data_15(:,2)) My_Corr(Female_data_16(:,2),Female_data_16(:,1).*Female_data_16(:,2)) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,1).*Female_data_17(:,2)) My_Corr(Female_data_18(:,2),Female_data_18(:,1).*Female_data_18(:,2)) ...
    My_Corr(Female_data_19(:,2),Female_data_19(:,1).*Female_data_19(:,2)) My_Corr(Female_data_20(:,2),Female_data_20(:,1).*Female_data_20(:,2)) ...
    My_Corr(Female_data_21(:,2),Female_data_21(:,1).*Female_data_21(:,2))];

% For male
% Weight VS Height*Weight
Correlation_coefficient_Male_BCCPDS_1 = [My_Corr(Male_data_7(:,2),Male_data_7(:,1).*Male_data_7(:,2)) My_Corr(Male_data_8(:,2),Male_data_8(:,1).*Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,1).*Male_data_9(:,2)) My_Corr(Male_data_10(:,2),Male_data_10(:,1).*Male_data_10(:,2)) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,1).*Male_data_11(:,2)) My_Corr(Male_data_12(:,2),Male_data_12(:,1).*Male_data_12(:,2)) ...
    My_Corr(Male_data_13(:,2),Male_data_13(:,1).*Male_data_13(:,2)) My_Corr(Male_data_14(:,2),Male_data_14(:,1).*Male_data_14(:,2)) ...
    My_Corr(Male_data_15(:,2),Male_data_15(:,1).*Male_data_15(:,2)) My_Corr(Male_data_16(:,2),Male_data_16(:,1).*Male_data_16(:,2)) ...
    My_Corr(Male_data_17(:,2),Male_data_17(:,1).*Male_data_17(:,2)) My_Corr(Male_data_18(:,2),Male_data_18(:,1).*Male_data_18(:,2)) ...
    My_Corr(Male_data_19(:,2),Male_data_19(:,1).*Male_data_19(:,2)) My_Corr(Male_data_20(:,2),Male_data_20(:,1).*Male_data_20(:,2)) ...
    My_Corr(Male_data_21(:,2),Male_data_21(:,1).*Male_data_21(:,2))];

% We show the results
Age = 7:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_BCCPDS_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_BCCPDS_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_BCCPDS = Age;
save('Correlation_coefficient_Height_Weight_BCCPDS.mat','Age_BCCPDS','Correlation_coefficient_Female_BCCPDS_1',...
    'Correlation_coefficient_Male_BCCPDS_1');

%% 02-Data from Japanese Database for Human Life Engineering (JDHLE)
% Data source: https://www.hql.jp/database/cat/size/children
%
% Loading the data from Japanese Database for Human Life Engineering (JDHLE)
Female_data = xlsread('Japanese_children_Aged_1_8.xlsx','Female');
Male_data = xlsread('Japanese_children_Aged_1_8.xlsx','Male');
% Stratified by age and gender
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];
Female_data_9 = [];
Female_data_10 = [];

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];
Male_data_9 = [];
Male_data_10 = [];

% For female
[M N] = size(Female_data); % Height Weight
for i=1:M

    if Female_data(i,2) == 1
        Female_data_1 = [Female_data_1;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 2
        Female_data_2 = [Female_data_2;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 3
        Female_data_3 = [Female_data_3;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 4
        Female_data_4 = [Female_data_4;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 5
        Female_data_5 = [Female_data_5;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 6
        Female_data_6 = [Female_data_6;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,3) Female_data(i,4)];
    end
end

% For male
[M N] = size(Male_data); % Height Weight
for i=1:M

    if Male_data(i,2) == 1
        Male_data_1 = [Male_data_1;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 2
        Male_data_2 = [Male_data_2;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 3
        Male_data_3 = [Male_data_3;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 4
        Male_data_4 = [Male_data_4;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 5
        Male_data_5 = [Male_data_5;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 6
        Male_data_6 = [Male_data_6;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,3) Male_data(i,4)];
    end
end

% Loading the data from Japanese Database for Human Life Engineering (JDHLE)
% Japanese_children_data2005_08.xlsx
Female_data = xlsread('Japanese_children_data2005_08.xlsx','Female');
Male_data = xlsread('Japanese_children_data2005_08.xlsx','Male');
% For female
[M N] = size(Female_data); % Height Weight
for i=1:M
    if Female_data(i,2) >=3 & Female_data(i,2) < 4 & Female_data(i,4)~= 0
        Female_data_3 = [Female_data_3;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=4 & Female_data(i,2) < 5 & Female_data(i,4)~= 0
        Female_data_4 = [Female_data_4;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=5 & Female_data(i,2) < 6 & Female_data(i,4)~= 0
        Female_data_5 = [Female_data_5;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=6 & Female_data(i,2) < 7 & Female_data(i,4)~= 0
        Female_data_6 = [Female_data_6;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=7 & Female_data(i,2) < 8 & Female_data(i,4)~= 0
        Female_data_7 = [Female_data_7;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=8 & Female_data(i,2) < 9 & Female_data(i,4)~= 0
        Female_data_8 = [Female_data_8;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=9 & Female_data(i,2) < 10 & Female_data(i,4)~= 0
        Female_data_9 = [Female_data_9;Female_data(i,3:4)/10];
    end

    if Female_data(i,2) >=10 & Female_data(i,2) < 11 & Female_data(i,4)~= 0
        Female_data_10 = [Female_data_10;Female_data(i,3:4)/10];
    end
end

% For Male
[M N] = size(Male_data); % Height Weight
for i=1:M
    if Male_data(i,2) >=3 & Male_data(i,2) < 4 & Male_data(i,4)~= 0
        Male_data_3 = [Male_data_3;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=4 & Male_data(i,2) < 5 & Male_data(i,4)~= 0
        Male_data_4 = [Male_data_4;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=5 & Male_data(i,2) < 6 & Male_data(i,4)~= 0
        Male_data_5 = [Male_data_5;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=6 & Male_data(i,2) < 7 & Male_data(i,4)~= 0
        Male_data_6 = [Male_data_6;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=7 & Male_data(i,2) < 8 & Male_data(i,4)~= 0
        Male_data_7 = [Male_data_7;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=8 & Male_data(i,2) < 9 & Male_data(i,4)~= 0
        Male_data_8 = [Male_data_8;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=9 & Male_data(i,2) < 10 & Male_data(i,4)~= 0
        Male_data_9 = [Male_data_9;Male_data(i,3:4)/10];
    end

    if Male_data(i,2) >=10 & Male_data(i,2) < 11 & Male_data(i,4)~= 0
        Male_data_10 = [Male_data_10;Male_data(i,3:4)/10];
    end
end
Temp_female_02 = [Female_data_1;Female_data_2;Female_data_3;Female_data_4;Female_data_5;Female_data_6;Female_data_7;Female_data_8;Female_data_9;Female_data_10];
Temp_male_02 = [Male_data_1;Male_data_2;Male_data_3;Male_data_4;Male_data_5;Male_data_6;Male_data_7;Male_data_8;Male_data_9;Male_data_10];

% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_JDHLE_1 = [];
Correlation_coefficient_Male_JDHLE_1 = [];

% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_JDHLE_1 = [My_Corr(Female_data_1(:,2),Female_data_1(:,1).*Female_data_1(:,2)) My_Corr(Female_data_2(:,2),Female_data_2(:,1).*Female_data_2(:,2)) ...
    My_Corr(Female_data_3(:,2),Female_data_3(:,1).*Female_data_3(:,2)) My_Corr(Female_data_4(:,2),Female_data_4(:,1).*Female_data_4(:,2)) ...
    My_Corr(Female_data_5(:,2),Female_data_5(:,1).*Female_data_5(:,2)) My_Corr(Female_data_6(:,2),Female_data_6(:,1).*Female_data_6(:,2)) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,1).*Female_data_7(:,2)) My_Corr(Female_data_8(:,2),Female_data_8(:,1).*Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,1).*Female_data_9(:,2)) My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2))];

% For male
% Weight VS Height*Weight
Correlation_coefficient_Male_JDHLE_1 = [My_Corr(Male_data_1(:,2),Male_data_1(:,1).*Male_data_1(:,2)) My_Corr(Male_data_2(:,2),Male_data_2(:,1).*Male_data_2(:,2)) ...
    My_Corr(Male_data_3(:,2),Male_data_3(:,1).*Male_data_3(:,2)) My_Corr(Male_data_4(:,2),Male_data_4(:,1).*Male_data_4(:,2)) ...
    My_Corr(Male_data_5(:,2),Male_data_5(:,1).*Male_data_5(:,2)) My_Corr(Male_data_6(:,2),Male_data_6(:,1).*Male_data_6(:,2)) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,1).*Male_data_7(:,2)) My_Corr(Male_data_8(:,2),Male_data_8(:,1).*Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,1).*Male_data_9(:,2)) My_Corr(Male_data_10(:,2),Male_data_10(:,1).*Male_data_10(:,2))];

% We show the results
Age = 1:10;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female:Japanese')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_JDHLE_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0.5:0.1:10.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male:Japanese')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([0 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_JDHLE_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0.5:0.1:10.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_JDHLE = Age;
save('Correlation_coefficient_Height_Weight_JDHLE.mat','Age_JDHLE','Correlation_coefficient_Female_JDHLE_1',...
    'Correlation_coefficient_Male_JDHLE_1');

%% 03-Data from Jilin, China
% Data source: https://figshare.com/articles/dataset/The_association_between_BMI_and_body_weight_perception_among_children_and_adolescents_in_Jilin_City_China/6028247
%
% Loading the data from Body Composition of Chinese People Data Set (BCCPDS)
Female_data = xlsread('Jilin_China.xlsx','Female');
Male_data = xlsread('Jilin_China.xlsx','Male');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data); % Height Weight
for i=1:M
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 9
        Female_data_9 = [Female_data_9;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,3) Female_data(i,4)];
    end
end

% For male
[M N] = size(Male_data); % Height Weight
for i=1:M
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 9
        Male_data_9 = [Male_data_9;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 10
        Male_data_10 = [Male_data_10;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,3) Male_data(i,4)];
    end

    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,3) Male_data(i,4)];
    end
end
Temp_female_03 = [Female_data_7;Female_data_8;Female_data_9;Female_data_10;Female_data_11;Female_data_12;Female_data_13;Female_data_14;...
    Female_data_15;Female_data_16;Female_data_17;Female_data_18];
Temp_male_03 = [Male_data_7;Male_data_8;Male_data_9;Male_data_10;Male_data_11;Male_data_12;Male_data_13;Male_data_14;...
    Male_data_15;Male_data_16;Male_data_17;Male_data_18];

% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_Yun_1 = [];
Correlation_coefficient_Male_Yun_1 = [];

% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_Yun_1 = [My_Corr(Female_data_7(:,2),Female_data_7(:,1).*Female_data_7(:,2)) My_Corr(Female_data_8(:,2),Female_data_8(:,1).*Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,1).*Female_data_9(:,2)) My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2)) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,1).*Female_data_11(:,2)) My_Corr(Female_data_12(:,2),Female_data_12(:,1).*Female_data_12(:,2)) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,1).*Female_data_13(:,2)) My_Corr(Female_data_14(:,2),Female_data_14(:,1).*Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,1).*Female_data_15(:,2)) My_Corr(Female_data_16(:,2),Female_data_16(:,1).*Female_data_16(:,2)) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,1).*Female_data_17(:,2)) My_Corr(Female_data_18(:,2),Female_data_18(:,1).*Female_data_18(:,2))];

% For male
% Weight VS Height*Weight
Correlation_coefficient_Male_Yun_1 = [My_Corr(Male_data_7(:,2),Male_data_7(:,1).*Male_data_7(:,2)) My_Corr(Male_data_8(:,2),Male_data_8(:,1).*Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,1).*Male_data_9(:,2)) My_Corr(Male_data_10(:,2),Male_data_10(:,1).*Male_data_10(:,2)) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,1).*Male_data_11(:,2)) My_Corr(Male_data_12(:,2),Male_data_12(:,1).*Male_data_12(:,2)) ...
    My_Corr(Male_data_13(:,2),Male_data_13(:,1).*Male_data_13(:,2)) My_Corr(Male_data_14(:,2),Male_data_14(:,1).*Male_data_14(:,2)) ...
    My_Corr(Male_data_15(:,2),Male_data_15(:,1).*Male_data_15(:,2)) My_Corr(Male_data_16(:,2),Male_data_16(:,1).*Male_data_16(:,2)) ...
    My_Corr(Male_data_17(:,2),Male_data_17(:,1).*Male_data_17(:,2)) My_Corr(Male_data_18(:,2),Male_data_18(:,1).*Male_data_18(:,2))];

% We show the results
Age = 7:18;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([6 19]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_Yun_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6.5:0.1:19.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([6 19]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_Yun_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6.5:0.1:19.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_Yun = Age;
save('Correlation_coefficient_Height_Weight_Yun.mat','Age_Yun','Correlation_coefficient_Female_Yun_1',...
    'Correlation_coefficient_Male_Yun_1');

%% 04-Data from Bangladesh
% Data source: https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi:10.7910/DVN/WI5JOH
% Loading the data
Female_data = xlsread('Bangladesh_2011_14.xlsx','Female');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data); % Height Weight
for i=1:M
    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,3) Female_data(i,4)];
    end

    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,3) Female_data(i,4)];
    end
end
Temp_female_04 = [Female_data_10;Female_data_11;Female_data_12;Female_data_13;...
    Female_data_14;Female_data_15;Female_data_16;Female_data_17;Female_data_18;Female_data_19];

% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_Khan_1 = [];
% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_Khan_1 = [My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2)) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,1).*Female_data_11(:,2)) My_Corr(Female_data_12(:,2),Female_data_12(:,1).*Female_data_12(:,2)) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,1).*Female_data_13(:,2)) My_Corr(Female_data_14(:,2),Female_data_14(:,1).*Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,1).*Female_data_15(:,2)) My_Corr(Female_data_16(:,2),Female_data_16(:,1).*Female_data_16(:,2)) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,1).*Female_data_17(:,2)) My_Corr(Female_data_18(:,2),Female_data_18(:,1).*Female_data_18(:,2)) ...
    My_Corr(Female_data_19(:,2),Female_data_19(:,1).*Female_data_19(:,2))];

% We show the results
Age = 10:19;
% For female
figure;
hold on;
title('Female')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([9 20]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_Khan_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 9.5:0.1:19.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_Khan = Age;
save('Correlation_coefficient_Height_Weight_Khan.mat','Age_Khan','Correlation_coefficient_Female_Khan_1');

%% 05-Data from our reaserch
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

Temp_female_05 = [Female_data_6;Female_data_7;Female_data_8;Female_data_9;Female_data_10;Female_data_11;Female_data_12;Female_data_13;...
    Female_data_14;Female_data_15;Female_data_16;Female_data_17;Female_data_18;Female_data_19;Female_data_20;Female_data_21];
Temp_male_05 = [Male_data_6;Male_data_7;Male_data_8;Male_data_9;Male_data_10;Male_data_11;Male_data_12;Male_data_13;...
    Male_data_14;Male_data_15;Male_data_16;Male_data_17;Male_data_18;Male_data_19;Male_data_20;Male_data_21];

% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_Ours_1 = [];
Correlation_coefficient_Male_Ours_1 = [];

% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_Ours_1 = [My_Corr(Female_data_6(:,2),Female_data_6(:,1).*Female_data_6(:,2)) ...
    My_Corr(Female_data_7(:,2),Female_data_7(:,1).*Female_data_7(:,2)) My_Corr(Female_data_8(:,2),Female_data_8(:,1).*Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,1).*Female_data_9(:,2)) My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2)) ...
    My_Corr(Female_data_11(:,2),Female_data_11(:,1).*Female_data_11(:,2)) My_Corr(Female_data_12(:,2),Female_data_12(:,1).*Female_data_12(:,2)) ...
    My_Corr(Female_data_13(:,2),Female_data_13(:,1).*Female_data_13(:,2)) My_Corr(Female_data_14(:,2),Female_data_14(:,1).*Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,1).*Female_data_15(:,2)) My_Corr(Female_data_16(:,2),Female_data_16(:,1).*Female_data_16(:,2)) ...
    My_Corr(Female_data_17(:,2),Female_data_17(:,1).*Female_data_17(:,2)) My_Corr(Female_data_18(:,2),Female_data_18(:,1).*Female_data_18(:,2)) ...
    My_Corr(Female_data_19(:,2),Female_data_19(:,1).*Female_data_19(:,2)) My_Corr(Female_data_20(:,2),Female_data_20(:,1).*Female_data_20(:,2)) ...
    My_Corr(Female_data_21(:,2),Female_data_21(:,1).*Female_data_21(:,2))];

% For male
% Weight VS Height*Weight
Correlation_coefficient_Male_Ours_1 = [My_Corr(Female_data_6(:,2),Female_data_6(:,1).*Female_data_6(:,2)) ...
    My_Corr(Male_data_7(:,2),Male_data_7(:,1).*Male_data_7(:,2)) My_Corr(Male_data_8(:,2),Male_data_8(:,1).*Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,1).*Male_data_9(:,2)) My_Corr(Male_data_10(:,2),Male_data_10(:,1).*Male_data_10(:,2)) ...
    My_Corr(Male_data_11(:,2),Male_data_11(:,1).*Male_data_11(:,2)) My_Corr(Male_data_12(:,2),Male_data_12(:,1).*Male_data_12(:,2)) ...
    My_Corr(Male_data_13(:,2),Male_data_13(:,1).*Male_data_13(:,2)) My_Corr(Male_data_14(:,2),Male_data_14(:,1).*Male_data_14(:,2)) ...
    My_Corr(Male_data_15(:,2),Male_data_15(:,1).*Male_data_15(:,2)) My_Corr(Male_data_16(:,2),Male_data_16(:,1).*Male_data_16(:,2)) ...
    My_Corr(Male_data_17(:,2),Male_data_17(:,1).*Male_data_17(:,2)) My_Corr(Male_data_18(:,2),Male_data_18(:,1).*Male_data_18(:,2)) ...
    My_Corr(Male_data_19(:,2),Male_data_19(:,1).*Male_data_19(:,2)) My_Corr(Male_data_20(:,2),Male_data_20(:,1).*Male_data_20(:,2)) ...
    My_Corr(Male_data_21(:,2),Male_data_21(:,1).*Male_data_21(:,2))];

% We show the results
Age = 6:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_Ours_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_Ours_1; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_Ours = Age;
save('Correlation_coefficient_Height_Weight_Ours.mat','Age_Ours','Correlation_coefficient_Female_Ours_1',...
    'Correlation_coefficient_Male_Ours_1');
%% 06-Data from Korea Sports Promotion Foundation (KSPF)
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
%{
Temp_female_01 = [Female_data_11;Female_data_12;Female_data_13;...
    Female_data_14;Female_data_15;Female_data_16;Female_data_17;Female_data_18;Female_data_19;Female_data_20;Female_data_21];
Temp_male_01 = [Male_data_11;Male_data_12;Male_data_13;...
    Male_data_14;Male_data_15;Male_data_16;Male_data_17;Male_data_18;Male_data_19;Male_data_20;Male_data_21];
%}
% we calculate correlation coefficients between Height and Height*Weight
Correlation_coefficient_Female_KSPF = [];
Correlation_coefficient_Male_KSPF = [];

% For female
% Weight VS Height*Weight
Correlation_coefficient_Female_KSPF = [My_Corr(Female_data_11(:,4),Female_data_11(:,3).*Female_data_11(:,4)) My_Corr(Female_data_12(:,4),Female_data_12(:,3).*Female_data_12(:,4)) ...
    My_Corr(Female_data_13(:,4),Female_data_13(:,3).*Female_data_13(:,4)) My_Corr(Female_data_14(:,4),Female_data_14(:,3).*Female_data_14(:,4)) ...
    My_Corr(Female_data_15(:,4),Female_data_15(:,3).*Female_data_15(:,4)) My_Corr(Female_data_16(:,4),Female_data_16(:,3).*Female_data_16(:,4)) ...
    My_Corr(Female_data_17(:,4),Female_data_17(:,3).*Female_data_17(:,4)) My_Corr(Female_data_18(:,4),Female_data_18(:,3).*Female_data_18(:,4)) ...
    My_Corr(Female_data_19(:,4),Female_data_19(:,3).*Female_data_19(:,4)) My_Corr(Female_data_20(:,4),Female_data_20(:,3).*Female_data_20(:,4)) ...
    My_Corr(Female_data_21(:,4),Female_data_21(:,3).*Female_data_21(:,4))];

% For male
% Weight VS Height*Weight
Correlation_coefficient_Male_KSPF = [My_Corr(Male_data_11(:,4),Male_data_11(:,3).*Male_data_11(:,4)) My_Corr(Male_data_12(:,4),Male_data_12(:,3).*Male_data_12(:,4)) ...
    My_Corr(Male_data_13(:,4),Male_data_13(:,3).*Male_data_13(:,4)) My_Corr(Male_data_14(:,4),Male_data_14(:,3).*Male_data_14(:,4)) ...
    My_Corr(Male_data_15(:,4),Male_data_15(:,3).*Male_data_15(:,4)) My_Corr(Male_data_16(:,4),Male_data_16(:,3).*Male_data_16(:,4)) ...
    My_Corr(Male_data_17(:,4),Male_data_17(:,3).*Male_data_17(:,4)) My_Corr(Male_data_18(:,4),Male_data_18(:,3).*Male_data_18(:,4)) ...
    My_Corr(Male_data_19(:,4),Male_data_19(:,3).*Male_data_19(:,4)) My_Corr(Male_data_20(:,4),Male_data_20(:,3).*Male_data_20(:,4)) ...
    My_Corr(Male_data_21(:,4),Male_data_21(:,3).*Male_data_21(:,4))];

% We show the results
Age = 11:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Female_KSPF; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age/yrs');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Correlation_coefficient_Male_KSPF; % Height VS Height*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend(H1,'Weight VS Height*Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% We save the correlation coefficient
Age_KSPF = Age;
save('Correlation_coefficient_Height_Weight_KSPF.mat','Age_KSPF','Correlation_coefficient_Female_KSPF',...
    'Correlation_coefficient_Male_KSPF');

%}