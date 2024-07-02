%% In this code, we calculate the coefficients of m1 and m2 in 1=c/HGS+d*Height
% HGS = e + m1*Height and HGS = f + m2*Weight
% stratified by age.
% Model: HGS = e + m1*Height, HGS = f + m2*Weight
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_mark_type = '.';
My_mark_size = 4;
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
%% 01 - Our data
% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
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
% linear fitting
Coefficient_m1_DH_Female_Ours = []; % For Height
Coefficient_m2_DH_Female_Ours = []; % For Weight
Coefficient_m1_NDH_Female_Ours = []; % For Height
Coefficient_m2_NDH_Female_Ours = []; % For Weight

Coefficient_m1_DH_Male_Ours = []; % For Height
Coefficient_m2_DH_Male_Ours = []; % For Weight
Coefficient_m1_NDH_Male_Ours = []; % For Height
Coefficient_m2_NDH_Male_Ours = []; % For Weight

% Model: HGS = e + m1*Height
% For DH of Female
% Aged 6
x_data = Female_data_6(:,1);
y_data = Female_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 7
x_data = Female_data_7(:,1);
y_data = Female_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 8
x_data = Female_data_8(:,1);
y_data = Female_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 9
x_data = Female_data_9(:,1);
y_data = Female_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 10
x_data = Female_data_10(:,1);
y_data = Female_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 11
x_data = Female_data_11(:,1);
y_data = Female_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 12
x_data = Female_data_12(:,1);
y_data = Female_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 13
x_data = Female_data_13(:,1);
y_data = Female_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 14
x_data = Female_data_14(:,1);
y_data = Female_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 15
x_data = Female_data_15(:,1);
y_data = Female_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 16
x_data = Female_data_16(:,1);
y_data = Female_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 17
x_data = Female_data_17(:,1);
y_data = Female_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 18
x_data = Female_data_18(:,1);
y_data = Female_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 19
x_data = Female_data_19(:,1);
y_data = Female_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 20
x_data = Female_data_20(:,1);
y_data = Female_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];
% Aged 21
x_data = Female_data_21(:,1);
y_data = Female_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Female_Ours = [Coefficient_m1_DH_Female_Ours BB(1)];

