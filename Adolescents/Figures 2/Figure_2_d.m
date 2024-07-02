%% Source codes for Figure 2(d).
% We introduce the term of Height*Weight and calculate its correlation 
% coefficient with height and weight.
% Height*Weight VS Height and Height*Weight VS Weight
% Abbreviations: mHGS = maximum Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading our data
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

%% We calculate the correlation coefficient between Height*Weight and height or weight.
% For female
% Height*Weight VS Height
R_Height_Height_X_Weight_Female = [My_Corr(Female_data_6(:,1),Female_data_6(:,1).*Female_data_6(:,2)) My_Corr(Female_data_7(:,1),Female_data_7(:,1).*Female_data_7(:,2)) ...
    My_Corr(Female_data_8(:,1),Female_data_8(:,1).*Female_data_8(:,2)) My_Corr(Female_data_9(:,1),Female_data_9(:,1).*Female_data_9(:,2)) ...
    My_Corr(Female_data_10(:,1),Female_data_10(:,1).*Female_data_10(:,2)) My_Corr(Female_data_11(:,1),Female_data_11(:,1).*Female_data_11(:,2)) ...
    My_Corr(Female_data_12(:,1),Female_data_12(:,1).*Female_data_12(:,2)) My_Corr(Female_data_13(:,1),Female_data_13(:,1).*Female_data_13(:,2)) ...
    My_Corr(Female_data_14(:,1),Female_data_14(:,1).*Female_data_14(:,2)) My_Corr(Female_data_15(:,1),Female_data_15(:,1).*Female_data_15(:,2)) ...
    My_Corr(Female_data_16(:,1),Female_data_16(:,1).*Female_data_16(:,2)) My_Corr(Female_data_17(:,1),Female_data_17(:,1).*Female_data_17(:,2)) ...
    My_Corr(Female_data_18(:,1),Female_data_18(:,1).*Female_data_18(:,2)) My_Corr(Female_data_19(:,1),Female_data_19(:,1).*Female_data_19(:,2)) ...
    My_Corr(Female_data_20(:,1),Female_data_20(:,1).*Female_data_20(:,2)) My_Corr(Female_data_21(:,1),Female_data_21(:,1).*Female_data_21(:,2))];
% Height*Weight VS Weight
R_Weight_Height_X_Weight_Female = [My_Corr(Female_data_6(:,2),Female_data_6(:,1).*Female_data_6(:,2)) My_Corr(Female_data_7(:,2),Female_data_7(:,1).*Female_data_7(:,2)) ...
    My_Corr(Female_data_8(:,2),Female_data_8(:,1).*Female_data_8(:,2)) My_Corr(Female_data_9(:,2),Female_data_9(:,1).*Female_data_9(:,2)) ...
    My_Corr(Female_data_10(:,2),Female_data_10(:,1).*Female_data_10(:,2)) My_Corr(Female_data_11(:,2),Female_data_11(:,1).*Female_data_11(:,2)) ...
    My_Corr(Female_data_12(:,2),Female_data_12(:,1).*Female_data_12(:,2)) My_Corr(Female_data_13(:,2),Female_data_13(:,1).*Female_data_13(:,2)) ...
    My_Corr(Female_data_14(:,2),Female_data_14(:,1).*Female_data_14(:,2)) My_Corr(Female_data_15(:,2),Female_data_15(:,1).*Female_data_15(:,2)) ...
    My_Corr(Female_data_16(:,2),Female_data_16(:,1).*Female_data_16(:,2)) My_Corr(Female_data_17(:,2),Female_data_17(:,1).*Female_data_17(:,2)) ...
    My_Corr(Female_data_18(:,2),Female_data_18(:,1).*Female_data_18(:,2)) My_Corr(Female_data_19(:,2),Female_data_19(:,1).*Female_data_19(:,2)) ...
    My_Corr(Female_data_20(:,2),Female_data_20(:,1).*Female_data_20(:,2)) My_Corr(Female_data_21(:,2),Female_data_21(:,1).*Female_data_21(:,2))];

