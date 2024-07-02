%% Source codes for Figure 3(d).
% We compare the 1=a/Weight+b*Height model with the BMI model
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading the Coefficients a and b
load('Coefficient_a_and_b_Ours.mat') % Coefficient_a_Female_Ours Coefficient_a_Male_Ours Coefficient_b_Female_Ours Coefficient_b_Male_Ours
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
Edgealpha = 0;
Alpha = 1;
%% Colors
Color_1_0 = [105/255 105/255 105/255];
Color_2_0 = [0/255 146/255 146/255];
Color_3_0 = [255/255 38/255 0/255];
Color_4_0 = [28   182    28]/255;

Color_0 = [
   251    21     0
   252    60     0
   253    97     0
   254   139     0
   254   191     0
   252   244     2
   223   254    30
   185   251    65
   146   254   107
   106   254   147
    66   254   187
    15   251   238
     0   200   253
     0   155   253
     0   111   252
     0    47   254];

My_color1 = Color_0(1,:);
My_color2 = Color_0(2,:);
My_color3 = Color_0(3,:);
My_color4 = Color_0(4,:);
My_color5 = Color_0(5,:);
My_color6 = Color_0(6,:);
My_color7 = Color_0(7,:);
My_color8 = Color_0(8,:);
My_color9 = Color_0(9,:);
My_color10 = Color_0(10,:);
My_color11 = Color_0(11,:);
My_color12 = Color_0(12,:);
My_color13 = Color_0(13,:);
My_color14 = Color_0(14,:);
My_color15 = Color_0(15,:);
My_color16 = Color_0(16,:);

Color_6 = My_color16/255;
Color_7 = My_color15/255;
Color_8 = My_color14/255;
Color_9 = My_color13/255;
Color_10 = My_color12/255;
Color_11 = My_color11/255;
Color_12 = My_color10/255;
Color_13 = My_color9/255;
Color_14 = My_color8/255;
Color_15 = My_color7/255;
Color_16 = My_color6/255;
Color_17 = My_color5/255;
Color_18 = My_color4/255;
Color_19 = My_color3/255;
Color_20 = My_color2/255;
Color_21 = My_color1/255;

Color_Fill_1 = [221 241 243]/255; % BMI<18.5
Color_Fill_2 = [236 244 221]/255; % 18.5<BMI<24
Color_Fill_3 = [250 231 217]/255; % BMI>24

%% We import our data
Female_data = xlsread('Data_for_analysis.xlsx','Female');
Male_data = xlsread('Data_for_analysis.xlsx','Male');
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

%% We display scatter points, the 1=a/Weight+b*Height model and the BMI model
figure;
% For female
subplot(1,3,1);
hold on
title('Female')
xlabel('Height (m)');
ylabel('Weight (Kg)')
xlim([1 1.9]);
ylim([10 90])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

XX = 1.005:0.001:1.9;
YY1 = 18.5*XX.^2; % BMI = 18.5 Kg/m^2
HH_BMI_18_5 = plot(XX,YY1,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
YY2 = 24*XX.^2; % BMI = 24 Kg/m^2
HH_BMI_24 = plot(XX,YY2,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
XX_Fill_1 = [XX(1) XX(end) XX(end:-1:1) XX(1)];
YY_Fill_1 = [10.5 10.5 YY1(end:-1:1) 10.5];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

XX_Fill_2 = [XX XX(end:-1:1)];
YY_Fill_2 = [YY1 YY2(end:-1:1)];
HH_Fill_2 = fill(XX_Fill_2,YY_Fill_2,Color_Fill_2);
set(HH_Fill_2,'edgealpha',Edgealpha,'facealpha',Alpha);

XX_Fill_3 = [XX XX(end) XX(1) XX(1)];
YY_Fill_3 = [YY2 90 90 YY2(1)];
HH_Fill_3 = fill(XX_Fill_3,YY_Fill_3,Color_Fill_3);
set(HH_Fill_3,'edgealpha',Edgealpha,'facealpha',Alpha);

YY1 = 18.5*XX.^2; % BMI = 18.5 Kg/m^2
HH_BMI_18_5 = plot(XX,YY1,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
YY2 = 24*XX.^2; % BMI = 24 Kg/m^2
HH_BMI_24 = plot(XX,YY2,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);

Text = 'Weight = a+b*Height*Weight';
My_Text1 = text(1.05,85,Text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Aged 6
x_data = Female_data_6(:,1)/100; % Height
y_data = Female_data_6(:,2); % Weight
aa = Coefficient_a_Female_Ours(1); % coefficient a
bb = Coefficient_b_Female_Ours(1); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_6);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_6);

% Aged 7
x_data = Female_data_7(:,1)/100; % Height
y_data = Female_data_7(:,2); % Weight
aa = Coefficient_a_Female_Ours(2); % coefficient a
bb = Coefficient_b_Female_Ours(2); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_7);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_7);

