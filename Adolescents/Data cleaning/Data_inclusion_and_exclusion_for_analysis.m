%% Data inclusion and exclusion for analysis
% Data outside the 1th and 99th or 97th percentiles were excluded for each age groups.
% Abbreviation: HGS = Hand Grip Strength; FCF = Forearm CircumFerence
%
%%
Lower_percentile = 0.5;
Upper_percentile = 99.5;
%% Load the Raw data
Raw_data = xlsread('Data_for_analysis.xlsx','Raw data');
%% Stratified by Gender
Female_data = [];
Male_data = [];     
[M N] = size(Raw_data);
for i = 1:M
    if Raw_data(i,6) == 0 % Female
        Female_data = [Female_data;Raw_data(i,:)];
    end

    if Raw_data(i,6) == 1 % Male
        Male_data = [Male_data;Raw_data(i,:)];
    end
end
%% Stratified by Age
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

% For Female
[M N] = size(Female_data);
for i = 1:M
    if Female_data(i,4) == 6
        Female_data_6 = [Female_data_6;Female_data(i,:)];
    end

    if Female_data(i,4) == 7
        Female_data_7 = [Female_data_7;Female_data(i,:)];
    end

    if Female_data(i,4) == 8
        Female_data_8 = [Female_data_8;Female_data(i,:)];
    end

    if Female_data(i,4) == 9
        Female_data_9 = [Female_data_9;Female_data(i,:)];
    end

    if Female_data(i,4) == 10
        Female_data_10 = [Female_data_10;Female_data(i,:)];
    end

    if Female_data(i,4) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,4) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end

    if Female_data(i,4) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end

    if Female_data(i,4) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end

    if Female_data(i,4) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end

    if Female_data(i,4) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end

    if Female_data(i,4) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end

    if Female_data(i,4) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end

    if Female_data(i,4) == 19
        Female_data_19 = [Female_data_19;Female_data(i,:)];
    end

    if Female_data(i,4) == 20
        Female_data_20 = [Female_data_20;Female_data(i,:)];
    end

    if Female_data(i,4) == 21
        Female_data_21 = [Female_data_21;Female_data(i,:)];
    end
end

% For Male
[M N] = size(Male_data);
for i = 1:M
    if Male_data(i,4) == 6
        Male_data_6 = [Male_data_6;Male_data(i,:)];
    end

    if Male_data(i,4) == 7
        Male_data_7 = [Male_data_7;Male_data(i,:)];
    end

    if Male_data(i,4) == 8
        Male_data_8 = [Male_data_8;Male_data(i,:)];
    end

    if Male_data(i,4) == 9
        Male_data_9 = [Male_data_9;Male_data(i,:)];
    end

    if Male_data(i,4) == 10
        Male_data_10 = [Male_data_10;Male_data(i,:)];
    end

    if Male_data(i,4) == 11
        Male_data_11 = [Male_data_11;Male_data(i,:)];
    end

    if Male_data(i,4) == 12
        Male_data_12 = [Male_data_12;Male_data(i,:)];
    end

    if Male_data(i,4) == 13
        Male_data_13 = [Male_data_13;Male_data(i,:)];
    end

    if Male_data(i,4) == 14
        Male_data_14 = [Male_data_14;Male_data(i,:)];
    end

    if Male_data(i,4) == 15
        Male_data_15 = [Male_data_15;Male_data(i,:)];
    end

    if Male_data(i,4) == 16
        Male_data_16 = [Male_data_16;Male_data(i,:)];
    end

    if Male_data(i,4) == 17
        Male_data_17 = [Male_data_17;Male_data(i,:)];
    end

    if Male_data(i,4) == 18
        Male_data_18 = [Male_data_18;Male_data(i,:)];
    end

    if Male_data(i,4) == 19
        Male_data_19 = [Male_data_19;Male_data(i,:)];
    end

    if Male_data(i,4) == 20
        Male_data_20 = [Male_data_20;Male_data(i,:)];
    end

    if Male_data(i,4) == 21
        Male_data_21 = [Male_data_21;Male_data(i,:)];
    end
end