% For male
% Height*Weight VS Height
R_Height_Height_X_Weight_Male = [My_Corr(Male_data_6(:,1),Male_data_6(:,1).*Male_data_6(:,2)) My_Corr(Male_data_7(:,1),Male_data_7(:,1).*Male_data_7(:,2)) ...
    My_Corr(Male_data_8(:,1),Male_data_8(:,1).*Male_data_8(:,2)) My_Corr(Male_data_9(:,1),Male_data_9(:,1).*Male_data_9(:,2)) ...
    My_Corr(Male_data_10(:,1),Male_data_10(:,1).*Male_data_10(:,2)) My_Corr(Male_data_11(:,1),Male_data_11(:,1).*Male_data_11(:,2)) ...
    My_Corr(Male_data_12(:,1),Male_data_12(:,1).*Male_data_12(:,2)) My_Corr(Male_data_13(:,1),Male_data_13(:,1).*Male_data_13(:,2)) ...
    My_Corr(Male_data_14(:,1),Male_data_14(:,1).*Male_data_14(:,2)) My_Corr(Male_data_15(:,1),Male_data_15(:,1).*Male_data_15(:,2)) ...
    My_Corr(Male_data_16(:,1),Male_data_16(:,1).*Male_data_16(:,2)) My_Corr(Male_data_17(:,1),Male_data_17(:,1).*Male_data_17(:,2)) ...
    My_Corr(Male_data_18(:,1),Male_data_18(:,1).*Male_data_18(:,2)) My_Corr(Male_data_19(:,1),Male_data_19(:,1).*Male_data_19(:,2)) ...
    My_Corr(Male_data_20(:,1),Male_data_20(:,1).*Male_data_20(:,2)) My_Corr(Male_data_21(:,1),Male_data_21(:,1).*Male_data_21(:,2))];
% Height*Weight VS Weight
R_Weight_Height_X_Weight_Male = [My_Corr(Male_data_6(:,2),Male_data_6(:,1).*Male_data_6(:,2)) My_Corr(Male_data_7(:,2),Male_data_7(:,1).*Male_data_7(:,2)) ...
    My_Corr(Male_data_8(:,2),Male_data_8(:,1).*Male_data_8(:,2)) My_Corr(Male_data_9(:,2),Male_data_9(:,1).*Male_data_9(:,2)) ...
    My_Corr(Male_data_10(:,2),Male_data_10(:,1).*Male_data_10(:,2)) My_Corr(Male_data_11(:,2),Male_data_11(:,1).*Male_data_11(:,2)) ...
    My_Corr(Male_data_12(:,2),Male_data_12(:,1).*Male_data_12(:,2)) My_Corr(Male_data_13(:,2),Male_data_13(:,1).*Male_data_13(:,2)) ...
    My_Corr(Male_data_14(:,2),Male_data_14(:,1).*Male_data_14(:,2)) My_Corr(Male_data_15(:,2),Male_data_15(:,1).*Male_data_15(:,2)) ...
    My_Corr(Male_data_16(:,2),Male_data_16(:,1).*Male_data_16(:,2)) My_Corr(Male_data_17(:,2),Male_data_17(:,1).*Male_data_17(:,2)) ...
    My_Corr(Male_data_18(:,2),Male_data_18(:,1).*Male_data_18(:,2)) My_Corr(Male_data_19(:,2),Male_data_19(:,1).*Male_data_19(:,2)) ...
    My_Corr(Male_data_20(:,2),Male_data_20(:,1).*Male_data_20(:,2)) My_Corr(Male_data_21(:,2),Male_data_21(:,1).*Male_data_21(:,2))];

%% We show the results
Age = 6:21;
figure;
% For female
subplot(1,2,1);
hold on;
title('Female')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
% Height*Weight VS Height
x_data = Age;
y_data = R_Height_Height_X_Weight_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
% Height*Weight VS Weight
x_data = Age;
y_data = R_Weight_Height_X_Weight_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
H2 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend([H1 H2],'Height*Weight VS Heigth','Height*Weight VS Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)

% For male
subplot(1,2,2);
hold on;
title('Male')
xlabel('Age (yr)');
ylabel('Correlation coefficient')
xlim([5 22]);
ylim([0.3 1]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
% Height*Weight VS Height
x_data = Age;
y_data = R_Height_Height_X_Weight_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
% Height*Weight VS Weight
x_data = Age;
y_data = R_Weight_Height_X_Weight_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 6:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');

H1 = plot([-2 -2],[-2 -1],'-s','LineWidth',My_LineWidth,'Color',Color_2,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
H2 = plot([-2 -2],[-2 -1],'-o','LineWidth',My_LineWidth,'Color',Color_1,'MarkerFaceColor','w','MarkerSize',My_MarkerSize);
Legend = legend([H1 H2],'Height*Weight VS Heigth','Height*Weight VS Weight','Location','southwest');
set(Legend,'Box','off','FontSize',9)