% Aged 8
x_data = Female_data_8(:,1)/100; % Height
y_data = Female_data_8(:,2); % Weight
aa = Coefficient_a_Female_Ours(3); % coefficient a
bb = Coefficient_b_Female_Ours(3); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_8);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_8);

% Aged 9
x_data = Female_data_9(:,1)/100; % Height
y_data = Female_data_9(:,2); % Weight
aa = Coefficient_a_Female_Ours(4); % coefficient a
bb = Coefficient_b_Female_Ours(4); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_9);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_9);

% Aged 10
x_data = Female_data_10(:,1)/100; % Height
y_data = Female_data_10(:,2); % Weight
aa = Coefficient_a_Female_Ours(5); % coefficient a
bb = Coefficient_b_Female_Ours(5); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_10);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_10);

% Aged 11
x_data = Female_data_11(:,1)/100; % Height
y_data = Female_data_11(:,2); % Weight
aa = Coefficient_a_Female_Ours(6); % coefficient a
bb = Coefficient_b_Female_Ours(6); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_11);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_11);

% Aged 12
x_data = Female_data_12(:,1)/100; % Height
y_data = Female_data_12(:,2); % Weight
aa = Coefficient_a_Female_Ours(7); % coefficient a
bb = Coefficient_b_Female_Ours(7); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_12);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_12);

% Aged 13
x_data = Female_data_13(:,1)/100; % Height
y_data = Female_data_13(:,2); % Weight
aa = Coefficient_a_Female_Ours(8); % coefficient a
bb = Coefficient_b_Female_Ours(8); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_13);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_13);

% Aged 14
x_data = Female_data_14(:,1)/100; % Height
y_data = Female_data_14(:,2); % Weight
aa = Coefficient_a_Female_Ours(9); % coefficient a
bb = Coefficient_b_Female_Ours(9); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_14);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_14);

% Aged 15
x_data = Female_data_15(:,1)/100; % Height
y_data = Female_data_15(:,2); % Weight
aa = Coefficient_a_Female_Ours(10); % coefficient a
bb = Coefficient_b_Female_Ours(10); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_15);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_15);

% Aged 16
x_data = Female_data_16(:,1)/100; % Height
y_data = Female_data_16(:,2); % Weight
aa = Coefficient_a_Female_Ours(11); % coefficient a
bb = Coefficient_b_Female_Ours(11); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_16);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_16);

% Aged 17
x_data = Female_data_17(:,1)/100; % Height
y_data = Female_data_17(:,2); % Weight
aa = Coefficient_a_Female_Ours(12); % coefficient a
bb = Coefficient_b_Female_Ours(12); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_17);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_17);

% Aged 18
x_data = Female_data_18(:,1)/100; % Height
y_data = Female_data_18(:,2); % Weight
aa = Coefficient_a_Female_Ours(13); % coefficient a
bb = Coefficient_b_Female_Ours(13); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_18);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_18);

% Aged 19
x_data = Female_data_19(:,1)/100; % Height
y_data = Female_data_19(:,2); % Weight
aa = Coefficient_a_Female_Ours(14); % coefficient a
bb = Coefficient_b_Female_Ours(14); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_19);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_19);

% Aged 20
x_data = Female_data_20(:,1)/100; % Height
y_data = Female_data_20(:,2); % Weight
aa = Coefficient_a_Female_Ours(15); % coefficient a
bb = Coefficient_b_Female_Ours(15); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_20);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_20);

