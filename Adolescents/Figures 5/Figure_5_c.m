%% Source codes for Figure 5(c).
% We fit the HGS = e1 + m1*Height, HGS = e2 + m2*Weight, FCF = e5 + m5*Height,
% and FCF = m6 + m6*Weight with data stratified by age, and percentiles of 
% Height and Weight.
% Model: HGS = e1 + m1*Height, HGS = e2 + m2*Weight, FCF = e5 + m5*Height, 
% and FCF = e6 + m6*Weight
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_mark_type = '.';
My_MarkerSize = 7;
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % fill area transparency
Edgealpha = 0;
Alpha =1;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

Color_Fill_1 = [221 241 243]/255; % primary school
Color_Fill_2 = [236 244 221]/255; % junior high school
Color_Fill_3 = [255 247 172]/255; % high school
Color_Fill_4 = [250 231 217]/255; % University

Color_0 = [
   251    21     0
   252    60     0
   253    97     0
   254   139     0
   254   191     0
   252   244     2
   223   254    30
   185   251    65
   146   254   107
   106   254   147
    66   254   187
    15   251   238
     0   200   253
     0   155   253
     0   111   252
     0    47   254];

My_color1 = Color_0(1,:);
My_color2 = Color_0(2,:);
My_color3 = Color_0(3,:);
My_color4 = Color_0(4,:);
My_color5 = Color_0(5,:);
My_color6 = Color_0(6,:);
My_color7 = Color_0(7,:);
My_color8 = Color_0(8,:);
My_color9 = Color_0(9,:);
My_color10 = Color_0(10,:);
My_color11 = Color_0(11,:);
My_color12 = Color_0(12,:);
My_color13 = Color_0(13,:);
My_color14 = Color_0(14,:);
My_color15 = Color_0(15,:);
My_color16 = Color_0(16,:);

Color_6 = My_color16/255;
Color_7 = My_color15/255;
Color_8 = My_color14/255;
Color_9 = My_color13/255;
Color_10 = My_color12/255;
Color_11 = My_color11/255;
Color_12 = My_color10/255;
Color_13 = My_color9/255;
Color_14 = My_color8/255;
Color_15 = My_color7/255;
Color_16 = My_color6/255;
Color_17 = My_color5/255;
Color_18 = My_color4/255;
Color_19 = My_color3/255;
Color_20 = My_color2/255;
Color_21 = My_color1/255;

%% results of the linear fitting
Coefficient_m1_DH_Female_Ours = []; % For Height
Coefficient_m2_DH_Female_Ours = []; % For Weight

Coefficient_m1_DH_Male_Ours = []; % For Height
Coefficient_m2_DH_Male_Ours = []; % For Weight

Coefficient_m3_DH_Female_Ours = []; % For Height
Coefficient_m4_DH_Female_Ours = []; % For Weight

Coefficient_m3_DH_Male_Ours = []; % For Height
Coefficient_m4_DH_Male_Ours = []; % For Weight

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

% For female
[M N] = size(Female_data);% Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
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
[M N] = size(Male_data);% Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
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

%% linear fitting
figure;
%% Mode1: HGS = e1 + m1*Height
% For Female
x_data = Female_data_6(:,1);
y_data = Female_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_7(:,1);
y_data = Female_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_8(:,1);
y_data = Female_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_9(:,1);
y_data = Female_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_10(:,1);
y_data = Female_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_11(:,1);
y_data = Female_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_12(:,1);
y_data = Female_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_13(:,1);
y_data = Female_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_14(:,1);
y_data = Female_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_15(:,1);
y_data = Female_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_16(:,1);
y_data = Female_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_17(:,1);
y_data = Female_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_18(:,1);
y_data = Female_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_19(:,1);
y_data = Female_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_20(:,1);
y_data = Female_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

x_data = Female_data_21(:,1);
y_data = Female_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

