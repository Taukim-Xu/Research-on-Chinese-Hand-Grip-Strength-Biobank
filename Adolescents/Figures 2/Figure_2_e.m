%% Source codes for Figure 2(e).
% We calculate the correlation coefficients between HGS and the product 
% of HGS with height, weight, and FCF for DH only.
% HGS VS HGS*Height; HGS VS HGS*Weight; HGS VS HGS*FCF;
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
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
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
%% We calculate the correlation coefficients between HGS and the product of
% HGS with height, weight, and FCF
% For female
% HGS VS HGS*Height
Corr_HGS_vs_HGS_Height_Female = [My_Corr(Female_data_6(:,6),Female_data_6(:,6).*Female_data_6(:,1)) My_Corr(Female_data_7(:,6),Female_data_7(:,6).*Female_data_7(:,1)) My_Corr(Female_data_8(:,6),Female_data_8(:,6).*Female_data_8(:,1)) ...
    My_Corr(Female_data_9(:,6),Female_data_9(:,6).*Female_data_9(:,1)) My_Corr(Female_data_10(:,6),Female_data_10(:,6).*Female_data_10(:,1)) My_Corr(Female_data_11(:,6),Female_data_11(:,6).*Female_data_11(:,1)) ...
    My_Corr(Female_data_12(:,6),Female_data_12(:,6).*Female_data_12(:,1)) My_Corr(Female_data_13(:,6),Female_data_13(:,6).*Female_data_13(:,1)) My_Corr(Female_data_14(:,6),Female_data_14(:,6).*Female_data_14(:,1)) ...
    My_Corr(Female_data_15(:,6),Female_data_15(:,6).*Female_data_15(:,1)) My_Corr(Female_data_16(:,6),Female_data_16(:,6).*Female_data_16(:,1)) My_Corr(Female_data_17(:,6),Female_data_17(:,6).*Female_data_17(:,1)) ...
    My_Corr(Female_data_18(:,6),Female_data_18(:,6).*Female_data_18(:,1)) My_Corr(Female_data_19(:,6),Female_data_19(:,6).*Female_data_19(:,1)) My_Corr(Female_data_20(:,6),Female_data_20(:,6).*Female_data_20(:,1)) ...
    My_Corr(Female_data_21(:,6),Female_data_21(:,6).*Female_data_21(:,1))];
% HGS VS HGS*Weight
Corr_HGS_vs_HGS_Weight_Female = [My_Corr(Female_data_6(:,6),Female_data_6(:,6).*Female_data_6(:,2)) My_Corr(Female_data_7(:,6),Female_data_7(:,6).*Female_data_7(:,2)) My_Corr(Female_data_8(:,6),Female_data_8(:,6).*Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,6),Female_data_9(:,6).*Female_data_9(:,2)) My_Corr(Female_data_10(:,6),Female_data_10(:,6).*Female_data_10(:,2)) My_Corr(Female_data_11(:,6),Female_data_11(:,6).*Female_data_11(:,2)) ...
    My_Corr(Female_data_12(:,6),Female_data_12(:,6).*Female_data_12(:,2)) My_Corr(Female_data_13(:,6),Female_data_13(:,6).*Female_data_13(:,2)) My_Corr(Female_data_14(:,6),Female_data_14(:,6).*Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,6),Female_data_15(:,6).*Female_data_15(:,2)) My_Corr(Female_data_16(:,6),Female_data_16(:,6).*Female_data_16(:,2)) My_Corr(Female_data_17(:,6),Female_data_17(:,6).*Female_data_17(:,2)) ...
    My_Corr(Female_data_18(:,6),Female_data_18(:,6).*Female_data_18(:,2)) My_Corr(Female_data_19(:,6),Female_data_19(:,6).*Female_data_19(:,2)) My_Corr(Female_data_20(:,6),Female_data_20(:,6).*Female_data_20(:,2)) ...
    My_Corr(Female_data_21(:,6),Female_data_21(:,6).*Female_data_21(:,2))];