% Aged 21
x_data = Female_data_21(:,1)/100; % Height
y_data = Female_data_21(:,2); % Weight
aa = Coefficient_a_Female_Ours(16); % coefficient a
bb = Coefficient_b_Female_Ours(16); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_21);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_21);

My_text = 'BMI=24Kg/m^2';
Text = text(1.05,50,My_text,'FontSize',10,'FontName',My_FontName,'HorizontalAlignment','Left');
My_text = 'BMI=18.5Kg/m^2';
Text = text(1.2,15,My_text,'FontSize',10,'FontName',My_FontName,'HorizontalAlignment','Left');

% For male
subplot(1,3,2);
hold on
title('Male')
xlabel('Height (m)');
ylabel('Weight (Kg)')
xlim([1 2]);
ylim([10 120])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

XX = 1.005:0.001:2;
YY1 = 18.5*XX.^2; % BMI = 18.5 Kg/m^2
HH_BMI_18_5 = plot(XX,YY1,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
YY2 = 24*XX.^2; % BMI = 24 Kg/m^2
HH_BMI_24 = plot(XX,YY2,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
XX_Fill_1 = [XX(1) XX(end) XX(end:-1:1) XX(1)];
YY_Fill_1 = [10.5 10.5 YY1(end:-1:1) 10.5];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

XX_Fill_2 = [XX XX(end:-1:1)];
YY_Fill_2 = [YY1 YY2(end:-1:1)];
HH_Fill_2 = fill(XX_Fill_2,YY_Fill_2,Color_Fill_2);
set(HH_Fill_2,'edgealpha',Edgealpha,'facealpha',Alpha);

XX_Fill_3 = [XX XX(end) XX(1) XX(1)];
YY_Fill_3 = [YY2 120 120 YY2(1)];
HH_Fill_3 = fill(XX_Fill_3,YY_Fill_3,Color_Fill_3);
set(HH_Fill_3,'edgealpha',Edgealpha,'facealpha',Alpha);

YY1 = 18.5*XX.^2; % BMI = 18.5 Kg/m^2
HH_BMI_18_5 = plot(XX,YY1,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);
YY2 = 24*XX.^2; % BMI = 24 Kg/m^2
HH_BMI_24 = plot(XX,YY2,'-.','LineWidth',My_LineWidth,'Color',[0 0 0]);

Text = 'Weight = a+b*Height*Weight';
My_Text1 = text(1.07,115,Text,'FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% Aged 6
x_data = Male_data_6(:,1)/100; % Height
y_data = Male_data_6(:,2); % Weight
aa = Coefficient_a_Male_Ours(1); % coefficient a
bb = Coefficient_b_Male_Ours(1); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_6);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_6);

% Aged 7
x_data = Male_data_7(:,1)/100; % Height
y_data = Male_data_7(:,2); % Weight
aa = Coefficient_a_Male_Ours(2); % coefficient a
bb = Coefficient_b_Male_Ours(2); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_7);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_7);

% Aged 8
x_data = Male_data_8(:,1)/100; % Height
y_data = Male_data_8(:,2); % Weight
aa = Coefficient_a_Male_Ours(3); % coefficient a
bb = Coefficient_b_Male_Ours(3); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_8);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_8);

% Aged 9
x_data = Male_data_9(:,1)/100; % Height
y_data = Male_data_9(:,2); % Weight
aa = Coefficient_a_Male_Ours(4); % coefficient a
bb = Coefficient_b_Male_Ours(4); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_9);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_9);

% Aged 10
x_data = Male_data_10(:,1)/100; % Height
y_data = Male_data_10(:,2); % Weight
aa = Coefficient_a_Male_Ours(5); % coefficient a
bb = Coefficient_b_Male_Ours(5); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_10);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_10);

% Aged 11
x_data = Male_data_11(:,1)/100; % Height
y_data = Male_data_11(:,2); % Weight
aa = Coefficient_a_Male_Ours(6); % coefficient a
bb = Coefficient_b_Male_Ours(6); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_11);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_11);

