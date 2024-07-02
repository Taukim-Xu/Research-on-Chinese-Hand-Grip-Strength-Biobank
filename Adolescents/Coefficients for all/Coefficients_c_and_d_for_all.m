%% In this code, we calculate the coefficients of c and d in 1=c/HGS+d*Height
% for all DataSet.
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_MarkerSize = 7;
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
%% Colors
Color_1 = [0/255 146/255 146/255];
Color_2 = [255/255 38/255 0/255];
Color_3 = [28   182    28]/255;
Color_Fill = [208 255 203]/255;
%% 01-Data from Japanese Database for Human Life Engineering (JDHLE)
% Data source: https://www.hql.jp/database/cat/size/children
%
% Loading the data from Japanese Database for Human Life Engineering (JDHLE)
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
        Female_data_3 = [Female_data_3;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=4 & Female_data(i,2) < 5 & Female_data(i,3)~= 0
        Female_data_4 = [Female_data_4;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=5 & Female_data(i,2) < 6 & Female_data(i,3)~= 0
        Female_data_5 = [Female_data_5;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=6 & Female_data(i,2) < 7 & Female_data(i,3)~= 0
        Female_data_6 = [Female_data_6;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=7 & Female_data(i,2) < 8 & Female_data(i,3)~= 0
        Female_data_7 = [Female_data_7;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=8 & Female_data(i,2) < 9 & Female_data(i,3)~= 0
        Female_data_8 = [Female_data_8;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=9 & Female_data(i,2) < 10 & Female_data(i,3)~= 0
        Female_data_9 = [Female_data_9;Female_data(i,3)/10  Female_data(i,4:6)];
    end

    if Female_data(i,2) >=10 & Female_data(i,2) < 11 & Female_data(i,3)~= 0
        Female_data_10 = [Female_data_10;Female_data(i,3)/10  Female_data(i,4:6)];
    end
end

% For female
[M N] = size(Male_data); % Height Weight HGS of right hand HGS of left hand
for i=1:M
    if Male_data(i,2) >=3 & Male_data(i,2) < 4 & Male_data(i,3)~= 0
        Male_data_3 = [Male_data_3;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=4 & Male_data(i,2) < 5 & Male_data(i,3)~= 0
        Male_data_4 = [Male_data_4;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=5 & Male_data(i,2) < 6 & Male_data(i,3)~= 0
        Male_data_5 = [Male_data_5;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=6 & Male_data(i,2) < 7 & Male_data(i,3)~= 0
        Male_data_6 = [Male_data_6;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=7 & Male_data(i,2) < 8 & Male_data(i,3)~= 0
        Male_data_7 = [Male_data_7;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=8 & Male_data(i,2) < 9 & Male_data(i,3)~= 0
        Male_data_8 = [Male_data_8;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=9 & Male_data(i,2) < 10 & Male_data(i,3)~= 0
        Male_data_9 = [Male_data_9;Male_data(i,3)/10  Male_data(i,4:6)];
    end

    if Male_data(i,2) >=10 & Male_data(i,2) < 11 & Male_data(i,3)~= 0
        Male_data_10 = [Male_data_10;Male_data(i,3)/10  Male_data(i,4:6)];
    end
end

Female_Temp_1 = [Female_data_3;Female_data_4;Female_data_5;Female_data_6;Female_data_7;Female_data_8;Female_data_9;...
    Female_data_10];
Male_Temp_1 = [Male_data_3;Male_data_4;Male_data_5;Male_data_6;Male_data_7;Male_data_8;Male_data_9;...
    Male_data_10];
% We calculate the coefficients of c and d in 1=c/HGS+d*Height for this
% dataset
% HGS = c + d*Height*HGS
Coefficient_c_Female_Right_JDHLE = [];
Coefficient_d_Female_Right_JDHLE = [];
Coefficient_c_Female_Left_JDHLE = [];
Coefficient_d_Female_Left_JDHLE = [];
Coefficient_c_Male_Right_JDHLE = [];
Coefficient_d_Male_Right_JDHLE = [];
Coefficient_c_Male_Left_JDHLE = [];
Coefficient_d_Male_Left_JDHLE = [];

% For female
% Right hand
% Age 3
X_data = Female_data_3(:,1)/100; % Height
Y_data = Female_data_3(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 4
X_data = Female_data_4(:,1)/100; % Height
Y_data = Female_data_4(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 5
X_data = Female_data_5(:,1)/100; % Height
Y_data = Female_data_5(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 6
X_data = Female_data_6(:,1)/100; % Height
Y_data = Female_data_6(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 7
X_data = Female_data_7(:,1)/100; % Height
Y_data = Female_data_7(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 8
X_data = Female_data_8(:,1)/100; % Height
Y_data = Female_data_8(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 9
X_data = Female_data_9(:,1)/100; % Height
Y_data = Female_data_9(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Age 10
X_data = Female_data_10(:,1)/100; % Height
Y_data = Female_data_10(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Right_JDHLE = [Coefficient_c_Female_Right_JDHLE PP(2)];
Coefficient_d_Female_Right_JDHLE = [Coefficient_d_Female_Right_JDHLE PP(1)];

% Left hand
% Age 3
X_data = Female_data_3(:,1)/100; % Height
Y_data = Female_data_3(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 4
X_data = Female_data_4(:,1)/100; % Height
Y_data = Female_data_4(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 5
X_data = Female_data_5(:,1)/100; % Height
Y_data = Female_data_5(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 6
X_data = Female_data_6(:,1)/100; % Height
Y_data = Female_data_6(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 7
X_data = Female_data_7(:,1)/100; % Height
Y_data = Female_data_7(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 8
X_data = Female_data_8(:,1)/100; % Height
Y_data = Female_data_8(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 9
X_data = Female_data_9(:,1)/100; % Height
Y_data = Female_data_9(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% Age 10
X_data = Female_data_10(:,1)/100; % Height
Y_data = Female_data_10(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_Left_JDHLE = [Coefficient_c_Female_Left_JDHLE PP(2)];
Coefficient_d_Female_Left_JDHLE = [Coefficient_d_Female_Left_JDHLE PP(1)];

% For male
% Right hand
% Age 3
X_data = Male_data_3(:,1)/100; % Height
Y_data = Male_data_3(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 4
X_data = Male_data_4(:,1)/100; % Height
Y_data = Male_data_4(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 5
X_data = Male_data_5(:,1)/100; % Height
Y_data = Male_data_5(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 6
X_data = Male_data_6(:,1)/100; % Height
Y_data = Male_data_6(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 7
X_data = Male_data_7(:,1)/100; % Height
Y_data = Male_data_7(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 8
X_data = Male_data_8(:,1)/100; % Height
Y_data = Male_data_8(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 9
X_data = Male_data_9(:,1)/100; % Height
Y_data = Male_data_9(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Age 10
X_data = Male_data_10(:,1)/100; % Height
Y_data = Male_data_10(:,3); % HGS of right hand
Z_data= X_data.*Y_data; % Height*HGS of right hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Right_JDHLE = [Coefficient_c_Male_Right_JDHLE PP(2)];
Coefficient_d_Male_Right_JDHLE = [Coefficient_d_Male_Right_JDHLE PP(1)];

% Left hand
% Age 3
X_data = Male_data_3(:,1)/100; % Height
Y_data = Male_data_3(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 4
X_data = Male_data_4(:,1)/100; % Height
Y_data = Male_data_4(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 5
X_data = Male_data_5(:,1)/100; % Height
Y_data = Male_data_5(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 6
X_data = Male_data_6(:,1)/100; % Height
Y_data = Male_data_6(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 7
X_data = Male_data_7(:,1)/100; % Height
Y_data = Male_data_7(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 8
X_data = Male_data_8(:,1)/100; % Height
Y_data = Male_data_8(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 9
X_data = Male_data_9(:,1)/100; % Height
Y_data = Male_data_9(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% Age 10
X_data = Male_data_10(:,1)/100; % Height
Y_data = Male_data_10(:,4); % HGS of left hand
Z_data= X_data.*Y_data; % Height*HGS of left hand
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_Left_JDHLE = [Coefficient_c_Male_Left_JDHLE PP(2)];
Coefficient_d_Male_Left_JDHLE = [Coefficient_d_Male_Left_JDHLE PP(1)];

% We show the results
Age = 3:10;
figure;
% For coefficient c of right hand
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of right hand')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_Right_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_Right_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of right hand
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of right hand')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_Right_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_Right_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

figure;
% For coefficient c of left hand
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of left hand')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_Left_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_Left_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of left hand
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of right hand')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_Left_JDHLE; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_Left_JDHLE; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 3:0.1:10;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients c and d for this dataset
Age_JDHLE = Age;
save('Coefficient_c_and_d_JDHLE.mat','Age_JDHLE','Coefficient_c_Female_Right_JDHLE',...
    'Coefficient_d_Female_Right_JDHLE','Coefficient_c_Female_Left_JDHLE','Coefficient_d_Female_Left_JDHLE',...
    'Coefficient_c_Male_Right_JDHLE','Coefficient_d_Male_Right_JDHLE','Coefficient_c_Male_Left_JDHLE',...
    'Coefficient_d_Male_Left_JDHLE');

%
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

% We calculate the coefficients of c and d in 1=c/HGS+d*Height for this
% dataset
% HGS = c + d*Height*HGS
Coefficient_c_Female_DH_Ours = [];
Coefficient_d_Female_DH_Ours = [];
Coefficient_c_Female_NDH_Ours = [];
Coefficient_d_Female_NDH_Ours = [];
Coefficient_c_Male_DH_Ours = [];
Coefficient_d_Male_DH_Ours = [];
Coefficient_c_Male_NDH_Ours = [];
Coefficient_d_Male_NDH_Ours = [];

% For female
% DH
% Age 6
X_data = Female_data_6(:,1)/100; % Height
Y_data = Female_data_6(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 7
X_data = Female_data_7(:,1)/100; % Height
Y_data = Female_data_7(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 8
X_data = Female_data_8(:,1)/100; % Height
Y_data = Female_data_8(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 9
X_data = Female_data_9(:,1)/100; % Height
Y_data = Female_data_9(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 10
X_data = Female_data_10(:,1)/100; % Height
Y_data = Female_data_10(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 11
X_data = Female_data_11(:,1)/100; % Height
Y_data = Female_data_11(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 12
X_data = Female_data_12(:,1)/100; % Height
Y_data = Female_data_12(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 13
X_data = Female_data_13(:,1)/100; % Height
Y_data = Female_data_13(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 14
X_data = Female_data_14(:,1)/100; % Height
Y_data = Female_data_14(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 15
X_data = Female_data_15(:,1)/100; % Height
Y_data = Female_data_15(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 16
X_data = Female_data_16(:,1)/100; % Height
Y_data = Female_data_16(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 17
X_data = Female_data_17(:,1)/100; % Height
Y_data = Female_data_17(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 18
X_data = Female_data_18(:,1)/100; % Height
Y_data = Female_data_18(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 19
X_data = Female_data_19(:,1)/100; % Height
Y_data = Female_data_19(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 20
X_data = Female_data_20(:,1)/100; % Height
Y_data = Female_data_20(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% Age 21
X_data = Female_data_21(:,1)/100; % Height
Y_data = Female_data_21(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_Ours = [Coefficient_c_Female_DH_Ours PP(2)];
Coefficient_d_Female_DH_Ours = [Coefficient_d_Female_DH_Ours PP(1)];

% NDH
% Age 6
X_data = Female_data_6(:,1)/100; % Height
Y_data = Female_data_6(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 7
X_data = Female_data_7(:,1)/100; % Height
Y_data = Female_data_7(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 8
X_data = Female_data_8(:,1)/100; % Height
Y_data = Female_data_8(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 9
X_data = Female_data_9(:,1)/100; % Height
Y_data = Female_data_9(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 10
X_data = Female_data_10(:,1)/100; % Height
Y_data = Female_data_10(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 11
X_data = Female_data_11(:,1)/100; % Height
Y_data = Female_data_11(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 12
X_data = Female_data_12(:,1)/100; % Height
Y_data = Female_data_12(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 13
X_data = Female_data_13(:,1)/100; % Height
Y_data = Female_data_13(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 14
X_data = Female_data_14(:,1)/100; % Height
Y_data = Female_data_14(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 15
X_data = Female_data_15(:,1)/100; % Height
Y_data = Female_data_15(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 16
X_data = Female_data_16(:,1)/100; % Height
Y_data = Female_data_16(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 17
X_data = Female_data_17(:,1)/100; % Height
Y_data = Female_data_17(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 18
X_data = Female_data_18(:,1)/100; % Height
Y_data = Female_data_18(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 19
X_data = Female_data_19(:,1)/100; % Height
Y_data = Female_data_19(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 20
X_data = Female_data_20(:,1)/100; % Height
Y_data = Female_data_20(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% Age 21
X_data = Female_data_21(:,1)/100; % Height
Y_data = Female_data_21(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_Ours = [Coefficient_c_Female_NDH_Ours PP(2)];
Coefficient_d_Female_NDH_Ours = [Coefficient_d_Female_NDH_Ours PP(1)];

% For male
% DH
% Age 6
X_data = Male_data_6(:,1)/100; % Height
Y_data = Male_data_6(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 7
X_data = Male_data_7(:,1)/100; % Height
Y_data = Male_data_7(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 8
X_data = Male_data_8(:,1)/100; % Height
Y_data = Male_data_8(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 9
X_data = Male_data_9(:,1)/100; % Height
Y_data = Male_data_9(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 10
X_data = Male_data_10(:,1)/100; % Height
Y_data = Male_data_10(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 11
X_data = Male_data_11(:,1)/100; % Height
Y_data = Male_data_11(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 12
X_data = Male_data_12(:,1)/100; % Height
Y_data = Male_data_12(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 13
X_data = Male_data_13(:,1)/100; % Height
Y_data = Male_data_13(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 14
X_data = Male_data_14(:,1)/100; % Height
Y_data = Male_data_14(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 15
X_data = Male_data_15(:,1)/100; % Height
Y_data = Male_data_15(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 16
X_data = Male_data_16(:,1)/100; % Height
Y_data = Male_data_16(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 17
X_data = Male_data_17(:,1)/100; % Height
Y_data = Male_data_17(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 18
X_data = Male_data_18(:,1)/100; % Height
Y_data = Male_data_18(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 19
X_data = Male_data_19(:,1)/100; % Height
Y_data = Male_data_19(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 20
X_data = Male_data_20(:,1)/100; % Height
Y_data = Male_data_20(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% Age 21
X_data = Male_data_21(:,1)/100; % Height
Y_data = Male_data_21(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_Ours = [Coefficient_c_Male_DH_Ours PP(2)];
Coefficient_d_Male_DH_Ours = [Coefficient_d_Male_DH_Ours PP(1)];

% NDH
% Age 6
X_data = Male_data_6(:,1)/100; % Height
Y_data = Male_data_6(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 7
X_data = Male_data_7(:,1)/100; % Height
Y_data = Male_data_7(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 8
X_data = Male_data_8(:,1)/100; % Height
Y_data = Male_data_8(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 9
X_data = Male_data_9(:,1)/100; % Height
Y_data = Male_data_9(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 10
X_data = Male_data_10(:,1)/100; % Height
Y_data = Male_data_10(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 11
X_data = Male_data_11(:,1)/100; % Height
Y_data = Male_data_11(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 12
X_data = Male_data_12(:,1)/100; % Height
Y_data = Male_data_12(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 13
X_data = Male_data_13(:,1)/100; % Height
Y_data = Male_data_13(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 14
X_data = Male_data_14(:,1)/100; % Height
Y_data = Male_data_14(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 15
X_data = Male_data_15(:,1)/100; % Height
Y_data = Male_data_15(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 16
X_data = Male_data_16(:,1)/100; % Height
Y_data = Male_data_16(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 17
X_data = Male_data_17(:,1)/100; % Height
Y_data = Male_data_17(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 18
X_data = Male_data_18(:,1)/100; % Height
Y_data = Male_data_18(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 19
X_data = Male_data_19(:,1)/100; % Height
Y_data = Male_data_19(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 20
X_data = Male_data_20(:,1)/100; % Height
Y_data = Male_data_20(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% Age 21
X_data = Male_data_21(:,1)/100; % Height
Y_data = Male_data_21(:,7); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_Ours = [Coefficient_c_Male_NDH_Ours PP(2)];
Coefficient_d_Male_NDH_Ours = [Coefficient_d_Male_NDH_Ours PP(1)];

% We show the results
Age = 6:21;
% For DH
figure;
% For coefficient c of DH
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of DH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_DH_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_DH_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of DH
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of DH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_DH_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_DH_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For NDH
figure;
% For coefficient c of NDH
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of NDH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_NDH_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_NDH_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of NDH
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of NDH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_NDH_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_NDH_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients c and d for this dataset
Age_Ours = Age;
save('Coefficient_c_and_d_Ours.mat','Age_Ours','Coefficient_c_Female_DH_Ours',...
    'Coefficient_d_Female_DH_Ours','Coefficient_c_Female_NDH_Ours','Coefficient_d_Female_NDH_Ours',...
    'Coefficient_c_Male_DH_Ours','Coefficient_d_Male_DH_Ours','Coefficient_c_Male_NDH_Ours',...
    'Coefficient_d_Male_NDH_Ours');
%}
%
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

% We calculate the coefficients of c and d in 1=c/HGS+d*Height for this
% dataset
% HGS = c + d*Height*HGS
Coefficient_c_Female_DH_KSPF = [];
Coefficient_d_Female_DH_KSPF = [];
Coefficient_c_Female_NDH_KSPF = [];
Coefficient_d_Female_NDH_KSPF = [];
Coefficient_c_Male_DH_KSPF = [];
Coefficient_d_Male_DH_KSPF = [];
Coefficient_c_Male_NDH_KSPF = [];
Coefficient_d_Male_NDH_KSPF = [];

% For female
% DH
% Age 11
X_data = Female_data_11(:,3)/100; % Height
Y_data = Female_data_11(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 12
X_data = Female_data_12(:,3)/100; % Height
Y_data = Female_data_12(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 13
X_data = Female_data_13(:,3)/100; % Height
Y_data = Female_data_13(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 14
X_data = Female_data_14(:,3)/100; % Height
Y_data = Female_data_14(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 15
X_data = Female_data_15(:,3)/100; % Height
Y_data = Female_data_15(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 16
X_data = Female_data_16(:,3)/100; % Height
Y_data = Female_data_16(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 17
X_data = Female_data_17(:,3)/100; % Height
Y_data = Female_data_17(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 18
X_data = Female_data_18(:,3)/100; % Height
Y_data = Female_data_18(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 19
X_data = Female_data_19(:,3)/100; % Height
Y_data = Female_data_19(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 20
X_data = Female_data_20(:,3)/100; % Height
Y_data = Female_data_20(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% Age 21
X_data = Female_data_21(:,3)/100; % Height
Y_data = Female_data_21(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_DH_KSPF = [Coefficient_c_Female_DH_KSPF PP(2)];
Coefficient_d_Female_DH_KSPF = [Coefficient_d_Female_DH_KSPF PP(1)];

% NDH
% Age 11
X_data = Female_data_11(:,3)/100; % Height
Y_data = Female_data_11(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 12
X_data = Female_data_12(:,3)/100; % Height
Y_data = Female_data_12(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 13
X_data = Female_data_13(:,3)/100; % Height
Y_data = Female_data_13(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 14
X_data = Female_data_14(:,3)/100; % Height
Y_data = Female_data_14(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 15
X_data = Female_data_15(:,3)/100; % Height
Y_data = Female_data_15(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 16
X_data = Female_data_16(:,3)/100; % Height
Y_data = Female_data_16(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 17
X_data = Female_data_17(:,3)/100; % Height
Y_data = Female_data_17(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 18
X_data = Female_data_18(:,3)/100; % Height
Y_data = Female_data_18(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 19
X_data = Female_data_19(:,3)/100; % Height
Y_data = Female_data_19(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 20
X_data = Female_data_20(:,3)/100; % Height
Y_data = Female_data_20(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% Age 21
X_data = Female_data_21(:,3)/100; % Height
Y_data = Female_data_21(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Female_NDH_KSPF = [Coefficient_c_Female_NDH_KSPF PP(2)];
Coefficient_d_Female_NDH_KSPF = [Coefficient_d_Female_NDH_KSPF PP(1)];

% For male
% DH
% Age 11
X_data = Male_data_11(:,3)/100; % Height
Y_data = Male_data_11(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 12
X_data = Male_data_12(:,3)/100; % Height
Y_data = Male_data_12(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 13
X_data = Male_data_13(:,3)/100; % Height
Y_data = Male_data_13(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 14
X_data = Male_data_14(:,3)/100; % Height
Y_data = Male_data_14(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 15
X_data = Male_data_15(:,3)/100; % Height
Y_data = Male_data_15(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 16
X_data = Male_data_16(:,3)/100; % Height
Y_data = Male_data_16(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 17
X_data = Male_data_17(:,3)/100; % Height
Y_data = Male_data_17(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 18
X_data = Male_data_18(:,3)/100; % Height
Y_data = Male_data_18(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 19
X_data = Male_data_19(:,3)/100; % Height
Y_data = Male_data_19(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 20
X_data = Male_data_20(:,3)/100; % Height
Y_data = Male_data_20(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% Age 21
X_data = Male_data_21(:,3)/100; % Height
Y_data = Male_data_21(:,6); % HGS of DH
Z_data= X_data.*Y_data; % Height*HGS of DH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_DH_KSPF = [Coefficient_c_Male_DH_KSPF PP(2)];
Coefficient_d_Male_DH_KSPF = [Coefficient_d_Male_DH_KSPF PP(1)];

% NDH
% Age 11
X_data = Male_data_11(:,3)/100; % Height
Y_data = Male_data_11(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 12
X_data = Male_data_12(:,3)/100; % Height
Y_data = Male_data_12(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 13
X_data = Male_data_13(:,3)/100; % Height
Y_data = Male_data_13(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 14
X_data = Male_data_14(:,3)/100; % Height
Y_data = Male_data_14(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 15
X_data = Male_data_15(:,3)/100; % Height
Y_data = Male_data_15(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 16
X_data = Male_data_16(:,3)/100; % Height
Y_data = Male_data_16(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 17
X_data = Male_data_17(:,3)/100; % Height
Y_data = Male_data_17(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 18
X_data = Male_data_18(:,3)/100; % Height
Y_data = Male_data_18(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 19
X_data = Male_data_19(:,3)/100; % Height
Y_data = Male_data_19(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 20
X_data = Male_data_20(:,3)/100; % Height
Y_data = Male_data_20(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% Age 21
X_data = Male_data_21(:,3)/100; % Height
Y_data = Male_data_21(:,5); % HGS of NDH
Z_data= X_data.*Y_data; % Height*HGS of NDH
PP = polyfit(Z_data,Y_data,1); % linear fitting
Coefficient_c_Male_NDH_KSPF = [Coefficient_c_Male_NDH_KSPF PP(2)];
Coefficient_d_Male_NDH_KSPF = [Coefficient_d_Male_NDH_KSPF PP(1)];

% We show the results
Age = 11:21;
% For DH
figure;
% For coefficient c of DH
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of DH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_DH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_DH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of DH
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of DH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_DH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_DH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For NDH
figure;
% For coefficient c of NDH
subplot(1,2,1);
hold on;
xlabel('Age/yr');
ylabel('Coefficient c of NDH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_c_Female_NDH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_c_Male_NDH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% For coefficient d of NDH
subplot(1,2,2);
hold on;
xlabel('Age/yr');
ylabel('Coefficient d of NDH')
xlim([6 22]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Coefficient_d_Female_NDH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_d_Male_NDH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

Legend = legend([H1 H2],'Female','Male','Location','southwest');
set(Legend,'Box','off')

% We save the coefficients c and d for this dataset
Age_KSPF = Age;
save('Coefficient_c_and_d_KSPF.mat','Age_KSPF','Coefficient_c_Female_DH_KSPF',...
    'Coefficient_d_Female_DH_KSPF','Coefficient_c_Female_NDH_KSPF','Coefficient_d_Female_NDH_KSPF',...
    'Coefficient_c_Male_DH_KSPF','Coefficient_d_Male_DH_KSPF','Coefficient_c_Male_NDH_KSPF',...
    'Coefficient_d_Male_NDH_KSPF');
%}