%% Source codes for Figure 5(b).
% We use Fourier transform to calculate the frequency spectrum of 
% coefficients c and d changing with age for DH only.
% Model: FCF = h1 + k1*Height + k2*Weight, HGS = h2 + k3*Height + k4*Weight, 
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 0.5; % fill area transparency
My_MarkerSize = 7;
Alpha = 1;
Edgealpha = 0;
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

%% HGS of DH  = h2+k3*Height+k4*Weight
% For female
Std_Co_Height_DH_Female_x = []; % k3 for Height
Std_Co_Weight_DH_Female_x = []; % k4 for Weight
% For male
Std_Co_Height_DH_Male_x = []; % k3 for Height
Std_Co_Weight_DH_Male_x = []; % k4 for Weight

% Aged 6
X_data = Female_data_6(:,1); % Height
Y_data = Female_data_6(:,2); % Weight
Z_data = Female_data_6(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data = Female_data_7(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data = Female_data_8(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data = Female_data_9(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data = Female_data_10(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data = Female_data_11(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data = Female_data_12(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data = Female_data_13(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data = Female_data_14(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data = Female_data_15(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data = Female_data_16(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data = Female_data_17(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data = Female_data_18(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data = Female_data_19(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 20
X_data = Female_data_20(:,1); % Height
Y_data = Female_data_20(:,2); % Weight
Z_data = Female_data_20(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 21
X_data = Female_data_21(:,1); % Height
Y_data = Female_data_21(:,2); % Weight
Z_data = Female_data_21(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% For male
% Aged 6
X_data = Male_data_6(:,1); % Height
Y_data = Male_data_6(:,2); % Weight
Z_data = Male_data_6(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data = Male_data_7(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data = Male_data_8(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data = Male_data_9(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data = Male_data_10(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data = Male_data_11(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data = Male_data_12(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data = Male_data_13(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data = Male_data_14(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data = Male_data_15(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data = Male_data_16(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data = Male_data_17(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data = Male_data_18(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 19
X_data = Male_data_19(:,1); % Height
Y_data = Male_data_19(:,2); % Weight
Z_data = Male_data_19(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 20
X_data = Male_data_20(:,1); % Height
Y_data = Male_data_20(:,2); % Weight
Z_data = Male_data_20(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 21
X_data = Male_data_21(:,1); % Height
Y_data = Male_data_21(:,2); % Weight
Z_data = Male_data_21(:,6); % HGS of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

%% Fast Fourier transform (FFT)
figure;
Fs = 100; % the Sampling frequency
Age_Ours = 6:21;
% Coefficients k3 and k4
% Coefficient k3 of female
subplot(2,4,5);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k3 for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.4]);
set(gca,'xtick',[0,0.2,0.4,0.6])
plot([0.2 0.2],[-1 10],'--k','LineWidth',1);
plot([0.4 0.4],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Height_DH_Female_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.187383,0.0993133,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.374766,0.0351108,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k3 of male
subplot(2,4,6);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k3 for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.4]);
set(gca,'xtick',[0,0.2,0.333,0.5])
plot([0.2 0.2],[-1 10],'--k','LineWidth',1);
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Height_DH_Male_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.187383,0.0869927,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.312305,0.0312153,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k4 of female
subplot(2,4,7);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k4 for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.4]);
set(gca,'xtick',[0,0.2,0.333,0.5])
plot([0.2 0.2],[-1 10],'--k','LineWidth',1);
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Weight_DH_Female_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.187383,0.0726326,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k4 of male
subplot(2,4,8);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k4 for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.4]);
set(gca,'xtick',[0,0.2,0.333,0.5])
%plot([0.2 0.2],[-1 10],'--k','LineWidth',1);
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Weight_DH_Male_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.312305,0.0387459,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

%% FCF of DH  = h1+k1*Height+k2*Weight
% For female
Std_Co_Height_DH_Female_x = []; % k1 for Height
Std_Co_Weight_DH_Female_x = []; % k2 for Weight
% For male
Std_Co_Height_DH_Male_x = []; % k1 for Height
Std_Co_Weight_DH_Male_x = []; % k2 for Weight

% Aged 6
X_data = Female_data_6(:,1); % Height
Y_data = Female_data_6(:,2); % Weight
Z_data = Female_data_6(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 7
X_data = Female_data_7(:,1); % Height
Y_data = Female_data_7(:,2); % Weight
Z_data = Female_data_7(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 8
X_data = Female_data_8(:,1); % Height
Y_data = Female_data_8(:,2); % Weight
Z_data = Female_data_8(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 9
X_data = Female_data_9(:,1); % Height
Y_data = Female_data_9(:,2); % Weight
Z_data = Female_data_9(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 10
X_data = Female_data_10(:,1); % Height
Y_data = Female_data_10(:,2); % Weight
Z_data = Female_data_10(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 11
X_data = Female_data_11(:,1); % Height
Y_data = Female_data_11(:,2); % Weight
Z_data = Female_data_11(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 12
X_data = Female_data_12(:,1); % Height
Y_data = Female_data_12(:,2); % Weight
Z_data = Female_data_12(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 13
X_data = Female_data_13(:,1); % Height
Y_data = Female_data_13(:,2); % Weight
Z_data = Female_data_13(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 14
X_data = Female_data_14(:,1); % Height
Y_data = Female_data_14(:,2); % Weight
Z_data = Female_data_14(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 15
X_data = Female_data_15(:,1); % Height
Y_data = Female_data_15(:,2); % Weight
Z_data = Female_data_15(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 16
X_data = Female_data_16(:,1); % Height
Y_data = Female_data_16(:,2); % Weight
Z_data = Female_data_16(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 17
X_data = Female_data_17(:,1); % Height
Y_data = Female_data_17(:,2); % Weight
Z_data = Female_data_17(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 18
X_data = Female_data_18(:,1); % Height
Y_data = Female_data_18(:,2); % Weight
Z_data = Female_data_18(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 19
X_data = Female_data_19(:,1); % Height
Y_data = Female_data_19(:,2); % Weight
Z_data = Female_data_19(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 20
X_data = Female_data_20(:,1); % Height
Y_data = Female_data_20(:,2); % Weight
Z_data = Female_data_20(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

% Aged 21
X_data = Female_data_21(:,1); % Height
Y_data = Female_data_21(:,2); % Weight
Z_data = Female_data_21(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Female_x = [Std_Co_Height_DH_Female_x b(2)];
Std_Co_Weight_DH_Female_x = [Std_Co_Weight_DH_Female_x b(3)];

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
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 7
X_data = Male_data_7(:,1); % Height
Y_data = Male_data_7(:,2); % Weight
Z_data = Male_data_7(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 8
X_data = Male_data_8(:,1); % Height
Y_data = Male_data_8(:,2); % Weight
Z_data = Male_data_8(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 9
X_data = Male_data_9(:,1); % Height
Y_data = Male_data_9(:,2); % Weight
Z_data = Male_data_9(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 10
X_data = Male_data_10(:,1); % Height
Y_data = Male_data_10(:,2); % Weight
Z_data = Male_data_10(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 11
X_data = Male_data_11(:,1); % Height
Y_data = Male_data_11(:,2); % Weight
Z_data = Male_data_11(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 12
X_data = Male_data_12(:,1); % Height
Y_data = Male_data_12(:,2); % Weight
Z_data = Male_data_12(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 13
X_data = Male_data_13(:,1); % Height
Y_data = Male_data_13(:,2); % Weight
Z_data = Male_data_13(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 14
X_data = Male_data_14(:,1); % Height
Y_data = Male_data_14(:,2); % Weight
Z_data = Male_data_14(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 15
X_data = Male_data_15(:,1); % Height
Y_data = Male_data_15(:,2); % Weight
Z_data = Male_data_15(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 16
X_data = Male_data_16(:,1); % Height
Y_data = Male_data_16(:,2); % Weight
Z_data = Male_data_16(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 17
X_data = Male_data_17(:,1); % Height
Y_data = Male_data_17(:,2); % Weight
Z_data = Male_data_17(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 18
X_data = Male_data_18(:,1); % Height
Y_data = Male_data_18(:,2); % Weight
Z_data = Male_data_18(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 19
X_data = Male_data_19(:,1); % Height
Y_data = Male_data_19(:,2); % Weight
Z_data = Male_data_19(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 20
X_data = Male_data_20(:,1); % Height
Y_data = Male_data_20(:,2); % Weight
Z_data = Male_data_20(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

% Aged 21
X_data = Male_data_21(:,1); % Height
Y_data = Male_data_21(:,2); % Weight
Z_data = Male_data_21(:,3); % FCF of DH
X = (X_data-mean(X_data))/sqrt(var(X_data)); % Standardization
Y = (Y_data-mean(Y_data))/sqrt(var(Y_data)); % Standardization
Z = (Z_data-mean(Z_data))/sqrt(var(Z_data)); % Standardization
XX = [ones(size(Z)) X Y];
[b,bint,r,rint,stats] = regress(Z,XX);
Std_Co_Height_DH_Male_x = [Std_Co_Height_DH_Male_x b(2)];
Std_Co_Weight_DH_Male_x = [Std_Co_Weight_DH_Male_x b(3)];

%% Fast Fourier transform (FFT)
% Coefficients k1 and k2
% Coefficient k1 of female
subplot(2,4,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k1 for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.2]);
set(gca,'xtick',[0,0.25,0.4,0.6])
plot([0.25 0.25],[-1 10],'--k','LineWidth',1);
plot([0.4 0.4],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Height_DH_Female_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.249844,0.0200035,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.374766,0.0132142,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k1 of male
subplot(2,4,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k1 for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.2]);
set(gca,'xtick',[0,0.25,0.4,0.6])
plot([0.25 0.25],[-1 10],'--k','LineWidth',1);
plot([0.4 0.4],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Height_DH_Male_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.249844,0.0214206,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.374766,0.0198388,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k2 of female
subplot(2,4,3);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k2 for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.2]);
set(gca,'xtick',[0,0.25,0.5])
plot([0.25 0.25],[-1 10],'--k','LineWidth',1);
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Weight_DH_Female_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.249844,0.0475248,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient k2 of male
subplot(2,4,4);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('k2 for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.2]);
set(gca,'xtick',[0,0.2,0.333,0.5])
%plot([0.2 0.2],[-1 10],'--k','LineWidth',1);
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);
x_data = Age_Ours;
y_data = Std_Co_Weight_DH_Male_x; % DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.01:21.5;
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
plot(0.312305,0.0493358,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
