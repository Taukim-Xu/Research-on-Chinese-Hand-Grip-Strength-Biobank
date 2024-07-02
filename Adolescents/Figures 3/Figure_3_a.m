%% Source codes for Figure 3(a).
% We calculate the coefficients a and b in the 1 = a/Weight + b*Height.
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
My_mark_type = '.';
Edgealpha = 0;
Alpha = 1;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

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

Color_Fill_1 = [221 241 243]/255; % primary school
Color_Fill_2 = [236 244 221]/255; % junior high school
Color_Fill_3 = [255 247 172]/255; % high school
Color_Fill_4 = [250 231 217]/255; % University

%% The coefficient of a and b
Coefficient_a_Female_Ours = [];
Coefficient_b_Female_Ours = [];
Coefficient_a_Male_Ours = [];
Coefficient_b_Male_Ours = [];
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

%% Linear fitting
figure;
% For female
subplot(2,3,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Female');
xlabel('Height*Weight (Kg.m)');
ylabel('Weight (Kg)')
xlim([0 150]);
ylim([0 90]);

XX_Text = 140;
YY_Text = 12;
My_text = 'Weight = a + b*Height*Weight';
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

% Aged 6
x_data = Female_data_6(:,1).*Female_data_6(:,2)/100;
y_data = Female_data_6(:,2);
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 7
x_data = Female_data_7(:,1).*Female_data_7(:,2)/100;
y_data = Female_data_7(:,2);
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 8
x_data = Female_data_8(:,1).*Female_data_8(:,2)/100;
y_data = Female_data_8(:,2);
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 9
x_data = Female_data_9(:,1).*Female_data_9(:,2)/100;
y_data = Female_data_9(:,2);
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 10
x_data = Female_data_10(:,1).*Female_data_10(:,2)/100;
y_data = Female_data_10(:,2);
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 11
x_data = Female_data_11(:,1).*Female_data_11(:,2)/100;
y_data = Female_data_11(:,2);
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 12
x_data = Female_data_12(:,1).*Female_data_12(:,2)/100;
y_data = Female_data_12(:,2);
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 13
x_data = Female_data_13(:,1).*Female_data_13(:,2)/100;
y_data = Female_data_13(:,2);
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 14
x_data = Female_data_14(:,1).*Female_data_14(:,2)/99;
y_data = Female_data_14(:,2);
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 15
x_data = Female_data_15(:,1).*Female_data_15(:,2)/100;
y_data = Female_data_15(:,2);
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 16
x_data = Female_data_16(:,1).*Female_data_16(:,2)/100;
y_data = Female_data_16(:,2);
H16 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_16);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_16,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 17
x_data = Female_data_17(:,1).*Female_data_17(:,2)/100;
y_data = Female_data_17(:,2);
H17 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_17);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_17,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 18
x_data = Female_data_18(:,1).*Female_data_18(:,2)/100;
y_data = Female_data_18(:,2);
H18 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_18);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_18,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 19
x_data = Female_data_19(:,1).*Female_data_19(:,2)/100;
y_data = Female_data_19(:,2);
H19 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_19);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_19,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 20
x_data = Female_data_20(:,1).*Female_data_20(:,2)/100;
y_data = Female_data_20(:,2);
H20 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_20);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_20,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% Aged 21
x_data = Female_data_21(:,1).*Female_data_21(:,2)/100;
y_data = Female_data_21(:,2);
H21 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_21);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_21,'LineWidth',My_LineWidth);
Coefficient_a_Female_Ours = [Coefficient_a_Female_Ours BB(2)];
Coefficient_b_Female_Ours = [Coefficient_b_Female_Ours BB(1)];