% For NDH of Female
% Aged 6
x_data = Female_data_6(:,1);
y_data = Female_data_6(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 7
x_data = Female_data_7(:,1);
y_data = Female_data_7(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 8
x_data = Female_data_8(:,1);
y_data = Female_data_8(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 9
x_data = Female_data_9(:,1);
y_data = Female_data_9(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 10
x_data = Female_data_10(:,1);
y_data = Female_data_10(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 11
x_data = Female_data_11(:,1);
y_data = Female_data_11(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 12
x_data = Female_data_12(:,1);
y_data = Female_data_12(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 13
x_data = Female_data_13(:,1);
y_data = Female_data_13(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 14
x_data = Female_data_14(:,1);
y_data = Female_data_14(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 15
x_data = Female_data_15(:,1);
y_data = Female_data_15(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 16
x_data = Female_data_16(:,1);
y_data = Female_data_16(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 17
x_data = Female_data_17(:,1);
y_data = Female_data_17(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 18
x_data = Female_data_18(:,1);
y_data = Female_data_18(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 19
x_data = Female_data_19(:,1);
y_data = Female_data_19(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 20
x_data = Female_data_20(:,1);
y_data = Female_data_20(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];
% Aged 21
x_data = Female_data_21(:,1);
y_data = Female_data_21(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Female_Ours = [Coefficient_m1_NDH_Female_Ours BB(1)];

% For DH of Male
% Aged 6
x_data = Male_data_6(:,1);
y_data = Male_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 7
x_data = Male_data_7(:,1);
y_data = Male_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 8
x_data = Male_data_8(:,1);
y_data = Male_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 9
x_data = Male_data_9(:,1);
y_data = Male_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 10
x_data = Male_data_10(:,1);
y_data = Male_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 11
x_data = Male_data_11(:,1);
y_data = Male_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 12
x_data = Male_data_12(:,1);
y_data = Male_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 13
x_data = Male_data_13(:,1);
y_data = Male_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 14
x_data = Male_data_14(:,1);
y_data = Male_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 15
x_data = Male_data_15(:,1);
y_data = Male_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 16
x_data = Male_data_16(:,1);
y_data = Male_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 17
x_data = Male_data_17(:,1);
y_data = Male_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 18
x_data = Male_data_18(:,1);
y_data = Male_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 19
x_data = Male_data_19(:,1);
y_data = Male_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 20
x_data = Male_data_20(:,1);
y_data = Male_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];
% Aged 21
x_data = Male_data_21(:,1);
y_data = Male_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_DH_Male_Ours = [Coefficient_m1_DH_Male_Ours BB(1)];

% For NDH of Male
% Aged 6
x_data = Male_data_6(:,1);
y_data = Male_data_6(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 7
x_data = Male_data_7(:,1);
y_data = Male_data_7(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 8
x_data = Male_data_8(:,1);
y_data = Male_data_8(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 9
x_data = Male_data_9(:,1);
y_data = Male_data_9(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 10
x_data = Male_data_10(:,1);
y_data = Male_data_10(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 11
x_data = Male_data_11(:,1);
y_data = Male_data_11(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 12
x_data = Male_data_12(:,1);
y_data = Male_data_12(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 13
x_data = Male_data_13(:,1);
y_data = Male_data_13(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 14
x_data = Male_data_14(:,1);
y_data = Male_data_14(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 15
x_data = Male_data_15(:,1);
y_data = Male_data_15(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 16
x_data = Male_data_16(:,1);
y_data = Male_data_16(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 17
x_data = Male_data_17(:,1);
y_data = Male_data_17(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 18
x_data = Male_data_18(:,1);
y_data = Male_data_18(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 19
x_data = Male_data_19(:,1);
y_data = Male_data_19(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 20
x_data = Male_data_20(:,1);
y_data = Male_data_20(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];
% Aged 21
x_data = Male_data_21(:,1);
y_data = Male_data_21(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m1_NDH_Male_Ours = [Coefficient_m1_NDH_Male_Ours BB(1)];

%% Model: HGS = f + m2*Weight
% For DH of Female
% Aged 6
x_data = Female_data_6(:,2);
y_data = Female_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 7
x_data = Female_data_7(:,2);
y_data = Female_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 8
x_data = Female_data_8(:,2);
y_data = Female_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 9
x_data = Female_data_9(:,2);
y_data = Female_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 10
x_data = Female_data_10(:,2);
y_data = Female_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 11
x_data = Female_data_11(:,2);
y_data = Female_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 12
x_data = Female_data_12(:,2);
y_data = Female_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 13
x_data = Female_data_13(:,2);
y_data = Female_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 14
x_data = Female_data_14(:,2);
y_data = Female_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 15
x_data = Female_data_15(:,2);
y_data = Female_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 16
x_data = Female_data_16(:,2);
y_data = Female_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 17
x_data = Female_data_17(:,2);
y_data = Female_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 18
x_data = Female_data_18(:,2);
y_data = Female_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 19
x_data = Female_data_19(:,2);
y_data = Female_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 20
x_data = Female_data_20(:,2);
y_data = Female_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];
% Aged 21
x_data = Female_data_21(:,2);
y_data = Female_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Female_Ours = [Coefficient_m2_DH_Female_Ours BB(1)];

% For NDH of Female
% Aged 6
x_data = Female_data_6(:,2);
y_data = Female_data_6(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 7
x_data = Female_data_7(:,2);
y_data = Female_data_7(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 8
x_data = Female_data_8(:,2);
y_data = Female_data_8(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 9
x_data = Female_data_9(:,2);
y_data = Female_data_9(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 10
x_data = Female_data_10(:,2);
y_data = Female_data_10(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 11
x_data = Female_data_11(:,2);
y_data = Female_data_11(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 12
x_data = Female_data_12(:,2);
y_data = Female_data_12(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 13
x_data = Female_data_13(:,2);
y_data = Female_data_13(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 14
x_data = Female_data_14(:,2);
y_data = Female_data_14(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 15
x_data = Female_data_15(:,2);
y_data = Female_data_15(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 16
x_data = Female_data_16(:,2);
y_data = Female_data_16(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 17
x_data = Female_data_17(:,2);
y_data = Female_data_17(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 18
x_data = Female_data_18(:,2);
y_data = Female_data_18(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 19
x_data = Female_data_19(:,2);
y_data = Female_data_19(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 20
x_data = Female_data_20(:,2);
y_data = Female_data_20(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];
% Aged 21
x_data = Female_data_21(:,2);
y_data = Female_data_21(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Female_Ours = [Coefficient_m2_NDH_Female_Ours BB(1)];

% For DH of Male
% Aged 6
x_data = Male_data_6(:,2);
y_data = Male_data_6(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 7
x_data = Male_data_7(:,2);
y_data = Male_data_7(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 8
x_data = Male_data_8(:,2);
y_data = Male_data_8(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 9
x_data = Male_data_9(:,2);
y_data = Male_data_9(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 10
x_data = Male_data_10(:,2);
y_data = Male_data_10(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 11
x_data = Male_data_11(:,2);
y_data = Male_data_11(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 12
x_data = Male_data_12(:,2);
y_data = Male_data_12(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 13
x_data = Male_data_13(:,2);
y_data = Male_data_13(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 14
x_data = Male_data_14(:,2);
y_data = Male_data_14(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 15
x_data = Male_data_15(:,2);
y_data = Male_data_15(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 16
x_data = Male_data_16(:,2);
y_data = Male_data_16(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 17
x_data = Male_data_17(:,2);
y_data = Male_data_17(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 18
x_data = Male_data_18(:,2);
y_data = Male_data_18(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 19
x_data = Male_data_19(:,2);
y_data = Male_data_19(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 20
x_data = Male_data_20(:,2);
y_data = Male_data_20(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];
% Aged 21
x_data = Male_data_21(:,2);
y_data = Male_data_21(:,6);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_DH_Male_Ours = [Coefficient_m2_DH_Male_Ours BB(1)];

% For NDH of Male
% Aged 6
x_data = Male_data_6(:,2);
y_data = Male_data_6(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 7
x_data = Male_data_7(:,2);
y_data = Male_data_7(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 8
x_data = Male_data_8(:,2);
y_data = Male_data_8(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 9
x_data = Male_data_9(:,2);
y_data = Male_data_9(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 10
x_data = Male_data_10(:,2);
y_data = Male_data_10(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 11
x_data = Male_data_11(:,2);
y_data = Male_data_11(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 12
x_data = Male_data_12(:,2);
y_data = Male_data_12(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 13
x_data = Male_data_13(:,2);
y_data = Male_data_13(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 14
x_data = Male_data_14(:,2);
y_data = Male_data_14(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 15
x_data = Male_data_15(:,2);
y_data = Male_data_15(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 16
x_data = Male_data_16(:,2);
y_data = Male_data_16(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 17
x_data = Male_data_17(:,2);
y_data = Male_data_17(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 18
x_data = Male_data_18(:,2);
y_data = Male_data_18(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 19
x_data = Male_data_19(:,2);
y_data = Male_data_19(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 20
x_data = Male_data_20(:,2);
y_data = Male_data_20(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];
% Aged 21
x_data = Male_data_21(:,2);
y_data = Male_data_21(:,7);
BB = polyfit(x_data,y_data,1);
Coefficient_m2_NDH_Male_Ours = [Coefficient_m2_NDH_Male_Ours BB(1)];

% We show the fitting results
figure;
% For m1 of Female
subplot(2,2,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('m1')
xlim([5 22]);
ylim([0 0.6]);

x_data = 6:21;
y_data = Coefficient_m1_DH_Female_Ours;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_1,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH1 = plot(xxx,yyy,'color',Color_1,'LineWidth',2);

x_data = 6:21;
y_data = Coefficient_m1_NDH_Female_Ours;
HH2 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_2,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH2 = plot(xxx,yyy,'color',Color_2,'LineWidth',2);

% For m2 of Female
subplot(2,2,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('m2')
xlim([5 22]);
ylim([0 0.6]);

x_data = 6:21;
y_data = Coefficient_m2_DH_Female_Ours;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_1,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH1 = plot(xxx,yyy,'color',Color_1,'LineWidth',2);

x_data = 6:21;
y_data = Coefficient_m2_NDH_Female_Ours;
HH2 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_2,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH2 = plot(xxx,yyy,'color',Color_2,'LineWidth',2);

% For m1 of Male
subplot(2,2,3);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('m1')
xlim([5 22]);
ylim([0 0.6]);

x_data = 6:21;
y_data = Coefficient_m1_DH_Male_Ours;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_1,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH1 = plot(xxx,yyy,'color',Color_1,'LineWidth',2);

x_data = 6:21;
y_data = Coefficient_m1_NDH_Male_Ours;
HH2 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_2,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH2 = plot(xxx,yyy,'color',Color_2,'LineWidth',2);

% For m2 of Male
subplot(2,2,4);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('m2')
xlim([5 22]);
ylim([0 0.6]);

x_data = 6:21;
y_data = Coefficient_m2_DH_Male_Ours;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_1,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH1 = plot(xxx,yyy,'color',Color_1,'LineWidth',2);

x_data = 6:21;
y_data = Coefficient_m2_NDH_Male_Ours;
HH2 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_2,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth'); % Smooth
xxx = 5.5:0.1:21.5;
yyy = fitobject(xxx);
HHH2 = plot(xxx,yyy,'color',Color_2,'LineWidth',2);

%% We save the coefficients m1 and m2 for this dataset
Age_Ours = 6:21;
save('Coefficient_m1_and_m2_Ours.mat','Age_Ours','Coefficient_m1_DH_Female_Ours','Coefficient_m1_NDH_Female_Ours',...
    'Coefficient_m2_DH_Female_Ours','Coefficient_m2_NDH_Female_Ours','Coefficient_m1_DH_Male_Ours',...
    'Coefficient_m1_NDH_Male_Ours','Coefficient_m2_DH_Male_Ours','Coefficient_m2_NDH_Male_Ours');
