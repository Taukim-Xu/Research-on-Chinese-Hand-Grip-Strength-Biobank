%% Source codes for Figure 2(b).
% We calculate and display the correlation between height, weight, and FCF 
% for DH.
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
My_Alpha = 1;
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

%% We calculate the correlation coefficient between height, weight, FCF, and HGS.
% For female
% Height VS Weight
R_Height_Weight_Female = [My_Corr(Female_data_6(:,1),Female_data_6(:,2)) My_Corr(Female_data_7(:,1),Female_data_7(:,2)) My_Corr(Female_data_8(:,1),Female_data_8(:,2)) ...
    My_Corr(Female_data_9(:,1),Female_data_9(:,2)) My_Corr(Female_data_10(:,1),Female_data_10(:,2)) My_Corr(Female_data_11(:,1),Female_data_11(:,2)) ...
    My_Corr(Female_data_12(:,1),Female_data_12(:,2)) My_Corr(Female_data_13(:,1),Female_data_13(:,2)) My_Corr(Female_data_14(:,1),Female_data_14(:,2)) ...
    My_Corr(Female_data_15(:,1),Female_data_15(:,2)) My_Corr(Female_data_16(:,1),Female_data_16(:,2)) My_Corr(Female_data_17(:,1),Female_data_17(:,2)) ...
    My_Corr(Female_data_18(:,1),Female_data_18(:,2)) My_Corr(Female_data_19(:,1),Female_data_19(:,2)) My_Corr(Female_data_20(:,1),Female_data_20(:,2)) ...
    My_Corr(Female_data_21(:,1),Female_data_21(:,2))];
% Height VS FCF of DH
R_Height_FCF_DH_Female = [My_Corr(Female_data_6(:,1),Female_data_6(:,3)) My_Corr(Female_data_7(:,1),Female_data_7(:,3)) My_Corr(Female_data_8(:,1),Female_data_8(:,3)) ...
    My_Corr(Female_data_9(:,1),Female_data_9(:,3)) My_Corr(Female_data_10(:,1),Female_data_10(:,3)) My_Corr(Female_data_11(:,1),Female_data_11(:,3)) ...
    My_Corr(Female_data_12(:,1),Female_data_12(:,3)) My_Corr(Female_data_13(:,1),Female_data_13(:,3)) My_Corr(Female_data_14(:,1),Female_data_14(:,3)) ...
    My_Corr(Female_data_15(:,1),Female_data_15(:,3)) My_Corr(Female_data_16(:,1),Female_data_16(:,3)) My_Corr(Female_data_17(:,1),Female_data_17(:,3)) ...
    My_Corr(Female_data_18(:,1),Female_data_18(:,3)) My_Corr(Female_data_19(:,1),Female_data_19(:,3)) My_Corr(Female_data_20(:,1),Female_data_20(:,3)) ...
    My_Corr(Female_data_21(:,1),Female_data_21(:,3))];
% Weight VS FCF of DH
R_Weight_FCF_DH_Female = [My_Corr(Female_data_6(:,2),Female_data_6(:,3)) My_Corr(Female_data_7(:,2),Female_data_7(:,3)) My_Corr(Female_data_8(:,2),Female_data_8(:,3)) ...
    My_Corr(Female_data_9(:,2),Female_data_9(:,3)) My_Corr(Female_data_10(:,2),Female_data_10(:,3)) My_Corr(Female_data_11(:,2),Female_data_11(:,3)) ...
    My_Corr(Female_data_12(:,2),Female_data_12(:,3)) My_Corr(Female_data_13(:,2),Female_data_13(:,3)) My_Corr(Female_data_14(:,2),Female_data_14(:,3)) ...
    My_Corr(Female_data_15(:,2),Female_data_15(:,3)) My_Corr(Female_data_16(:,2),Female_data_16(:,3)) My_Corr(Female_data_17(:,2),Female_data_17(:,3)) ...
    My_Corr(Female_data_18(:,2),Female_data_18(:,3)) My_Corr(Female_data_19(:,2),Female_data_19(:,3)) My_Corr(Female_data_20(:,2),Female_data_20(:,3)) ...
    My_Corr(Female_data_21(:,2),Female_data_21(:,3))];

