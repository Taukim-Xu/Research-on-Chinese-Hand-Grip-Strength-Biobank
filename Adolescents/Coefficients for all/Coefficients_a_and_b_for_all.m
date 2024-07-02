%% In this code, we calculate the coefficients of a and b in 1=a/Weight+b*Height
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
%
% Loading the data from Body Composition of Chinese People Data Set (BCCPDS)
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

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Coefficient_a_Female_BCCPDS = [];
Coefficient_b_Female_BCCPDS = [];
Coefficient_a_Male_BCCPDS = [];
Coefficient_b_Male_BCCPDS = [];

% For female
% Age 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 20
X_data = Female_data_20(:,1); % Height
Y_data = Female_data_20(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];
% Age 21
X_data = Female_data_21(:,1); % Height
Y_data = Female_data_21(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_BCCPDS = [Coefficient_a_Female_BCCPDS PP(2)];
Coefficient_b_Female_BCCPDS = [Coefficient_b_Female_BCCPDS PP(1)];

% For male
% Age 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 19
X_data = Male_data_19(:,1); % Height
Y_data = Male_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 20
X_data = Male_data_20(:,1); % Height
Y_data = Male_data_20(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];
% Age 21
X_data = Male_data_21(:,1); % Height
Y_data = Male_data_21(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_BCCPDS = [Coefficient_a_Male_BCCPDS PP(2)];
Coefficient_b_Male_BCCPDS = [Coefficient_b_Male_BCCPDS PP(1)];

% We show the results
Age = 7:21;
figure;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient a')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_a_Female_BCCPDS; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_BCCPDS; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient b')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_BCCPDS; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_BCCPDS; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_BCCPDS = Age;
Coefficient_b_Female_BCCPDS = Coefficient_b_Female_BCCPDS*100;
Coefficient_b_Male_BCCPDS = Coefficient_b_Male_BCCPDS*100;
save('Coefficient_a_and_b_BCCPDS.mat','Age_BCCPDS','Coefficient_a_Female_BCCPDS',...
    'Coefficient_b_Female_BCCPDS','Coefficient_a_Male_BCCPDS','Coefficient_b_Male_BCCPDS');

%% 02-Data from Japanese Database for Human Life Engineering (JDHLE)
% Data source: https://www.hql.jp/database/cat/size/children
%
% Loading the data from Japanese Database for Human Life Engineering (JDHLE)
% Japanese_children_Aged_1_8.xlsx
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

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Coefficient_a_Female_JDHLE = [];
Coefficient_b_Female_JDHLE = [];
Coefficient_a_Male_JDHLE = [];
Coefficient_b_Male_JDHLE = [];

% For female
% Age 1
X_data = Female_data_1(:,1); % Height
Y_data = Female_data_1(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 2
X_data = Female_data_2(:,1); % Height
Y_data = Female_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 3
X_data = Female_data_3(:,1); % Height
Y_data = Female_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 4
X_data = Female_data_4(:,1); % Height
Y_data = Female_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 5
X_data = Female_data_5(:,1); % Height
Y_data = Female_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 6
X_data = Female_data_6(:,1); % Height
Y_data = Female_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];
% Age 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_JDHLE = [Coefficient_a_Female_JDHLE PP(2)];
Coefficient_b_Female_JDHLE = [Coefficient_b_Female_JDHLE PP(1)];

% for male
% Age 1
X_data = Male_data_1(:,1); % Height
Y_data = Male_data_1(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 2
X_data = Male_data_2(:,1); % Height
Y_data = Male_data_2(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 3
X_data = Male_data_3(:,1); % Height
Y_data = Male_data_3(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 4
X_data = Male_data_4(:,1); % Height
Y_data = Male_data_4(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 5
X_data = Male_data_5(:,1); % Height
Y_data = Male_data_5(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 6
X_data = Male_data_6(:,1); % Height
Y_data = Male_data_6(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];
% Age 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_JDHLE = [Coefficient_a_Male_JDHLE PP(2)];
Coefficient_b_Male_JDHLE = [Coefficient_b_Male_JDHLE PP(1)];

% We show the results
Age = 1:10;
figure;
% Coefficient a
subplot(1,2,1);
hold on;
xlabel('Age/yrs');
ylabel('Coefficient a: Japanese')
xlim([0 11]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_a_Female_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% Coefficient b
subplot(1,2,2);
hold on;
xlabel('Age/yrs');
ylabel('Coefficient b: Japanese')
XX = 0:0.1:10;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

y_data = Coefficient_b_Male_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 0:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_JDHLE = Age;
Coefficient_b_Female_JDHLE = Coefficient_b_Female_JDHLE*100;
Coefficient_b_Male_JDHLE = Coefficient_b_Male_JDHLE*100;
save('Coefficient_a_and_b_JDHLE.mat','Age_JDHLE','Coefficient_a_Female_JDHLE','Coefficient_b_Female_JDHLE',...
    'Coefficient_a_Male_JDHLE','Coefficient_b_Male_JDHLE');

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

% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Coefficient_a_Female_Yun = [];
Coefficient_b_Female_Yun = [];
Coefficient_a_Male_Yun = [];
Coefficient_b_Male_Yun = [];

% For female
% Age 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];
% Age 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Yun = [Coefficient_a_Female_Yun PP(2)];
Coefficient_b_Female_Yun = [Coefficient_b_Female_Yun PP(1)];

% For male
% Age 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];
% Age 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Male_Yun = [Coefficient_a_Male_Yun PP(2)];
Coefficient_b_Male_Yun = [Coefficient_b_Male_Yun PP(1)];

% We show the results
Age = 7:18;
figure;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient a')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_a_Female_Yun; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:18;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_Yun; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:18;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient b')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_Yun; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:18;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_Yun; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 7:0.1:18;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_Yun = Age;
Coefficient_b_Female_Yun = Coefficient_b_Female_Yun*100;
Coefficient_b_Male_Yun = Coefficient_b_Male_Yun*100;
save('Coefficient_a_and_b_Yun.mat','Age_Yun','Coefficient_a_Female_Yun',...
    'Coefficient_b_Female_Yun','Coefficient_a_Male_Yun','Coefficient_b_Male_Yun');

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
% We calculate the coefficients of a and b in 1=a/Weight+b*Height for this
% dataset
Coefficient_a_Female_Khan = [];
Coefficient_b_Female_Khan = [];

% For female
% Age 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];
% Age 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data= X_data.*Y_data; % Height*Weight
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_a_Female_Khan = [Coefficient_a_Female_Khan PP(2)];
Coefficient_b_Female_Khan = [Coefficient_b_Female_Khan PP(1)];

% We show the results
Age = 10:19;
figure;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient a')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_a_Female_Khan; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 9.5:0.1:19.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

Legend = legend(H1,'Female','Location','southwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient b')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_Khan; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 9.5:0.1:19.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

Legend = legend(H1,'Female','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_Khan = Age;
Coefficient_b_Female_Khan = Coefficient_b_Female_Khan*100;
save('Coefficient_a_and_b_Khan.mat','Age_Khan','Coefficient_a_Female_Khan','Coefficient_b_Female_Khan');

%% 05 - Our data
% 
% Loading the data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
% The coefficient of a and b
Coefficient_a_Female_Ours = [];
Coefficient_b_Female_Ours = [];
Coefficient_a_Male_Ours = [];
Coefficient_b_Male_Ours = [];
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

% Linear fitting
% For female
% Aged 6
x_data = Female_data_6(:,1).*Female_data_6(:,2)/100;
y_data = Female_data_6(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 7
x_data = Female_data_7(:,1).*Female_data_7(:,2)/100;
y_data = Female_data_7(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 8
x_data = Female_data_8(:,1).*Female_data_8(:,2)/100;
y_data = Female_data_8(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 9
x_data = Female_data_9(:,1).*Female_data_9(:,2)/100;
y_data = Female_data_9(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 10
x_data = Female_data_10(:,1).*Female_data_10(:,2)/100;
y_data = Female_data_10(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 11
x_data = Female_data_11(:,1).*Female_data_11(:,2)/100;
y_data = Female_data_11(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 12
x_data = Female_data_12(:,1).*Female_data_12(:,2)/100;
y_data = Female_data_12(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 13
x_data = Female_data_13(:,1).*Female_data_13(:,2)/100;
y_data = Female_data_13(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 14
x_data = Female_data_14(:,1).*Female_data_14(:,2)/99;
y_data = Female_data_14(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 15
x_data = Female_data_15(:,1).*Female_data_15(:,2)/100;
y_data = Female_data_15(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 16
x_data = Female_data_16(:,1).*Female_data_16(:,2)/100;
y_data = Female_data_16(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 17
x_data = Female_data_17(:,1).*Female_data_17(:,2)/100;
y_data = Female_data_17(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 18
x_data = Female_data_18(:,1).*Female_data_18(:,2)/100;
y_data = Female_data_18(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 19
x_data = Female_data_19(:,1).*Female_data_19(:,2)/100;
y_data = Female_data_19(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 20
x_data = Female_data_20(:,1).*Female_data_20(:,2)/100;
y_data = Female_data_20(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 21
x_data = Female_data_21(:,1).*Female_data_21(:,2)/100;
y_data = Female_data_21(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% For male
% Aged 6
x_data = Male_data_6(:,1).*Male_data_6(:,2)/100;
y_data = Male_data_6(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 7
x_data = Male_data_7(:,1).*Male_data_7(:,2)/100;
y_data = Male_data_7(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 8
x_data = Male_data_8(:,1).*Male_data_8(:,2)/100;
y_data = Male_data_8(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 9
x_data = Male_data_9(:,1).*Male_data_9(:,2)/100;
y_data = Male_data_9(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 10
x_data = Male_data_10(:,1).*Male_data_10(:,2)/100;
y_data = Male_data_10(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 11
x_data = Male_data_11(:,1).*Male_data_11(:,2)/100;
y_data = Male_data_11(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 12
x_data = Male_data_12(:,1).*Male_data_12(:,2)/100;
y_data = Male_data_12(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 13
x_data = Male_data_13(:,1).*Male_data_13(:,2)/100;
y_data = Male_data_13(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 14
x_data = Male_data_14(:,1).*Male_data_14(:,2)/100;
y_data = Male_data_14(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 15
x_data = Male_data_15(:,1).*Male_data_15(:,2)/100;
y_data = Male_data_15(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 16
x_data = Male_data_16(:,1).*Male_data_16(:,2)/100;
y_data = Male_data_16(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 17
x_data = Male_data_17(:,1).*Male_data_17(:,2)/100;
y_data = Male_data_17(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 18
x_data = Male_data_18(:,1).*Male_data_18(:,2)/100;
y_data = Male_data_18(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 19
x_data = Male_data_19(:,1).*Male_data_19(:,2)/100;
y_data = Male_data_19(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 20
x_data = Male_data_20(:,1).*Male_data_20(:,2)/100;
y_data = Male_data_20(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 21
x_data = Male_data_21(:,1).*Male_data_21(:,2)/100;
y_data = Male_data_21(:,2);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% We show the coefficients a and b.
figure;
Age = 6:21;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([5 22]);
ylim([2 12]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

%
x_data = Age;
y_data = Coefficient_a_Female_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([5 22]);
ylim([0.4 0.78]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northeast');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_Ours = Age;
Coefficient_b_Female_Ours = Coefficient_b_Female_Ours*100;
Coefficient_b_Male_Ours = Coefficient_b_Male_Ours*100;
save('Coefficient_a_and_b_Ours.mat','Age_Ours','Coefficient_a_Female_Ours',...
    'Coefficient_b_Female_Ours','Coefficient_a_Male_Ours','Coefficient_b_Male_Ours');

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

% We calculate the coefficients a and b
Coefficient_a_Female_KSPF = [];
Coefficient_b_Female_KSPF = [];
Coefficient_a_Male_KSPF = [];
Coefficient_b_Male_KSPF = [];

% Linear fitting
% For female
% Aged 11
x_data = Female_data_11(:,3).*Female_data_11(:,4)/100; % Height*Weight
y_data = Female_data_11(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 12
x_data = Female_data_12(:,3).*Female_data_12(:,4)/100; % Height*Weight
y_data = Female_data_12(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 13
x_data = Female_data_13(:,3).*Female_data_13(:,4)/100; % Height*Weight
y_data = Female_data_13(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 14
x_data = Female_data_14(:,3).*Female_data_14(:,4)/100; % Height*Weight
y_data = Female_data_14(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 15
x_data = Female_data_15(:,3).*Female_data_15(:,4)/100; % Height*Weight
y_data = Female_data_15(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 16
x_data = Female_data_16(:,3).*Female_data_16(:,4)/100; % Height*Weight
y_data = Female_data_16(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 17
x_data = Female_data_17(:,3).*Female_data_17(:,4)/100; % Height*Weight
y_data = Female_data_17(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 18
x_data = Female_data_18(:,3).*Female_data_18(:,4)/100; % Height*Weight
y_data = Female_data_18(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 19
x_data = Female_data_19(:,3).*Female_data_19(:,4)/100; % Height*Weight
y_data = Female_data_19(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 20
x_data = Female_data_20(:,3).*Female_data_20(:,4)/100; % Height*Weight
y_data = Female_data_20(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% Aged 21
x_data = Female_data_21(:,3).*Female_data_21(:,4)/100; % Height*Weight
y_data = Female_data_21(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Female_KSPF = [Coefficient_a_Female_KSPF BB(2)];
Coefficient_b_Female_KSPF = [Coefficient_b_Female_KSPF BB(1)];

% For Male
% Aged 11
x_data = Male_data_11(:,3).*Male_data_11(:,4)/100; % Height*Weight
y_data = Male_data_11(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 12
x_data = Male_data_12(:,3).*Male_data_12(:,4)/100; % Height*Weight
y_data = Male_data_12(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 13
x_data = Male_data_13(:,3).*Male_data_13(:,4)/100; % Height*Weight
y_data = Male_data_13(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 14
x_data = Male_data_14(:,3).*Male_data_14(:,4)/100; % Height*Weight
y_data = Male_data_14(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 15
x_data = Male_data_15(:,3).*Male_data_15(:,4)/100; % Height*Weight
y_data = Male_data_15(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 16
x_data = Male_data_16(:,3).*Male_data_16(:,4)/100; % Height*Weight
y_data = Male_data_16(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 17
x_data = Male_data_17(:,3).*Male_data_17(:,4)/100; % Height*Weight
y_data = Male_data_17(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 18
x_data = Male_data_18(:,3).*Male_data_18(:,4)/100; % Height*Weight
y_data = Male_data_18(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 19
x_data = Male_data_19(:,3).*Male_data_19(:,4)/100; % Height*Weight
y_data = Male_data_19(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 20
x_data = Male_data_20(:,3).*Male_data_20(:,4)/100; % Height*Weight
y_data = Male_data_20(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% Aged 21
x_data = Male_data_21(:,3).*Male_data_21(:,4)/100; % Height*Weight
y_data = Male_data_21(:,4); % Weight
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
Coefficient_a_Male_KSPF = [Coefficient_a_Male_KSPF BB(2)];
Coefficient_b_Male_KSPF = [Coefficient_b_Male_KSPF BB(1)];

% We show the coefficients a and b.
figure;
Age = 11:21;
% For coefficient a
subplot(1,2,1);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([5 22]);
ylim([2 12]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

%
x_data = Age;
y_data = Coefficient_a_Female_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northwest');
set(Legend,'Box','off')

% For coefficient b
subplot(1,2,2);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([5 22]);
ylim([0.4 0.78]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_b_Female_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northeast');
set(Legend,'Box','off')

% We save the coefficients a and b
Age_KSPF = Age;
save('Coefficient_a_and_b_KSPF.mat','Age_KSPF','Coefficient_a_Female_KSPF',...
    'Coefficient_b_Female_KSPF','Coefficient_a_Male_KSPF','Coefficient_b_Male_KSPF');