% For Male
x_data = Male_data_6(:,1);
y_data = Male_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_7(:,1);
y_data = Male_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_8(:,1);
y_data = Male_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_9(:,1);
y_data = Male_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_10(:,1);
y_data = Male_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_11(:,1);
y_data = Male_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_12(:,1);
y_data = Male_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_13(:,1);
y_data = Male_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_14(:,1);
y_data = Male_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_15(:,1);
y_data = Male_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_16(:,1);
y_data = Male_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_17(:,1);
y_data = Male_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_18(:,1);
y_data = Male_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_19(:,1);
y_data = Male_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_20(:,1);
y_data = Male_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

x_data = Male_data_21(:,1);
y_data = Male_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

%% Mode2: HGS = e2 + m2*Weight
% For Female
x_data = Female_data_6(:,2);
y_data = Female_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_7(:,2);
y_data = Female_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_8(:,2);
y_data = Female_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_9(:,2);
y_data = Female_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_10(:,2);
y_data = Female_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_11(:,2);
y_data = Female_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_12(:,2);
y_data = Female_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_13(:,2);
y_data = Female_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_14(:,2);
y_data = Female_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_15(:,2);
y_data = Female_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_16(:,2);
y_data = Female_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_17(:,2);
y_data = Female_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_18(:,2);
y_data = Female_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_19(:,2);
y_data = Female_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_20(:,2);
y_data = Female_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

x_data = Female_data_21(:,2);
y_data = Female_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

% For Male
x_data = Male_data_6(:,2);
y_data = Male_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_7(:,2);
y_data = Male_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_8(:,2);
y_data = Male_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_9(:,2);
y_data = Male_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_10(:,2);
y_data = Male_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_11(:,2);
y_data = Male_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_12(:,2);
y_data = Male_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_13(:,2);
y_data = Male_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_14(:,2);
y_data = Male_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_15(:,2);
y_data = Male_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_16(:,2);
y_data = Male_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_17(:,2);
y_data = Male_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_18(:,2);
y_data = Male_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_19(:,2);
y_data = Male_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_20(:,2);
y_data = Male_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

x_data = Male_data_21(:,2);
y_data = Male_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