%% Data inclusion and exclusion
My_Percentiles = [Lower_percentile Upper_percentile];
%% For Female
% Age 6
Female_data_6_included = [];
Female_data_6_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_6;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_6_included = [Female_data_6_included;Temp_data(i,:)];
    else
        Female_data_6_excluded = [Female_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_6_included;
Female_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_6_included = [Female_data_6_included;Temp_data(i,:)];
    else
        Female_data_6_excluded = [Female_data_6_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_6_included;
Female_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_6_included = [Female_data_6_included;Temp_data(i,:)];
    else
        Female_data_6_excluded = [Female_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_6_included;
Female_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_6_included = [Female_data_6_included;Temp_data(i,:)];
    else
        Female_data_6_excluded = [Female_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_6_included;
Female_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_6_included = [Female_data_6_included;Temp_data(i,:)];
    else
        Female_data_6_excluded = [Female_data_6_excluded;Temp_data(i,:)];
    end
end

% Age 7
Female_data_7_included = [];
Female_data_7_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_7;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_7_included = [Female_data_7_included;Temp_data(i,:)];
    else
        Female_data_7_excluded = [Female_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_7_included;
Female_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_7_included = [Female_data_7_included;Temp_data(i,:)];
    else
        Female_data_7_excluded = [Female_data_7_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_7_included;
Female_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_7_included = [Female_data_7_included;Temp_data(i,:)];
    else
        Female_data_7_excluded = [Female_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_7_included;
Female_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_7_included = [Female_data_7_included;Temp_data(i,:)];
    else
        Female_data_7_excluded = [Female_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_7_included;
Female_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_7_included = [Female_data_7_included;Temp_data(i,:)];
    else
        Female_data_7_excluded = [Female_data_7_excluded;Temp_data(i,:)];
    end
end

% Age 8
Female_data_8_included = [];
Female_data_8_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_8;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_8_included = [Female_data_8_included;Temp_data(i,:)];
    else
        Female_data_8_excluded = [Female_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_8_included;
Female_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_8_included = [Female_data_8_included;Temp_data(i,:)];
    else
        Female_data_8_excluded = [Female_data_8_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_8_included;
Female_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_8_included = [Female_data_8_included;Temp_data(i,:)];
    else
        Female_data_8_excluded = [Female_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_8_included;
Female_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_8_included = [Female_data_8_included;Temp_data(i,:)];
    else
        Female_data_8_excluded = [Female_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_8_included;
Female_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_8_included = [Female_data_8_included;Temp_data(i,:)];
    else
        Female_data_8_excluded = [Female_data_8_excluded;Temp_data(i,:)];
    end
end

% Age 9
Female_data_9_included = [];
Female_data_9_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_9;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_9_included = [Female_data_9_included;Temp_data(i,:)];
    else
        Female_data_9_excluded = [Female_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_9_included;
Female_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_9_included = [Female_data_9_included;Temp_data(i,:)];
    else
        Female_data_9_excluded = [Female_data_9_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_9_included;
Female_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_9_included = [Female_data_9_included;Temp_data(i,:)];
    else
        Female_data_9_excluded = [Female_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_9_included;
Female_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_9_included = [Female_data_9_included;Temp_data(i,:)];
    else
        Female_data_9_excluded = [Female_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_9_included;
Female_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_9_included = [Female_data_9_included;Temp_data(i,:)];
    else
        Female_data_9_excluded = [Female_data_9_excluded;Temp_data(i,:)];
    end
end

% Age 10
Female_data_10_included = [];
Female_data_10_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_10;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_10_included = [Female_data_10_included;Temp_data(i,:)];
    else
        Female_data_10_excluded = [Female_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_10_included;
Female_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_10_included = [Female_data_10_included;Temp_data(i,:)];
    else
        Female_data_10_excluded = [Female_data_10_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_10_included;
Female_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_10_included = [Female_data_10_included;Temp_data(i,:)];
    else
        Female_data_10_excluded = [Female_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_10_included;
Female_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_10_included = [Female_data_10_included;Temp_data(i,:)];
    else
        Female_data_10_excluded = [Female_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_10_included;
Female_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_10_included = [Female_data_10_included;Temp_data(i,:)];
    else
        Female_data_10_excluded = [Female_data_10_excluded;Temp_data(i,:)];
    end
end

% Age 11
Female_data_11_included = [];
Female_data_11_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_11;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_11_included = [Female_data_11_included;Temp_data(i,:)];
    else
        Female_data_11_excluded = [Female_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_11_included;
Female_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_11_included = [Female_data_11_included;Temp_data(i,:)];
    else
        Female_data_11_excluded = [Female_data_11_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_11_included;
Female_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_11_included = [Female_data_11_included;Temp_data(i,:)];
    else
        Female_data_11_excluded = [Female_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_11_included;
Female_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_11_included = [Female_data_11_included;Temp_data(i,:)];
    else
        Female_data_11_excluded = [Female_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_11_included;
Female_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_11_included = [Female_data_11_included;Temp_data(i,:)];
    else
        Female_data_11_excluded = [Female_data_11_excluded;Temp_data(i,:)];
    end
end

% Age 12
Female_data_12_included = [];
Female_data_12_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_12;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_12_included = [Female_data_12_included;Temp_data(i,:)];
    else
        Female_data_12_excluded = [Female_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_12_included;
Female_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_12_included = [Female_data_12_included;Temp_data(i,:)];
    else
        Female_data_12_excluded = [Female_data_12_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_12_included;
Female_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_12_included = [Female_data_12_included;Temp_data(i,:)];
    else
        Female_data_12_excluded = [Female_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_12_included;
Female_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_12_included = [Female_data_12_included;Temp_data(i,:)];
    else
        Female_data_12_excluded = [Female_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_12_included;
Female_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_12_included = [Female_data_12_included;Temp_data(i,:)];
    else
        Female_data_12_excluded = [Female_data_12_excluded;Temp_data(i,:)];
    end
end

% Age 13
Female_data_13_included = [];
Female_data_13_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_13;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_13_included = [Female_data_13_included;Temp_data(i,:)];
    else
        Female_data_13_excluded = [Female_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_13_included;
Female_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_13_included = [Female_data_13_included;Temp_data(i,:)];
    else
        Female_data_13_excluded = [Female_data_13_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_13_included;
Female_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_13_included = [Female_data_13_included;Temp_data(i,:)];
    else
        Female_data_13_excluded = [Female_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_13_included;
Female_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_13_included = [Female_data_13_included;Temp_data(i,:)];
    else
        Female_data_13_excluded = [Female_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_13_included;
Female_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_13_included = [Female_data_13_included;Temp_data(i,:)];
    else
        Female_data_13_excluded = [Female_data_13_excluded;Temp_data(i,:)];
    end
end

% Age 14
Female_data_14_included = [];
Female_data_14_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_14;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_14_included = [Female_data_14_included;Temp_data(i,:)];
    else
        Female_data_14_excluded = [Female_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_14_included;
Female_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_14_included = [Female_data_14_included;Temp_data(i,:)];
    else
        Female_data_14_excluded = [Female_data_14_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_14_included;
Female_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_14_included = [Female_data_14_included;Temp_data(i,:)];
    else
        Female_data_14_excluded = [Female_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_14_included;
Female_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_14_included = [Female_data_14_included;Temp_data(i,:)];
    else
        Female_data_14_excluded = [Female_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_14_included;
Female_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_14_included = [Female_data_14_included;Temp_data(i,:)];
    else
        Female_data_14_excluded = [Female_data_14_excluded;Temp_data(i,:)];
    end
end

% Age 15
Female_data_15_included = [];
Female_data_15_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_15;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_15_included = [Female_data_15_included;Temp_data(i,:)];
    else
        Female_data_15_excluded = [Female_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_15_included;
Female_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_15_included = [Female_data_15_included;Temp_data(i,:)];
    else
        Female_data_15_excluded = [Female_data_15_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_15_included;
Female_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_15_included = [Female_data_15_included;Temp_data(i,:)];
    else
        Female_data_15_excluded = [Female_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_15_included;
Female_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_15_included = [Female_data_15_included;Temp_data(i,:)];
    else
        Female_data_15_excluded = [Female_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_15_included;
Female_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_15_included = [Female_data_15_included;Temp_data(i,:)];
    else
        Female_data_15_excluded = [Female_data_15_excluded;Temp_data(i,:)];
    end
end

% Age 16
Female_data_16_included = [];
Female_data_16_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_16;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_16_included = [Female_data_16_included;Temp_data(i,:)];
    else
        Female_data_16_excluded = [Female_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_16_included;
Female_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_16_included = [Female_data_16_included;Temp_data(i,:)];
    else
        Female_data_16_excluded = [Female_data_16_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_16_included;
Female_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_16_included = [Female_data_16_included;Temp_data(i,:)];
    else
        Female_data_16_excluded = [Female_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_16_included;
Female_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_16_included = [Female_data_16_included;Temp_data(i,:)];
    else
        Female_data_16_excluded = [Female_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_16_included;
Female_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_16_included = [Female_data_16_included;Temp_data(i,:)];
    else
        Female_data_16_excluded = [Female_data_16_excluded;Temp_data(i,:)];
    end
end

% Age 17
Female_data_17_included = [];
Female_data_17_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_17;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_17_included = [Female_data_17_included;Temp_data(i,:)];
    else
        Female_data_17_excluded = [Female_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_17_included;
Female_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_17_included = [Female_data_17_included;Temp_data(i,:)];
    else
        Female_data_17_excluded = [Female_data_17_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_17_included;
Female_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_17_included = [Female_data_17_included;Temp_data(i,:)];
    else
        Female_data_17_excluded = [Female_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_17_included;
Female_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_17_included = [Female_data_17_included;Temp_data(i,:)];
    else
        Female_data_17_excluded = [Female_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_17_included;
Female_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_17_included = [Female_data_17_included;Temp_data(i,:)];
    else
        Female_data_17_excluded = [Female_data_17_excluded;Temp_data(i,:)];
    end
end

% Age 18
Female_data_18_included = [];
Female_data_18_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_18;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_18_included = [Female_data_18_included;Temp_data(i,:)];
    else
        Female_data_18_excluded = [Female_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Female_data_18_included;
Female_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_18_included = [Female_data_18_included;Temp_data(i,:)];
    else
        Female_data_18_excluded = [Female_data_18_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_18_included;
Female_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_18_included = [Female_data_18_included;Temp_data(i,:)];
    else
        Female_data_18_excluded = [Female_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_18_included;
Female_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_18_included = [Female_data_18_included;Temp_data(i,:)];
    else
        Female_data_18_excluded = [Female_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_18_included;
Female_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_18_included = [Female_data_18_included;Temp_data(i,:)];
    else
        Female_data_18_excluded = [Female_data_18_excluded;Temp_data(i,:)];
    end
end

% Age 19
Female_data_19_included = [];
Female_data_19_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_19;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_19_included = [Female_data_19_included;Temp_data(i,:)];
    else
        Female_data_19_excluded = [Female_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Female_data_19_included;
Female_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_19_included = [Female_data_19_included;Temp_data(i,:)];
    else
        Female_data_19_excluded = [Female_data_19_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_19_included;
Female_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_19_included = [Female_data_19_included;Temp_data(i,:)];
    else
        Female_data_19_excluded = [Female_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_19_included;
Female_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_19_included = [Female_data_19_included;Temp_data(i,:)];
    else
        Female_data_19_excluded = [Female_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_19_included;
Female_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_19_included = [Female_data_19_included;Temp_data(i,:)];
    else
        Female_data_19_excluded = [Female_data_19_excluded;Temp_data(i,:)];
    end
end

% Age 20
Female_data_20_included = [];
Female_data_20_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_20;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_20_included = [Female_data_20_included;Temp_data(i,:)];
    else
        Female_data_20_excluded = [Female_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Female_data_20_included;
Female_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_20_included = [Female_data_20_included;Temp_data(i,:)];
    else
        Female_data_20_excluded = [Female_data_20_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_20_included;
Female_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_20_included = [Female_data_20_included;Temp_data(i,:)];
    else
        Female_data_20_excluded = [Female_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_20_included;
Female_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_20_included = [Female_data_20_included;Temp_data(i,:)];
    else
        Female_data_20_excluded = [Female_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_20_included;
Female_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_20_included = [Female_data_20_included;Temp_data(i,:)];
    else
        Female_data_20_excluded = [Female_data_20_excluded;Temp_data(i,:)];
    end
end

% Age 21
Female_data_21_included = [];
Female_data_21_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Female_data_21;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Female_data_21_included = [Female_data_21_included;Temp_data(i,:)];
    else
        Female_data_21_excluded = [Female_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Female_data_21_included;
Female_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Female_data_21_included = [Female_data_21_included;Temp_data(i,:)];
    else
        Female_data_21_excluded = [Female_data_21_excluded;Temp_data(i,:)];
    end
end

Temp_data = Female_data_21_included;
Female_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Female_data_21_included = [Female_data_21_included;Temp_data(i,:)];
    else
        Female_data_21_excluded = [Female_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Female_data_21_included;
Female_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Female_data_21_included = [Female_data_21_included;Temp_data(i,:)];
    else
        Female_data_21_excluded = [Female_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Female_data_21_included;
Female_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Female_data_21_included = [Female_data_21_included;Temp_data(i,:)];
    else
        Female_data_21_excluded = [Female_data_21_excluded;Temp_data(i,:)];
    end
end

%% For Male
% Age 6
Male_data_6_included = [];
Male_data_6_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_6;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_6_included = [Male_data_6_included;Temp_data(i,:)];
    else
        Male_data_6_excluded = [Male_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_6_included;
Male_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_6_included = [Male_data_6_included;Temp_data(i,:)];
    else
        Male_data_6_excluded = [Male_data_6_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_6_included;
Male_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_6_included = [Male_data_6_included;Temp_data(i,:)];
    else
        Male_data_6_excluded = [Male_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_6_included;
Male_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_6_included = [Male_data_6_included;Temp_data(i,:)];
    else
        Male_data_6_excluded = [Male_data_6_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_6_included;
Male_data_6_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_6_included = [Male_data_6_included;Temp_data(i,:)];
    else
        Male_data_6_excluded = [Male_data_6_excluded;Temp_data(i,:)];
    end
end

% Age 7
Male_data_7_included = [];
Male_data_7_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_7;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_7_included = [Male_data_7_included;Temp_data(i,:)];
    else
        Male_data_7_excluded = [Male_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_7_included;
Male_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_7_included = [Male_data_7_included;Temp_data(i,:)];
    else
        Male_data_7_excluded = [Male_data_7_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_7_included;
Male_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_7_included = [Male_data_7_included;Temp_data(i,:)];
    else
        Male_data_7_excluded = [Male_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_7_included;
Male_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_7_included = [Male_data_7_included;Temp_data(i,:)];
    else
        Male_data_7_excluded = [Male_data_7_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_7_included;
Male_data_7_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_7_included = [Male_data_7_included;Temp_data(i,:)];
    else
        Male_data_7_excluded = [Male_data_7_excluded;Temp_data(i,:)];
    end
end

% Age 8
Male_data_8_included = [];
Male_data_8_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_8;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_8_included = [Male_data_8_included;Temp_data(i,:)];
    else
        Male_data_8_excluded = [Male_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_8_included;
Male_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_8_included = [Male_data_8_included;Temp_data(i,:)];
    else
        Male_data_8_excluded = [Male_data_8_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_8_included;
Male_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_8_included = [Male_data_8_included;Temp_data(i,:)];
    else
        Male_data_8_excluded = [Male_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_8_included;
Male_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_8_included = [Male_data_8_included;Temp_data(i,:)];
    else
        Male_data_8_excluded = [Male_data_8_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_8_included;
Male_data_8_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_8_included = [Male_data_8_included;Temp_data(i,:)];
    else
        Male_data_8_excluded = [Male_data_8_excluded;Temp_data(i,:)];
    end
end

% Age 9
Male_data_9_included = [];
Male_data_9_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_9;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_9_included = [Male_data_9_included;Temp_data(i,:)];
    else
        Male_data_9_excluded = [Male_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_9_included;
Male_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_9_included = [Male_data_9_included;Temp_data(i,:)];
    else
        Male_data_9_excluded = [Male_data_9_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_9_included;
Male_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_9_included = [Male_data_9_included;Temp_data(i,:)];
    else
        Male_data_9_excluded = [Male_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_9_included;
Male_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_9_included = [Male_data_9_included;Temp_data(i,:)];
    else
        Male_data_9_excluded = [Male_data_9_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_9_included;
Male_data_9_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_9_included = [Male_data_9_included;Temp_data(i,:)];
    else
        Male_data_9_excluded = [Male_data_9_excluded;Temp_data(i,:)];
    end
end

% Age 10
Male_data_10_included = [];
Male_data_10_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_10;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_10_included = [Male_data_10_included;Temp_data(i,:)];
    else
        Male_data_10_excluded = [Male_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_10_included;
Male_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_10_included = [Male_data_10_included;Temp_data(i,:)];
    else
        Male_data_10_excluded = [Male_data_10_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_10_included;
Male_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_10_included = [Male_data_10_included;Temp_data(i,:)];
    else
        Male_data_10_excluded = [Male_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_10_included;
Male_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_10_included = [Male_data_10_included;Temp_data(i,:)];
    else
        Male_data_10_excluded = [Male_data_10_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_10_included;
Male_data_10_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_10_included = [Male_data_10_included;Temp_data(i,:)];
    else
        Male_data_10_excluded = [Male_data_10_excluded;Temp_data(i,:)];
    end
end

% Age 11
Male_data_11_included = [];
Male_data_11_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_11;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_11_included = [Male_data_11_included;Temp_data(i,:)];
    else
        Male_data_11_excluded = [Male_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_11_included;
Male_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_11_included = [Male_data_11_included;Temp_data(i,:)];
    else
        Male_data_11_excluded = [Male_data_11_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_11_included;
Male_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_11_included = [Male_data_11_included;Temp_data(i,:)];
    else
        Male_data_11_excluded = [Male_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_11_included;
Male_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_11_included = [Male_data_11_included;Temp_data(i,:)];
    else
        Male_data_11_excluded = [Male_data_11_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_11_included;
Male_data_11_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_11_included = [Male_data_11_included;Temp_data(i,:)];
    else
        Male_data_11_excluded = [Male_data_11_excluded;Temp_data(i,:)];
    end
end

% Age 12
Male_data_12_included = [];
Male_data_12_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_12;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_12_included = [Male_data_12_included;Temp_data(i,:)];
    else
        Male_data_12_excluded = [Male_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_12_included;
Male_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_12_included = [Male_data_12_included;Temp_data(i,:)];
    else
        Male_data_12_excluded = [Male_data_12_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_12_included;
Male_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_12_included = [Male_data_12_included;Temp_data(i,:)];
    else
        Male_data_12_excluded = [Male_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_12_included;
Male_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_12_included = [Male_data_12_included;Temp_data(i,:)];
    else
        Male_data_12_excluded = [Male_data_12_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_12_included;
Male_data_12_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_12_included = [Male_data_12_included;Temp_data(i,:)];
    else
        Male_data_12_excluded = [Male_data_12_excluded;Temp_data(i,:)];
    end
end

% Age 13
Male_data_13_included = [];
Male_data_13_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_13;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_13_included = [Male_data_13_included;Temp_data(i,:)];
    else
        Male_data_13_excluded = [Male_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_13_included;
Male_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_13_included = [Male_data_13_included;Temp_data(i,:)];
    else
        Male_data_13_excluded = [Male_data_13_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_13_included;
Male_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_13_included = [Male_data_13_included;Temp_data(i,:)];
    else
        Male_data_13_excluded = [Male_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_13_included;
Male_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_13_included = [Male_data_13_included;Temp_data(i,:)];
    else
        Male_data_13_excluded = [Male_data_13_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_13_included;
Male_data_13_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_13_included = [Male_data_13_included;Temp_data(i,:)];
    else
        Male_data_13_excluded = [Male_data_13_excluded;Temp_data(i,:)];
    end
end

% Age 14
Male_data_14_included = [];
Male_data_14_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_14;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_14_included = [Male_data_14_included;Temp_data(i,:)];
    else
        Male_data_14_excluded = [Male_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_14_included;
Male_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_14_included = [Male_data_14_included;Temp_data(i,:)];
    else
        Male_data_14_excluded = [Male_data_14_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_14_included;
Male_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_14_included = [Male_data_14_included;Temp_data(i,:)];
    else
        Male_data_14_excluded = [Male_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_14_included;
Male_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_14_included = [Male_data_14_included;Temp_data(i,:)];
    else
        Male_data_14_excluded = [Male_data_14_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_14_included;
Male_data_14_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_14_included = [Male_data_14_included;Temp_data(i,:)];
    else
        Male_data_14_excluded = [Male_data_14_excluded;Temp_data(i,:)];
    end
end

% Age 15
Male_data_15_included = [];
Male_data_15_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_15;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_15_included = [Male_data_15_included;Temp_data(i,:)];
    else
        Male_data_15_excluded = [Male_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_15_included;
Male_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_15_included = [Male_data_15_included;Temp_data(i,:)];
    else
        Male_data_15_excluded = [Male_data_15_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_15_included;
Male_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_15_included = [Male_data_15_included;Temp_data(i,:)];
    else
        Male_data_15_excluded = [Male_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_15_included;
Male_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_15_included = [Male_data_15_included;Temp_data(i,:)];
    else
        Male_data_15_excluded = [Male_data_15_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_15_included;
Male_data_15_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_15_included = [Male_data_15_included;Temp_data(i,:)];
    else
        Male_data_15_excluded = [Male_data_15_excluded;Temp_data(i,:)];
    end
end

% Age 16
Male_data_16_included = [];
Male_data_16_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_16;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_16_included = [Male_data_16_included;Temp_data(i,:)];
    else
        Male_data_16_excluded = [Male_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_16_included;
Male_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_16_included = [Male_data_16_included;Temp_data(i,:)];
    else
        Male_data_16_excluded = [Male_data_16_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_16_included;
Male_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_16_included = [Male_data_16_included;Temp_data(i,:)];
    else
        Male_data_16_excluded = [Male_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_16_included;
Male_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_16_included = [Male_data_16_included;Temp_data(i,:)];
    else
        Male_data_16_excluded = [Male_data_16_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_16_included;
Male_data_16_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_16_included = [Male_data_16_included;Temp_data(i,:)];
    else
        Male_data_16_excluded = [Male_data_16_excluded;Temp_data(i,:)];
    end
end

% Age 17
Male_data_17_included = [];
Male_data_17_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_17;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_17_included = [Male_data_17_included;Temp_data(i,:)];
    else
        Male_data_17_excluded = [Male_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_17_included;
Male_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_17_included = [Male_data_17_included;Temp_data(i,:)];
    else
        Male_data_17_excluded = [Male_data_17_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_17_included;
Male_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_17_included = [Male_data_17_included;Temp_data(i,:)];
    else
        Male_data_17_excluded = [Male_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_17_included;
Male_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_17_included = [Male_data_17_included;Temp_data(i,:)];
    else
        Male_data_17_excluded = [Male_data_17_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_17_included;
Male_data_17_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_17_included = [Male_data_17_included;Temp_data(i,:)];
    else
        Male_data_17_excluded = [Male_data_17_excluded;Temp_data(i,:)];
    end
end

% Age 18
Male_data_18_included = [];
Male_data_18_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_18;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_18_included = [Male_data_18_included;Temp_data(i,:)];
    else
        Male_data_18_excluded = [Male_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
Temp_data = Male_data_18_included;
Male_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_18_included = [Male_data_18_included;Temp_data(i,:)];
    else
        Male_data_18_excluded = [Male_data_18_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_18_included;
Male_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_18_included = [Male_data_18_included;Temp_data(i,:)];
    else
        Male_data_18_excluded = [Male_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_18_included;
Male_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_18_included = [Male_data_18_included;Temp_data(i,:)];
    else
        Male_data_18_excluded = [Male_data_18_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_18_included;
Male_data_18_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_18_included = [Male_data_18_included;Temp_data(i,:)];
    else
        Male_data_18_excluded = [Male_data_18_excluded;Temp_data(i,:)];
    end
end

% Age 19
Male_data_19_included = [];
Male_data_19_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_19;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_19_included = [Male_data_19_included;Temp_data(i,:)];
    else
        Male_data_19_excluded = [Male_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Male_data_19_included;
Male_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_19_included = [Male_data_19_included;Temp_data(i,:)];
    else
        Male_data_19_excluded = [Male_data_19_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_19_included;
Male_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_19_included = [Male_data_19_included;Temp_data(i,:)];
    else
        Male_data_19_excluded = [Male_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_19_included;
Male_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_19_included = [Male_data_19_included;Temp_data(i,:)];
    else
        Male_data_19_excluded = [Male_data_19_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_19_included;
Male_data_19_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_19_included = [Male_data_19_included;Temp_data(i,:)];
    else
        Male_data_19_excluded = [Male_data_19_excluded;Temp_data(i,:)];
    end
end

% Age 20
Male_data_20_included = [];
Male_data_20_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_20;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_20_included = [Male_data_20_included;Temp_data(i,:)];
    else
        Male_data_20_excluded = [Male_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Male_data_20_included;
Male_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_20_included = [Male_data_20_included;Temp_data(i,:)];
    else
        Male_data_20_excluded = [Male_data_20_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_20_included;
Male_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_20_included = [Male_data_20_included;Temp_data(i,:)];
    else
        Male_data_20_excluded = [Male_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_20_included;
Male_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_20_included = [Male_data_20_included;Temp_data(i,:)];
    else
        Male_data_20_excluded = [Male_data_20_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_20_included;
Male_data_20_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_20_included = [Male_data_20_included;Temp_data(i,:)];
    else
        Male_data_20_excluded = [Male_data_20_excluded;Temp_data(i,:)];
    end
end

% Age 21
Male_data_21_included = [];
Male_data_21_excluded = [];
% Step 01: Data outside the 1th and 99th percentiles of FCF were
% excluded.
Temp_data = Male_data_21;
BB = polyfit(Temp_data(:,9),Temp_data(:,10),1);
[M N] = size(Temp_data);
Temp_data_1 = Temp_data;
for i = 1:M
    Temp_data_1(i,10) = Temp_data(i,10)-(BB(2)+BB(1)*Temp_data(i,9));
end
Prctile_temp = prctile(Temp_data_1(:,10),My_Percentiles);
for i = 1:M
    if Temp_data_1(i,10)>=Prctile_temp(1)&&Temp_data_1(i,10)<=Prctile_temp(2)
        Male_data_21_included = [Male_data_21_included;Temp_data(i,:)];
    else
        Male_data_21_excluded = [Male_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 02: Data outside the 1th and 99th percentiles of HGS were
% excluded.
My_Percentiles_1 = [0.5 97]; % Different from other age groups
Temp_data = Male_data_21_included;
Male_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,7),My_Percentiles_1); % HGS of left hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,7)>=Prctile_temp(1)&&Temp_data(i,7)<=Prctile_temp(2)
        Male_data_21_included = [Male_data_21_included;Temp_data(i,:)];
    else
        Male_data_21_excluded = [Male_data_21_excluded;Temp_data(i,:)];
    end
end

Temp_data = Male_data_21_included;
Male_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,8),My_Percentiles_1); % HGS of right hand
[M N]=size(Temp_data);
for i = 1:M
    if Temp_data(i,8)>=Prctile_temp(1)&&Temp_data(i,8)<=Prctile_temp(2)
        Male_data_21_included = [Male_data_21_included;Temp_data(i,:)];
    else
        Male_data_21_excluded = [Male_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 03: Data outside the 1th and 99th percentiles of Height were
% excluded.
Temp_data = Male_data_21_included;
Male_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,2),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,2)>=Prctile_temp(1)&&Temp_data(i,2)<=Prctile_temp(2)
        Male_data_21_included = [Male_data_21_included;Temp_data(i,:)];
    else
        Male_data_21_excluded = [Male_data_21_excluded;Temp_data(i,:)];
    end
end
% Step 04: Data outside the 1th and 99th percentiles of Weight were
% excluded.
Temp_data = Male_data_21_included;
Male_data_21_included = [];
Prctile_temp = prctile(Temp_data(:,3),My_Percentiles);
[M N] = size(Temp_data);
for i = 1:M
    if Temp_data(i,3)>=Prctile_temp(1)&&Temp_data(i,3)<=Prctile_temp(2)
        Male_data_21_included = [Male_data_21_included;Temp_data(i,:)];
    else
        Male_data_21_excluded = [Male_data_21_excluded;Temp_data(i,:)];
    end
end

%% Save data
Save_Female_data_included = [Female_data_6_included;Female_data_7_included;Female_data_8_included;Female_data_9_included;...
    Female_data_10_included;Female_data_11_included;Female_data_12_included;Female_data_13_included;Female_data_14_included;...
    Female_data_15_included;Female_data_16_included;Female_data_17_included;Female_data_18_included;Female_data_19_included;...
    Female_data_20_included;Female_data_21_included];

Save_Female_data_excluded = [Female_data_6_excluded;Female_data_7_excluded;Female_data_8_excluded;Female_data_9_excluded;...
    Female_data_10_excluded;Female_data_11_excluded;Female_data_12_excluded;Female_data_13_excluded;Female_data_14_excluded;...
    Female_data_15_excluded;Female_data_16_excluded;Female_data_17_excluded;Female_data_18_excluded;Female_data_19_excluded;...
    Female_data_20_excluded;Female_data_21_excluded];

Save_Male_data_included = [Male_data_6_included;Male_data_7_included;Male_data_8_included;Male_data_9_included;...
    Male_data_10_included;Male_data_11_included;Male_data_12_included;Male_data_13_included;Male_data_14_included;...
    Male_data_15_included;Male_data_16_included;Male_data_17_included;Male_data_18_included;Male_data_19_included;...
    Male_data_20_included;Male_data_21_included];

Save_Male_data_excluded = [Male_data_6_excluded;Male_data_7_excluded;Male_data_8_excluded;Male_data_9_excluded;...
    Male_data_10_excluded;Male_data_11_excluded;Male_data_12_excluded;Male_data_13_excluded;Male_data_14_excluded;...
    Male_data_15_excluded;Male_data_16_excluded;Male_data_17_excluded;Male_data_18_excluded;Male_data_19_excluded;...
    Male_data_20_excluded;Male_data_21_excluded];

Save_data_included = [Save_Female_data_included;Save_Male_data_included];
Save_data_excluded = [Save_Female_data_excluded;Save_Male_data_excluded];

[M N] = size(Raw_data);
for i = 1:M
    if Raw_data(i,4)<6||Raw_data(i,4)>21
        Save_data_excluded = [Save_data_excluded;Raw_data(i,:)];
    end
end

xlswrite('Data_for_analysis.xlsx',Save_data_included,'Data included','A2')
xlswrite('Data_for_analysis.xlsx',Save_data_excluded,'Data excluded','A2')

