%% Source codes for Figure S3(a).
% We calculate the correlation coefficients between all variables.
% Height, Weight, BMI, Height*Weight, FCF of DH, FCF of NDH, mHGS of DH and 
% mHGS of NDH
% Abbreviations: mHGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
clear all;
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize1 = 12;
My_fontSize = 10;
My_Alpha = 1; % fill area transparency
My_MarkerSize = 7;
Text_Color = [35 35 35]/255;
%% Colors
Color_0 = [188    35    43
   199    55    51
   204    68    59
   212    80    66
   218    94    76
   226   106    82
   232   118    92
   236   131   103
   240   143   113
   244   158   127
   246   172   143
   245   182   155
   245   190   166
   241   202   183
   233   211   199
   227   217   210
   220   220   221
   208   217   232
   195   211   235
   185   203   232
   174   195   228
   165   188   225
   152   176   218
   135   158   208
   120   142   199
   110   131   191
    98   119   184
    86   105   177
    80    96   172]; % 15 colors
%% Stratified by age and gender
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

% For female
[M N] = size(Female_data); % Height Weight FCF of DH FCF of NDH BMI mHGS of DH mHGS of NDH
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

% For male
[M N] = size(Male_data); % Height Weight FCF of DH FCF of NDH BMI mHGS of DH mHGS of NDH
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
%% We calculate the correlation coefficients
Gap_Between_Age = 0.5;
Gap_Age = 7; 
Height_Age_txt = 1.5; 
Text_x_Mid = 2;
Temp2 = {'Height','Weight','BMI','FCF of DH','FCF of NDH','mHGS of DH','mHGS of NDH'};
Temp1 = Temp2(end:-1:1);
My_YTicklabel_1 = [Temp1 Temp1 Temp1 Temp1 Temp1 Temp1 Temp1 Temp1];
Temp = Height_Age_txt+0.5:8.5;
yyy = [Temp 8.5*1+Temp 8.5*2+Temp 8.5*3+Temp 8.5*4+Temp 8.5*5+Temp 8.5*6+Temp 8.5*7+Temp];
My_XTicklabel_1 = [Temp2 Temp2 Temp2 Temp2 Temp2 Temp2 Temp2 Temp2];
Temp = 0.5:6.5;
xxx = [Temp 7.5*1+Temp 7.5*2+Temp 7.5*3+Temp 7.5*4+Temp 7.5*5+Temp 7.5*6+Temp 7.5*7+Temp];
%
figure;
subplot(1,2,1)
hold on;
axis equal;
xlim([0 8*7+Gap_Between_Age*7]);
ylim([0 2*(Height_Age_txt+7)]);
set(gca,'xtick',[],'ytick',[],'xticklabel',[]);% ,'xcolor','w','ycolor','w')
set(gca,'YTick',yyy,'YTicklabel',My_YTicklabel_1);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize1)
set(gca,'XAxisLocation','top')
set(gca,'XTick',xxx,'XTicklabel',My_XTicklabel_1);