% For male
% Height VS Weight
R_Height_Weight_Male = [My_Corr(Male_data_6(:,1),Male_data_6(:,2)) My_Corr(Male_data_7(:,1),Male_data_7(:,2)) My_Corr(Male_data_8(:,1),Male_data_8(:,2)) ...
    My_Corr(Male_data_9(:,1),Male_data_9(:,2)) My_Corr(Male_data_10(:,1),Male_data_10(:,2)) My_Corr(Male_data_11(:,1),Male_data_11(:,2)) ...
    My_Corr(Male_data_12(:,1),Male_data_12(:,2)) My_Corr(Male_data_13(:,1),Male_data_13(:,2)) My_Corr(Male_data_14(:,1),Male_data_14(:,2)) ...
    My_Corr(Male_data_15(:,1),Male_data_15(:,2)) My_Corr(Male_data_16(:,1),Male_data_16(:,2)) My_Corr(Male_data_17(:,1),Male_data_17(:,2)) ...
    My_Corr(Male_data_18(:,1),Male_data_18(:,2)) My_Corr(Male_data_19(:,1),Male_data_19(:,2)) My_Corr(Male_data_20(:,1),Male_data_20(:,2)) ...
    My_Corr(Male_data_21(:,1),Male_data_21(:,2))];
% Height VS FCF of DH
R_Height_FCF_DH_Male = [My_Corr(Male_data_6(:,1),Male_data_6(:,3)) My_Corr(Male_data_7(:,1),Male_data_7(:,3)) My_Corr(Male_data_8(:,1),Male_data_8(:,3)) ...
    My_Corr(Male_data_9(:,1),Male_data_9(:,3)) My_Corr(Male_data_10(:,1),Male_data_10(:,3)) My_Corr(Male_data_11(:,1),Male_data_11(:,3)) ...
    My_Corr(Male_data_12(:,1),Male_data_12(:,3)) My_Corr(Male_data_13(:,1),Male_data_13(:,3)) My_Corr(Male_data_14(:,1),Male_data_14(:,3)) ...
    My_Corr(Male_data_15(:,1),Male_data_15(:,3)) My_Corr(Male_data_16(:,1),Male_data_16(:,3)) My_Corr(Male_data_17(:,1),Male_data_17(:,3)) ...
    My_Corr(Male_data_18(:,1),Male_data_18(:,3)) My_Corr(Male_data_19(:,1),Male_data_19(:,3)) My_Corr(Male_data_20(:,1),Male_data_20(:,3)) ...
    My_Corr(Male_data_21(:,1),Male_data_21(:,3))];
% Weight VS FCF of DH
R_Weight_FCF_DH_Male = [My_Corr(Male_data_6(:,2),Male_data_6(:,3)) My_Corr(Male_data_7(:,2),Male_data_7(:,3)) My_Corr(Male_data_8(:,2),Male_data_8(:,3)) ...
    My_Corr(Male_data_9(:,2),Male_data_9(:,3)) My_Corr(Male_data_10(:,2),Male_data_10(:,3)) My_Corr(Male_data_11(:,2),Male_data_11(:,3)) ...
    My_Corr(Male_data_12(:,2),Male_data_12(:,3)) My_Corr(Male_data_13(:,2),Male_data_13(:,3)) My_Corr(Male_data_14(:,2),Male_data_14(:,3)) ...
    My_Corr(Male_data_15(:,2),Male_data_15(:,3)) My_Corr(Male_data_16(:,2),Male_data_16(:,3)) My_Corr(Male_data_17(:,2),Male_data_17(:,3)) ...
    My_Corr(Male_data_18(:,2),Male_data_18(:,3)) My_Corr(Male_data_19(:,2),Male_data_19(:,3)) My_Corr(Male_data_20(:,2),Male_data_20(:,3)) ...
    My_Corr(Male_data_21(:,2),Male_data_21(:,3))];
%% We display the results.
Age = 6:21;
%%
figure;
% For female
subplot(1,3,1)
hold on;
xlim([5 22]);
ylim([0 1.0]);
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = R_Height_Weight_Female; % Height VS Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = R_Height_FCF_DH_Female; % Height VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = R_Weight_FCF_DH_Female; % Weight VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
HH3 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

% For male
subplot(1,3,2)
hold on;
xlim([5 22]);
ylim([0 1.0]);
title('Male')
xlabel('Age (yr)');
%ylabel('Correlation coefficient')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [0.01 0.01 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = R_Height_Weight_Male; % Height VS Weight
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = R_Height_FCF_DH_Male; % Height VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');

x_data = Age;
y_data = R_Weight_FCF_DH_Male; % Weight VS FCF of DH
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
HHHH3 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);
HH3 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_3,'MarkerFaceColor','w');

% For legends
subplot(1,3,3)
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

HHHH1 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w');
HHHH2 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w');
HHHH3 = plot([-30 -20],[-10 -10],'-o','LineWidth',My_LineWidth,'Color',Color_3,'MarkerFaceColor','w');
Legend = legend([HHHH1 HHHH2 HHHH3],'Heigth VS Weight','Height VS FCF',...
    'Weight VS FCF');
set(Legend,'Box','off')