% For male
subplot(2,3,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Male');
xlabel('Height*Weight (Kg.m)');
ylabel('Weight (Kg)')
xlim([0 210]);
ylim([0 115]);

XX_Text = 195;
YY_Text = 15;
My_text = 'Weight = a + b*Height*Weight';
Text = text(XX_Text,YY_Text,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','right');

% Aged 6
x_data = Male_data_6(:,1).*Male_data_6(:,2)/100;
y_data = Male_data_6(:,2);
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 7
x_data = Male_data_7(:,1).*Male_data_7(:,2)/100;
y_data = Male_data_7(:,2);
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 8
x_data = Male_data_8(:,1).*Male_data_8(:,2)/100;
y_data = Male_data_8(:,2);
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 9
x_data = Male_data_9(:,1).*Male_data_9(:,2)/100;
y_data = Male_data_9(:,2);
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 10
x_data = Male_data_10(:,1).*Male_data_10(:,2)/100;
y_data = Male_data_10(:,2);
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 11
x_data = Male_data_11(:,1).*Male_data_11(:,2)/100;
y_data = Male_data_11(:,2);
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 12
x_data = Male_data_12(:,1).*Male_data_12(:,2)/100;
y_data = Male_data_12(:,2);
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 13
x_data = Male_data_13(:,1).*Male_data_13(:,2)/100;
y_data = Male_data_13(:,2);
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 14
x_data = Male_data_14(:,1).*Male_data_14(:,2)/100;
y_data = Male_data_14(:,2);
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 15
x_data = Male_data_15(:,1).*Male_data_15(:,2)/100;
y_data = Male_data_15(:,2);
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 16
x_data = Male_data_16(:,1).*Male_data_16(:,2)/100;
y_data = Male_data_16(:,2);
H16 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_16);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_16,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 17
x_data = Male_data_17(:,1).*Male_data_17(:,2)/100;
y_data = Male_data_17(:,2);
H17 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_17);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_17,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 18
x_data = Male_data_18(:,1).*Male_data_18(:,2)/100;
y_data = Male_data_18(:,2);
H18 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_18);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_18,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 19
x_data = Male_data_19(:,1).*Male_data_19(:,2)/100;
y_data = Male_data_19(:,2);
H19 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_19);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_19,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 20
x_data = Male_data_20(:,1).*Male_data_20(:,2)/100;
y_data = Male_data_20(:,2);
H20 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_20);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_20,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];

% Aged 21
x_data = Male_data_21(:,1).*Male_data_21(:,2)/100;
y_data = Male_data_21(:,2);
H21 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_MarkerSize,'Color',Color_21);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_21,'LineWidth',My_LineWidth);
Coefficient_a_Male_Ours = [Coefficient_a_Male_Ours BB(2)];
Coefficient_b_Male_Ours = [Coefficient_b_Male_Ours BB(1)];
%% Legends
subplot(2,3,3)
hold on
axis equal;
ylim([0 80]);
xlim([0 5]);
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

%% We show the coefficients a and b.
Age = 6:21;
% For coefficient a
subplot(2,3,4);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient a')
xlim([5 22]);
ylim([2 12]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.15 12 12 5.15]; % primary school
YY_Fill_1 = [2.1 2.1 12 12];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [2.1 2.1 12 12];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [2.1 2.1 12 12];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [2.1 2.1 12 12];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

%
x_data = Age;
y_data = Coefficient_a_Female_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_a_Male_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northwest');
set(Legend,'Box','off')

% For coefficient b
subplot(2,3,5);
hold on;
xlabel('Age (yr)');
ylabel('Coefficient b')
xlim([5 22]);
ylim([0.4 0.78]);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% We use different backgrounds to distinguish different schools
XX_Fill_1 = [5.15 12 12 5.15]; % primary school
YY_Fill_1 = [0.405 0.405 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_1);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [12 15 15 12]; % junior high school
YY_Fill_1 = [0.405 0.405 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_2);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [15 18 18 15]; % high school
YY_Fill_1 = [0.405 0.405 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_3);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);
XX_Fill_1 = [18 22 22 18]; % University
YY_Fill_1 = [0.405 0.405 1 1];
HH_Fill_1 = fill(XX_Fill_1,YY_Fill_1,Color_Fill_4);
set(HH_Fill_1,'edgealpha',Edgealpha,'facealpha',Alpha);

x_data = Age;
y_data = Coefficient_b_Female_Ours; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age;
y_data = Coefficient_b_Male_Ours; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 5.5:0.1:21.5;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
H1 = plot([-5 -5],[-1 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_1,'MarkerFaceColor','w');
H2 = plot([-5 -5],[-1 -1],'-o','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([H1 H2],'Female','Male','Location','Northeast');
set(Legend,'Box','off')

%% Legends
subplot(2,3,6)
hold on
axis equal;
ylim([0 20]);
xlim([0 5]);
ax = gca;
ax.XAxis.Visible = 'off';
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

%% We save the coefficients a and b
%save('Coefficient_a_and_b_Ours.mat','Coefficient_a_Female_Ours','Coefficient_b_Female_Ours','Coefficient_a_Male_Ours','Coefficient_b_Male_Ours');