% HGS VS HGS*FCF
Corr_HGS_vs_HGS_FCF_Female = [My_Corr(Female_data_6(:,6),Female_data_6(:,6).*Female_data_6(:,3)) My_Corr(Female_data_7(:,6),Female_data_7(:,6).*Female_data_7(:,3)) My_Corr(Female_data_8(:,6),Female_data_8(:,6).*Female_data_8(:,3)) ...
    My_Corr(Female_data_9(:,6),Female_data_9(:,6).*Female_data_9(:,3)) My_Corr(Female_data_10(:,6),Female_data_10(:,6).*Female_data_10(:,3)) My_Corr(Female_data_11(:,6),Female_data_11(:,6).*Female_data_11(:,3)) ...
    My_Corr(Female_data_12(:,6),Female_data_12(:,6).*Female_data_12(:,3)) My_Corr(Female_data_13(:,6),Female_data_13(:,6).*Female_data_13(:,3)) My_Corr(Female_data_14(:,6),Female_data_14(:,6).*Female_data_14(:,3)) ...
    My_Corr(Female_data_15(:,6),Female_data_15(:,6).*Female_data_15(:,3)) My_Corr(Female_data_16(:,6),Female_data_16(:,6).*Female_data_16(:,3)) My_Corr(Female_data_17(:,6),Female_data_17(:,6).*Female_data_17(:,3)) ...
    My_Corr(Female_data_18(:,6),Female_data_18(:,6).*Female_data_18(:,3)) My_Corr(Female_data_19(:,6),Female_data_19(:,6).*Female_data_19(:,3)) My_Corr(Female_data_20(:,6),Female_data_20(:,6).*Female_data_20(:,3)) ...
    My_Corr(Female_data_21(:,6),Female_data_21(:,6).*Female_data_21(:,3))];

% For male
% HGS VS HGS*Height
Corr_HGS_vs_HGS_Height_Male = [My_Corr(Male_data_6(:,6),Male_data_6(:,6).*Male_data_6(:,1)) My_Corr(Male_data_7(:,6),Male_data_7(:,6).*Male_data_7(:,1)) My_Corr(Male_data_8(:,6),Male_data_8(:,6).*Male_data_8(:,1)) ...
    My_Corr(Male_data_9(:,6),Male_data_9(:,6).*Male_data_9(:,1)) My_Corr(Male_data_10(:,6),Male_data_10(:,6).*Male_data_10(:,1)) My_Corr(Male_data_11(:,6),Male_data_11(:,6).*Male_data_11(:,1)) ...
    My_Corr(Male_data_12(:,6),Male_data_12(:,6).*Male_data_12(:,1)) My_Corr(Male_data_13(:,6),Male_data_13(:,6).*Male_data_13(:,1)) My_Corr(Male_data_14(:,6),Male_data_14(:,6).*Male_data_14(:,1)) ...
    My_Corr(Male_data_15(:,6),Male_data_15(:,6).*Male_data_15(:,1)) My_Corr(Male_data_16(:,6),Male_data_16(:,6).*Male_data_16(:,1)) My_Corr(Male_data_17(:,6),Male_data_17(:,6).*Male_data_17(:,1)) ...
    My_Corr(Male_data_18(:,6),Male_data_18(:,6).*Male_data_18(:,1)) My_Corr(Male_data_19(:,6),Male_data_19(:,6).*Male_data_19(:,1)) My_Corr(Male_data_20(:,6),Male_data_20(:,6).*Male_data_20(:,1)) ...
    My_Corr(Male_data_21(:,6),Male_data_21(:,6).*Male_data_21(:,1))];
% HGS VS HGS*Weight
Corr_HGS_vs_HGS_Weight_Male = [My_Corr(Male_data_6(:,6),Male_data_6(:,6).*Male_data_6(:,2)) My_Corr(Male_data_7(:,6),Male_data_7(:,6).*Male_data_7(:,2)) My_Corr(Male_data_8(:,6),Male_data_8(:,6).*Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,6),Male_data_9(:,6).*Male_data_9(:,2)) My_Corr(Male_data_10(:,6),Male_data_10(:,6).*Male_data_10(:,2)) My_Corr(Male_data_11(:,6),Male_data_11(:,6).*Male_data_11(:,2)) ...
    My_Corr(Male_data_12(:,6),Male_data_12(:,6).*Male_data_12(:,2)) My_Corr(Male_data_13(:,6),Male_data_13(:,6).*Male_data_13(:,2)) My_Corr(Male_data_14(:,6),Male_data_14(:,6).*Male_data_14(:,2)) ...
    My_Corr(Male_data_15(:,6),Male_data_15(:,6).*Male_data_15(:,2)) My_Corr(Male_data_16(:,6),Male_data_16(:,6).*Male_data_16(:,2)) My_Corr(Male_data_17(:,6),Male_data_17(:,6).*Male_data_17(:,2)) ...
    My_Corr(Male_data_18(:,6),Male_data_18(:,6).*Male_data_18(:,2)) My_Corr(Male_data_19(:,6),Male_data_19(:,6).*Male_data_19(:,2)) My_Corr(Male_data_20(:,6),Male_data_20(:,6).*Male_data_20(:,2)) ...
    My_Corr(Male_data_21(:,6),Male_data_21(:,6).*Male_data_21(:,2))];
