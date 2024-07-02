%% Source codes for Figure 5(a).
% We use Fourier transform to calculate the frequency spectrum of 
% coefficients a, b, c, and d changing with age for our data (DH only).
% Model: 1 = a/Weight + b*Height, 1 = c/HGS + d*Height
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading the data
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

%% Linear fitting: Model: 1 = a/Weight + b*Height,
% The coefficients of a and b
Coefficient_a_Female_Ours = [];
Coefficient_b_Female_Ours = [];
Coefficient_a_Male_Ours = [];
Coefficient_b_Male_Ours = [];
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

%% Linear fitting: Model: 1 = c/HGS + d*Height
% The coefficients of c and d for DH only
Coefficient_c_Female_DH_Ours = [];
Coefficient_d_Female_DH_Ours = [];
Coefficient_c_Male_DH_Ours = [];
Coefficient_d_Male_DH_Ours = [];

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

%% Fast Fourier transform (FFT)
figure;
Fs = 100; % the Sampling frequency
Age_Ours = 6:21;
%%
% Coefficients a
% female
subplot(2,4,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('a for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 3]);
set(gca,'xtick',[0,0.1,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.1 0.1],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_a_Female_Ours;
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
plot(0.374766,0.261716,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);


% male
subplot(2,4,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('a for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 3]);
set(gca,'xtick',[0,0.1,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_a_Male_Ours;
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
HH2 = plot(f(1:end),P1(1:end),'-','color',Color_2,'LineWidth',My_LineWidth);
% Maximum
%plot(0.124922,1.43706,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.312305,0.523789,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient b
% female
subplot(2,4,3);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('b for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_b_Female_Ours;
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

% female
subplot(2,4,4);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('b for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_b_Male_Ours;
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
HH2 = plot(f(1:end),P1(1:end),'-','color',Color_4,'LineWidth',My_LineWidth);

%%
% Coefficients c
% female
subplot(2,4,5);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('c for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 3]);
set(gca,'xtick',[0,0.125,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_c_Female_DH_Ours;
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
plot(0.124922,0.557701,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.312305,0.134292,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% male
subplot(2,4,6);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('c for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 3]);
set(gca,'xtick',[0,0.1,0.333,0.5])
plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_c_Male_DH_Ours;
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
HH2 = plot(f(1:end),P1(1:end),'-','color',Color_2,'LineWidth',My_LineWidth);
% Maximum
%plot(0.124922,0.370234,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);
plot(0.312305,0.253193,'o','color','r','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize);

% Coefficient d
% female
subplot(2,4,7);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('d for female');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_d_Female_DH_Ours;
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

% female
subplot(2,4,8);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('d for male');
xlabel('Frequency (Hz)');
%ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 1]);
set(gca,'xtick',[0,0.125,0.333,0.5])
%plot([0.333 0.333],[-1 10],'--k','LineWidth',1);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_Ours;
y_data = Coefficient_d_Female_DH_Ours;
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
HH2 = plot(f(1:end),P1(1:end),'-','color',Color_4,'LineWidth',My_LineWidth);
