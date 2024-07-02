%% Source codes for Figure 1(a).
% We calculated the percentiles of Height, Weight, HGS and FCF for our data.
% Abbreviations: mHGS = maximum Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
Alpha = 1;
Edgealpha = 0;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

Color_1_Fill = [88/255 181/255 154/255];
Color_2_Fill = [152/255 192/255 166/255];
Color_3_Fill = [247/255 231/255 205/255];
Color_4_Fill = [248/255 201/255 119/255];

Color_Average = [0/255 0/255 255/255];
Color_Outside = [29/255 53/255 87/255];

Color_Fill_1 = [221 241 243]/255; % primary school
Color_Fill_2 = [236 244 221]/255; % junior high school
Color_Fill_3 = [255 247 172]/255; % high school
Color_Fill_4 = [250 231 217]/255; % University

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
My_p = [5 10 25 50 75 90 95];
%% height
% For female-height
Female_Height_Percentiles_6 = prctile(Female_data_6(:,1),My_p);
Female_Height_Percentiles_7 = prctile(Female_data_7(:,1),My_p);
Female_Height_Percentiles_8 = prctile(Female_data_8(:,1),My_p);
Female_Height_Percentiles_9 = prctile(Female_data_9(:,1),My_p);
Female_Height_Percentiles_10 = prctile(Female_data_10(:,1),My_p);
Female_Height_Percentiles_11 = prctile(Female_data_11(:,1),My_p);
Female_Height_Percentiles_12 = prctile(Female_data_12(:,1),My_p);
Female_Height_Percentiles_13 = prctile(Female_data_13(:,1),My_p);
Female_Height_Percentiles_14 = prctile(Female_data_14(:,1),My_p);
Female_Height_Percentiles_15 = prctile(Female_data_15(:,1),My_p);
Female_Height_Percentiles_16 = prctile(Female_data_16(:,1),My_p);
Female_Height_Percentiles_17 = prctile(Female_data_17(:,1),My_p);
Female_Height_Percentiles_18 = prctile(Female_data_18(:,1),My_p);
Female_Height_Percentiles_19 = prctile(Female_data_19(:,1),My_p);
Female_Height_Percentiles_20 = prctile(Female_data_20(:,1),My_p);
Female_Height_Percentiles_21 = prctile(Female_data_21(:,1),My_p);
Female_Height_Percentiles_ALL = prctile(Female_data(:,2),My_p);

% For male-height
Male_Height_Percentiles_6 = prctile(Male_data_6(:,1),My_p);
Male_Height_Percentiles_7 = prctile(Male_data_7(:,1),My_p);
Male_Height_Percentiles_8 = prctile(Male_data_8(:,1),My_p);
Male_Height_Percentiles_9 = prctile(Male_data_9(:,1),My_p);
Male_Height_Percentiles_10 = prctile(Male_data_10(:,1),My_p);
Male_Height_Percentiles_11 = prctile(Male_data_11(:,1),My_p);
Male_Height_Percentiles_12 = prctile(Male_data_12(:,1),My_p);
Male_Height_Percentiles_13 = prctile(Male_data_13(:,1),My_p);
Male_Height_Percentiles_14 = prctile(Male_data_14(:,1),My_p);
Male_Height_Percentiles_15 = prctile(Male_data_15(:,1),My_p);
Male_Height_Percentiles_16 = prctile(Male_data_16(:,1),My_p);
Male_Height_Percentiles_17 = prctile(Male_data_17(:,1),My_p);
Male_Height_Percentiles_18 = prctile(Male_data_18(:,1),My_p);
Male_Height_Percentiles_19 = prctile(Male_data_19(:,1),My_p);
Male_Height_Percentiles_20 = prctile(Male_data_20(:,1),My_p);
Male_Height_Percentiles_21 = prctile(Male_data_21(:,1),My_p);
Male_Height_Percentiles_ALL = prctile(Male_data(:,2),My_p);

