%% Source codes for Figure 1(b).
% We calculate the velocity of average height, weight, FCF and HGS of DH
% Abbreviations: mHGS = maximum Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_LineWidth = 1.5;
My_MarkerSize = 7;
My_FontName = 'Times New Roman';
My_fontSize = 12;
Age = 6:21;
Alpha = 1;
Edgealpha = 0;
%% Loading our data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
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

% For female
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

% For male
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

%% We calculate the average height, weight, FCF and HGS of DH
Height_Average_Female = [mean(Female_data_6(:,1)) mean(Female_data_7(:,1)) mean(Female_data_8(:,1)) mean(Female_data_9(:,1)) ...
    mean(Female_data_10(:,1)) mean(Female_data_11(:,1)) mean(Female_data_12(:,1)) mean(Female_data_13(:,1)) mean(Female_data_14(:,1)) ...
    mean(Female_data_15(:,1)) mean(Female_data_16(:,1)) mean(Female_data_17(:,1)) mean(Female_data_18(:,1)) mean(Female_data_19(:,1)) ...
    mean(Female_data_20(:,1)) mean(Female_data_21(:,1))];
Height_Average_Male = [mean(Male_data_6(:,1)) mean(Male_data_7(:,1)) mean(Male_data_8(:,1)) mean(Male_data_9(:,1)) ...
    mean(Male_data_10(:,1)) mean(Male_data_11(:,1)) mean(Male_data_12(:,1)) mean(Male_data_13(:,1)) mean(Male_data_14(:,1)) ...
    mean(Male_data_15(:,1)) mean(Male_data_16(:,1)) mean(Male_data_17(:,1)) mean(Male_data_18(:,1)) mean(Male_data_19(:,1)) ...
    mean(Male_data_20(:,1)) mean(Male_data_21(:,1))];

Weight_Average_Female = [mean(Female_data_6(:,2)) mean(Female_data_7(:,2)) mean(Female_data_8(:,2)) mean(Female_data_9(:,2)) ...
    mean(Female_data_10(:,2)) mean(Female_data_11(:,2)) mean(Female_data_12(:,2)) mean(Female_data_13(:,2)) mean(Female_data_14(:,2)) ...
    mean(Female_data_15(:,2)) mean(Female_data_16(:,2)) mean(Female_data_17(:,2)) mean(Female_data_18(:,2)) mean(Female_data_19(:,2)) ...
    mean(Female_data_20(:,2)) mean(Female_data_21(:,2))];
Weight_Average_Male = [mean(Male_data_6(:,2)) mean(Male_data_7(:,2)) mean(Male_data_8(:,2)) mean(Male_data_9(:,2)) ...
    mean(Male_data_10(:,2)) mean(Male_data_11(:,2)) mean(Male_data_12(:,2)) mean(Male_data_13(:,2)) mean(Male_data_14(:,2)) ...
    mean(Male_data_15(:,2)) mean(Male_data_16(:,2)) mean(Male_data_17(:,2)) mean(Male_data_18(:,2)) mean(Male_data_19(:,2)) ...
    mean(Male_data_20(:,2)) mean(Male_data_21(:,2))];

FCF_DH_Average_Female = [mean(Female_data_6(:,3)) mean(Female_data_7(:,3)) mean(Female_data_8(:,3)) mean(Female_data_9(:,3)) ...
    mean(Female_data_10(:,3)) mean(Female_data_11(:,3)) mean(Female_data_12(:,3)) mean(Female_data_13(:,3)) mean(Female_data_14(:,3)) ...
    mean(Female_data_15(:,3)) mean(Female_data_16(:,3)) mean(Female_data_17(:,3)) mean(Female_data_18(:,3)) mean(Female_data_19(:,3)) ...
    mean(Female_data_20(:,3)) mean(Female_data_21(:,3))];
FCF_DH_Average_Male = [mean(Male_data_6(:,3)) mean(Male_data_7(:,3)) mean(Male_data_8(:,3)) mean(Male_data_9(:,3)) ...
    mean(Male_data_10(:,3)) mean(Male_data_11(:,3)) mean(Male_data_12(:,3)) mean(Male_data_13(:,3)) mean(Male_data_14(:,3)) ...
    mean(Male_data_15(:,3)) mean(Male_data_16(:,3)) mean(Male_data_17(:,3)) mean(Male_data_18(:,3)) mean(Male_data_19(:,3)) ...
    mean(Male_data_20(:,3)) mean(Male_data_21(:,3))];

HGS_DH_Average_Female = [mean(Female_data_6(:,6)) mean(Female_data_7(:,6)) mean(Female_data_8(:,6)) mean(Female_data_9(:,6)) ...
    mean(Female_data_10(:,6)) mean(Female_data_11(:,6)) mean(Female_data_12(:,6)) mean(Female_data_13(:,6)) mean(Female_data_14(:,6)) ...
    mean(Female_data_15(:,6)) mean(Female_data_16(:,6)) mean(Female_data_17(:,6)) mean(Female_data_18(:,6)) mean(Female_data_19(:,6)) ...
    mean(Female_data_20(:,6)) mean(Female_data_21(:,6))];
