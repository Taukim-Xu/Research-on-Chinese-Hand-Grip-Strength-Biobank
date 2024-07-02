%% Source codes for Figure S5(b).
% We fit the FCF = e5 + m5*Height, and FCF = e6 + m6*Weight models with data
% stratified by percentiles of height or weight.
% Model: FCF = e5 + m5*Height, FCF = e6 + m6*Weight
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

%% We stratify the data by percentile of Weight.
% Model: FCF = e3 + m3*Height
m3_Female_DH = [];
m3_Male_DH = [];

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

% linear fitting
figure;
% For female
subplot(2,5,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Female')
xlabel('Height (cm)');
ylabel('FCF (cm)')
xlim([90 200]);
ylim([10 35]);
My_Text1 = text(110,32,'FCF = e5 + m5*Height','FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% 10th
x_data = Female_data_10th(:,2); % Height
y_data = Female_data_10th(:,5); % FCF of DH
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 20th
x_data = Female_data_20th(:,2); % Height
y_data = Female_data_20th(:,5); % FCF of DH
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 30th
x_data = Female_data_30th(:,2); % Height
y_data = Female_data_30th(:,5); % FCF of DH
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 40th
x_data = Female_data_40th(:,2); % Height
y_data = Female_data_40th(:,5); % FCF of DH
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 50th
x_data = Female_data_50th(:,2); % Height
y_data = Female_data_50th(:,5); % FCF of DH
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 60th
x_data = Female_data_60th(:,2); % Height
y_data = Female_data_60th(:,5); % FCF of DH
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 70th
x_data = Female_data_70th(:,2); % Height
y_data = Female_data_70th(:,5); % FCF of DH
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 80th
x_data = Female_data_80th(:,2); % Height
y_data = Female_data_80th(:,5); % FCF of DH
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 90th
x_data = Female_data_90th(:,2); % Height
y_data = Female_data_90th(:,5); % FCF of DH
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];
% 100th
x_data = Female_data_100th(:,2); % Height
y_data = Female_data_100th(:,5); % FCF of DH
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',2);
m3_Female_DH = [m3_Female_DH BB(1)];

% For male
subplot(2,5,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Male')
xlabel('Height (cm)');
xlim([90 200]);
ylim([10 40]);
My_Text1 = text(110,36,'FCF = e5 + m5*Height','FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');
% 10th
x_data = Male_data_10th(:,2); % Height
y_data = Male_data_10th(:,5); % FCF of DH
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 20th
x_data = Male_data_20th(:,2); % Height
y_data = Male_data_20th(:,5); % FCF of DH
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 30th
x_data = Male_data_30th(:,2); % Height
y_data = Male_data_30th(:,5); % FCF of DH
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 40th
x_data = Male_data_40th(:,2); % Height
y_data = Male_data_40th(:,5); % FCF of DH
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 50th
x_data = Male_data_50th(:,2); % Height
y_data = Male_data_50th(:,5); % FCF of DH
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 60th
x_data = Male_data_60th(:,2); % Height
y_data = Male_data_60th(:,5); % FCF of DH
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 70th
x_data = Male_data_70th(:,2); % Height
y_data = Male_data_70th(:,5); % FCF of DH
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 80th
x_data = Male_data_80th(:,2); % Height
y_data = Male_data_80th(:,5); % FCF of DH
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 90th
x_data = Male_data_90th(:,2); % Height
y_data = Male_data_90th(:,5); % FCF of DH
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];
% 100th
x_data = Male_data_100th(:,2); % Height
y_data = Male_data_100th(:,5); % FCF of DH
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',2);
m3_Male_DH = [m3_Male_DH BB(1)];

% We show the results of m3
subplot(2,5,6);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Percentiles(th)');
ylabel('m5')
xlim([0 110]);
ylim([-0.1 0.4]);
x_data = 10:10:100;
y_data = m3_Female_DH;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_1,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth');
xxx = 5:105;
yyy = fitobject(xxx);
HH2 = plot(xxx,yyy,'Color',Color_1,'LineWidth',2);

subplot(2,5,7);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Percentiles(th)');
xlim([0 110]);
ylim([-0.1 0.4]);
x_data = 10:10:100;
y_data = m3_Male_DH;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_2,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth');
xxx = 5:105;
yyy = fitobject(xxx);
HH2 = plot(xxx,yyy,'color',Color_2,'LineWidth',2);

%% We stratify the data by percentile of height.
% Model: FCF = e4 + m4*Weight
m4_Female_DH = []; % 
m4_Male_DH = [];
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
[M N] = size(Female_data); % No. Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
Female_Percentiles = prctile(Female_data(:,2),My_Percentile);
for i = 1:M
    if Female_data(i,2)<=Female_Percentiles(1) % 10th
        Female_data_10th = [Female_data_10th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(1)&&Female_data(i,2)<=Female_Percentiles(2) % 20th
        Female_data_20th = [Female_data_20th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(2)&&Female_data(i,2)<=Female_Percentiles(3) % 30th
        Female_data_30th = [Female_data_30th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(3)&&Female_data(i,2)<=Female_Percentiles(4) % 40th
        Female_data_40th = [Female_data_40th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(4)&&Female_data(i,2)<=Female_Percentiles(5) % 50th
        Female_data_50th = [Female_data_50th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(5)&&Female_data(i,2)<=Female_Percentiles(6) % 60th
        Female_data_60th = [Female_data_60th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(6)&&Female_data(i,2)<=Female_Percentiles(7) % 70th
        Female_data_70th = [Female_data_70th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(7)&&Female_data(i,2)<=Female_Percentiles(8) % 80th
        Female_data_80th = [Female_data_80th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(8)&&Female_data(i,2)<=Female_Percentiles(9) % 90th
        Female_data_90th = [Female_data_90th;Female_data(i,:)];
    end
    if Female_data(i,2)>Female_Percentiles(9)&&Female_data(i,2)<=Female_Percentiles(10) % 100th
        Female_data_100th = [Female_data_100th;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data); % No. Height Weight FCF of DH FCF of NDH BMI HGS of DH HGS of NDH
Male_Percentiles = prctile(Male_data(:,2),My_Percentile);
for i = 1:M
    if Male_data(i,2)<=Male_Percentiles(1) % 10th
        Male_data_10th = [Male_data_10th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(1)&&Male_data(i,2)<=Male_Percentiles(2) % 20th
        Male_data_20th = [Male_data_20th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(2)&&Male_data(i,2)<=Male_Percentiles(3) % 30th
        Male_data_30th = [Male_data_30th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(3)&&Male_data(i,2)<=Male_Percentiles(4) % 40th
        Male_data_40th = [Male_data_40th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(4)&&Male_data(i,2)<=Male_Percentiles(5) % 50th
        Male_data_50th = [Male_data_50th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(5)&&Male_data(i,2)<=Male_Percentiles(6) % 60th
        Male_data_60th = [Male_data_60th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(6)&&Male_data(i,2)<=Male_Percentiles(7) % 70th
        Male_data_70th = [Male_data_70th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(7)&&Male_data(i,2)<=Male_Percentiles(8) % 80th
        Male_data_80th = [Male_data_80th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(8)&&Male_data(i,2)<=Male_Percentiles(9) % 90th
        Male_data_90th = [Male_data_90th;Male_data(i,:)];
    end
    if Male_data(i,2)>Male_Percentiles(9)&&Male_data(i,2)<=Male_Percentiles(10) % 100th
        Male_data_100th = [Male_data_100th;Male_data(i,:)];
    end
end

% Linear fitting
% For female
subplot(2,5,3);
hold on;
title('Female')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Weight (Kg)');
ylabel('FCF (cm)')
xlim([0 90]);
ylim([10 35]);
My_Text1 = text(20,32,'FCF = e6 + m6*Weight','FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% 10th
x_data = Female_data_10th(:,3); % Weight
y_data = Female_data_10th(:,5); % FCF of DH
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 20th
x_data = Female_data_20th(:,3); % Weight
y_data = Female_data_20th(:,5); % FCF of DH
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 30th
x_data = Female_data_30th(:,3); % Weight
y_data = Female_data_30th(:,5); % FCF of DH
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 40th
x_data = Female_data_40th(:,3); % Weight
y_data = Female_data_40th(:,5); % FCF of DH
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 50th
x_data = Female_data_50th(:,3); % Weight
y_data = Female_data_50th(:,5); % FCF of DH
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 60th
x_data = Female_data_60th(:,3); % Weight
y_data = Female_data_60th(:,5); % FCF of DH
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 70th
x_data = Female_data_70th(:,3); % Weight
y_data = Female_data_70th(:,5); % FCF of DH
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 80th
x_data = Female_data_80th(:,3); % Weight
y_data = Female_data_80th(:,5); % FCF of DH
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 90th
x_data = Female_data_90th(:,3); % Weight
y_data = Female_data_90th(:,5); % FCF of DH
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];
% 100th
x_data = Female_data_100th(:,3); % Weight
y_data = Female_data_100th(:,5); % FCF of DH
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',2);
m4_Female_DH = [m4_Female_DH BB(1)];

% For male
subplot(2,5,4);
hold on;
title('Male')
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Weight (Kg)');
xlim([0 110]);
ylim([10 40]);
My_Text1 = text(20,36,'FCF = e6 + m6*Weight','FontSize',My_fontSize,'FontName',My_FontName,'HorizontalAlignment','Left');

% 10th
x_data = Male_data_10th(:,3); % Weight
y_data = Male_data_10th(:,5); % FCF of DH
H6 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_6);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_6,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 20th
x_data = Male_data_20th(:,3); % Weight
y_data = Male_data_20th(:,5); % FCF of DH
H7 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_7);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_7,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 30th
x_data = Male_data_30th(:,3); % Weight
y_data = Male_data_30th(:,5); % FCF of DH
H8 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_8);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_8,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 40th
x_data = Male_data_40th(:,3); % Weight
y_data = Male_data_40th(:,5); % FCF of DH
H9 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_9);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_9,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 50th
x_data = Male_data_50th(:,3); % Weight
y_data = Male_data_50th(:,5); % FCF of DH
H10 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_10);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_10,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 60th
x_data = Male_data_60th(:,3); % Weight
y_data = Male_data_60th(:,5); % FCF of DH
H11 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_11);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_11,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 70th
x_data = Male_data_70th(:,3); % Weight
y_data = Male_data_70th(:,5); % FCF of DH
H12 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_12);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_12,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 80th
x_data = Male_data_80th(:,3); % Weight
y_data = Male_data_80th(:,5); % FCF of DH
H13 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_13);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_13,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 90th
x_data = Male_data_90th(:,3); % Weight
y_data = Male_data_90th(:,5); % FCF of DH
H14 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_14);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_14,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];
% 100th
x_data = Male_data_100th(:,3); % Weight
y_data = Male_data_100th(:,5); % FCF of DH
H15 = plot(x_data,y_data,My_mark_type,'MarkerSize',My_mark_size,'Color',Color_15);
BB = polyfit(x_data,y_data,1);
x_temp = min(x_data):0.1:max(x_data);
y_temp = BB(2)+BB(1)*x_temp;
plot(x_temp,y_temp,'Color',Color_15,'LineWidth',2);
m4_Male_DH = [m4_Male_DH BB(1)];

% We show the results of m4
subplot(2,5,8);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Percentiles(th)');
ylabel('m6')
xlim([0 110]);
ylim([-0.1 0.4]);
x_data = 10:10:100;
y_data = m4_Female_DH;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_3,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth');
xxx = 5:105;
yyy = fitobject(xxx);
HH2 = plot(xxx,yyy,'Color',Color_3,'LineWidth',2);

subplot(2,5,9);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
xlabel('Percentiles(th)');
%ylabel('m2')
xlim([0 110]);
ylim([-0.1 0.4]);
x_data = 10:10:100;
y_data = m4_Male_DH;
HH1 = plot(x_data,y_data,'o','LineWidth',2,'MarkerSize',6,'color',Color_4,'MarkerFaceColor','w');
[fitobject,gof] = fit(x_data',y_data','smooth');
xxx = 5:105;
yyy = fitobject(xxx);
HH2 = plot(xxx,yyy,'Color',Color_4,'LineWidth',2);

%% Legends
subplot(2,5,5);
hold on
axis equal;
xlim([0 5]);
ylim([0 50]);
ax = gca;
ax.XAxis.Visible = 'off';
yyy = 2.5:5:47.5;
My_YTicklabel_1 = {'10th','20th','30th','40th','50th','60th','70th','80th','90th','100th'};
set(gca,'YTick',yyy,'YTicklabel',My_YTicklabel_1);
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize,'YAxisLocation','right')

MM = 0:5:50;
[M N] = size(MM);
for i = 1:N-1
    Fill_xx = [0 5 5 0];
    Fill_yy = [MM(i) MM(i) MM(i+1) MM(i+1)];
    HH = fill(Fill_xx,Fill_yy,Color_0(end-i+1,:)/255);
    set(HH,'edgealpha',0,'facealpha',My_Alpha);
end