%% Mode3: FCF = e3 + m3*Height
% For Female
x_data = Female_data_6(:,1);
y_data = Female_data_6(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_7(:,1);
y_data = Female_data_7(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_8(:,1);
y_data = Female_data_8(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_9(:,1);
y_data = Female_data_9(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_10(:,1);
y_data = Female_data_10(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_11(:,1);
y_data = Female_data_11(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_12(:,1);
y_data = Female_data_12(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_13(:,1);
y_data = Female_data_13(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_14(:,1);
y_data = Female_data_14(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_15(:,1);
y_data = Female_data_15(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_16(:,1);
y_data = Female_data_16(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_17(:,1);
y_data = Female_data_17(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_18(:,1);
y_data = Female_data_18(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_19(:,1);
y_data = Female_data_19(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_20(:,1);
y_data = Female_data_20(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

x_data = Female_data_21(:,1);
y_data = Female_data_21(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Female_Ours = [Coefficient_m3_DH_Female_Ours BB(1)];

% For Male
x_data = Male_data_6(:,1);
y_data = Male_data_6(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_7(:,1);
y_data = Male_data_7(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_8(:,1);
y_data = Male_data_8(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_9(:,1);
y_data = Male_data_9(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_10(:,1);
y_data = Male_data_10(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_11(:,1);
y_data = Male_data_11(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_12(:,1);
y_data = Male_data_12(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_13(:,1);
y_data = Male_data_13(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_14(:,1);
y_data = Male_data_14(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_15(:,1);
y_data = Male_data_15(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_16(:,1);
y_data = Male_data_16(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_17(:,1);
y_data = Male_data_17(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_18(:,1);
y_data = Male_data_18(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_19(:,1);
y_data = Male_data_19(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_20(:,1);
y_data = Male_data_20(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

x_data = Male_data_21(:,1);
y_data = Male_data_21(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m3_DH_Male_Ours = [Coefficient_m3_DH_Male_Ours BB(1)];

%% Mode4: FCF = e4 + m4*Weight
% For Female
x_data = Female_data_6(:,2);
y_data = Female_data_6(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_7(:,2);
y_data = Female_data_7(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_8(:,2);
y_data = Female_data_8(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_9(:,2);
y_data = Female_data_9(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_10(:,2);
y_data = Female_data_10(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_11(:,2);
y_data = Female_data_11(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_12(:,2);
y_data = Female_data_12(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_13(:,2);
y_data = Female_data_13(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_14(:,2);
y_data = Female_data_14(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_15(:,2);
y_data = Female_data_15(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_16(:,2);
y_data = Female_data_16(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_17(:,2);
y_data = Female_data_17(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_18(:,2);
y_data = Female_data_18(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_19(:,2);
y_data = Female_data_19(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_20(:,2);
y_data = Female_data_20(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

x_data = Female_data_21(:,2);
y_data = Female_data_21(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Female_Ours = [Coefficient_m4_DH_Female_Ours BB(1)];

% For Male
x_data = Male_data_6(:,2);
y_data = Male_data_6(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_7(:,2);
y_data = Male_data_7(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_8(:,2);
y_data = Male_data_8(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_9(:,2);
y_data = Male_data_9(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_10(:,2);
y_data = Male_data_10(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_11(:,2);
y_data = Male_data_11(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_12(:,2);
y_data = Male_data_12(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_13(:,2);
y_data = Male_data_13(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_14(:,2);
y_data = Male_data_14(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_15(:,2);
y_data = Male_data_15(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_16(:,2);
y_data = Male_data_16(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_17(:,2);
y_data = Male_data_17(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_18(:,2);
y_data = Male_data_18(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_19(:,2);
y_data = Male_data_19(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_20(:,2);
y_data = Male_data_20(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

x_data = Male_data_21(:,2);
y_data = Male_data_21(:,3);
BB = polyfit(x_data,y_data,1);
Coefficient_m4_DH_Male_Ours = [Coefficient_m4_DH_Male_Ours BB(1)];

%% We calculate the frequency spectrum
Fs = 50; % the Sampling frequency in FFT
% For Female
subplot(2,4,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m1 for female')
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m1_DH_Female_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_1,'LineWidth',My_LineWidth);
% Maximum
plot(0.124844,0.0407261,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For male
subplot(2,4,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m1 for male')
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m1_DH_Male_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_2,'LineWidth',My_LineWidth);
% Maximum
plot(0.31211,0.018104,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For Female
subplot(2,4,3);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m2 for female')
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m2_DH_Female_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_3,'LineWidth',My_LineWidth);
% Maximum
plot(0.31211,0.0249144,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For male
subplot(2,4,4);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m2 for male')
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m2_DH_Male_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_4,'LineWidth',My_LineWidth);
% Maximum
plot(0.31211,0.0189123,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

%%
% For Female
subplot(2,4,5);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m5 for female')
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m3_DH_Female_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_1,'LineWidth',My_LineWidth);
% Maximum
plot(0.31211,0.0103968,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For male
subplot(2,4,6);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m5 for male')
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.2,0.4,0.6])
plot([0.4 0.4],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m3_DH_Male_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_2,'LineWidth',My_LineWidth);
% Maximum
plot(0.374532,0.0105168,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For Female
subplot(2,4,7);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m6 for female')
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m4_DH_Female_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_3,'LineWidth',My_LineWidth);
% Maximum
plot(0.31211,0.0142295,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% For male
subplot(2,4,8);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('m6 for male')
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.6]);
ylim([0 0.1]);
set(gca,'xtick',[0,0.25,0.5])
plot([0.25 0.25],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = 6:21;
y_data = Coefficient_m4_DH_Male_Ours;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_4,'LineWidth',My_LineWidth);
% Maximum
plot(0.249688,0.00677121,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
