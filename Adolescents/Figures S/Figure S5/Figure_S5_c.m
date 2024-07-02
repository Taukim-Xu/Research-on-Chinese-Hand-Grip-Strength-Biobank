%% Source codes for Figure S5(c).
% We use boxplots to show how Age, height ane weight show how age changes 
% with percentiles with data stratified by percentile of height.
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Percentiles
My_Percentile = [10 20 30 40 50 60 70 80 90 100];
%% Loading data
Male_data = xlsread('Data_for_analysis.xlsx','Male');
Female_data = xlsread('Data_for_analysis.xlsx','Female');
%% Parameter information for drawing
My_mark_type = '.';
My_mark_size = 4;
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

Color_Fill_1 = [221 241 243]/255; % primary school
Color_Fill_2 = [236 244 221]/255; % junior high school
Color_Fill_3 = [255 247 172]/255; % high school
Color_Fill_4 = [250 231 217]/255; % University

Color_0 = [
   251    42     0
   254   120     0
   254   191     0
   240   248    13
   164   253    87
    86   254   167
    15   251   238
     0   200   253
     0   131   253
     0    47   254];
%}
Color_6 = Color_0(10,:)/255;
Color_7 = Color_0(9,:)/255;
Color_8 = Color_0(8,:)/255;
Color_9 = Color_0(7,:)/255;
Color_10 = Color_0(6,:)/255;
Color_11 = Color_0(5,:)/255;
Color_12 = Color_0(4,:)/255;
Color_13 = Color_0(3,:)/255;
Color_14 = Color_0(2,:)/255;
Color_15 = Color_0(1,:)/255;

My_Box_Color = [Color_6;Color_7;Color_8;Color_9;Color_10;Color_11;Color_12;Color_13;Color_14;Color_15];

%% We stratify the data by percentile of Weight.
% Model: HGS = e + m1*Height
m1_Female_DH = [];
m1_Male_DH = [];

Female_data_10th = []; % 0th-10th
Female_data_20th = []; % 10th-20th
Female_data_30th = []; % 20th-30th
Female_data_40th = []; % 30th-40th
Female_data_50th = []; % 40th-50th
Female_data_60th = []; % 50th-60th
Female_data_70th = []; % 60th-70th
Female_data_80th = []; % 70th-80th
Female_data_90th = []; % 80th-90th
Female_data_100th = []; % 90th-100th

Male_data_10th = []; % 0th-10th
Male_data_20th = []; % 10th-20th
Male_data_30th = []; % 20th-30th
Male_data_40th = []; % 30th-40th
Male_data_50th = []; % 40th-50th
Male_data_60th = []; % 50th-60th
Male_data_70th = []; % 60th-70th
Male_data_80th = []; % 70th-80th
Male_data_90th = []; % 80th-90th
Male_data_100th = []; % 90th-100th