% HGS VS HGS*FCF
Corr_HGS_vs_HGS_FCF_Male = [My_Corr(Male_data_6(:,6),Male_data_6(:,6).*Male_data_6(:,3)) My_Corr(Male_data_7(:,6),Male_data_7(:,6).*Male_data_7(:,3)) My_Corr(Male_data_8(:,6),Male_data_8(:,6).*Male_data_8(:,3)) ...
    My_Corr(Male_data_9(:,6),Male_data_9(:,6).*Male_data_9(:,3)) My_Corr(Male_data_10(:,6),Male_data_10(:,6).*Male_data_10(:,3)) My_Corr(Male_data_11(:,6),Male_data_11(:,6).*Male_data_11(:,3)) ...
    My_Corr(Male_data_12(:,6),Male_data_12(:,6).*Male_data_12(:,3)) My_Corr(Male_data_13(:,6),Male_data_13(:,6).*Male_data_13(:,3)) My_Corr(Male_data_14(:,6),Male_data_14(:,6).*Male_data_14(:,3)) ...
    My_Corr(Male_data_15(:,6),Male_data_15(:,6).*Male_data_15(:,3)) My_Corr(Male_data_16(:,6),Male_data_16(:,6).*Male_data_16(:,3)) My_Corr(Male_data_17(:,6),Male_data_17(:,6).*Male_data_17(:,3)) ...
    My_Corr(Male_data_18(:,6),Male_data_18(:,6).*Male_data_18(:,3)) My_Corr(Male_data_19(:,6),Male_data_19(:,6).*Male_data_19(:,3)) My_Corr(Male_data_20(:,6),Male_data_20(:,6).*Male_data_20(:,3)) ...
    My_Corr(Male_data_21(:,6),Male_data_21(:,6).*Male_data_21(:,3))];

%% We show the results
Age = 6:21;
figure;
% For female
subplot(1,2,1)
hold on;
xlim([5.5 21.5]);
ylim([0.3 1]);
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
% For female
x_data = Age;
y_data = Corr_HGS_vs_HGS_Height_Female; % HGS VS HGS*Height
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
H1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Corr_HGS_vs_HGS_Weight_Female; % HGS VS HGS*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
H2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = Corr_HGS_vs_HGS_FCF_Female; % HGS VS HGS*FCF
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
H3 = plot(x_data,y_data,'*','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

H1 = plot([-1 -1],[0 0],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-1 -1],[0 0],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H3 = plot([-1 -1],[0 0],'-*','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');
Legend = legend([H1 H2 H3],'mHGS VS mHGS*Height','mHGS VS mHGS*Weight','mHGS VS mHGS*FCF','Location','southwest');
set(Legend,'Box','off')

% For male
subplot(1,2,2)
hold on;
xlim([5.5 21.5]);
ylim([0.3 1]);
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

x_data = Age;
y_data = Corr_HGS_vs_HGS_Height_Male; % HGS VS HGS*Height
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Corr_HGS_vs_HGS_Weight_Male; % HGS VS HGS*Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = Corr_HGS_vs_HGS_FCF_Male; % HGS VS HGS*FCF
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
plot(x_data,y_data,'*','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

H1 = plot([-1 -1],[0 0],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-1 -1],[0 0],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H3 = plot([-1 -1],[0 0],'-*','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');
Legend = legend([H1 H2 H3],'mHGS VS mHGS*Height','mHGS VS mHGS*Weight','mHGS VS mHGS*FCF','Location','southwest');
set(Legend,'Box','off')