HGS_DH_Average_Male = [mean(Male_data_6(:,6)) mean(Male_data_7(:,6)) mean(Male_data_8(:,6)) mean(Male_data_9(:,6)) ...
    mean(Male_data_10(:,6)) mean(Male_data_11(:,6)) mean(Male_data_12(:,6)) mean(Male_data_13(:,6)) mean(Male_data_14(:,6)) ...
    mean(Male_data_15(:,6)) mean(Male_data_16(:,6)) mean(Male_data_17(:,6)) mean(Male_data_18(:,6)) mean(Male_data_19(:,6)) ...
    mean(Male_data_20(:,6)) mean(Male_data_21(:,6))];

%% We calculate the velocity of average height, weight, FCF and HGS of DH
d_Age = 0.1; % The differential element of age is set to 0.1 years old.
% Height
Height_Velocity_Female = [];
X_data = Age;
Y_data = Height_Average_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    Height_Velocity_Female = [Height_Velocity_Female (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

Height_Velocity_Male = [];
X_data = Age;
Y_data = Height_Average_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    Height_Velocity_Male = [Height_Velocity_Male (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

% Weight
Weight_Velocity_Female = [];
X_data = Age;
Y_data = Weight_Average_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    Weight_Velocity_Female = [Weight_Velocity_Female (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

Weight_Velocity_Male = [];
X_data = Age;
Y_data = Weight_Average_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    Weight_Velocity_Male = [Weight_Velocity_Male (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

% FCF 0f DH
FCF_DH_Velocity_Female = [];
X_data = Age;
Y_data = FCF_DH_Average_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    FCF_DH_Velocity_Female = [FCF_DH_Velocity_Female (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

FCF_DH_Velocity_Male = [];
X_data = Age;
Y_data = FCF_DH_Average_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    FCF_DH_Velocity_Male = [FCF_DH_Velocity_Male (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

% HGS 0f DH
HGS_DH_Velocity_Female = [];
X_data = Age;
Y_data = HGS_DH_Average_Female;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    HGS_DH_Velocity_Female = [HGS_DH_Velocity_Female (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

HGS_DH_Velocity_Male = [];
X_data = Age;
Y_data = HGS_DH_Average_Male;
[fitobject,gof] = fit(X_data',Y_data','smooth');
[M N] = size(Age);
for i = 1:N
    HGS_DH_Velocity_Male = [HGS_DH_Velocity_Male (fitobject(Age(i)+d_Age)-fitobject(Age(i)-d_Age))/d_Age/2];
end

%% We show the results
figure;
subplot(1,5,1); % Height
hold on;
HHH1 = plot(1:3,(1:3)*0,'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1);
HHH2 = plot(1:3,(1:3)*0,'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('Height velocity (cm/yr)')

% different schools
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [-1.95 -1.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-1.95 -1.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-1.95 -1.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-1.95 -1.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

xlim([5 22]);
ylim([-2 8]);
x_data = Age;
y_data = Height_Velocity_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
H1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Height_Velocity_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
HH2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HHH1 HHH2],'Female','Male','Location','northeast');
set(Legend,'Box','off')

subplot(1,5,2); % Weight
hold on;
HHH1 = plot(1:3,(1:3)*0,'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1);
HHH2 = plot(1:3,(1:3)*0,'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('Weight velocity (Kg/yr)')
xlim([5 22]);
ylim([-1 6]);

% different schools
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [-0.95 -0.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.95 -0.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.95 -0.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.95 -0.95 8 8];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = Weight_Velocity_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
H1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = Weight_Velocity_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
HH2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HHH1 HHH2],'Female','Male','Location','northeast');
set(Legend,'Box','off')

subplot(1,5,3); % FCF of DH
hold on;
HHH1 = plot(1:3,(1:3)*0,'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1);
HHH2 = plot(1:3,(1:3)*0,'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('FCF velocity (cm/yr)')
xlim([5 22]);
ylim([-0.3 1.2]);

% different schools
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [-0.29 -0.29 1.2 1.2];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.29 -0.29 1.2 1.2];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.29 -0.29 1.2 1.2];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.29 -0.29 1.2 1.2];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = FCF_DH_Velocity_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
H1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = FCF_DH_Velocity_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
HH2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HHH1 HHH2],'Female','Male','Location','northeast');
set(Legend,'Box','off')

subplot(1,5,4); % mHGS of DH
hold on;
HHH1 = plot(1:3,(1:3)*0,'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1);
HHH2 = plot(1:3,(1:3)*0,'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Age (yr)');
ylabel('mHGS velocity (Kg/yr)')
xlim([5 22]);
ylim([-1 7]);

% Show different school stages
XX_Fill_1 = [5.2 12 12 5.2]; % primary school
YY_Fill_1 = [-0.95 -0.95 7 7];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [-0.95 -0.95 7 7];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [-0.95 -0.95 7 7];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [-0.95 -0.95 7 7];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = HGS_DH_Velocity_Female;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
H1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
x_data = Age;
y_data = HGS_DH_Velocity_Male;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
HH2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH1 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HHH1 HHH2],'Female','Male','Location','northeast');
set(Legend,'Box','off')

%% Legends
subplot(1,5,5)
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