% Aged 12
x_data = Male_data_12(:,1)/100; % Height
y_data = Male_data_12(:,2); % Weight
aa = Coefficient_a_Male_Ours(7); % coefficient a
bb = Coefficient_b_Male_Ours(7); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_12);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_12);

% Aged 13
x_data = Male_data_13(:,1)/100; % Height
y_data = Male_data_13(:,2); % Weight
aa = Coefficient_a_Male_Ours(8); % coefficient a
bb = Coefficient_b_Male_Ours(8); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_13);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_13);

% Aged 14
x_data = Male_data_14(:,1)/100; % Height
y_data = Male_data_14(:,2); % Weight
aa = Coefficient_a_Male_Ours(9); % coefficient a
bb = Coefficient_b_Male_Ours(9); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_14);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_14);

% Aged 15
x_data = Male_data_15(:,1)/100; % Height
y_data = Male_data_15(:,2); % Weight
aa = Coefficient_a_Male_Ours(10); % coefficient a
bb = Coefficient_b_Male_Ours(10); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_15);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_15);

% Aged 16
x_data = Male_data_16(:,1)/100; % Height
y_data = Male_data_16(:,2); % Weight
aa = Coefficient_a_Male_Ours(11); % coefficient a
bb = Coefficient_b_Male_Ours(11); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_16);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_16);

% Aged 17
x_data = Male_data_17(:,1)/100; % Height
y_data = Male_data_17(:,2); % Weight
aa = Coefficient_a_Male_Ours(12); % coefficient a
bb = Coefficient_b_Male_Ours(12); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_17);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_17);

% Aged 18
x_data = Male_data_18(:,1)/100; % Height
y_data = Male_data_18(:,2); % Weight
aa = Coefficient_a_Male_Ours(13); % coefficient a
bb = Coefficient_b_Male_Ours(13); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_18);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_18);

% Aged 19
x_data = Male_data_19(:,1)/100; % Height
y_data = Male_data_19(:,2); % Weight
aa = Coefficient_a_Male_Ours(14); % coefficient a
bb = Coefficient_b_Male_Ours(14); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_19);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_19);

% Aged 20
x_data = Male_data_20(:,1)/100; % Height
y_data = Male_data_20(:,2); % Weight
aa = Coefficient_a_Male_Ours(15); % coefficient a
bb = Coefficient_b_Male_Ours(15); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_20);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_20);

% Aged 21
x_data = Male_data_21(:,1)/100; % Height
y_data = Male_data_21(:,2); % Weight
aa = Coefficient_a_Male_Ours(16); % coefficient a
bb = Coefficient_b_Male_Ours(16); % coefficient b
HH = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'MarkerFaceColor','w','LineWidth',My_LineWidth,'Color',Color_21);
YY = min(y_data)-1:0.1:max(y_data)+1; % Weight = a + b*Height*Weight
XX = (1/bb-aa/bb./YY);
HH2 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_21);


My_text = 'BMI=24Kg/m^2';
Text = text(1.05,50,My_text,'FontSize',10,'FontName',My_FontName,'HorizontalAlignment','Left');
My_text = 'BMI=18.5Kg/m^2';
Text = text(1.2,15,My_text,'FontSize',10,'FontName',My_FontName,'HorizontalAlignment','Left');

%% Legends
subplot(1,3,3);
hold on
axis equal;
xlim([0 5]);
ylim([0 80]);
ax = gca;
ax.XAxis.Visible = 'off';
yyy = 2.5:5:77.5;
My_YTicklabel_1 = {'Aged 6','Aged 7','Aged 8','Aged 9','Aged 10','Aged 11','Aged 12','Aged 13','Aged 14','Aged 15','Aged 16','Aged 17',...
    'Aged 18','Aged 19','Aged 20','Aged 21'};
set(gca,'YTick',yyy,'YTicklabel',My_YTicklabel_1);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','right')

MM = 0:5:80;
[M N] = size(MM);
for i = 1:N-1
    Fill_xx = [0 5 5 0];
    Fill_yy = [MM(i) MM(i) MM(i+1) MM(i+1)];
    HH = fill(Fill_xx,Fill_yy,Color_0(end-i+1,:)/255);
    set(HH,'edgealpha',0,'facealpha',My_Alpha);
end

%}


