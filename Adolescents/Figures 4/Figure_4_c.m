%% Source codes for Figure 4(c).
% We use standardized regression model to evaluate the contribution of height and weight to FCF and HGS for DH only.
% Model: FCF = h1+k1*Height+k2*Weight and mHGS = h2+k3*Height+k4*Weight
% Abbreviations: mHGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 0.5;
My_MarkerSize = 7;
Alpha = 1;
Edgealpha = 0;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

Color_Fill_1 = [221 241 243]/255; % primary school
Color_Fill_2 = [236 244 221]/255; % junior high school
Color_Fill_3 = [255 247 172]/255; % high school
Color_Fill_4 = [250 231 217]/255; % University
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

%%
figure;
Age = 6:21;
%% FCF of DH  = h1+k1*Height+k2*Weight
% For female
Std_Co_Height_Female_x = []; % Height
Std_Co_Weight_Female_x = []; % Weight
% For male
Std_Co_Height_Male_x = []; % Height
Std_Co_Weight_Male_x = []; % Weight

% Aged 6
X_data = Female_data_6(:,1); % Height
Y_data = Female_data_6(:,2); % Weight
Z_data = Female_data_6(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data = Female_data_7(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data = Female_data_8(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data = Female_data_9(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data = Female_data_10(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data = Female_data_11(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data = Female_data_12(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data = Female_data_13(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data = Female_data_14(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data = Female_data_15(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data = Female_data_16(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data = Female_data_17(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data = Female_data_18(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data = Female_data_19(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 20
X_data = Female_data_20(:,1); % Height
Y_data = Female_data_20(:,2); % Weight
Z_data = Female_data_20(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 21
X_data = Female_data_21(:,1); % Height
Y_data = Female_data_21(:,2); % Weight
Z_data = Female_data_21(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% For male
% Aged 6
X_data = Male_data_6(:,1); % Height
Y_data = Male_data_6(:,2); % Weight
Z_data = Male_data_6(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data = Male_data_7(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data = Male_data_8(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data = Male_data_9(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data = Male_data_10(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data = Male_data_11(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data = Male_data_12(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data = Male_data_13(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data = Male_data_14(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data = Male_data_15(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data = Male_data_16(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data = Male_data_17(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data = Male_data_18(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 19
X_data = Male_data_19(:,1); % Height
Y_data = Male_data_19(:,2); % Weight
Z_data = Male_data_19(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 20
X_data = Male_data_20(:,1); % Height
Y_data = Male_data_20(:,2); % Weight
Z_data = Male_data_20(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 21
X_data = Male_data_21(:,1); % Height
Y_data = Male_data_21(:,2); % Weight
Z_data = Male_data_21(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% We show the results of k1 and k2
% For female
subplot(5,1,1)
hold on;
title('Female')
%xlabel('Age (yr)');
ylabel('Standardized Coefficient')
xlim([5 22]);
ylim([-0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.1 12 12 5.1]; % primary school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

My_text = ['FCF=h1+k1*Height' newline() '+k2*Weight'];
My_Text1 = text(6.5,0.3,My_text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Standardized regression coefficients
x_data = Age;
y_data = Std_Co_Height_Female_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Std_Co_Weight_Female_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'k1','k2','Location','Northeast','Orientation','horizontal');
set(Legend,'Box','off')

% For male
subplot(5,1,2);
hold on;
title('Male')
%xlabel('Age (yr)');
ylabel('Standardized Coefficient')
xlim([5 22]);
ylim([-0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.1 12 12 5.1]; % primary school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

My_text = ['FCF=h1+k1*Height' newline() '+k2*Weight'];
My_Text1 = text(6.5,0.3,My_text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Standardized regression coefficients
x_data = Age;
y_data = Std_Co_Height_Male_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Std_Co_Weight_Male_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'k1','k2','Location','Northeast','Orientation','horizontal');
set(Legend,'Box','off')

%% mHGS of DH  = a1+k1*Height+k2*Weight
% For female
Std_Co_Height_Female_x = []; % Height
Std_Co_Weight_Female_x = []; % Weight
% For male
Std_Co_Height_Male_x = []; % Height
Std_Co_Weight_Male_x = []; % Weight

% Aged 6
X_data = Female_data_6(:,1); % Height
Y_data = Female_data_6(:,2); % Weight
Z_data = Female_data_6(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data = Female_data_7(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data = Female_data_8(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data = Female_data_9(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data = Female_data_10(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data = Female_data_11(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data = Female_data_12(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data = Female_data_13(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data = Female_data_14(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data = Female_data_15(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data = Female_data_16(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data = Female_data_17(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data = Female_data_18(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data = Female_data_19(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 20
X_data = Female_data_20(:,1); % Height
Y_data = Female_data_20(:,2); % Weight
Z_data = Female_data_20(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% Aged 21
X_data = Female_data_21(:,1); % Height
Y_data = Female_data_21(:,2); % Weight
Z_data = Female_data_21(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Female_x = [Std_Co_Height_Female_x b(2)];
Std_Co_Weight_Female_x = [Std_Co_Weight_Female_x b(3)];

% For male
% Aged 6
X_data = Male_data_6(:,1); % Height
Y_data = Male_data_6(:,2); % Weight
Z_data = Male_data_6(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data = Male_data_7(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data = Male_data_8(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data = Male_data_9(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data = Male_data_10(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization

XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data = Male_data_11(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data = Male_data_12(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data = Male_data_13(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data = Male_data_14(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data = Male_data_15(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data = Male_data_16(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data = Male_data_17(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data = Male_data_18(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 19
X_data = Male_data_19(:,1); % Height
Y_data = Male_data_19(:,2); % Weight
Z_data = Male_data_19(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 20
X_data = Male_data_20(:,1); % Height
Y_data = Male_data_20(:,2); % Weight
Z_data = Male_data_20(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% Aged 21
X_data = Male_data_21(:,1); % Height
Y_data = Male_data_21(:,2); % Weight
Z_data = Male_data_21(:,6); % mHGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_Male_x = [Std_Co_Height_Male_x b(2)];
Std_Co_Weight_Male_x = [Std_Co_Weight_Male_x b(3)];

% We show the results of k3 and k4
% For female
subplot(5,1,3)
hold on;
title('Female')
%xlabel('Age (yr)');
ylabel('Standardized Coefficient')
xlim([5 22]);
ylim([-0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.1 12 12 5.1]; % primary school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

My_text = ['mHGS=h2+k3*Height' newline() '+k4*Weight'];
My_Text1 = text(6.5,0.7,My_text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Standardized regression coefficients
x_data = Age;
y_data = Std_Co_Height_Female_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Std_Co_Weight_Female_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'k3','k4','Location','Northeast','Orientation','horizontal');
set(Legend,'Box','off')

% For male
subplot(5,1,4);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Standardized Coefficient')
xlim([5 22]);
ylim([-0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.1 12 12 5.1]; % primary school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.295 -0.295 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

My_text = ['mHGS=h2+k3*Height' newline() '+k4*Weight'];
My_Text1 = text(6.5,0.7,My_text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Standardized regression coefficients
x_data = Age;
y_data = Std_Co_Height_Male_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Std_Co_Weight_Male_x;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'k3','k4','Location','Northeast','Orientation','horizontal');
set(Legend,'Box','off')

%% Legends
subplot(5,1,5)
hold on
axis equal;
xlim([0 20]);
ylim([0 5]);
ax = gca;
ax.YAxis.Visible = 'off';
xxx = 2.5:5:17.5;
My_XTicklabel_1 = {'Primary school','Junior high school','High school','College'};
set(gca,'XTick',xxx,'XTicklabel',My_XTicklabel_1);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','right')

YY_Fill = [0 4.9 4.9 0]; % primary school
XX_Fill = [0 0 5 5];
HH = fill(XX_Fill,YY_Fill,Color_Fill_1);
set(HH,'edgealpha',0,'facealpha',Alpha);
YY_Fill = [0 4.9 4.9 0]; % junior high school
XX_Fill = [5 5 10 10];
HH = fill(XX_Fill,YY_Fill,Color_Fill_2);
set(HH,'edgealpha',0,'facealpha',Alpha);
YY_Fill = [0 4.9 4.9 0]; % high school
XX_Fill = [10 10 15 15];
HH = fill(XX_Fill,YY_Fill,Color_Fill_3);
set(HH,'edgealpha',0,'facealpha',Alpha);
YY_Fill = [0 4.9 4.9 0]; % University
XX_Fill = [15 15 20 20];
HH = fill(XX_Fill,YY_Fill,Color_Fill_4);
set(HH,'edgealpha',0,'facealpha',Alpha);