%% Aged 6
NO_y = 0; % horizontal No.
NO_x = 0; % vertical  No.
Title_txt = 'Aged 6';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_6(:,1);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_6(:,2);
y_data = Female_data_6(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_6(:,2);
y_data = Female_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_6(:,2);
y_data = Female_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_6(:,2);
y_data = Female_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_6(:,2);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_6(:,5);
y_data = Female_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_6(:,5);
y_data = Female_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_6(:,5);
y_data = Female_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_6(:,5);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_6(:,3);
y_data = Female_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_6(:,3);
y_data = Female_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_6(:,3);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_6(:,4);
y_data = Female_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_6(:,4);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_6(:,6);
y_data = Female_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_6(:,1);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_6(:,2);
y_data = Male_data_6(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_6(:,2);
y_data = Male_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_6(:,2);
y_data = Male_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_6(:,2);
y_data = Male_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_6(:,2);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_6(:,5);
y_data = Male_data_6(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_6(:,5);
y_data = Male_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_6(:,5);
y_data = Male_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_6(:,5);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_6(:,3);
y_data = Male_data_6(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_6(:,3);
y_data = Male_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_6(:,3);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_6(:,4);
y_data = Male_data_6(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_6(:,4);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_6(:,6);
y_data = Male_data_6(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 7
NO_y = 0; % horizontal No.
NO_x = 1; % vertical  No.
Title_txt = 'Aged 7';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_7(:,1);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_7(:,2);
y_data = Female_data_7(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_7(:,2);
y_data = Female_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_7(:,2);
y_data = Female_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_7(:,2);
y_data = Female_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_7(:,2);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_7(:,5);
y_data = Female_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_7(:,5);
y_data = Female_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_7(:,5);
y_data = Female_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_7(:,5);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_7(:,3);
y_data = Female_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_7(:,3);
y_data = Female_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_7(:,3);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_7(:,4);
y_data = Female_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_7(:,4);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_7(:,6);
y_data = Female_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_7(:,1);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_7(:,2);
y_data = Male_data_7(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_7(:,2);
y_data = Male_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_7(:,2);
y_data = Male_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_7(:,2);
y_data = Male_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_7(:,2);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_7(:,5);
y_data = Male_data_7(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_7(:,5);
y_data = Male_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_7(:,5);
y_data = Male_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_7(:,5);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_7(:,3);
y_data = Male_data_7(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_7(:,3);
y_data = Male_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_7(:,3);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_7(:,4);
y_data = Male_data_7(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_7(:,4);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_7(:,6);
y_data = Male_data_7(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 8
NO_y = 0; % horizontal No.
NO_x = 2; % vertical  No.
Title_txt = 'Aged 8';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_8(:,1);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_8(:,2);
y_data = Female_data_8(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_8(:,2);
y_data = Female_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_8(:,2);
y_data = Female_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_8(:,2);
y_data = Female_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_8(:,2);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_8(:,5);
y_data = Female_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_8(:,5);
y_data = Female_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_8(:,5);
y_data = Female_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_8(:,5);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_8(:,3);
y_data = Female_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_8(:,3);
y_data = Female_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_8(:,3);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_8(:,4);
y_data = Female_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_8(:,4);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_8(:,6);
y_data = Female_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_8(:,1);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_8(:,2);
y_data = Male_data_8(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_8(:,2);
y_data = Male_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_8(:,2);
y_data = Male_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_8(:,2);
y_data = Male_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_8(:,2);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_8(:,5);
y_data = Male_data_8(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_8(:,5);
y_data = Male_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_8(:,5);
y_data = Male_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_8(:,5);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_8(:,3);
y_data = Male_data_8(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_8(:,3);
y_data = Male_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_8(:,3);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_8(:,4);
y_data = Male_data_8(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_8(:,4);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_8(:,6);
y_data = Male_data_8(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 9
NO_y = 0; % horizontal No.
NO_x = 3; % vertical  No.
Title_txt = 'Aged 9';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_9(:,1);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_9(:,2);
y_data = Female_data_9(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_9(:,2);
y_data = Female_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_9(:,2);
y_data = Female_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_9(:,2);
y_data = Female_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_9(:,2);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_9(:,5);
y_data = Female_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_9(:,5);
y_data = Female_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_9(:,5);
y_data = Female_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_9(:,5);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_9(:,3);
y_data = Female_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_9(:,3);
y_data = Female_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_9(:,3);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_9(:,4);
y_data = Female_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_9(:,4);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_9(:,6);
y_data = Female_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_9(:,1);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_9(:,2);
y_data = Male_data_9(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_9(:,2);
y_data = Male_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_9(:,2);
y_data = Male_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_9(:,2);
y_data = Male_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_9(:,2);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_9(:,5);
y_data = Male_data_9(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_9(:,5);
y_data = Male_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_9(:,5);
y_data = Male_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_9(:,5);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_9(:,3);
y_data = Male_data_9(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_9(:,3);
y_data = Male_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_9(:,3);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_9(:,4);
y_data = Male_data_9(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_9(:,4);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_9(:,6);
y_data = Male_data_9(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 10
NO_y = 0; % horizontal No.
NO_x = 4; % vertical  No.
Title_txt = 'Aged 10';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_10(:,1);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_10(:,2);
y_data = Female_data_10(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_10(:,2);
y_data = Female_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_10(:,2);
y_data = Female_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_10(:,2);
y_data = Female_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_10(:,2);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_10(:,5);
y_data = Female_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_10(:,5);
y_data = Female_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_10(:,5);
y_data = Female_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_10(:,5);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_10(:,3);
y_data = Female_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_10(:,3);
y_data = Female_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_10(:,3);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_10(:,4);
y_data = Female_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_10(:,4);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_10(:,6);
y_data = Female_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_10(:,1);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_10(:,2);
y_data = Male_data_10(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_10(:,2);
y_data = Male_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_10(:,2);
y_data = Male_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_10(:,2);
y_data = Male_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_10(:,2);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_10(:,5);
y_data = Male_data_10(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_10(:,5);
y_data = Male_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_10(:,5);
y_data = Male_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_10(:,5);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_10(:,3);
y_data = Male_data_10(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_10(:,3);
y_data = Male_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_10(:,3);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_10(:,4);
y_data = Male_data_10(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_10(:,4);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_10(:,6);
y_data = Male_data_10(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 11
NO_y = 0; % horizontal No.
NO_x = 5; % vertical  No.
Title_txt = 'Aged 11';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_11(:,1);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_11(:,2);
y_data = Female_data_11(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_11(:,2);
y_data = Female_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_11(:,2);
y_data = Female_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_11(:,2);
y_data = Female_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_11(:,2);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_11(:,5);
y_data = Female_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_11(:,5);
y_data = Female_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_11(:,5);
y_data = Female_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_11(:,5);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_11(:,3);
y_data = Female_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_11(:,3);
y_data = Female_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_11(:,3);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_11(:,4);
y_data = Female_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_11(:,4);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_11(:,6);
y_data = Female_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_11(:,1);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_11(:,2);
y_data = Male_data_11(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_11(:,2);
y_data = Male_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_11(:,2);
y_data = Male_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_11(:,2);
y_data = Male_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_11(:,2);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_11(:,5);
y_data = Male_data_11(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_11(:,5);
y_data = Male_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_11(:,5);
y_data = Male_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_11(:,5);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_11(:,3);
y_data = Male_data_11(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_11(:,3);
y_data = Male_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_11(:,3);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_11(:,4);
y_data = Male_data_11(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_11(:,4);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_11(:,6);
y_data = Male_data_11(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 12
NO_y = 0; % horizontal No.
NO_x = 6; % vertical  No.
Title_txt = 'Aged 12';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_12(:,1);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_12(:,2);
y_data = Female_data_12(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_12(:,2);
y_data = Female_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_12(:,2);
y_data = Female_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_12(:,2);
y_data = Female_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_12(:,2);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_12(:,5);
y_data = Female_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_12(:,5);
y_data = Female_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_12(:,5);
y_data = Female_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_12(:,5);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_12(:,3);
y_data = Female_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_12(:,3);
y_data = Female_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_12(:,3);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_12(:,4);
y_data = Female_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_12(:,4);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_12(:,6);
y_data = Female_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_12(:,1);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_12(:,2);
y_data = Male_data_12(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_12(:,2);
y_data = Male_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_12(:,2);
y_data = Male_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_12(:,2);
y_data = Male_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_12(:,2);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_12(:,5);
y_data = Male_data_12(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_12(:,5);
y_data = Male_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_12(:,5);
y_data = Male_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_12(:,5);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_12(:,3);
y_data = Male_data_12(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_12(:,3);
y_data = Male_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_12(:,3);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_12(:,4);
y_data = Male_data_12(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_12(:,4);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_12(:,6);
y_data = Male_data_12(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 13
NO_y = 0; % horizontal No.
NO_x = 7; % vertical  No.
Title_txt = 'Aged 13';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_13(:,1);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_13(:,2);
y_data = Female_data_13(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_13(:,2);
y_data = Female_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_13(:,2);
y_data = Female_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_13(:,2);
y_data = Female_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_13(:,2);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_13(:,5);
y_data = Female_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_13(:,5);
y_data = Female_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_13(:,5);
y_data = Female_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_13(:,5);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_13(:,3);
y_data = Female_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_13(:,3);
y_data = Female_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_13(:,3);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_13(:,4);
y_data = Female_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_13(:,4);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_13(:,6);
y_data = Female_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_13(:,1);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_13(:,2);
y_data = Male_data_13(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_13(:,2);
y_data = Male_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_13(:,2);
y_data = Male_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_13(:,2);
y_data = Male_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_13(:,2);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_13(:,5);
y_data = Male_data_13(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_13(:,5);
y_data = Male_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_13(:,5);
y_data = Male_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_13(:,5);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_13(:,3);
y_data = Male_data_13(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_13(:,3);
y_data = Male_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_13(:,3);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_13(:,4);
y_data = Male_data_13(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_13(:,4);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_13(:,6);
y_data = Male_data_13(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 14
NO_y = 1; % horizontal No.
NO_x = 0; % vertical  No.
Title_txt = 'Aged 14';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_14(:,1);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_14(:,2);
y_data = Female_data_14(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_14(:,2);
y_data = Female_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_14(:,2);
y_data = Female_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_14(:,2);
y_data = Female_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_14(:,2);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_14(:,5);
y_data = Female_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_14(:,5);
y_data = Female_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_14(:,5);
y_data = Female_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_14(:,5);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_14(:,3);
y_data = Female_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_14(:,3);
y_data = Female_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_14(:,3);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_14(:,4);
y_data = Female_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_14(:,4);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_14(:,6);
y_data = Female_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_14(:,1);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_14(:,2);
y_data = Male_data_14(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_14(:,2);
y_data = Male_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_14(:,2);
y_data = Male_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_14(:,2);
y_data = Male_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_14(:,2);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_14(:,5);
y_data = Male_data_14(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_14(:,5);
y_data = Male_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_14(:,5);
y_data = Male_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_14(:,5);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_14(:,3);
y_data = Male_data_14(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_14(:,3);
y_data = Male_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_14(:,3);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_14(:,4);
y_data = Male_data_14(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_14(:,4);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_14(:,6);
y_data = Male_data_14(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 15
NO_y = 1; % horizontal No.
NO_x = 1; % vertical  No.
Title_txt = 'Aged 15';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_15(:,1);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_15(:,2);
y_data = Female_data_15(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_15(:,2);
y_data = Female_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_15(:,2);
y_data = Female_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_15(:,2);
y_data = Female_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_15(:,2);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_15(:,5);
y_data = Female_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_15(:,5);
y_data = Female_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_15(:,5);
y_data = Female_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_15(:,5);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_15(:,3);
y_data = Female_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_15(:,3);
y_data = Female_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_15(:,3);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_15(:,4);
y_data = Female_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_15(:,4);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_15(:,6);
y_data = Female_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_15(:,1);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_15(:,2);
y_data = Male_data_15(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_15(:,2);
y_data = Male_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_15(:,2);
y_data = Male_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_15(:,2);
y_data = Male_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_15(:,2);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_15(:,5);
y_data = Male_data_15(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_15(:,5);
y_data = Male_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_15(:,5);
y_data = Male_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_15(:,5);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_15(:,3);
y_data = Male_data_15(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_15(:,3);
y_data = Male_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_15(:,3);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_15(:,4);
y_data = Male_data_15(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_15(:,4);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_15(:,6);
y_data = Male_data_15(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 16
NO_y = 1; % horizontal No.
NO_x = 2; % vertical  No.
Title_txt = 'Aged 16';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_16(:,1);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_16(:,2);
y_data = Female_data_16(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_16(:,2);
y_data = Female_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_16(:,2);
y_data = Female_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_16(:,2);
y_data = Female_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_16(:,2);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_16(:,5);
y_data = Female_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_16(:,5);
y_data = Female_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_16(:,5);
y_data = Female_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_16(:,5);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_16(:,3);
y_data = Female_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_16(:,3);
y_data = Female_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_16(:,3);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_16(:,4);
y_data = Female_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_16(:,4);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_16(:,6);
y_data = Female_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_16(:,1);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_16(:,2);
y_data = Male_data_16(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_16(:,2);
y_data = Male_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_16(:,2);
y_data = Male_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_16(:,2);
y_data = Male_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_16(:,2);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_16(:,5);
y_data = Male_data_16(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_16(:,5);
y_data = Male_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_16(:,5);
y_data = Male_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_16(:,5);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_16(:,3);
y_data = Male_data_16(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_16(:,3);
y_data = Male_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_16(:,3);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_16(:,4);
y_data = Male_data_16(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_16(:,4);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_16(:,6);
y_data = Male_data_16(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 17
NO_y = 1; % horizontal No.
NO_x = 3; % vertical  No.
Title_txt = 'Aged 17';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_17(:,1);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_17(:,2);
y_data = Female_data_17(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_17(:,2);
y_data = Female_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_17(:,2);
y_data = Female_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_17(:,2);
y_data = Female_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_17(:,2);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_17(:,5);
y_data = Female_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_17(:,5);
y_data = Female_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_17(:,5);
y_data = Female_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_17(:,5);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_17(:,3);
y_data = Female_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_17(:,3);
y_data = Female_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_17(:,3);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_17(:,4);
y_data = Female_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_17(:,4);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_17(:,6);
y_data = Female_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_17(:,1);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_17(:,2);
y_data = Male_data_17(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_17(:,2);
y_data = Male_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_17(:,2);
y_data = Male_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_17(:,2);
y_data = Male_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_17(:,2);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_17(:,5);
y_data = Male_data_17(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_17(:,5);
y_data = Male_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_17(:,5);
y_data = Male_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_17(:,5);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_17(:,3);
y_data = Male_data_17(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_17(:,3);
y_data = Male_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_17(:,3);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_17(:,4);
y_data = Male_data_17(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_17(:,4);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_17(:,6);
y_data = Male_data_17(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 18
NO_y = 1; % horizontal No.
NO_x = 4; % vertical  No.
Title_txt = 'Aged 18';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_18(:,1);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_18(:,2);
y_data = Female_data_18(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_18(:,2);
y_data = Female_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_18(:,2);
y_data = Female_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_18(:,2);
y_data = Female_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_18(:,2);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_18(:,5);
y_data = Female_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_18(:,5);
y_data = Female_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_18(:,5);
y_data = Female_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_18(:,5);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_18(:,3);
y_data = Female_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_18(:,3);
y_data = Female_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_18(:,3);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_18(:,4);
y_data = Female_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_18(:,4);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_18(:,6);
y_data = Female_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_18(:,1);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_18(:,2);
y_data = Male_data_18(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_18(:,2);
y_data = Male_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_18(:,2);
y_data = Male_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_18(:,2);
y_data = Male_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_18(:,2);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_18(:,5);
y_data = Male_data_18(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_18(:,5);
y_data = Male_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_18(:,5);
y_data = Male_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_18(:,5);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_18(:,3);
y_data = Male_data_18(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_18(:,3);
y_data = Male_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_18(:,3);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_18(:,4);
y_data = Male_data_18(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_18(:,4);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_18(:,6);
y_data = Male_data_18(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 19
NO_y = 1; % horizontal No.
NO_x = 5; % vertical  No.
Title_txt = 'Aged 19';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_19(:,1);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_19(:,2);
y_data = Female_data_19(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_19(:,2);
y_data = Female_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_19(:,2);
y_data = Female_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_19(:,2);
y_data = Female_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_19(:,2);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_19(:,5);
y_data = Female_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_19(:,5);
y_data = Female_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_19(:,5);
y_data = Female_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_19(:,5);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_19(:,3);
y_data = Female_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_19(:,3);
y_data = Female_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_19(:,3);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_19(:,4);
y_data = Female_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_19(:,4);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_19(:,6);
y_data = Female_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_19(:,1);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_19(:,2);
y_data = Male_data_19(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_19(:,2);
y_data = Male_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_19(:,2);
y_data = Male_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_19(:,2);
y_data = Male_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_19(:,2);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_19(:,5);
y_data = Male_data_19(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_19(:,5);
y_data = Male_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_19(:,5);
y_data = Male_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_19(:,5);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_19(:,3);
y_data = Male_data_19(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_19(:,3);
y_data = Male_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_19(:,3);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_19(:,4);
y_data = Male_data_19(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_19(:,4);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_19(:,6);
y_data = Male_data_19(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 20
NO_y = 1; % horizontal No.
NO_x = 6; % vertical  No.
Title_txt = 'Aged 20';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_20(:,1);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_20(:,2);
y_data = Female_data_20(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_20(:,2);
y_data = Female_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_20(:,2);
y_data = Female_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_20(:,2);
y_data = Female_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_20(:,2);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_20(:,5);
y_data = Female_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_20(:,5);
y_data = Female_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_20(:,5);
y_data = Female_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_20(:,5);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_20(:,3);
y_data = Female_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_20(:,3);
y_data = Female_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_20(:,3);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_20(:,4);
y_data = Female_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_20(:,4);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_20(:,6);
y_data = Female_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_20(:,1);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_20(:,2);
y_data = Male_data_20(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_20(:,2);
y_data = Male_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_20(:,2);
y_data = Male_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_20(:,2);
y_data = Male_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_20(:,2);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_20(:,5);
y_data = Male_data_20(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_20(:,5);
y_data = Male_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_20(:,5);
y_data = Male_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_20(:,5);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_20(:,3);
y_data = Male_data_20(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_20(:,3);
y_data = Male_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_20(:,3);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_20(:,4);
y_data = Male_data_20(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_20(:,4);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_20(:,6);
y_data = Male_data_20(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Aged 21
NO_y = 1; % horizontal No.
NO_x = 7; % vertical  No.
Title_txt = 'Aged 21';
text(NO_x*(7+Gap_Between_Age)+Text_x_Mid,NO_y*(7+Height_Age_txt)+0.5*Height_Age_txt,Title_txt,'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize)
% For female - top right corner
% first line
% Height VS Weight
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Female_data_21(:,1);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[6 6 7 7];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% second line
% Weight VS BMI
X_data = Female_data_21(:,2);
y_data = Female_data_21(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Female_data_21(:,2);
y_data = Female_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Female_data_21(:,2);
y_data = Female_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Female_data_21(:,2);
y_data = Female_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Female_data_21(:,2);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% third line
% BMI VS FCF of DH
X_data = Female_data_21(:,5);
y_data = Female_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Female_data_21(:,5);
y_data = Female_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Female_data_21(:,5);
y_data = Female_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Female_data_21(:,5);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fourth line
% FCF of DH VS FCF of NDH
X_data = Female_data_21(:,3);
y_data = Female_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Female_data_21(:,3);
y_data = Female_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Female_data_21(:,3);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% fifth line
% FCF of NDH VS mHGS of DH
X_data = Female_data_21(:,4);
y_data = Female_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Female_data_21(:,4);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% sixth line
% mHGS of DH VS mHGS of NDH
X_data = Female_data_21(:,6);
y_data = Female_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[6 7 7 6];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% For male - left bottom
% The first column
% Height VS Weight
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,2);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[5 5 6 6];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS BMI
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of DH
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS FCF of NDH
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of DH
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Height VS mHGS of NDH
X_data = Male_data_21(:,1);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[0 1 1 0];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The second column
% Weight VS BMI
X_data = Male_data_21(:,2);
y_data = Male_data_21(:,5);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[4 4 5 5];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of DH
X_data = Male_data_21(:,2);
y_data = Male_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS FCF of NDH
X_data = Male_data_21(:,2);
y_data = Male_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of DH
X_data = Male_data_21(:,2);
y_data = Male_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% Weight VS mHGS of NDH
X_data = Male_data_21(:,2);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[1 2 2 1];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The third column
% BMI VS FCF of DH
X_data = Male_data_21(:,5);
y_data = Male_data_21(:,3);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[3 3 4 4];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS FCF of NDH
X_data = Male_data_21(:,5);
y_data = Male_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of DH
X_data = Male_data_21(:,5);
y_data = Male_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% BMI VS mHGS of NDH
X_data = Male_data_21(:,5);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[2 3 3 2];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The fourth column
% FCF of DH VS FCF of NDH
X_data = Male_data_21(:,3);
y_data = Male_data_21(:,4);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[2 2 3 3];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of DH
X_data = Male_data_21(:,3);
y_data = Male_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of DH VS mHGS of NDH
X_data = Male_data_21(:,3);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[3 4 4 3];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The sixth column
% FCF of NDH VS mHGS of DH
X_data = Male_data_21(:,4);
y_data = Male_data_21(:,6);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[1 1 2 2];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);
% FCF of NDH VS mHGS of NDH
X_data = Male_data_21(:,4);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[4 5 5 4];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

% The seventh column
% mHGS of DH VS mHGS of NDH
X_data = Male_data_21(:,6);
y_data = Male_data_21(:,7);
XX_fill = (7+Gap_Between_Age)*NO_x+[5 6 6 5];
YY_fill = Height_Age_txt+(7+Height_Age_txt)*NO_y+[0 0 1 1];
Color_Fill = My_Color(My_Corr(X_data,y_data),Color_0);
H = fill(XX_fill,YY_fill,Color_Fill/255);
set(H,'edgealpha',0,'facealpha',My_Alpha);

%% Legend
subplot(1,2,2);
hold on
axis equal;
ylim([-1 61]);
xlim([-1 8]);
ax = gca;
ax.XAxis.Visible = 'off';
ax.YAxis.Visible = 'off';

MM = 29;
N = 0;
DD = 2;
for i = -1:2/MM:1
    Fill_yy = N*DD+[0 DD DD 0];
    Fill_xx = [0 0 DD DD];
    HH = fill(Fill_xx,Fill_yy,My_Color(i,Color_0)/255);
    set(HH,'edgealpha',0,'facealpha',My_Alpha);
    N = N + 1;
end
text(1.1*DD+DD/2-0.9,0.5,num2str(-1),'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize+2,'HorizontalAlignment','left');
text(1.1*DD+DD/2-0.9,29,num2str(0),'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize+2,'HorizontalAlignment','left');
text(1.1*DD+DD/2-0.9,60,num2str(1),'Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize+2,'HorizontalAlignment','left');
H = text(6,30,'Correlation coefficient','Color',Text_Color,'FontName',My_FontName,'FontSize',My_fontSize+2,...
    'HorizontalAlignment','Center','rotation',90);
%set(H,{'rotation'},num2cell(pi/2));