% data outside the 5%~95% range
figure;
% For female
subplot(3,5,6)
hold on
%box on
%set(gca,'YGrid','on')
% grid on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([100 200]);
title('Female');
xlabel('Age (yr)');
ylabel('Height (cm)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Female_data);
Temp_data = [];
for i = 1:M
    if Female_data(i,4) == 6
        if Female_data(i,2)<= Female_Height_Percentiles_6(1) || Female_data(i,2)>= Female_Height_Percentiles_6(7)
            Temp_data = [Temp_data;6 Female_data(i,2)];
        end        
    end

    if Female_data(i,4) == 7
        if Female_data(i,2)<= Female_Height_Percentiles_7(1) || Female_data(i,2)>= Female_Height_Percentiles_7(7)
            Temp_data = [Temp_data;7 Female_data(i,2)];
        end        
    end

    if Female_data(i,4) == 8
        if Female_data(i,2)<= Female_Height_Percentiles_8(1) || Female_data(i,2)>= Female_Height_Percentiles_8(7)
            Temp_data = [Temp_data;8 Female_data(i,2)];
        end        
    end

    if Female_data(i,4) == 9
        if Female_data(i,2)<= Female_Height_Percentiles_9(1) || Female_data(i,2)>= Female_Height_Percentiles_9(7)
            Temp_data = [Temp_data;9 Female_data(i,2)];
        end        
    end

    if Female_data(i,4) == 10
        if Female_data(i,2)<= Female_Height_Percentiles_10(1) || Female_data(i,2)>= Female_Height_Percentiles_10(7)
            Temp_data = [Temp_data;10 Female_data(i,2)];
        end        
    end

    if Female_data(i,4) == 11
        if Female_data(i,2)<= Female_Height_Percentiles_11(1) || Female_data(i,2)>= Female_Height_Percentiles_11(7)
            Temp_data = [Temp_data;11 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 12
        if Female_data(i,2)<= Female_Height_Percentiles_12(1) || Female_data(i,2)>= Female_Height_Percentiles_12(7)
            Temp_data = [Temp_data;12 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 13
        if Female_data(i,2)<= Female_Height_Percentiles_13(1) || Female_data(i,2)>= Female_Height_Percentiles_13(7)
            Temp_data = [Temp_data;13 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 14
        if Female_data(i,2)<= Female_Height_Percentiles_14(1) || Female_data(i,2)>= Female_Height_Percentiles_14(7)
            Temp_data = [Temp_data;14 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 15
        if Female_data(i,2)<= Female_Height_Percentiles_15(1) || Female_data(i,2)>= Female_Height_Percentiles_15(7)
            Temp_data = [Temp_data;15 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 16
        if Female_data(i,2)<= Female_Height_Percentiles_16(1) || Female_data(i,2)>= Female_Height_Percentiles_16(7)
            Temp_data = [Temp_data;16 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 17
        if Female_data(i,2)<= Female_Height_Percentiles_17(1) || Female_data(i,2)>= Female_Height_Percentiles_17(7)
            Temp_data = [Temp_data;17 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 18
        if Female_data(i,2)<= Female_Height_Percentiles_18(1) || Female_data(i,2)>= Female_Height_Percentiles_18(7)
            Temp_data = [Temp_data;18 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 19
        if Female_data(i,2)<= Female_Height_Percentiles_19(1) || Female_data(i,2)>= Female_Height_Percentiles_19(7)
            Temp_data = [Temp_data;19 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 20
        if Female_data(i,2)<= Female_Height_Percentiles_20(1) || Female_data(i,2)>= Female_Height_Percentiles_20(7)
            Temp_data = [Temp_data;20 Female_data(i,2)];
        end        
    end
    
    if Female_data(i,4) == 21
        if Female_data(i,2)<= Female_Height_Percentiles_21(1) || Female_data(i,2)>= Female_Height_Percentiles_21(7)
            Temp_data = [Temp_data;21 Female_data(i,2)];
        end        
    end
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Female_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Female_5th = [Female_Height_Percentiles_6(1) Female_Height_Percentiles_7(1) Female_Height_Percentiles_8(1) Female_Height_Percentiles_9(1) ...
    Female_Height_Percentiles_10(1) Female_Height_Percentiles_11(1) Female_Height_Percentiles_12(1) Female_Height_Percentiles_13(1) Female_Height_Percentiles_14(1) ...
    Female_Height_Percentiles_15(1) Female_Height_Percentiles_16(1) Female_Height_Percentiles_17(1) Female_Height_Percentiles_18(1) Female_Height_Percentiles_19(1) ...
    Female_Height_Percentiles_20(1) Female_Height_Percentiles_21(1)];
Female_10th = [Female_Height_Percentiles_6(2) Female_Height_Percentiles_7(2) Female_Height_Percentiles_8(2) Female_Height_Percentiles_9(2) ...
    Female_Height_Percentiles_10(2) Female_Height_Percentiles_11(2) Female_Height_Percentiles_12(2) Female_Height_Percentiles_13(2) Female_Height_Percentiles_14(2) ...
    Female_Height_Percentiles_15(2) Female_Height_Percentiles_16(2) Female_Height_Percentiles_17(2) Female_Height_Percentiles_18(2) Female_Height_Percentiles_19(2) ...
    Female_Height_Percentiles_20(2) Female_Height_Percentiles_21(2)];
Female_25th = [Female_Height_Percentiles_6(3) Female_Height_Percentiles_7(3) Female_Height_Percentiles_8(3) Female_Height_Percentiles_9(3) ...
    Female_Height_Percentiles_10(3) Female_Height_Percentiles_11(3) Female_Height_Percentiles_12(3) Female_Height_Percentiles_13(3) Female_Height_Percentiles_14(3) ...
    Female_Height_Percentiles_15(3) Female_Height_Percentiles_16(3) Female_Height_Percentiles_17(3) Female_Height_Percentiles_18(3) Female_Height_Percentiles_19(3) ...
    Female_Height_Percentiles_20(3) Female_Height_Percentiles_21(3)];
Female_50th = [Female_Height_Percentiles_6(4) Female_Height_Percentiles_7(4) Female_Height_Percentiles_8(4) Female_Height_Percentiles_9(4) ...
    Female_Height_Percentiles_10(4) Female_Height_Percentiles_11(4) Female_Height_Percentiles_12(4) Female_Height_Percentiles_13(4) Female_Height_Percentiles_14(4) ...
    Female_Height_Percentiles_15(4) Female_Height_Percentiles_16(4) Female_Height_Percentiles_17(4) Female_Height_Percentiles_18(4) Female_Height_Percentiles_19(4) ...
    Female_Height_Percentiles_20(4) Female_Height_Percentiles_21(4)];
Female_75th = [Female_Height_Percentiles_6(5) Female_Height_Percentiles_7(5) Female_Height_Percentiles_8(5) Female_Height_Percentiles_9(5) ...
    Female_Height_Percentiles_10(5) Female_Height_Percentiles_11(5) Female_Height_Percentiles_12(5) Female_Height_Percentiles_13(5) Female_Height_Percentiles_14(5) ...
    Female_Height_Percentiles_15(5) Female_Height_Percentiles_16(5) Female_Height_Percentiles_17(5) Female_Height_Percentiles_18(5) Female_Height_Percentiles_19(5) ...
    Female_Height_Percentiles_20(5) Female_Height_Percentiles_21(5)];
Female_90th = [Female_Height_Percentiles_6(6) Female_Height_Percentiles_7(6) Female_Height_Percentiles_8(6) Female_Height_Percentiles_9(6) ...
    Female_Height_Percentiles_10(6) Female_Height_Percentiles_11(6) Female_Height_Percentiles_12(6) Female_Height_Percentiles_13(6) Female_Height_Percentiles_14(6) ...
    Female_Height_Percentiles_15(6) Female_Height_Percentiles_16(6) Female_Height_Percentiles_17(6) Female_Height_Percentiles_18(6) Female_Height_Percentiles_19(6) ...
    Female_Height_Percentiles_20(6) Female_Height_Percentiles_21(6)];
Female_95th = [Female_Height_Percentiles_6(7) Female_Height_Percentiles_7(7) Female_Height_Percentiles_8(7) Female_Height_Percentiles_9(7) ...
    Female_Height_Percentiles_10(7) Female_Height_Percentiles_11(7) Female_Height_Percentiles_12(7) Female_Height_Percentiles_13(7) Female_Height_Percentiles_14(7) ...
    Female_Height_Percentiles_15(7) Female_Height_Percentiles_16(7) Female_Height_Percentiles_17(7) Female_Height_Percentiles_18(7) Female_Height_Percentiles_19(7) ...
    Female_Height_Percentiles_20(7) Female_Height_Percentiles_21(7)];
Female_Average = [mean(Female_data_6(:,1)) mean(Female_data_7(:,1)) mean(Female_data_8(:,1)) mean(Female_data_9(:,1)) ...
    mean(Female_data_10(:,1)) mean(Female_data_11(:,1)) mean(Female_data_12(:,1)) mean(Female_data_13(:,1)) mean(Female_data_14(:,1)) mean(Female_data_15(:,1)) ...
    mean(Female_data_16(:,1)) mean(Female_data_17(:,1)) mean(Female_data_18(:,1)) mean(Female_data_19(:,1)) mean(Female_data_20(:,1)) mean(Female_data_21(:,1))];
%
XX = [Female_age Female_age(end:-1:1)];
YY = [Female_5th Female_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_10th Female_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_25th Female_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Female_age,Female_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Female_age,Female_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Female_age,Female_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Female_age,Female_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Female_age,Female_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Female_age,Female_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Female_age,Female_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Female_age,Female_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);
%%box on
%Legend1 = legend([H0 H1 H2 H3 H4 H5 H6 H7 H8],'Others','P5th','P10th','P25th','P50th','P75th','P90th','P95th','Mean','Location','SouthEastOutside');

% For male
subplot(3,5,11)
hold on
%box on
%set(gca,'YGrid','on')
% grid on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([100 200]);
title('Male');
xlabel('Age (yr)');
ylabel('Height (cm)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [101 101 200 200];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Male_data);
Temp_data = [];
for i = 1:M
    if Male_data(i,4) == 6
        if Male_data(i,2)<= Male_Height_Percentiles_6(1) || Male_data(i,2)>= Male_Height_Percentiles_6(7)
            Temp_data = [Temp_data;6 Male_data(i,2)];
        end        
    end

    if Male_data(i,4) == 7
        if Male_data(i,2)<= Male_Height_Percentiles_7(1) || Male_data(i,2)>= Male_Height_Percentiles_7(7)
            Temp_data = [Temp_data;7 Male_data(i,2)];
        end        
    end

    if Male_data(i,4) == 8
        if Male_data(i,2)<= Male_Height_Percentiles_8(1) || Male_data(i,2)>= Male_Height_Percentiles_8(7)
            Temp_data = [Temp_data;8 Male_data(i,2)];
        end        
    end

    if Male_data(i,4) == 9
        if Male_data(i,2)<= Male_Height_Percentiles_9(1) || Male_data(i,2)>= Male_Height_Percentiles_9(7)
            Temp_data = [Temp_data;9 Male_data(i,2)];
        end        
    end

    if Male_data(i,4) == 10
        if Male_data(i,2)<= Male_Height_Percentiles_10(1) || Male_data(i,2)>= Male_Height_Percentiles_10(7)
            Temp_data = [Temp_data;10 Male_data(i,2)];
        end        
    end

    if Male_data(i,4) == 11
        if Male_data(i,2)<= Male_Height_Percentiles_11(1) || Male_data(i,2)>= Male_Height_Percentiles_11(7)
            Temp_data = [Temp_data;11 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 12
        if Male_data(i,2)<= Male_Height_Percentiles_12(1) || Male_data(i,2)>= Male_Height_Percentiles_12(7)
            Temp_data = [Temp_data;12 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 13
        if Male_data(i,2)<= Male_Height_Percentiles_13(1) || Male_data(i,2)>= Male_Height_Percentiles_13(7)
            Temp_data = [Temp_data;13 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 14
        if Male_data(i,2)<= Male_Height_Percentiles_14(1) || Male_data(i,2)>= Male_Height_Percentiles_14(7)
            Temp_data = [Temp_data;14 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 15
        if Male_data(i,2)<= Male_Height_Percentiles_15(1) || Male_data(i,2)>= Male_Height_Percentiles_15(7)
            Temp_data = [Temp_data;15 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 16
        if Male_data(i,2)<= Male_Height_Percentiles_16(1) || Male_data(i,2)>= Male_Height_Percentiles_16(7)
            Temp_data = [Temp_data;16 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 17
        if Male_data(i,2)<= Male_Height_Percentiles_17(1) || Male_data(i,2)>= Male_Height_Percentiles_17(7)
            Temp_data = [Temp_data;17 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 18
        if Male_data(i,2)<= Male_Height_Percentiles_18(1) || Male_data(i,2)>= Male_Height_Percentiles_18(7)
            Temp_data = [Temp_data;18 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 19
        if Male_data(i,2)<= Male_Height_Percentiles_19(1) || Male_data(i,2)>= Male_Height_Percentiles_19(7)
            Temp_data = [Temp_data;19 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 20
        if Male_data(i,2)<= Male_Height_Percentiles_20(1) || Male_data(i,2)>= Male_Height_Percentiles_20(7)
            Temp_data = [Temp_data;20 Male_data(i,2)];
        end        
    end
    
    if Male_data(i,4) == 21
        if Male_data(i,2)<= Male_Height_Percentiles_21(1) || Male_data(i,2)>= Male_Height_Percentiles_21(7)
            Temp_data = [Temp_data;21 Male_data(i,2)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Male_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Male_5th = [Male_Height_Percentiles_6(1) Male_Height_Percentiles_7(1) Male_Height_Percentiles_8(1) Male_Height_Percentiles_9(1) ...
    Male_Height_Percentiles_10(1) Male_Height_Percentiles_11(1) Male_Height_Percentiles_12(1) Male_Height_Percentiles_13(1) Male_Height_Percentiles_14(1) ...
    Male_Height_Percentiles_15(1) Male_Height_Percentiles_16(1) Male_Height_Percentiles_17(1) Male_Height_Percentiles_18(1) Male_Height_Percentiles_19(1) ...
    Male_Height_Percentiles_20(1) Male_Height_Percentiles_21(1)];
Male_10th = [Male_Height_Percentiles_6(2) Male_Height_Percentiles_7(2) Male_Height_Percentiles_8(2) Male_Height_Percentiles_9(2) ...
    Male_Height_Percentiles_10(2) Male_Height_Percentiles_11(2) Male_Height_Percentiles_12(2) Male_Height_Percentiles_13(2) Male_Height_Percentiles_14(2) ...
    Male_Height_Percentiles_15(2) Male_Height_Percentiles_16(2) Male_Height_Percentiles_17(2) Male_Height_Percentiles_18(2) Male_Height_Percentiles_19(2) ...
    Male_Height_Percentiles_20(2) Male_Height_Percentiles_21(2)];
Male_25th = [Male_Height_Percentiles_6(3) Male_Height_Percentiles_7(3) Male_Height_Percentiles_8(3) Male_Height_Percentiles_9(3) ...
    Male_Height_Percentiles_10(3) Male_Height_Percentiles_11(3) Male_Height_Percentiles_12(3) Male_Height_Percentiles_13(3) Male_Height_Percentiles_14(3) ...
    Male_Height_Percentiles_15(3) Male_Height_Percentiles_16(3) Male_Height_Percentiles_17(3) Male_Height_Percentiles_18(3) Male_Height_Percentiles_19(3) ...
    Male_Height_Percentiles_20(3) Male_Height_Percentiles_21(3)];
Male_50th = [Male_Height_Percentiles_6(4) Male_Height_Percentiles_7(4) Male_Height_Percentiles_8(4) Male_Height_Percentiles_9(4) ...
    Male_Height_Percentiles_10(4) Male_Height_Percentiles_11(4) Male_Height_Percentiles_12(4) Male_Height_Percentiles_13(4) Male_Height_Percentiles_14(4) ...
    Male_Height_Percentiles_15(4) Male_Height_Percentiles_16(4) Male_Height_Percentiles_17(4) Male_Height_Percentiles_18(4) Male_Height_Percentiles_19(4) ...
    Male_Height_Percentiles_20(4) Male_Height_Percentiles_21(4)];
Male_75th = [Male_Height_Percentiles_6(5) Male_Height_Percentiles_7(5) Male_Height_Percentiles_8(5) Male_Height_Percentiles_9(5) ...
    Male_Height_Percentiles_10(5) Male_Height_Percentiles_11(5) Male_Height_Percentiles_12(5) Male_Height_Percentiles_13(5) Male_Height_Percentiles_14(5) ...
    Male_Height_Percentiles_15(5) Male_Height_Percentiles_16(5) Male_Height_Percentiles_17(5) Male_Height_Percentiles_18(5) Male_Height_Percentiles_19(5) ...
    Male_Height_Percentiles_20(5) Male_Height_Percentiles_21(5)];
Male_90th = [Male_Height_Percentiles_6(6) Male_Height_Percentiles_7(6) Male_Height_Percentiles_8(6) Male_Height_Percentiles_9(6) ...
    Male_Height_Percentiles_10(6) Male_Height_Percentiles_11(6) Male_Height_Percentiles_12(6) Male_Height_Percentiles_13(6) Male_Height_Percentiles_14(6) ...
    Male_Height_Percentiles_15(6) Male_Height_Percentiles_16(6) Male_Height_Percentiles_17(6) Male_Height_Percentiles_18(6) Male_Height_Percentiles_19(6) ...
    Male_Height_Percentiles_20(6) Male_Height_Percentiles_21(6)];
Male_95th = [Male_Height_Percentiles_6(7) Male_Height_Percentiles_7(7) Male_Height_Percentiles_8(7) Male_Height_Percentiles_9(7) ...
    Male_Height_Percentiles_10(7) Male_Height_Percentiles_11(7) Male_Height_Percentiles_12(7) Male_Height_Percentiles_13(7) Male_Height_Percentiles_14(7) ...
    Male_Height_Percentiles_15(7) Male_Height_Percentiles_16(7) Male_Height_Percentiles_17(7) Male_Height_Percentiles_18(7) Male_Height_Percentiles_19(7) ...
    Male_Height_Percentiles_20(7) Male_Height_Percentiles_21(7)];
Male_Average = [mean(Male_data_6(:,1)) mean(Male_data_7(:,1)) mean(Male_data_8(:,1)) mean(Male_data_9(:,1)) ...
    mean(Male_data_10(:,1)) mean(Male_data_11(:,1)) mean(Male_data_12(:,1)) mean(Male_data_13(:,1)) mean(Male_data_14(:,1)) mean(Male_data_15(:,1)) ...
    mean(Male_data_16(:,1)) mean(Male_data_17(:,1)) mean(Male_data_18(:,1)) mean(Male_data_19(:,1)) mean(Male_data_20(:,1)) mean(Male_data_21(:,1))];
%
XX = [Male_age Male_age(end:-1:1)];
YY = [Male_5th Male_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_10th Male_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_25th Male_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Male_age,Male_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Male_age,Male_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Male_age,Male_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Male_age,Male_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Male_age,Male_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Male_age,Male_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Male_age,Male_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Male_age,Male_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);

%% Weight
% For female
Female_Weight_Percentiles_6 = prctile(Female_data_6(:,2),My_p);
Female_Weight_Percentiles_7 = prctile(Female_data_7(:,2),My_p);
Female_Weight_Percentiles_8 = prctile(Female_data_8(:,2),My_p);
Female_Weight_Percentiles_9 = prctile(Female_data_9(:,2),My_p);
Female_Weight_Percentiles_10 = prctile(Female_data_10(:,2),My_p);
Female_Weight_Percentiles_11 = prctile(Female_data_11(:,2),My_p);
Female_Weight_Percentiles_12 = prctile(Female_data_12(:,2),My_p);
Female_Weight_Percentiles_13 = prctile(Female_data_13(:,2),My_p);
Female_Weight_Percentiles_14 = prctile(Female_data_14(:,2),My_p);
Female_Weight_Percentiles_15 = prctile(Female_data_15(:,2),My_p);
Female_Weight_Percentiles_16 = prctile(Female_data_16(:,2),My_p);
Female_Weight_Percentiles_17 = prctile(Female_data_17(:,2),My_p);
Female_Weight_Percentiles_18 = prctile(Female_data_18(:,2),My_p);
Female_Weight_Percentiles_19 = prctile(Female_data_19(:,2),My_p);
Female_Weight_Percentiles_20 = prctile(Female_data_20(:,2),My_p);
Female_Weight_Percentiles_21 = prctile(Female_data_21(:,2),My_p);
Female_Weight_Percentiles_ALL = prctile(Female_data(:,3),My_p);

% For male-Weight
Male_Weight_Percentiles_6 = prctile(Male_data_6(:,2),My_p);
Male_Weight_Percentiles_7 = prctile(Male_data_7(:,2),My_p);
Male_Weight_Percentiles_8 = prctile(Male_data_8(:,2),My_p);
Male_Weight_Percentiles_9 = prctile(Male_data_9(:,2),My_p);
Male_Weight_Percentiles_10 = prctile(Male_data_10(:,2),My_p);
Male_Weight_Percentiles_11 = prctile(Male_data_11(:,2),My_p);
Male_Weight_Percentiles_12 = prctile(Male_data_12(:,2),My_p);
Male_Weight_Percentiles_13 = prctile(Male_data_13(:,2),My_p);
Male_Weight_Percentiles_14 = prctile(Male_data_14(:,2),My_p);
Male_Weight_Percentiles_15 = prctile(Male_data_15(:,2),My_p);
Male_Weight_Percentiles_16 = prctile(Male_data_16(:,2),My_p);
Male_Weight_Percentiles_17 = prctile(Male_data_17(:,2),My_p);
Male_Weight_Percentiles_18 = prctile(Male_data_18(:,2),My_p);
Male_Weight_Percentiles_19 = prctile(Male_data_19(:,2),My_p);
Male_Weight_Percentiles_20 = prctile(Male_data_20(:,2),My_p);
Male_Weight_Percentiles_21 = prctile(Male_data_21(:,2),My_p);
Male_Weight_Percentiles_ALL = prctile(Male_data(:,3),My_p);

% Show data outside the 5%~95% range
% For female
subplot(3,5,7)
hold on
%box on
%set(gca,'YGrid','on')
% grid on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([0 100]);
title('Female');
xlabel('Age (yr)');
ylabel('Weight (Kg)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [1 1 100 100];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [1 1 100 100];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [1 1 100 100];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [1 1 100 100];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Female_data);
Temp_data = [];
for i = 1:M
    if Female_data(i,4) == 6
        if Female_data(i,3)<= Female_Weight_Percentiles_6(1) || Female_data(i,3)>= Female_Weight_Percentiles_6(7)
            Temp_data = [Temp_data;6 Female_data(i,3)];
        end        
    end

    if Female_data(i,4) == 7
        if Female_data(i,3)<= Female_Weight_Percentiles_7(1) || Female_data(i,3)>= Female_Weight_Percentiles_7(7)
            Temp_data = [Temp_data;7 Female_data(i,3)];
        end        
    end

    if Female_data(i,4) == 8
        if Female_data(i,3)<= Female_Weight_Percentiles_8(1) || Female_data(i,3)>= Female_Weight_Percentiles_8(7)
            Temp_data = [Temp_data;8 Female_data(i,3)];
        end        
    end

    if Female_data(i,4) == 9
        if Female_data(i,3)<= Female_Weight_Percentiles_9(1) || Female_data(i,3)>= Female_Weight_Percentiles_9(7)
            Temp_data = [Temp_data;9 Female_data(i,3)];
        end        
    end

    if Female_data(i,4) == 10
        if Female_data(i,3)<= Female_Weight_Percentiles_10(1) || Female_data(i,3)>= Female_Weight_Percentiles_10(7)
            Temp_data = [Temp_data;10 Female_data(i,3)];
        end        
    end

    if Female_data(i,4) == 11
        if Female_data(i,3)<= Female_Weight_Percentiles_11(1) || Female_data(i,3)>= Female_Weight_Percentiles_11(7)
            Temp_data = [Temp_data;11 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 12
        if Female_data(i,3)<= Female_Weight_Percentiles_12(1) || Female_data(i,3)>= Female_Weight_Percentiles_12(7)
            Temp_data = [Temp_data;12 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 13
        if Female_data(i,3)<= Female_Weight_Percentiles_13(1) || Female_data(i,3)>= Female_Weight_Percentiles_13(7)
            Temp_data = [Temp_data;13 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 14
        if Female_data(i,3)<= Female_Weight_Percentiles_14(1) || Female_data(i,3)>= Female_Weight_Percentiles_14(7)
            Temp_data = [Temp_data;14 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 15
        if Female_data(i,3)<= Female_Weight_Percentiles_15(1) || Female_data(i,3)>= Female_Weight_Percentiles_15(7)
            Temp_data = [Temp_data;15 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 16
        if Female_data(i,3)<= Female_Weight_Percentiles_16(1) || Female_data(i,3)>= Female_Weight_Percentiles_16(7)
            Temp_data = [Temp_data;16 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 17
        if Female_data(i,3)<= Female_Weight_Percentiles_17(1) || Female_data(i,3)>= Female_Weight_Percentiles_17(7)
            Temp_data = [Temp_data;17 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 18
        if Female_data(i,3)<= Female_Weight_Percentiles_18(1) || Female_data(i,3)>= Female_Weight_Percentiles_18(7)
            Temp_data = [Temp_data;18 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 19
        if Female_data(i,3)<= Female_Weight_Percentiles_19(1) || Female_data(i,3)>= Female_Weight_Percentiles_19(7)
            Temp_data = [Temp_data;19 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 20
        if Female_data(i,3)<= Female_Weight_Percentiles_20(1) || Female_data(i,3)>= Female_Weight_Percentiles_20(7)
            Temp_data = [Temp_data;20 Female_data(i,3)];
        end        
    end
    
    if Female_data(i,4) == 21
        if Female_data(i,3)<= Female_Weight_Percentiles_21(1) || Female_data(i,3)>= Female_Weight_Percentiles_21(7)
            Temp_data = [Temp_data;21 Female_data(i,3)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Female_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Female_5th = [Female_Weight_Percentiles_6(1) Female_Weight_Percentiles_7(1) Female_Weight_Percentiles_8(1) Female_Weight_Percentiles_9(1) ...
    Female_Weight_Percentiles_10(1) Female_Weight_Percentiles_11(1) Female_Weight_Percentiles_12(1) Female_Weight_Percentiles_13(1) Female_Weight_Percentiles_14(1) ...
    Female_Weight_Percentiles_15(1) Female_Weight_Percentiles_16(1) Female_Weight_Percentiles_17(1) Female_Weight_Percentiles_18(1) Female_Weight_Percentiles_19(1) ...
    Female_Weight_Percentiles_20(1) Female_Weight_Percentiles_21(1)];
Female_10th = [Female_Weight_Percentiles_6(2) Female_Weight_Percentiles_7(2) Female_Weight_Percentiles_8(2) Female_Weight_Percentiles_9(2) ...
    Female_Weight_Percentiles_10(2) Female_Weight_Percentiles_11(2) Female_Weight_Percentiles_12(2) Female_Weight_Percentiles_13(2) Female_Weight_Percentiles_14(2) ...
    Female_Weight_Percentiles_15(2) Female_Weight_Percentiles_16(2) Female_Weight_Percentiles_17(2) Female_Weight_Percentiles_18(2) Female_Weight_Percentiles_19(2) ...
    Female_Weight_Percentiles_20(2) Female_Weight_Percentiles_21(2)];
Female_25th = [Female_Weight_Percentiles_6(3) Female_Weight_Percentiles_7(3) Female_Weight_Percentiles_8(3) Female_Weight_Percentiles_9(3) ...
    Female_Weight_Percentiles_10(3) Female_Weight_Percentiles_11(3) Female_Weight_Percentiles_12(3) Female_Weight_Percentiles_13(3) Female_Weight_Percentiles_14(3) ...
    Female_Weight_Percentiles_15(3) Female_Weight_Percentiles_16(3) Female_Weight_Percentiles_17(3) Female_Weight_Percentiles_18(3) Female_Weight_Percentiles_19(3) ...
    Female_Weight_Percentiles_20(3) Female_Weight_Percentiles_21(3)];
Female_50th = [Female_Weight_Percentiles_6(4) Female_Weight_Percentiles_7(4) Female_Weight_Percentiles_8(4) Female_Weight_Percentiles_9(4) ...
    Female_Weight_Percentiles_10(4) Female_Weight_Percentiles_11(4) Female_Weight_Percentiles_12(4) Female_Weight_Percentiles_13(4) Female_Weight_Percentiles_14(4) ...
    Female_Weight_Percentiles_15(4) Female_Weight_Percentiles_16(4) Female_Weight_Percentiles_17(4) Female_Weight_Percentiles_18(4) Female_Weight_Percentiles_19(4) ...
    Female_Weight_Percentiles_20(4) Female_Weight_Percentiles_21(4)];
Female_75th = [Female_Weight_Percentiles_6(5) Female_Weight_Percentiles_7(5) Female_Weight_Percentiles_8(5) Female_Weight_Percentiles_9(5) ...
    Female_Weight_Percentiles_10(5) Female_Weight_Percentiles_11(5) Female_Weight_Percentiles_12(5) Female_Weight_Percentiles_13(5) Female_Weight_Percentiles_14(5) ...
    Female_Weight_Percentiles_15(5) Female_Weight_Percentiles_16(5) Female_Weight_Percentiles_17(5) Female_Weight_Percentiles_18(5) Female_Weight_Percentiles_19(5) ...
    Female_Weight_Percentiles_20(5) Female_Weight_Percentiles_21(5)];
Female_90th = [Female_Weight_Percentiles_6(6) Female_Weight_Percentiles_7(6) Female_Weight_Percentiles_8(6) Female_Weight_Percentiles_9(6) ...
    Female_Weight_Percentiles_10(6) Female_Weight_Percentiles_11(6) Female_Weight_Percentiles_12(6) Female_Weight_Percentiles_13(6) Female_Weight_Percentiles_14(6) ...
    Female_Weight_Percentiles_15(6) Female_Weight_Percentiles_16(6) Female_Weight_Percentiles_17(6) Female_Weight_Percentiles_18(6) Female_Weight_Percentiles_19(6) ...
    Female_Weight_Percentiles_20(6) Female_Weight_Percentiles_21(6)];
Female_95th = [Female_Weight_Percentiles_6(7) Female_Weight_Percentiles_7(7) Female_Weight_Percentiles_8(7) Female_Weight_Percentiles_9(7) ...
    Female_Weight_Percentiles_10(7) Female_Weight_Percentiles_11(7) Female_Weight_Percentiles_12(7) Female_Weight_Percentiles_13(7) Female_Weight_Percentiles_14(7) ...
    Female_Weight_Percentiles_15(7) Female_Weight_Percentiles_16(7) Female_Weight_Percentiles_17(7) Female_Weight_Percentiles_18(7) Female_Weight_Percentiles_19(7) ...
    Female_Weight_Percentiles_20(7) Female_Weight_Percentiles_21(7)];
Female_Average = [mean(Female_data_6(:,2)) mean(Female_data_7(:,2)) mean(Female_data_8(:,2)) mean(Female_data_9(:,2)) ...
    mean(Female_data_10(:,2)) mean(Female_data_11(:,2)) mean(Female_data_12(:,2)) mean(Female_data_13(:,2)) mean(Female_data_14(:,2)) mean(Female_data_15(:,2)) ...
    mean(Female_data_16(:,2)) mean(Female_data_17(:,2)) mean(Female_data_18(:,2)) mean(Female_data_19(:,2)) mean(Female_data_20(:,2)) mean(Female_data_21(:,2))];

%
XX = [Female_age Female_age(end:-1:1)];
YY = [Female_5th Female_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_10th Female_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_25th Female_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Female_age,Female_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Female_age,Female_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Female_age,Female_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Female_age,Female_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Female_age,Female_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Female_age,Female_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Female_age,Female_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Female_age,Female_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);
% For male
subplot(3,5,12)
hold on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([0 110]);
title('Male');
xlabel('Age (yr)');
ylabel('Weight (Kg)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [1 1 110 110];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [1 1 110 110];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [1 1 110 110];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [1 1 110 110];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Male_data);
Temp_data = [];
for i = 1:M
    if Male_data(i,4) == 6
        if Male_data(i,3)<= Male_Weight_Percentiles_6(1) || Male_data(i,3)>= Male_Weight_Percentiles_6(7)
            Temp_data = [Temp_data;6 Male_data(i,3)];
        end        
    end

    if Male_data(i,4) == 7
        if Male_data(i,3)<= Male_Weight_Percentiles_7(1) || Male_data(i,3)>= Male_Weight_Percentiles_7(7)
            Temp_data = [Temp_data;7 Male_data(i,3)];
        end        
    end

    if Male_data(i,4) == 8
        %aa = 12
        if Male_data(i,3)<= Male_Weight_Percentiles_8(1) || Male_data(i,3)>= Male_Weight_Percentiles_8(7)
            Temp_data = [Temp_data;8 Male_data(i,3)];
        end        
    end

    if Male_data(i,4) == 9
        %aa = 12
        if Male_data(i,3)<= Male_Weight_Percentiles_9(1) || Male_data(i,3)>= Male_Weight_Percentiles_9(7)
            Temp_data = [Temp_data;9 Male_data(i,3)];
        end        
    end

    if Male_data(i,4) == 10
        %aa = 12
        if Male_data(i,3)<= Male_Weight_Percentiles_10(1) || Male_data(i,3)>= Male_Weight_Percentiles_10(7)
            Temp_data = [Temp_data;10 Male_data(i,3)];
        end        
    end

    if Male_data(i,4) == 11
        %aa = 12
        if Male_data(i,3)<= Male_Weight_Percentiles_11(1) || Male_data(i,3)>= Male_Weight_Percentiles_11(7)
            Temp_data = [Temp_data;11 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 12
        %aa = 12
        if Male_data(i,3)<= Male_Weight_Percentiles_12(1) || Male_data(i,3)>= Male_Weight_Percentiles_12(7)
            Temp_data = [Temp_data;12 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 13
        if Male_data(i,3)<= Male_Weight_Percentiles_13(1) || Male_data(i,3)>= Male_Weight_Percentiles_13(7)
            Temp_data = [Temp_data;13 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 14
        if Male_data(i,3)<= Male_Weight_Percentiles_14(1) || Male_data(i,3)>= Male_Weight_Percentiles_14(7)
            Temp_data = [Temp_data;14 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 15
        if Male_data(i,3)<= Male_Weight_Percentiles_15(1) || Male_data(i,3)>= Male_Weight_Percentiles_15(7)
            Temp_data = [Temp_data;15 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 16
        if Male_data(i,3)<= Male_Weight_Percentiles_16(1) || Male_data(i,3)>= Male_Weight_Percentiles_16(7)
            Temp_data = [Temp_data;16 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 17
        if Male_data(i,3)<= Male_Weight_Percentiles_17(1) || Male_data(i,3)>= Male_Weight_Percentiles_17(7)
            Temp_data = [Temp_data;17 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 18
        if Male_data(i,3)<= Male_Weight_Percentiles_18(1) || Male_data(i,3)>= Male_Weight_Percentiles_18(7)
            Temp_data = [Temp_data;18 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 19
        if Male_data(i,3)<= Male_Weight_Percentiles_19(1) || Male_data(i,3)>= Male_Weight_Percentiles_19(7)
            Temp_data = [Temp_data;19 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 20
        if Male_data(i,3)<= Male_Weight_Percentiles_20(1) || Male_data(i,3)>= Male_Weight_Percentiles_20(7)
            Temp_data = [Temp_data;20 Male_data(i,3)];
        end        
    end
    
    if Male_data(i,4) == 21
        if Male_data(i,3)<= Male_Weight_Percentiles_21(1) || Male_data(i,3)>= Male_Weight_Percentiles_21(7)
            Temp_data = [Temp_data;21 Male_data(i,3)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Male_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Male_5th = [Male_Weight_Percentiles_6(1) Male_Weight_Percentiles_7(1) Male_Weight_Percentiles_8(1) Male_Weight_Percentiles_9(1) ...
    Male_Weight_Percentiles_10(1) Male_Weight_Percentiles_11(1) Male_Weight_Percentiles_12(1) Male_Weight_Percentiles_13(1) Male_Weight_Percentiles_14(1) ...
    Male_Weight_Percentiles_15(1) Male_Weight_Percentiles_16(1) Male_Weight_Percentiles_17(1) Male_Weight_Percentiles_18(1) Male_Weight_Percentiles_19(1) ...
    Male_Weight_Percentiles_20(1) Male_Weight_Percentiles_21(1)];
Male_10th = [Male_Weight_Percentiles_6(2) Male_Weight_Percentiles_7(2) Male_Weight_Percentiles_8(2) Male_Weight_Percentiles_9(2) ...
    Male_Weight_Percentiles_10(2) Male_Weight_Percentiles_11(2) Male_Weight_Percentiles_12(2) Male_Weight_Percentiles_13(2) Male_Weight_Percentiles_14(2) ...
    Male_Weight_Percentiles_15(2) Male_Weight_Percentiles_16(2) Male_Weight_Percentiles_17(2) Male_Weight_Percentiles_18(2) Male_Weight_Percentiles_19(2) ...
    Male_Weight_Percentiles_20(2) Male_Weight_Percentiles_21(2)];
Male_25th = [Male_Weight_Percentiles_6(3) Male_Weight_Percentiles_7(3) Male_Weight_Percentiles_8(3) Male_Weight_Percentiles_9(3) ...
    Male_Weight_Percentiles_10(3) Male_Weight_Percentiles_11(3) Male_Weight_Percentiles_12(3) Male_Weight_Percentiles_13(3) Male_Weight_Percentiles_14(3) ...
    Male_Weight_Percentiles_15(3) Male_Weight_Percentiles_16(3) Male_Weight_Percentiles_17(3) Male_Weight_Percentiles_18(3) Male_Weight_Percentiles_19(3) ...
    Male_Weight_Percentiles_20(3) Male_Weight_Percentiles_21(3)];
Male_50th = [Male_Weight_Percentiles_6(4) Male_Weight_Percentiles_7(4) Male_Weight_Percentiles_8(4) Male_Weight_Percentiles_9(4) ...
    Male_Weight_Percentiles_10(4) Male_Weight_Percentiles_11(4) Male_Weight_Percentiles_12(4) Male_Weight_Percentiles_13(4) Male_Weight_Percentiles_14(4) ...
    Male_Weight_Percentiles_15(4) Male_Weight_Percentiles_16(4) Male_Weight_Percentiles_17(4) Male_Weight_Percentiles_18(4) Male_Weight_Percentiles_19(4) ...
    Male_Weight_Percentiles_20(4) Male_Weight_Percentiles_21(4)];
Male_75th = [Male_Weight_Percentiles_6(5) Male_Weight_Percentiles_7(5) Male_Weight_Percentiles_8(5) Male_Weight_Percentiles_9(5) ...
    Male_Weight_Percentiles_10(5) Male_Weight_Percentiles_11(5) Male_Weight_Percentiles_12(5) Male_Weight_Percentiles_13(5) Male_Weight_Percentiles_14(5) ...
    Male_Weight_Percentiles_15(5) Male_Weight_Percentiles_16(5) Male_Weight_Percentiles_17(5) Male_Weight_Percentiles_18(5) Male_Weight_Percentiles_19(5) ...
    Male_Weight_Percentiles_20(5) Male_Weight_Percentiles_21(5)];
Male_90th = [Male_Weight_Percentiles_6(6) Male_Weight_Percentiles_7(6) Male_Weight_Percentiles_8(6) Male_Weight_Percentiles_9(6) ...
    Male_Weight_Percentiles_10(6) Male_Weight_Percentiles_11(6) Male_Weight_Percentiles_12(6) Male_Weight_Percentiles_13(6) Male_Weight_Percentiles_14(6) ...
    Male_Weight_Percentiles_15(6) Male_Weight_Percentiles_16(6) Male_Weight_Percentiles_17(6) Male_Weight_Percentiles_18(6) Male_Weight_Percentiles_19(6) ...
    Male_Weight_Percentiles_20(6) Male_Weight_Percentiles_21(6)];
Male_95th = [Male_Weight_Percentiles_6(7) Male_Weight_Percentiles_7(7) Male_Weight_Percentiles_8(7) Male_Weight_Percentiles_9(7) ...
    Male_Weight_Percentiles_10(7) Male_Weight_Percentiles_11(7) Male_Weight_Percentiles_12(7) Male_Weight_Percentiles_13(7) Male_Weight_Percentiles_14(7) ...
    Male_Weight_Percentiles_15(7) Male_Weight_Percentiles_16(7) Male_Weight_Percentiles_17(7) Male_Weight_Percentiles_18(7) Male_Weight_Percentiles_19(7) ...
    Male_Weight_Percentiles_20(7) Male_Weight_Percentiles_21(7)];
Male_Average = [mean(Male_data_6(:,2)) mean(Male_data_7(:,2)) mean(Male_data_8(:,2)) mean(Male_data_9(:,2)) ...
    mean(Male_data_10(:,2)) mean(Male_data_11(:,2)) mean(Male_data_12(:,2)) mean(Male_data_13(:,2)) mean(Male_data_14(:,2)) mean(Male_data_15(:,2)) ...
    mean(Male_data_16(:,2)) mean(Male_data_17(:,2)) mean(Male_data_18(:,2)) mean(Male_data_19(:,2)) mean(Male_data_20(:,2)) mean(Male_data_21(:,2))];

XX = [Male_age Male_age(end:-1:1)];
YY = [Male_5th Male_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_10th Male_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_25th Male_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Male_age,Male_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Male_age,Male_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Male_age,Male_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Male_age,Male_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Male_age,Male_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Male_age,Male_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Male_age,Male_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Male_age,Male_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);

%% FCF of DH
% For female
Female_FCF_DH_Percentiles_6 = prctile(Female_data_6(:,3),My_p);
Female_FCF_DH_Percentiles_7 = prctile(Female_data_7(:,3),My_p);
Female_FCF_DH_Percentiles_8 = prctile(Female_data_8(:,3),My_p);
Female_FCF_DH_Percentiles_9 = prctile(Female_data_9(:,3),My_p);
Female_FCF_DH_Percentiles_10 = prctile(Female_data_10(:,3),My_p);
Female_FCF_DH_Percentiles_11 = prctile(Female_data_11(:,3),My_p);
Female_FCF_DH_Percentiles_12 = prctile(Female_data_12(:,3),My_p);
Female_FCF_DH_Percentiles_13 = prctile(Female_data_13(:,3),My_p);
Female_FCF_DH_Percentiles_14 = prctile(Female_data_14(:,3),My_p);
Female_FCF_DH_Percentiles_15 = prctile(Female_data_15(:,3),My_p);
Female_FCF_DH_Percentiles_16 = prctile(Female_data_16(:,3),My_p);
Female_FCF_DH_Percentiles_17 = prctile(Female_data_17(:,3),My_p);
Female_FCF_DH_Percentiles_18 = prctile(Female_data_18(:,3),My_p);
Female_FCF_DH_Percentiles_19 = prctile(Female_data_19(:,3),My_p);
Female_FCF_DH_Percentiles_20 = prctile(Female_data_20(:,3),My_p);
Female_FCF_DH_Percentiles_21 = prctile(Female_data_21(:,3),My_p);
Female_FCF_DH_Percentiles_ALL = prctile(Female_data(:,5),My_p);

% For male
Male_FCF_DH_Percentiles_6 = prctile(Male_data_6(:,3),My_p);
Male_FCF_DH_Percentiles_7 = prctile(Male_data_7(:,3),My_p);
Male_FCF_DH_Percentiles_8 = prctile(Male_data_8(:,3),My_p);
Male_FCF_DH_Percentiles_9 = prctile(Male_data_9(:,3),My_p);
Male_FCF_DH_Percentiles_10 = prctile(Male_data_10(:,3),My_p);
Male_FCF_DH_Percentiles_11 = prctile(Male_data_11(:,3),My_p);
Male_FCF_DH_Percentiles_12 = prctile(Male_data_12(:,3),My_p);
Male_FCF_DH_Percentiles_13 = prctile(Male_data_13(:,3),My_p);
Male_FCF_DH_Percentiles_14 = prctile(Male_data_14(:,3),My_p);
Male_FCF_DH_Percentiles_15 = prctile(Male_data_15(:,3),My_p);
Male_FCF_DH_Percentiles_16 = prctile(Male_data_16(:,3),My_p);
Male_FCF_DH_Percentiles_17 = prctile(Male_data_17(:,3),My_p);
Male_FCF_DH_Percentiles_18 = prctile(Male_data_18(:,3),My_p);
Male_FCF_DH_Percentiles_19 = prctile(Male_data_19(:,3),My_p);
Male_FCF_DH_Percentiles_20 = prctile(Male_data_20(:,3),My_p);
Male_FCF_DH_Percentiles_21 = prctile(Male_data_21(:,3),My_p);
Male_FCF_DH_Percentiles_ALL = prctile(Male_data(:,5),My_p);

% Data outside the range of 5% and 95%
% For female
subplot(3,5,8)
hold on
%box on
%set(gca,'YGrid','on')
% grid on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([10 35]);
title('Female');
xlabel('Age (yr)');
ylabel('FCF (cm)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [10.5 10.5 35 35];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [10.5 10.5 35 35];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [10.5 10.5 35 35];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [10.5 10.5 35 35];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Female_data);
Temp_data = [];
for i = 1:M
    if Female_data(i,4) == 6
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_6(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_6(7)
            Temp_data = [Temp_data;6 Female_data(i,5)];
        end        
    end

    if Female_data(i,4) == 7
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_7(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_7(7)
            Temp_data = [Temp_data;7 Female_data(i,5)];
        end        
    end

    if Female_data(i,4) == 8
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_8(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_8(7)
            Temp_data = [Temp_data;8 Female_data(i,5)];
        end        
    end

    if Female_data(i,4) == 9
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_9(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_9(7)
            Temp_data = [Temp_data;9 Female_data(i,5)];
        end        
    end

    if Female_data(i,4) == 10
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_10(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_10(7)
            Temp_data = [Temp_data;10 Female_data(i,5)];
        end        
    end

    if Female_data(i,4) == 11
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_11(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_11(7)
            Temp_data = [Temp_data;11 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 12
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_12(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_12(7)
            Temp_data = [Temp_data;12 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 13
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_13(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_13(7)
            Temp_data = [Temp_data;13 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 14
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_14(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_14(7)
            Temp_data = [Temp_data;14 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 15
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_15(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_15(7)
            Temp_data = [Temp_data;15 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 16
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_16(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_16(7)
            Temp_data = [Temp_data;16 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 17
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_17(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_17(7)
            Temp_data = [Temp_data;17 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 18
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_18(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_18(7)
            Temp_data = [Temp_data;18 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 19
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_19(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_19(7)
            Temp_data = [Temp_data;19 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 20
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_20(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_20(7)
            Temp_data = [Temp_data;20 Female_data(i,5)];
        end        
    end
    
    if Female_data(i,4) == 21
        if Female_data(i,5)<= Female_FCF_DH_Percentiles_21(1) || Female_data(i,5)>= Female_FCF_DH_Percentiles_21(7)
            Temp_data = [Temp_data;21 Female_data(i,5)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Female_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Female_5th = [Female_FCF_DH_Percentiles_6(1) Female_FCF_DH_Percentiles_7(1) Female_FCF_DH_Percentiles_8(1) Female_FCF_DH_Percentiles_9(1) ...
    Female_FCF_DH_Percentiles_10(1) Female_FCF_DH_Percentiles_11(1) Female_FCF_DH_Percentiles_12(1) Female_FCF_DH_Percentiles_13(1) Female_FCF_DH_Percentiles_14(1) ...
    Female_FCF_DH_Percentiles_15(1) Female_FCF_DH_Percentiles_16(1) Female_FCF_DH_Percentiles_17(1) Female_FCF_DH_Percentiles_18(1) Female_FCF_DH_Percentiles_19(1) ...
    Female_FCF_DH_Percentiles_20(1) Female_FCF_DH_Percentiles_21(1)];
Female_10th = [Female_FCF_DH_Percentiles_6(2) Female_FCF_DH_Percentiles_7(2) Female_FCF_DH_Percentiles_8(2) Female_FCF_DH_Percentiles_9(2) ...
    Female_FCF_DH_Percentiles_10(2) Female_FCF_DH_Percentiles_11(2) Female_FCF_DH_Percentiles_12(2) Female_FCF_DH_Percentiles_13(2) Female_FCF_DH_Percentiles_14(2) ...
    Female_FCF_DH_Percentiles_15(2) Female_FCF_DH_Percentiles_16(2) Female_FCF_DH_Percentiles_17(2) Female_FCF_DH_Percentiles_18(2) Female_FCF_DH_Percentiles_19(2) ...
    Female_FCF_DH_Percentiles_20(2) Female_FCF_DH_Percentiles_21(2)];
Female_25th = [Female_FCF_DH_Percentiles_6(3) Female_FCF_DH_Percentiles_7(3) Female_FCF_DH_Percentiles_8(3) Female_FCF_DH_Percentiles_9(3) ...
    Female_FCF_DH_Percentiles_10(3) Female_FCF_DH_Percentiles_11(3) Female_FCF_DH_Percentiles_12(3) Female_FCF_DH_Percentiles_13(3) Female_FCF_DH_Percentiles_14(3) ...
    Female_FCF_DH_Percentiles_15(3) Female_FCF_DH_Percentiles_16(3) Female_FCF_DH_Percentiles_17(3) Female_FCF_DH_Percentiles_18(3) Female_FCF_DH_Percentiles_19(3) ...
    Female_FCF_DH_Percentiles_20(3) Female_FCF_DH_Percentiles_21(3)];
Female_50th = [Female_FCF_DH_Percentiles_6(4) Female_FCF_DH_Percentiles_7(4) Female_FCF_DH_Percentiles_8(4) Female_FCF_DH_Percentiles_9(4) ...
    Female_FCF_DH_Percentiles_10(4) Female_FCF_DH_Percentiles_11(4) Female_FCF_DH_Percentiles_12(4) Female_FCF_DH_Percentiles_13(4) Female_FCF_DH_Percentiles_14(4) ...
    Female_FCF_DH_Percentiles_15(4) Female_FCF_DH_Percentiles_16(4) Female_FCF_DH_Percentiles_17(4) Female_FCF_DH_Percentiles_18(4) Female_FCF_DH_Percentiles_19(4) ...
    Female_FCF_DH_Percentiles_20(4) Female_FCF_DH_Percentiles_21(4)];
Female_75th = [Female_FCF_DH_Percentiles_6(5) Female_FCF_DH_Percentiles_7(5) Female_FCF_DH_Percentiles_8(5) Female_FCF_DH_Percentiles_9(5) ...
    Female_FCF_DH_Percentiles_10(5) Female_FCF_DH_Percentiles_11(5) Female_FCF_DH_Percentiles_12(5) Female_FCF_DH_Percentiles_13(5) Female_FCF_DH_Percentiles_14(5) ...
    Female_FCF_DH_Percentiles_15(5) Female_FCF_DH_Percentiles_16(5) Female_FCF_DH_Percentiles_17(5) Female_FCF_DH_Percentiles_18(5) Female_FCF_DH_Percentiles_19(5) ...
    Female_FCF_DH_Percentiles_20(5) Female_FCF_DH_Percentiles_21(5)];
Female_90th = [Female_FCF_DH_Percentiles_6(6) Female_FCF_DH_Percentiles_7(6) Female_FCF_DH_Percentiles_8(6) Female_FCF_DH_Percentiles_9(6) ...
    Female_FCF_DH_Percentiles_10(6) Female_FCF_DH_Percentiles_11(6) Female_FCF_DH_Percentiles_12(6) Female_FCF_DH_Percentiles_13(6) Female_FCF_DH_Percentiles_14(6) ...
    Female_FCF_DH_Percentiles_15(6) Female_FCF_DH_Percentiles_16(6) Female_FCF_DH_Percentiles_17(6) Female_FCF_DH_Percentiles_18(6) Female_FCF_DH_Percentiles_19(6) ...
    Female_FCF_DH_Percentiles_20(6) Female_FCF_DH_Percentiles_21(6)];
Female_95th = [Female_FCF_DH_Percentiles_6(7) Female_FCF_DH_Percentiles_7(7) Female_FCF_DH_Percentiles_8(7) Female_FCF_DH_Percentiles_9(7) ...
    Female_FCF_DH_Percentiles_10(7) Female_FCF_DH_Percentiles_11(7) Female_FCF_DH_Percentiles_12(7) Female_FCF_DH_Percentiles_13(7) Female_FCF_DH_Percentiles_14(7) ...
    Female_FCF_DH_Percentiles_15(7) Female_FCF_DH_Percentiles_16(7) Female_FCF_DH_Percentiles_17(7) Female_FCF_DH_Percentiles_18(7) Female_FCF_DH_Percentiles_19(7) ...
    Female_FCF_DH_Percentiles_20(7) Female_FCF_DH_Percentiles_21(7)];
Female_Average = [mean(Female_data_6(:,3)) mean(Female_data_7(:,3)) mean(Female_data_8(:,3)) mean(Female_data_9(:,3)) ...
    mean(Female_data_10(:,3)) mean(Female_data_11(:,3)) mean(Female_data_12(:,3)) mean(Female_data_13(:,3)) mean(Female_data_14(:,3)) mean(Female_data_15(:,3)) ...
    mean(Female_data_16(:,3)) mean(Female_data_17(:,3)) mean(Female_data_18(:,3)) mean(Female_data_19(:,3)) mean(Female_data_20(:,3)) mean(Female_data_21(:,3))];

%
XX = [Female_age Female_age(end:-1:1)];
YY = [Female_5th Female_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_10th Female_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_25th Female_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Female_age,Female_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Female_age,Female_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Female_age,Female_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Female_age,Female_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Female_age,Female_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Female_age,Female_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Female_age,Female_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Female_age,Female_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);

% For male
subplot(3,5,13)
hold on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlim([5 22]);
ylim([10 40]);
title('Male');
xlabel('Age (yr)');
ylabel('FCF (cm)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [10.5 10.5 40 40];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [10.5 10.5 40 40];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [10.5 10.5 40 40];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [10.5 10.5 40 40];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Male_data);
Temp_data = [];
for i = 1:M
    if Male_data(i,4) == 6
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_6(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_6(7)
            Temp_data = [Temp_data;6 Male_data(i,5)];
        end        
    end

    if Male_data(i,4) == 7
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_7(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_7(7)
            Temp_data = [Temp_data;7 Male_data(i,5)];
        end        
    end

    if Male_data(i,4) == 8
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_8(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_8(7)
            Temp_data = [Temp_data;8 Male_data(i,5)];
        end        
    end

    if Male_data(i,4) == 9
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_9(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_9(7)
            Temp_data = [Temp_data;9 Male_data(i,5)];
        end        
    end

    if Male_data(i,4) == 10
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_10(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_10(7)
            Temp_data = [Temp_data;10 Male_data(i,5)];
        end        
    end

    if Male_data(i,4) == 11
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_11(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_11(7)
            Temp_data = [Temp_data;11 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 12
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_12(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_12(7)
            Temp_data = [Temp_data;12 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 13
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_13(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_13(7)
            Temp_data = [Temp_data;13 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 14
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_14(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_14(7)
            Temp_data = [Temp_data;14 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 15
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_15(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_15(7)
            Temp_data = [Temp_data;15 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 16
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_16(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_16(7)
            Temp_data = [Temp_data;16 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 17
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_17(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_17(7)
            Temp_data = [Temp_data;17 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 18
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_18(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_18(7)
            Temp_data = [Temp_data;18 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 19
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_19(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_19(7)
            Temp_data = [Temp_data;19 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 20
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_20(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_20(7)
            Temp_data = [Temp_data;20 Male_data(i,5)];
        end        
    end
    
    if Male_data(i,4) == 21
        if Male_data(i,5)<= Male_FCF_DH_Percentiles_21(1) || Male_data(i,5)>= Male_FCF_DH_Percentiles_21(7)
            Temp_data = [Temp_data;21 Male_data(i,5)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Male_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Male_5th = [Male_FCF_DH_Percentiles_6(1) Male_FCF_DH_Percentiles_7(1) Male_FCF_DH_Percentiles_8(1) Male_FCF_DH_Percentiles_9(1) ...
    Male_FCF_DH_Percentiles_10(1) Male_FCF_DH_Percentiles_11(1) Male_FCF_DH_Percentiles_12(1) Male_FCF_DH_Percentiles_13(1) Male_FCF_DH_Percentiles_14(1) ...
    Male_FCF_DH_Percentiles_15(1) Male_FCF_DH_Percentiles_16(1) Male_FCF_DH_Percentiles_17(1) Male_FCF_DH_Percentiles_18(1) Male_FCF_DH_Percentiles_19(1) ...
    Male_FCF_DH_Percentiles_20(1) Male_FCF_DH_Percentiles_21(1)];
Male_10th = [Male_FCF_DH_Percentiles_6(2) Male_FCF_DH_Percentiles_7(2) Male_FCF_DH_Percentiles_8(2) Male_FCF_DH_Percentiles_9(2) ...
    Male_FCF_DH_Percentiles_10(2) Male_FCF_DH_Percentiles_11(2) Male_FCF_DH_Percentiles_12(2) Male_FCF_DH_Percentiles_13(2) Male_FCF_DH_Percentiles_14(2) ...
    Male_FCF_DH_Percentiles_15(2) Male_FCF_DH_Percentiles_16(2) Male_FCF_DH_Percentiles_17(2) Male_FCF_DH_Percentiles_18(2) Male_FCF_DH_Percentiles_19(2) ...
    Male_FCF_DH_Percentiles_20(2) Male_FCF_DH_Percentiles_21(2)];
Male_25th = [Male_FCF_DH_Percentiles_6(3) Male_FCF_DH_Percentiles_7(3) Male_FCF_DH_Percentiles_8(3) Male_FCF_DH_Percentiles_9(3) ...
    Male_FCF_DH_Percentiles_10(3) Male_FCF_DH_Percentiles_11(3) Male_FCF_DH_Percentiles_12(3) Male_FCF_DH_Percentiles_13(3) Male_FCF_DH_Percentiles_14(3) ...
    Male_FCF_DH_Percentiles_15(3) Male_FCF_DH_Percentiles_16(3) Male_FCF_DH_Percentiles_17(3) Male_FCF_DH_Percentiles_18(3) Male_FCF_DH_Percentiles_19(3) ...
    Male_FCF_DH_Percentiles_20(3) Male_FCF_DH_Percentiles_21(3)];
Male_50th = [Male_FCF_DH_Percentiles_6(4) Male_FCF_DH_Percentiles_7(4) Male_FCF_DH_Percentiles_8(4) Male_FCF_DH_Percentiles_9(4) ...
    Male_FCF_DH_Percentiles_10(4) Male_FCF_DH_Percentiles_11(4) Male_FCF_DH_Percentiles_12(4) Male_FCF_DH_Percentiles_13(4) Male_FCF_DH_Percentiles_14(4) ...
    Male_FCF_DH_Percentiles_15(4) Male_FCF_DH_Percentiles_16(4) Male_FCF_DH_Percentiles_17(4) Male_FCF_DH_Percentiles_18(4) Male_FCF_DH_Percentiles_19(4) ...
    Male_FCF_DH_Percentiles_20(4) Male_FCF_DH_Percentiles_21(4)];
Male_75th = [Male_FCF_DH_Percentiles_6(5) Male_FCF_DH_Percentiles_7(5) Male_FCF_DH_Percentiles_8(5) Male_FCF_DH_Percentiles_9(5) ...
    Male_FCF_DH_Percentiles_10(5) Male_FCF_DH_Percentiles_11(5) Male_FCF_DH_Percentiles_12(5) Male_FCF_DH_Percentiles_13(5) Male_FCF_DH_Percentiles_14(5) ...
    Male_FCF_DH_Percentiles_15(5) Male_FCF_DH_Percentiles_16(5) Male_FCF_DH_Percentiles_17(5) Male_FCF_DH_Percentiles_18(5) Male_FCF_DH_Percentiles_19(5) ...
    Male_FCF_DH_Percentiles_20(5) Male_FCF_DH_Percentiles_21(5)];
Male_90th = [Male_FCF_DH_Percentiles_6(6) Male_FCF_DH_Percentiles_7(6) Male_FCF_DH_Percentiles_8(6) Male_FCF_DH_Percentiles_9(6) ...
    Male_FCF_DH_Percentiles_10(6) Male_FCF_DH_Percentiles_11(6) Male_FCF_DH_Percentiles_12(6) Male_FCF_DH_Percentiles_13(6) Male_FCF_DH_Percentiles_14(6) ...
    Male_FCF_DH_Percentiles_15(6) Male_FCF_DH_Percentiles_16(6) Male_FCF_DH_Percentiles_17(6) Male_FCF_DH_Percentiles_18(6) Male_FCF_DH_Percentiles_19(6) ...
    Male_FCF_DH_Percentiles_20(6) Male_FCF_DH_Percentiles_21(6)];
Male_95th = [Male_FCF_DH_Percentiles_6(7) Male_FCF_DH_Percentiles_7(7) Male_FCF_DH_Percentiles_8(7) Male_FCF_DH_Percentiles_9(7) ...
    Male_FCF_DH_Percentiles_10(7) Male_FCF_DH_Percentiles_11(7) Male_FCF_DH_Percentiles_12(7) Male_FCF_DH_Percentiles_13(7) Male_FCF_DH_Percentiles_14(7) ...
    Male_FCF_DH_Percentiles_15(7) Male_FCF_DH_Percentiles_16(7) Male_FCF_DH_Percentiles_17(7) Male_FCF_DH_Percentiles_18(7) Male_FCF_DH_Percentiles_19(7) ...
    Male_FCF_DH_Percentiles_20(7) Male_FCF_DH_Percentiles_21(7)];
Male_Average = [mean(Male_data_6(:,3)) mean(Male_data_7(:,3)) mean(Male_data_8(:,3)) mean(Male_data_9(:,3)) ...
    mean(Male_data_10(:,3)) mean(Male_data_11(:,3)) mean(Male_data_12(:,3)) mean(Male_data_13(:,3)) mean(Male_data_14(:,3)) mean(Male_data_15(:,3)) ...
    mean(Male_data_16(:,3)) mean(Male_data_17(:,3)) mean(Male_data_18(:,3)) mean(Male_data_19(:,3)) mean(Male_data_20(:,3)) mean(Male_data_21(:,3))];

%
XX = [Male_age Male_age(end:-1:1)];
YY = [Male_5th Male_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_10th Male_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_25th Male_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Male_age,Male_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Male_age,Male_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Male_age,Male_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Male_age,Male_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Male_age,Male_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Male_age,Male_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Male_age,Male_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Male_age,Male_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);
%% HGS of DH
% For female
Female_HGS_DH_Percentiles_6 = prctile(Female_data_6(:,6),My_p);
Female_HGS_DH_Percentiles_7 = prctile(Female_data_7(:,6),My_p);
Female_HGS_DH_Percentiles_8 = prctile(Female_data_8(:,6),My_p);
Female_HGS_DH_Percentiles_9 = prctile(Female_data_9(:,6),My_p);
Female_HGS_DH_Percentiles_10 = prctile(Female_data_10(:,6),My_p);
Female_HGS_DH_Percentiles_11 = prctile(Female_data_11(:,6),My_p);
Female_HGS_DH_Percentiles_12 = prctile(Female_data_12(:,6),My_p);
Female_HGS_DH_Percentiles_13 = prctile(Female_data_13(:,6),My_p);
Female_HGS_DH_Percentiles_14 = prctile(Female_data_14(:,6),My_p);
Female_HGS_DH_Percentiles_15 = prctile(Female_data_15(:,6),My_p);
Female_HGS_DH_Percentiles_16 = prctile(Female_data_16(:,6),My_p);
Female_HGS_DH_Percentiles_17 = prctile(Female_data_17(:,6),My_p);
Female_HGS_DH_Percentiles_18 = prctile(Female_data_18(:,6),My_p);
Female_HGS_DH_Percentiles_19 = prctile(Female_data_19(:,6),My_p);
Female_HGS_DH_Percentiles_20 = prctile(Female_data_20(:,6),My_p);
Female_HGS_DH_Percentiles_21 = prctile(Female_data_21(:,6),My_p);
Female_HGS_DH_Percentiles_ALL = prctile(Female_data(:,8),My_p);

% For male-主手握力
Male_HGS_DH_Percentiles_6 = prctile(Male_data_6(:,6),My_p);
Male_HGS_DH_Percentiles_7 = prctile(Male_data_7(:,6),My_p);
Male_HGS_DH_Percentiles_8 = prctile(Male_data_8(:,6),My_p);
Male_HGS_DH_Percentiles_9 = prctile(Male_data_9(:,6),My_p);
Male_HGS_DH_Percentiles_10 = prctile(Male_data_10(:,6),My_p);
Male_HGS_DH_Percentiles_11 = prctile(Male_data_11(:,6),My_p);
Male_HGS_DH_Percentiles_12 = prctile(Male_data_12(:,6),My_p);
Male_HGS_DH_Percentiles_13 = prctile(Male_data_13(:,6),My_p);
Male_HGS_DH_Percentiles_14 = prctile(Male_data_14(:,6),My_p);
Male_HGS_DH_Percentiles_15 = prctile(Male_data_15(:,6),My_p);
Male_HGS_DH_Percentiles_16 = prctile(Male_data_16(:,6),My_p);
Male_HGS_DH_Percentiles_17 = prctile(Male_data_17(:,6),My_p);
Male_HGS_DH_Percentiles_18 = prctile(Male_data_18(:,6),My_p);
Male_HGS_DH_Percentiles_19 = prctile(Male_data_19(:,6),My_p);
Male_HGS_DH_Percentiles_20 = prctile(Male_data_20(:,6),My_p);
Male_HGS_DH_Percentiles_21 = prctile(Male_data_21(:,6),My_p);
Male_HGS_DH_Percentiles_ALL = prctile(Male_data(:,8),My_p);

% Data outside the 5%~95% range
% For female
subplot(3,5,9)
hold on
%box on
%set(gca,'YGrid','on')
% grid on
xlim([5 22]);
ylim([0 50]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Female');
xlabel('Age (yr)');
ylabel('mHGS (Kg)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [0.5 0.5 50 50];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [0.5 0.5 50 50];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [0.5 0.5 50 50];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [0.5 0.5 50 50];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Female_data);
Temp_data = [];
for i = 1:M
    if Female_data(i,4) == 6
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_6(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_6(7)
            Temp_data = [Temp_data;6 Female_data(i,8)];
        end        
    end

    if Female_data(i,4) == 7
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_7(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_7(7)
            Temp_data = [Temp_data;7 Female_data(i,8)];
        end        
    end

    if Female_data(i,4) == 8
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_8(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_8(7)
            Temp_data = [Temp_data;8 Female_data(i,8)];
        end        
    end

    if Female_data(i,4) == 9
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_9(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_9(7)
            Temp_data = [Temp_data;9 Female_data(i,8)];
        end        
    end

    if Female_data(i,4) == 10
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_10(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_10(7)
            Temp_data = [Temp_data;10 Female_data(i,8)];
        end        
    end

    if Female_data(i,4) == 11
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_11(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_11(7)
            Temp_data = [Temp_data;11 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 12
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_12(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_12(7)
            Temp_data = [Temp_data;12 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 13
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_13(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_13(7)
            Temp_data = [Temp_data;13 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 14
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_14(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_14(7)
            Temp_data = [Temp_data;14 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 15
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_15(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_15(7)
            Temp_data = [Temp_data;15 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 16
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_16(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_16(7)
            Temp_data = [Temp_data;16 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 17
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_17(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_17(7)
            Temp_data = [Temp_data;17 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 18
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_18(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_18(7)
            Temp_data = [Temp_data;18 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 19
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_19(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_19(7)
            Temp_data = [Temp_data;19 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 20
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_20(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_20(7)
            Temp_data = [Temp_data;20 Female_data(i,8)];
        end        
    end
    
    if Female_data(i,4) == 21
        if Female_data(i,8)<= Female_HGS_DH_Percentiles_21(1) || Female_data(i,8)>= Female_HGS_DH_Percentiles_21(7)
            Temp_data = [Temp_data;21 Female_data(i,8)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Female_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Female_5th = [Female_HGS_DH_Percentiles_6(1) Female_HGS_DH_Percentiles_7(1) Female_HGS_DH_Percentiles_8(1) Female_HGS_DH_Percentiles_9(1) ...
    Female_HGS_DH_Percentiles_10(1) Female_HGS_DH_Percentiles_11(1) Female_HGS_DH_Percentiles_12(1) Female_HGS_DH_Percentiles_13(1) Female_HGS_DH_Percentiles_14(1) ...
    Female_HGS_DH_Percentiles_15(1) Female_HGS_DH_Percentiles_16(1) Female_HGS_DH_Percentiles_17(1) Female_HGS_DH_Percentiles_18(1) Female_HGS_DH_Percentiles_19(1) ...
    Female_HGS_DH_Percentiles_20(1) Female_HGS_DH_Percentiles_21(1)];
Female_10th = [Female_HGS_DH_Percentiles_6(2) Female_HGS_DH_Percentiles_7(2) Female_HGS_DH_Percentiles_8(2) Female_HGS_DH_Percentiles_9(2) ...
    Female_HGS_DH_Percentiles_10(2) Female_HGS_DH_Percentiles_11(2) Female_HGS_DH_Percentiles_12(2) Female_HGS_DH_Percentiles_13(2) Female_HGS_DH_Percentiles_14(2) ...
    Female_HGS_DH_Percentiles_15(2) Female_HGS_DH_Percentiles_16(2) Female_HGS_DH_Percentiles_17(2) Female_HGS_DH_Percentiles_18(2) Female_HGS_DH_Percentiles_19(2) ...
    Female_HGS_DH_Percentiles_20(2) Female_HGS_DH_Percentiles_21(2)];
Female_25th = [Female_HGS_DH_Percentiles_6(3) Female_HGS_DH_Percentiles_7(3) Female_HGS_DH_Percentiles_8(3) Female_HGS_DH_Percentiles_9(3) ...
    Female_HGS_DH_Percentiles_10(3) Female_HGS_DH_Percentiles_11(3) Female_HGS_DH_Percentiles_12(3) Female_HGS_DH_Percentiles_13(3) Female_HGS_DH_Percentiles_14(3) ...
    Female_HGS_DH_Percentiles_15(3) Female_HGS_DH_Percentiles_16(3) Female_HGS_DH_Percentiles_17(3) Female_HGS_DH_Percentiles_18(3) Female_HGS_DH_Percentiles_19(3) ...
    Female_HGS_DH_Percentiles_20(3) Female_HGS_DH_Percentiles_21(3)];
Female_50th = [Female_HGS_DH_Percentiles_6(4) Female_HGS_DH_Percentiles_7(4) Female_HGS_DH_Percentiles_8(4) Female_HGS_DH_Percentiles_9(4) ...
    Female_HGS_DH_Percentiles_10(4) Female_HGS_DH_Percentiles_11(4) Female_HGS_DH_Percentiles_12(4) Female_HGS_DH_Percentiles_13(4) Female_HGS_DH_Percentiles_14(4) ...
    Female_HGS_DH_Percentiles_15(4) Female_HGS_DH_Percentiles_16(4) Female_HGS_DH_Percentiles_17(4) Female_HGS_DH_Percentiles_18(4) Female_HGS_DH_Percentiles_19(4) ...
    Female_HGS_DH_Percentiles_20(4) Female_HGS_DH_Percentiles_21(4)];
Female_75th = [Female_HGS_DH_Percentiles_6(5) Female_HGS_DH_Percentiles_7(5) Female_HGS_DH_Percentiles_8(5) Female_HGS_DH_Percentiles_9(5) ...
    Female_HGS_DH_Percentiles_10(5) Female_HGS_DH_Percentiles_11(5) Female_HGS_DH_Percentiles_12(5) Female_HGS_DH_Percentiles_13(5) Female_HGS_DH_Percentiles_14(5) ...
    Female_HGS_DH_Percentiles_15(5) Female_HGS_DH_Percentiles_16(5) Female_HGS_DH_Percentiles_17(5) Female_HGS_DH_Percentiles_18(5) Female_HGS_DH_Percentiles_19(5) ...
    Female_HGS_DH_Percentiles_20(5) Female_HGS_DH_Percentiles_21(5)];
Female_90th = [Female_HGS_DH_Percentiles_6(6) Female_HGS_DH_Percentiles_7(6) Female_HGS_DH_Percentiles_8(6) Female_HGS_DH_Percentiles_9(6) ...
    Female_HGS_DH_Percentiles_10(6) Female_HGS_DH_Percentiles_11(6) Female_HGS_DH_Percentiles_12(6) Female_HGS_DH_Percentiles_13(6) Female_HGS_DH_Percentiles_14(6) ...
    Female_HGS_DH_Percentiles_15(6) Female_HGS_DH_Percentiles_16(6) Female_HGS_DH_Percentiles_17(6) Female_HGS_DH_Percentiles_18(6) Female_HGS_DH_Percentiles_19(6) ...
    Female_HGS_DH_Percentiles_20(6) Female_HGS_DH_Percentiles_21(6)];
Female_95th = [Female_HGS_DH_Percentiles_6(7) Female_HGS_DH_Percentiles_7(7) Female_HGS_DH_Percentiles_8(7) Female_HGS_DH_Percentiles_9(7) ...
    Female_HGS_DH_Percentiles_10(7) Female_HGS_DH_Percentiles_11(7) Female_HGS_DH_Percentiles_12(7) Female_HGS_DH_Percentiles_13(7) Female_HGS_DH_Percentiles_14(7) ...
    Female_HGS_DH_Percentiles_15(7) Female_HGS_DH_Percentiles_16(7) Female_HGS_DH_Percentiles_17(7) Female_HGS_DH_Percentiles_18(7) Female_HGS_DH_Percentiles_19(7) ...
    Female_HGS_DH_Percentiles_20(7) Female_HGS_DH_Percentiles_21(7)];
Female_Average = [mean(Female_data_6(:,6)) mean(Female_data_7(:,6)) mean(Female_data_8(:,6)) mean(Female_data_9(:,6)) ...
    mean(Female_data_10(:,6)) mean(Female_data_11(:,6)) mean(Female_data_12(:,6)) mean(Female_data_13(:,6)) mean(Female_data_14(:,6)) mean(Female_data_15(:,6)) ...
    mean(Female_data_16(:,6)) mean(Female_data_17(:,6)) mean(Female_data_18(:,6)) mean(Female_data_19(:,6)) mean(Female_data_20(:,6)) mean(Female_data_21(:,6))];
%
XX = [Female_age Female_age(end:-1:1)];
YY = [Female_5th Female_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_10th Female_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Female_25th Female_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Female_age,Female_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Female_age,Female_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Female_age,Female_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Female_age,Female_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Female_age,Female_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Female_age,Female_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Female_age,Female_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Female_age,Female_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);

% For male
subplot(3,5,14)
hold on
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','left')
xlim([5 22]);
ylim([0 80]);
title('Male');
xlabel('Age (yr)');
ylabel('mHGS (Kg)');

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [1 1 80 80];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [1 1 80 80];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [1 1 80 80];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [1 1 80 80];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

[M N] = size(Male_data);
Temp_data = [];
for i = 1:M
    if Male_data(i,4) == 6
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_6(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_6(7)
            Temp_data = [Temp_data;6 Male_data(i,8)];
        end        
    end

    if Male_data(i,4) == 7
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_7(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_7(7)
            Temp_data = [Temp_data;7 Male_data(i,8)];
        end        
    end

    if Male_data(i,4) == 8
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_8(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_8(7)
            Temp_data = [Temp_data;8 Male_data(i,8)];
        end        
    end

    if Male_data(i,4) == 9
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_9(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_9(7)
            Temp_data = [Temp_data;9 Male_data(i,8)];
        end        
    end

    if Male_data(i,4) == 10
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_10(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_10(7)
            Temp_data = [Temp_data;10 Male_data(i,8)];
        end        
    end

    if Male_data(i,4) == 11
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_11(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_11(7)
            Temp_data = [Temp_data;11 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 12
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_12(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_12(7)
            Temp_data = [Temp_data;12 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 13
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_13(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_13(7)
            Temp_data = [Temp_data;13 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 14
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_14(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_14(7)
            Temp_data = [Temp_data;14 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 15
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_15(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_15(7)
            Temp_data = [Temp_data;15 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 16
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_16(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_16(7)
            Temp_data = [Temp_data;16 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 17
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_17(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_17(7)
            Temp_data = [Temp_data;17 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 18
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_18(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_18(7)
            Temp_data = [Temp_data;18 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 19
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_19(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_19(7)
            Temp_data = [Temp_data;19 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 20
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_20(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_20(7)
            Temp_data = [Temp_data;20 Male_data(i,8)];
        end        
    end
    
    if Male_data(i,4) == 21
        if Male_data(i,8)<= Male_HGS_DH_Percentiles_21(1) || Male_data(i,8)>= Male_HGS_DH_Percentiles_21(7)
            Temp_data = [Temp_data;21 Male_data(i,8)];
        end        
    end
    
end
H0 = plot(Temp_data(:,1),Temp_data(:,2),'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
Male_age = [6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21];
Male_5th = [Male_HGS_DH_Percentiles_6(1) Male_HGS_DH_Percentiles_7(1) Male_HGS_DH_Percentiles_8(1) Male_HGS_DH_Percentiles_9(1) ...
    Male_HGS_DH_Percentiles_10(1) Male_HGS_DH_Percentiles_11(1) Male_HGS_DH_Percentiles_12(1) Male_HGS_DH_Percentiles_13(1) Male_HGS_DH_Percentiles_14(1) ...
    Male_HGS_DH_Percentiles_15(1) Male_HGS_DH_Percentiles_16(1) Male_HGS_DH_Percentiles_17(1) Male_HGS_DH_Percentiles_18(1) Male_HGS_DH_Percentiles_19(1) ...
    Male_HGS_DH_Percentiles_20(1) Male_HGS_DH_Percentiles_21(1)];
Male_10th = [Male_HGS_DH_Percentiles_6(2) Male_HGS_DH_Percentiles_7(2) Male_HGS_DH_Percentiles_8(2) Male_HGS_DH_Percentiles_9(2) ...
    Male_HGS_DH_Percentiles_10(2) Male_HGS_DH_Percentiles_11(2) Male_HGS_DH_Percentiles_12(2) Male_HGS_DH_Percentiles_13(2) Male_HGS_DH_Percentiles_14(2) ...
    Male_HGS_DH_Percentiles_15(2) Male_HGS_DH_Percentiles_16(2) Male_HGS_DH_Percentiles_17(2) Male_HGS_DH_Percentiles_18(2) Male_HGS_DH_Percentiles_19(2) ...
    Male_HGS_DH_Percentiles_20(2) Male_HGS_DH_Percentiles_21(2)];
Male_25th = [Male_HGS_DH_Percentiles_6(3) Male_HGS_DH_Percentiles_7(3) Male_HGS_DH_Percentiles_8(3) Male_HGS_DH_Percentiles_9(3) ...
    Male_HGS_DH_Percentiles_10(3) Male_HGS_DH_Percentiles_11(3) Male_HGS_DH_Percentiles_12(3) Male_HGS_DH_Percentiles_13(3) Male_HGS_DH_Percentiles_14(3) ...
    Male_HGS_DH_Percentiles_15(3) Male_HGS_DH_Percentiles_16(3) Male_HGS_DH_Percentiles_17(3) Male_HGS_DH_Percentiles_18(3) Male_HGS_DH_Percentiles_19(3) ...
    Male_HGS_DH_Percentiles_20(3) Male_HGS_DH_Percentiles_21(3)];
Male_50th = [Male_HGS_DH_Percentiles_6(4) Male_HGS_DH_Percentiles_7(4) Male_HGS_DH_Percentiles_8(4) Male_HGS_DH_Percentiles_9(4) ...
    Male_HGS_DH_Percentiles_10(4) Male_HGS_DH_Percentiles_11(4) Male_HGS_DH_Percentiles_12(4) Male_HGS_DH_Percentiles_13(4) Male_HGS_DH_Percentiles_14(4) ...
    Male_HGS_DH_Percentiles_15(4) Male_HGS_DH_Percentiles_16(4) Male_HGS_DH_Percentiles_17(4) Male_HGS_DH_Percentiles_18(4) Male_HGS_DH_Percentiles_19(4) ...
    Male_HGS_DH_Percentiles_20(4) Male_HGS_DH_Percentiles_21(4)];
Male_75th = [Male_HGS_DH_Percentiles_6(5) Male_HGS_DH_Percentiles_7(5) Male_HGS_DH_Percentiles_8(5) Male_HGS_DH_Percentiles_9(5) ...
    Male_HGS_DH_Percentiles_10(5) Male_HGS_DH_Percentiles_11(5) Male_HGS_DH_Percentiles_12(5) Male_HGS_DH_Percentiles_13(5) Male_HGS_DH_Percentiles_14(5) ...
    Male_HGS_DH_Percentiles_15(5) Male_HGS_DH_Percentiles_16(5) Male_HGS_DH_Percentiles_17(5) Male_HGS_DH_Percentiles_18(5) Male_HGS_DH_Percentiles_19(5) ...
    Male_HGS_DH_Percentiles_20(5) Male_HGS_DH_Percentiles_21(5)];
Male_90th = [Male_HGS_DH_Percentiles_6(6) Male_HGS_DH_Percentiles_7(6) Male_HGS_DH_Percentiles_8(6) Male_HGS_DH_Percentiles_9(6) ...
    Male_HGS_DH_Percentiles_10(6) Male_HGS_DH_Percentiles_11(6) Male_HGS_DH_Percentiles_12(6) Male_HGS_DH_Percentiles_13(6) Male_HGS_DH_Percentiles_14(6) ...
    Male_HGS_DH_Percentiles_15(6) Male_HGS_DH_Percentiles_16(6) Male_HGS_DH_Percentiles_17(6) Male_HGS_DH_Percentiles_18(6) Male_HGS_DH_Percentiles_19(6) ...
    Male_HGS_DH_Percentiles_20(6) Male_HGS_DH_Percentiles_21(6)];
Male_95th = [Male_HGS_DH_Percentiles_6(7) Male_HGS_DH_Percentiles_7(7) Male_HGS_DH_Percentiles_8(7) Male_HGS_DH_Percentiles_9(7) ...
    Male_HGS_DH_Percentiles_10(7) Male_HGS_DH_Percentiles_11(7) Male_HGS_DH_Percentiles_12(7) Male_HGS_DH_Percentiles_13(7) Male_HGS_DH_Percentiles_14(7) ...
    Male_HGS_DH_Percentiles_15(7) Male_HGS_DH_Percentiles_16(7) Male_HGS_DH_Percentiles_17(7) Male_HGS_DH_Percentiles_18(7) Male_HGS_DH_Percentiles_19(7) ...
    Male_HGS_DH_Percentiles_20(7) Male_HGS_DH_Percentiles_21(7)];
Male_Average = [mean(Male_data_6(:,6)) mean(Male_data_7(:,6)) mean(Male_data_8(:,6)) mean(Male_data_9(:,6)) ...
    mean(Male_data_10(:,6)) mean(Male_data_11(:,6)) mean(Male_data_12(:,6)) mean(Male_data_13(:,6)) mean(Male_data_14(:,6)) mean(Male_data_15(:,6)) ...
    mean(Male_data_16(:,6)) mean(Male_data_17(:,6)) mean(Male_data_18(:,6)) mean(Male_data_19(:,6)) mean(Male_data_20(:,6)) mean(Male_data_21(:,6))];
%
XX = [Male_age Male_age(end:-1:1)];
YY = [Male_5th Male_95th(end:-1:1)];
H = fill(XX,YY,Color_4_Fill);
Alpha = 1;
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_10th Male_90th(end:-1:1)];
H = fill(XX,YY,Color_3_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);

YY = [Male_25th Male_75th(end:-1:1)];
H = fill(XX,YY,Color_2_Fill);
set(H,'edgealpha',0,'facealpha',Alpha);
%}
H1 = plot(Male_age,Male_5th,'Color',Color_4,'LineWidth',2);
H2 = plot(Male_age,Male_10th,'Color',Color_3,'LineWidth',2);
H3 = plot(Male_age,Male_25th,'Color',Color_2,'LineWidth',2);
H4 = plot(Male_age,Male_50th,'Color',Color_1,'LineWidth',2);
H5 = plot(Male_age,Male_75th,'Color',Color_2,'LineWidth',2);
H6 = plot(Male_age,Male_90th,'Color',Color_3,'LineWidth',2);
H7 = plot(Male_age,Male_95th,'Color',Color_4,'LineWidth',2);
H8 = plot(Male_age,Male_Average,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); 

%% Legends
subplot(3,5,2)
hold on
xlim([5.5 15.5]);
ylim([0 60]);
ax=gca;
ax.XAxis.Visible = 'off';
ax.YAxis.Visible = 'off';
%set(gca,'XTickLabel',[]);
%set(gca,'xtick',[])
XX = [0 0];
YY = [0 0];
H0 = plot(XX,YY,'o','MarkerSize',5,'MarkerFaceColor','w','Color',Color_Outside,'LineWidth',2);
H1 = plot(XX,YY,'Color',Color_4,'LineWidth',2);
H2 = plot(XX,YY,'Color',Color_3,'LineWidth',2);
H3 = plot(XX,YY,'Color',Color_2,'LineWidth',2);
H4 = plot(XX,YY,'Color',Color_1,'LineWidth',2);
H5 = plot(XX,YY,'Color',Color_2,'LineWidth',2);
H6 = plot(XX,YY,'Color',Color_3,'LineWidth',2);
H7 = plot(XX,YY,'Color',Color_4,'LineWidth',2);
H8 = plot(XX,YY,'-.','MarkerSize',8,'MarkerFaceColor','w','LineWidth',2,'Color',Color_Average); % [231/255 152/255 124/255]);

Legend2 = legend([H0 H7 H6 H5 H4 H3 H2 H1 H8],'Others   ','P95th   ','P90th   ','P75th   ','P50th','P25th   ','P10th   ','P5th   ','Mean   ',...
    'Location','NorthWest','Orientation','vertical');
set(Legend2,'Box','off','FontName',My_FontName,'FontSize',My_fontSize);

%% Legends
subplot(3,5,15)
hold on
axis equal;
ylim([0 20]);
xlim([0 5]);
ax = gca;
ax.XAxis.Visible = 'off';
%ax.YAxis.Visible = 'off';
yyy = 2.5:5:17.5;
My_YTicklabel_1 = {'Primary school','Junior high school','High school','College'};
set(gca,'YTick',yyy,'YTicklabel',My_YTicklabel_1);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','right')

XX_Fill = [0 4.9 4.9 0]; % primary school
YY_Fill = [0 0 5 5];
HH = fill(XX_Fill,YY_Fill,Color_Fill_1);
set(HH,'edgealpha',0,'facealpha',Alpha);
XX_Fill = [0 4.9 4.9 0]; % junior high school
YY_Fill = [5 5 10 10];
HH = fill(XX_Fill,YY_Fill,Color_Fill_2);
set(HH,'edgealpha',0,'facealpha',Alpha);
XX_Fill = [0 4.9 4.9 0]; % high school
YY_Fill = [10 10 15 15];
HH = fill(XX_Fill,YY_Fill,Color_Fill_3);
set(HH,'edgealpha',0,'facealpha',Alpha);
XX_Fill = [0 4.9 4.9 0]; % University
YY_Fill = [15 15 20 20];
HH = fill(XX_Fill,YY_Fill,Color_Fill_4);
set(HH,'edgealpha',0,'facealpha',Alpha);