% For female
[M N] = size(Female_data); % No. Height Weight Age FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
Female_Percentiles = prctile(Female_data(:,3),My_Percentile); % Stratified by the percentile of Weight.
for i = 1:M
    if Female_data(i,3)<=Female_Percentiles(1)&&Female_data(i,3)>=0 % 10th
        Female_data_10th = [Female_data_10th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(1)&&Female_data(i,3)<=Female_Percentiles(2) % 20th
        Female_data_20th = [Female_data_20th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(2)&&Female_data(i,3)<=Female_Percentiles(3) % 30th
        Female_data_30th = [Female_data_30th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(3)&&Female_data(i,3)<=Female_Percentiles(4) % 40th
        Female_data_40th = [Female_data_40th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(4)&&Female_data(i,3)<=Female_Percentiles(5) % 50th
        Female_data_50th = [Female_data_50th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(5)&&Female_data(i,3)<=Female_Percentiles(6) % 60th
        Female_data_60th = [Female_data_60th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(6)&&Female_data(i,3)<=Female_Percentiles(7) % 70th
        Female_data_70th = [Female_data_70th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(7)&&Female_data(i,3)<=Female_Percentiles(8) % 80th
        Female_data_80th = [Female_data_80th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(8)&&Female_data(i,3)<=Female_Percentiles(9) % 90th
        Female_data_90th = [Female_data_90th;Female_data(i,:)];
    end
    if Female_data(i,3)>Female_Percentiles(9)&&Female_data(i,3)<=Female_Percentiles(10) % 100th
        Female_data_100th = [Female_data_100th;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data); % No. Height Weight Age FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
Male_Percentiles = prctile(Male_data(:,3),My_Percentile);
for i = 1:M
    if Male_data(i,3)<=Male_Percentiles(1) % 10th
        Male_data_10th = [Male_data_10th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(1)&&Male_data(i,3)<=Male_Percentiles(2) % 20th
        Male_data_20th = [Male_data_20th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(2)&&Male_data(i,3)<=Male_Percentiles(3) % 30th
        Male_data_30th = [Male_data_30th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(3)&&Male_data(i,3)<=Male_Percentiles(4) % 40th
        Male_data_40th = [Male_data_40th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(4)&&Male_data(i,3)<=Male_Percentiles(5) % 50th
        Male_data_50th = [Male_data_50th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(5)&&Male_data(i,3)<=Male_Percentiles(6) % 60th
        Male_data_60th = [Male_data_60th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(6)&&Male_data(i,3)<=Male_Percentiles(7) % 70th
        Male_data_70th = [Male_data_70th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(7)&&Male_data(i,3)<=Male_Percentiles(8) % 80th
        Male_data_80th = [Male_data_80th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(8)&&Male_data(i,3)<=Male_Percentiles(9) % 90th
        Male_data_90th = [Male_data_90th;Male_data(i,:)];
    end
    if Male_data(i,3)>Male_Percentiles(9)&&Male_data(i,3)<=Male_Percentiles(10) % 100th
        Male_data_100th = [Male_data_100th;Male_data(i,:)];
    end
end

%%
figure;
% Boxplot
subplot(3,2,1); % Female
hold on;
title('Female')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
ylabel('Age (yr)')
xlim([0 11]);
ylim([5 22]);

xx = [Female_data_10th(:,4);Female_data_20th(:,4);Female_data_30th(:,4);Female_data_40th(:,4);Female_data_50th(:,4);...
    Female_data_60th(:,4);Female_data_70th(:,4);Female_data_80th(:,4);Female_data_90th(:,4);Female_data_100th(:,4)];
gg = [repmat({'10th'},length(Female_data_10th(:,4)),1);repmat({'20th'},length(Female_data_20th(:,4)),1);...
    repmat({'30th'},length(Female_data_30th(:,4)),1);repmat({'40th'},length(Female_data_40th(:,4)),1);...
    repmat({'50th'},length(Female_data_50th(:,4)),1);repmat({'60th'},length(Female_data_60th(:,4)),1);...
    repmat({'70th'},length(Female_data_70th(:,4)),1);repmat({'80th'},length(Female_data_80th(:,4)),1);...
    repmat({'90th'},length(Female_data_90th(:,4)),1);repmat({'100th'},length(Female_data_100th(:,4)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)

subplot(3,2,2); % Male
hold on;
title('Male')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
%ylabel('Age (yr)')
xlim([0 11]);
ylim([5 22]);

xx = [Male_data_10th(:,4);Male_data_20th(:,4);Male_data_30th(:,4);Male_data_40th(:,4);Male_data_50th(:,4);...
    Male_data_60th(:,4);Male_data_70th(:,4);Male_data_80th(:,4);Male_data_90th(:,4);Male_data_100th(:,4)];
gg = [repmat({'10th'},length(Male_data_10th(:,4)),1);repmat({'20th'},length(Male_data_20th(:,4)),1);...
    repmat({'30th'},length(Male_data_30th(:,4)),1);repmat({'40th'},length(Male_data_40th(:,4)),1);...
    repmat({'50th'},length(Male_data_50th(:,4)),1);repmat({'60th'},length(Male_data_60th(:,4)),1);...
    repmat({'70th'},length(Male_data_70th(:,4)),1);repmat({'80th'},length(Male_data_80th(:,4)),1);...
    repmat({'90th'},length(Male_data_90th(:,4)),1);repmat({'100th'},length(Male_data_100th(:,4)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)

subplot(3,2,3); % Female
hold on;
%title('Female')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
ylabel('Height (cm)')
xlim([0 11]);
ylim([100 180]);

xx = [Female_data_10th(:,2);Female_data_20th(:,2);Female_data_30th(:,2);Female_data_40th(:,2);Female_data_50th(:,2);...
    Female_data_60th(:,2);Female_data_70th(:,2);Female_data_80th(:,2);Female_data_90th(:,2);Female_data_100th(:,2)];
gg = [repmat({'10th'},length(Female_data_10th(:,2)),1);repmat({'20th'},length(Female_data_20th(:,2)),1);...
    repmat({'30th'},length(Female_data_30th(:,2)),1);repmat({'40th'},length(Female_data_40th(:,2)),1);...
    repmat({'50th'},length(Female_data_50th(:,2)),1);repmat({'60th'},length(Female_data_60th(:,2)),1);...
    repmat({'70th'},length(Female_data_70th(:,2)),1);repmat({'80th'},length(Female_data_80th(:,2)),1);...
    repmat({'90th'},length(Female_data_90th(:,2)),1);repmat({'100th'},length(Female_data_100th(:,2)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)

subplot(3,2,4); % Male
hold on;
%title('Male')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
%ylabel('Age (yr)')
xlim([0 11]);
ylim([100 200]);

xx = [Male_data_10th(:,2);Male_data_20th(:,2);Male_data_30th(:,2);Male_data_40th(:,2);Male_data_50th(:,2);...
    Male_data_60th(:,2);Male_data_70th(:,2);Male_data_80th(:,2);Male_data_90th(:,2);Male_data_100th(:,2)];
gg = [repmat({'10th'},length(Male_data_10th(:,2)),1);repmat({'20th'},length(Male_data_20th(:,2)),1);...
    repmat({'30th'},length(Male_data_30th(:,2)),1);repmat({'40th'},length(Male_data_40th(:,2)),1);...
    repmat({'50th'},length(Male_data_50th(:,2)),1);repmat({'60th'},length(Male_data_60th(:,2)),1);...
    repmat({'70th'},length(Male_data_70th(:,2)),1);repmat({'80th'},length(Male_data_80th(:,2)),1);...
    repmat({'90th'},length(Male_data_90th(:,2)),1);repmat({'100th'},length(Male_data_100th(:,2)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)

subplot(3,2,5); % Female
hold on;
%title('Female')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
ylabel('Weight (Kg)')
xlim([0 11]);
ylim([10 80]);

xx = [Female_data_10th(:,3);Female_data_20th(:,3);Female_data_30th(:,3);Female_data_40th(:,3);Female_data_50th(:,3);...
    Female_data_60th(:,3);Female_data_70th(:,3);Female_data_80th(:,3);Female_data_90th(:,3);Female_data_100th(:,3)];
gg = [repmat({'10th'},length(Female_data_10th(:,3)),1);repmat({'20th'},length(Female_data_20th(:,3)),1);...
    repmat({'30th'},length(Female_data_30th(:,3)),1);repmat({'40th'},length(Female_data_40th(:,3)),1);...
    repmat({'50th'},length(Female_data_50th(:,3)),1);repmat({'60th'},length(Female_data_60th(:,3)),1);...
    repmat({'70th'},length(Female_data_70th(:,3)),1);repmat({'80th'},length(Female_data_80th(:,3)),1);...
    repmat({'90th'},length(Female_data_90th(:,3)),1);repmat({'100th'},length(Female_data_100th(:,3)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
%ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)

subplot(3,2,6); % Male
hold on;
%title('Male')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
%xlabel('Percentiles(th)');
%ylabel('Age (yr)')
xlim([0 11]);
ylim([10 100]);

xx = [Male_data_10th(:,3);Male_data_20th(:,3);Male_data_30th(:,3);Male_data_40th(:,3);Male_data_50th(:,3);...
    Male_data_60th(:,3);Male_data_70th(:,3);Male_data_80th(:,3);Male_data_90th(:,3);Male_data_100th(:,3)];
gg = [repmat({'10th'},length(Male_data_10th(:,3)),1);repmat({'20th'},length(Male_data_20th(:,3)),1);...
    repmat({'30th'},length(Male_data_30th(:,3)),1);repmat({'40th'},length(Male_data_40th(:,3)),1);...
    repmat({'50th'},length(Male_data_50th(:,3)),1);repmat({'60th'},length(Male_data_60th(:,3)),1);...
    repmat({'70th'},length(Male_data_70th(:,3)),1);repmat({'80th'},length(Male_data_80th(:,3)),1);...
    repmat({'90th'},length(Male_data_90th(:,3)),1);repmat({'100th'},length(Male_data_100th(:,3)),1)];

H = boxplot(xx,gg,'color',My_Box_Color,'Symbol','');
box off;
ax = gca;
%ax.XAxis.Visible = 'off';
set(H,'linewidth',My_LineWidth)
