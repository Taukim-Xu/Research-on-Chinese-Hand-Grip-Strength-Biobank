%% Source codes for Figure S4(a).
% We calculate the distribution of a/Weight+b*Height for BCCPDS, JDHLE, Yun
% Wang, et al., Khan Akib, et al., and KSPF.
% Abbreviations: mHGS = maximum Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_mark_type = '.';
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
My_MarkerSize = 7;
Edgealpha = 0;
Alpha = 1;
My_Percentile = [5 10 25 50 75 90 95]; % percentiles
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;

Color_0 = [30 70 110]/255;
%%
FF = figure;
%% 01-BCCPDS
% Loading the Coefficients a and b
load('Coefficient_a_and_b_BCCPDS.mat') % Coefficient_a_Female_BCCPDS Coefficient_a_Male_BCCPDS Coefficient_b_Female_BCCPDS Coefficient_b_Male_BCCPDS
% We import the data
Female_data = xlsread('BCCPDS.xlsx','Female');
Male_data = xlsread('BCCPDS.xlsx','Male');
% Stratified by age and gender
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
[M N] = size(Female_data);% No. Age Height Weight
for i=1:M
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,:)];
    end

    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,:)];
    end

    if Female_data(i,2) == 9
        Female_data_9 = [Female_data_9;Female_data(i,:)];
    end

    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,:)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data);% No. Age Height Weight
for i=1:M
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,:)];
    end

    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,:)];
    end

    if Male_data(i,2) == 9
        Male_data_9 = [Male_data_9;Male_data(i,:)];
    end

    if Male_data(i,2) == 10
        Male_data_10 = [Male_data_10;Male_data(i,:)];
    end

    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,:)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21;Male_data(i,:)];
    end
end
% We calculate the distribution of a/Weight+b*Height
Residual_Female_7 = [];
Residual_Female_8 = [];
Residual_Female_9 = [];
Residual_Female_10 = [];
Residual_Female_11 = [];
Residual_Female_12 = [];
Residual_Female_13 = [];
Residual_Female_14 = [];
Residual_Female_15 = [];
Residual_Female_16 = [];
Residual_Female_17 = [];
Residual_Female_18 = [];
Residual_Female_19 = [];
Residual_Female_20 = [];
Residual_Female_21 = [];

Residual_Male_7 = [];
Residual_Male_8 = [];
Residual_Male_9 = [];
Residual_Male_10 = [];
Residual_Male_11 = [];
Residual_Male_12 = [];
Residual_Male_13 = [];
Residual_Male_14 = [];
Residual_Male_15 = [];
Residual_Male_16 = [];
Residual_Male_17 = [];
Residual_Male_18 = [];
Residual_Male_19 = [];
Residual_Male_20 = [];
Residual_Male_21 = [];

% For female
% Aged 7
[M N] = size(Female_data_7);
for i = 1:M
    Residual_Female_7 = [Residual_Female_7 Coefficient_a_Female_BCCPDS(1)/Female_data_7(i,4)+Coefficient_b_Female_BCCPDS(1)*Female_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Female_data_8);
for i = 1:M
    Residual_Female_8 = [Residual_Female_8 Coefficient_a_Female_BCCPDS(2)/Female_data_8(i,4)+Coefficient_b_Female_BCCPDS(2)*Female_data_8(i,3)/100];
end
% Aged 9
[M N] = size(Female_data_9);
for i = 1:M
    Residual_Female_9 = [Residual_Female_9 Coefficient_a_Female_BCCPDS(3)/Female_data_9(i,4)+Coefficient_b_Female_BCCPDS(3)*Female_data_9(i,3)/100];
end
% Aged 10
[M N] = size(Female_data_10);
for i = 1:M
    Residual_Female_10 = [Residual_Female_10 Coefficient_a_Female_BCCPDS(4)/Female_data_10(i,4)+Coefficient_b_Female_BCCPDS(4)*Female_data_10(i,3)/100];
end
% Aged 11
[M N] = size(Female_data_11);
for i = 1:M
    Residual_Female_11 = [Residual_Female_11 Coefficient_a_Female_BCCPDS(5)/Female_data_11(i,4)+Coefficient_b_Female_BCCPDS(5)*Female_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Female_data_12);
for i = 1:M
    Residual_Female_12 = [Residual_Female_12 Coefficient_a_Female_BCCPDS(6)/Female_data_12(i,4)+Coefficient_b_Female_BCCPDS(6)*Female_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Female_data_13);
for i = 1:M
    Residual_Female_13 = [Residual_Female_13 Coefficient_a_Female_BCCPDS(7)/Female_data_13(i,4)+Coefficient_b_Female_BCCPDS(7)*Female_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Female_data_14);
for i = 1:M
    Residual_Female_14 = [Residual_Female_14 Coefficient_a_Female_BCCPDS(8)/Female_data_14(i,4)+Coefficient_b_Female_BCCPDS(8)*Female_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Female_data_15);
for i = 1:M
    Residual_Female_15 = [Residual_Female_15 Coefficient_a_Female_BCCPDS(9)/Female_data_15(i,4)+Coefficient_b_Female_BCCPDS(9)*Female_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Female_data_16);
for i = 1:M
    Residual_Female_16 = [Residual_Female_16 Coefficient_a_Female_BCCPDS(10)/Female_data_16(i,4)+Coefficient_b_Female_BCCPDS(10)*Female_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Female_data_17);
for i = 1:M
    Residual_Female_17 = [Residual_Female_17 Coefficient_a_Female_BCCPDS(11)/Female_data_17(i,4)+Coefficient_b_Female_BCCPDS(11)*Female_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Female_data_18);
for i = 1:M
    Residual_Female_18 = [Residual_Female_18 Coefficient_a_Female_BCCPDS(12)/Female_data_18(i,4)+Coefficient_b_Female_BCCPDS(12)*Female_data_18(i,3)/100];
end
% Aged 19
[M N] = size(Female_data_19);
for i = 1:M
    Residual_Female_19 = [Residual_Female_19 Coefficient_a_Female_BCCPDS(13)/Female_data_19(i,4)+Coefficient_b_Female_BCCPDS(13)*Female_data_19(i,3)/100];
end
% Aged 20
[M N] = size(Female_data_20);
for i = 1:M
    Residual_Female_20 = [Residual_Female_20 Coefficient_a_Female_BCCPDS(14)/Female_data_20(i,4)+Coefficient_b_Female_BCCPDS(14)*Female_data_20(i,3)/100];
end
% Aged 21
[M N] = size(Female_data_21);
for i = 1:M
    Residual_Female_21 = [Residual_Female_21 Coefficient_a_Female_BCCPDS(15)/Female_data_21(i,4)+Coefficient_b_Female_BCCPDS(15)*Female_data_21(i,3)/100];
end

Residual_Female = [Residual_Female_7 Residual_Female_8 Residual_Female_9 Residual_Female_10 Residual_Female_11 ...
    Residual_Female_12 Residual_Female_13 Residual_Female_14 Residual_Female_15 Residual_Female_16 Residual_Female_17 Residual_Female_18 ...
    Residual_Female_19 Residual_Female_20 Residual_Female_21];

% For Male
% Aged 7
[M N] = size(Male_data_7);
for i = 1:M
    Residual_Male_7 = [Residual_Male_7 Coefficient_a_Male_BCCPDS(1)/Male_data_7(i,4)+Coefficient_b_Male_BCCPDS(1)*Male_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Male_data_8);
for i = 1:M
    Residual_Male_8 = [Residual_Male_8 Coefficient_a_Male_BCCPDS(2)/Male_data_8(i,4)+Coefficient_b_Male_BCCPDS(2)*Male_data_8(i,3)/100];
end
% Aged 9
[M N] = size(Male_data_9);
for i = 1:M
    Residual_Male_9 = [Residual_Male_9 Coefficient_a_Male_BCCPDS(3)/Male_data_9(i,4)+Coefficient_b_Male_BCCPDS(3)*Male_data_9(i,3)/100];
end
% Aged 10
[M N] = size(Male_data_10);
for i = 1:M
    Residual_Male_10 = [Residual_Male_10 Coefficient_a_Male_BCCPDS(4)/Male_data_10(i,4)+Coefficient_b_Male_BCCPDS(4)*Male_data_10(i,3)/100];
end
% Aged 11
[M N] = size(Male_data_11);
for i = 1:M
    Residual_Male_11 = [Residual_Male_11 Coefficient_a_Male_BCCPDS(5)/Male_data_11(i,4)+Coefficient_b_Male_BCCPDS(5)*Male_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Male_data_12);
for i = 1:M
    Residual_Male_12 = [Residual_Male_12 Coefficient_a_Male_BCCPDS(6)/Male_data_12(i,4)+Coefficient_b_Male_BCCPDS(6)*Male_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Male_data_13);
for i = 1:M
    Residual_Male_13 = [Residual_Male_13 Coefficient_a_Male_BCCPDS(7)/Male_data_13(i,4)+Coefficient_b_Male_BCCPDS(7)*Male_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Male_data_14);
for i = 1:M
    Residual_Male_14 = [Residual_Male_14 Coefficient_a_Male_BCCPDS(8)/Male_data_14(i,4)+Coefficient_b_Male_BCCPDS(8)*Male_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Male_data_15);
for i = 1:M
    Residual_Male_15 = [Residual_Male_15 Coefficient_a_Male_BCCPDS(9)/Male_data_15(i,4)+Coefficient_b_Male_BCCPDS(9)*Male_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Male_data_16);
for i = 1:M
    Residual_Male_16 = [Residual_Male_16 Coefficient_a_Male_BCCPDS(10)/Male_data_16(i,4)+Coefficient_b_Male_BCCPDS(10)*Male_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Male_data_17);
for i = 1:M
    Residual_Male_17 = [Residual_Male_17 Coefficient_a_Male_BCCPDS(11)/Male_data_17(i,4)+Coefficient_b_Male_BCCPDS(11)*Male_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Male_data_18);
for i = 1:M
    Residual_Male_18 = [Residual_Male_18 Coefficient_a_Male_BCCPDS(12)/Male_data_18(i,4)+Coefficient_b_Male_BCCPDS(12)*Male_data_18(i,3)/100];
end
% Aged 19
[M N] = size(Male_data_19);
for i = 1:M
    Residual_Male_19 = [Residual_Male_19 Coefficient_a_Male_BCCPDS(13)/Male_data_19(i,4)+Coefficient_b_Male_BCCPDS(13)*Male_data_19(i,3)/100];
end
% Aged 20
[M N] = size(Male_data_20);
for i = 1:M
    Residual_Male_20 = [Residual_Male_20 Coefficient_a_Male_BCCPDS(14)/Male_data_20(i,4)+Coefficient_b_Male_BCCPDS(14)*Male_data_20(i,3)/100];
end
% Aged 21
[M N] = size(Male_data_21);
for i = 1:M
    Residual_Male_21 = [Residual_Male_21 Coefficient_a_Male_BCCPDS(15)/Male_data_21(i,4)+Coefficient_b_Male_BCCPDS(15)*Male_data_21(i,3)/100];
end

Residual_Male = [Residual_Male_7 Residual_Male_8 Residual_Male_9 Residual_Male_10 Residual_Male_11 ...
    Residual_Male_12 Residual_Male_13 Residual_Male_14 Residual_Male_15 Residual_Male_16 Residual_Male_17 Residual_Male_18 ...
    Residual_Male_19 Residual_Male_20 Residual_Male_21];

% We show the results of a/Weight+b*Height
nbins = 35;
figure;
HH_Female = histogram(Residual_Female,nbins);
figure;
nbins = 60;
HH_Male = histogram(Residual_Male,nbins);
nbins = 35;
figure(FF);
% For female
subplot(2,5,1)
hold on;
title('Female of BCCPDS')
%xlabel('a/Weight+b*Height');
ylabel('Count')
xlim([0.85 1.15]);
ylim([0 1900]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Show the percentiles
Prctile_Female = prctile(Residual_Female,My_Percentile);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;

XX_Line = [Prctile_Female(1) Prctile_Female(1)]; % 5th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(2) Prctile_Female(2)]; % 10th
YY_Line = [0 900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(3) Prctile_Female(3)]; % 25th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(4) Prctile_Female(4)]; % 50th
YY_Line = [0 1700];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(5) Prctile_Female(5)]; % 75th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(6) Prctile_Female(6)]; % 90th
YY_Line = [0 900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(7) Prctile_Female(7)]; % 95th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_1);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);

% For male
subplot(2,5,2)
hold on;
title('Male of BCCPDS')
%xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 2000]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

Prctile_Male = prctile(Residual_Male,My_Percentile);
% 
XX_Line = [Prctile_Male(1) Prctile_Male(1)]; % 5th
YY_Line = [0 700];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(2) Prctile_Male(2)]; % 10th
YY_Line = [0 1200];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(3) Prctile_Male(3)]; % 25th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(4) Prctile_Male(4)]; % 50th
YY_Line = [0 1900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(5) Prctile_Male(5)]; % 75th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(6) Prctile_Male(6)]; % 90th
YY_Line = [0 1200];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(7) Prctile_Male(7)]; % 95th
YY_Line = [0 700];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

xx = HH_Male.BinEdges;
yy = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_2);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);

%% 02-JDHLE
% Loading the Coefficients a and b
load('Coefficient_a_and_b_JDHLE.mat') % Coefficient_a_Female_JDHLE Coefficient_a_Male_JDHLE Coefficient_b_Female_JDHLE Coefficient_b_Male_JDHLE
% We import the data
Female_data = xlsread('Japanese_children_Aged_1_8.xlsx','Female');
Male_data = xlsread('Japanese_children_Aged_1_8.xlsx','Male');
% Stratified by age and gender
Female_data_1 = [];
Female_data_2 = [];
Female_data_3 = [];
Female_data_4 = [];
Female_data_5 = [];
Female_data_6 = [];
Female_data_7 = [];
Female_data_8 = [];

Male_data_1 = [];
Male_data_2 = [];
Male_data_3 = [];
Male_data_4 = [];
Male_data_5 = [];
Male_data_6 = [];
Male_data_7 = [];
Male_data_8 = [];

% For female
[M N] = size(Female_data);% No. Age Height Weight
for i=1:M
    if Female_data(i,2) == 1
        Female_data_1 = [Female_data_1;Female_data(i,:)];
    end

    if Female_data(i,2) == 2
        Female_data_2 = [Female_data_2;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 3
        Female_data_3 = [Female_data_3;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 4
        Female_data_4 = [Female_data_4;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 5
        Female_data_5 = [Female_data_5;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 6
        Female_data_6 = [Female_data_6;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,:)];
    end
end

% For Male
[M N] = size(Male_data);% No. Age Height Weight
for i=1:M
    if Male_data(i,2) == 1
        Male_data_1 = [Male_data_1;Male_data(i,:)];
    end

    if Male_data(i,2) == 2
        Male_data_2 = [Male_data_2;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 3
        Male_data_3 = [Male_data_3;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 4
        Male_data_4 = [Male_data_4;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 5
        Male_data_5 = [Male_data_5;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 6
        Male_data_6 = [Male_data_6;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,:)];
    end
end

% We calculate the distribution of a/Weight+b*Height
Residual_Female_1 = [];
Residual_Female_2 = [];
Residual_Female_3 = [];
Residual_Female_4 = [];
Residual_Female_5 = [];
Residual_Female_6 = [];
Residual_Female_7 = [];
Residual_Female_8 = [];

Residual_Male_1 = [];
Residual_Male_2 = [];
Residual_Male_3 = [];
Residual_Male_4 = [];
Residual_Male_5 = [];
Residual_Male_6 = [];
Residual_Male_7 = [];
Residual_Male_8 = [];

% For female
% Aged 1
[M N] = size(Female_data_1);
for i = 1:M
    Residual_Female_1 = [Residual_Female_1 Coefficient_a_Female_JDHLE(1)/Female_data_1(i,4)+Coefficient_b_Female_JDHLE(1)*Female_data_1(i,3)/100];
end
% Aged 2
[M N] = size(Female_data_2);
for i = 1:M
    Residual_Female_2 = [Residual_Female_2 Coefficient_a_Female_JDHLE(2)/Female_data_2(i,4)+Coefficient_b_Female_JDHLE(2)*Female_data_2(i,3)/100];
end
% Aged 3
[M N] = size(Female_data_3);
for i = 1:M
    Residual_Female_3 = [Residual_Female_3 Coefficient_a_Female_JDHLE(3)/Female_data_3(i,4)+Coefficient_b_Female_JDHLE(3)*Female_data_3(i,3)/100];
end
% Aged 4
[M N] = size(Female_data_4);
for i = 1:M
    Residual_Female_4 = [Residual_Female_4 Coefficient_a_Female_JDHLE(4)/Female_data_4(i,4)+Coefficient_b_Female_JDHLE(4)*Female_data_4(i,3)/100];
end
% Aged 5
[M N] = size(Female_data_5);
for i = 1:M
    Residual_Female_5 = [Residual_Female_5 Coefficient_a_Female_JDHLE(5)/Female_data_5(i,4)+Coefficient_b_Female_JDHLE(5)*Female_data_5(i,3)/100];
end
% Aged 6
[M N] = size(Female_data_6);
for i = 1:M
    Residual_Female_6 = [Residual_Female_6 Coefficient_a_Female_JDHLE(6)/Female_data_6(i,4)+Coefficient_b_Female_JDHLE(6)*Female_data_6(i,3)/100];
end
% Aged 7
[M N] = size(Female_data_7);
for i = 1:M
    Residual_Female_7 = [Residual_Female_7 Coefficient_a_Female_JDHLE(7)/Female_data_7(i,4)+Coefficient_b_Female_JDHLE(7)*Female_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Female_data_8);
for i = 1:M
    Residual_Female_8 = [Residual_Female_8 Coefficient_a_Female_JDHLE(8)/Female_data_8(i,4)+Coefficient_b_Female_JDHLE(8)*Female_data_8(i,3)/100];
end

Residual_Female = [Residual_Female_1 Residual_Female_2 Residual_Female_3 Residual_Female_4 Residual_Female_5 Residual_Female_6 Residual_Female_7 ...
    Residual_Female_8];

% For Male
% Aged 1
[M N] = size(Male_data_1);
for i = 1:M
    Residual_Male_1 = [Residual_Male_1 Coefficient_a_Male_JDHLE(1)/Male_data_1(i,4)+Coefficient_b_Male_JDHLE(1)*Male_data_1(i,3)/100];
end
% Aged 2
[M N] = size(Male_data_2);
for i = 1:M
    Residual_Male_2 = [Residual_Male_2 Coefficient_a_Male_JDHLE(2)/Male_data_2(i,4)+Coefficient_b_Male_JDHLE(2)*Male_data_2(i,3)/100];
end
% Aged 3
[M N] = size(Male_data_3);
for i = 1:M
    Residual_Male_3 = [Residual_Male_3 Coefficient_a_Male_JDHLE(3)/Male_data_3(i,4)+Coefficient_b_Male_JDHLE(3)*Male_data_3(i,3)/100];
end
% Aged 4
[M N] = size(Male_data_4);
for i = 1:M
    Residual_Male_4 = [Residual_Male_4 Coefficient_a_Male_JDHLE(4)/Male_data_4(i,4)+Coefficient_b_Male_JDHLE(4)*Male_data_4(i,3)/100];
end
% Aged 5
[M N] = size(Male_data_5);
for i = 1:M
    Residual_Male_5 = [Residual_Male_5 Coefficient_a_Male_JDHLE(5)/Male_data_5(i,4)+Coefficient_b_Male_JDHLE(5)*Male_data_5(i,3)/100];
end
% Aged 6
[M N] = size(Male_data_6);
for i = 1:M
    Residual_Male_6 = [Residual_Male_6 Coefficient_a_Male_JDHLE(6)/Male_data_6(i,4)+Coefficient_b_Male_JDHLE(6)*Male_data_6(i,3)/100];
end
% Aged 7
[M N] = size(Male_data_7);
for i = 1:M
    Residual_Male_7 = [Residual_Male_7 Coefficient_a_Male_JDHLE(7)/Male_data_7(i,4)+Coefficient_b_Male_JDHLE(7)*Male_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Male_data_8);
for i = 1:M
    Residual_Male_8 = [Residual_Male_8 Coefficient_a_Male_JDHLE(8)/Male_data_8(i,4)+Coefficient_b_Male_JDHLE(8)*Male_data_8(i,3)/100];
end

Residual_Male = [Residual_Male_1 Residual_Male_2 Residual_Male_3 Residual_Male_4 Residual_Male_5 Residual_Male_6 Residual_Male_7 ...
    Residual_Male_8];

% We show the results of a/Weight+b*Height
nbins = 35;
figure;
HH_Female = histogram(Residual_Female,nbins);
figure;
%nbins = 60;
HH_Male = histogram(Residual_Male,nbins);
nbins = 35;
figure(FF);
% For female
subplot(2,5,3)
hold on;
title('Female of JDHLE')
%xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 100]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Show the percentiles
Prctile_Female = prctile(Residual_Female,My_Percentile);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;

XX_Line = [Prctile_Female(1) Prctile_Female(1)]; % 5th
YY_Line = [0 25];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(2) Prctile_Female(2)]; % 10th
YY_Line = [0 45];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(3) Prctile_Female(3)]; % 25th
YY_Line = [0 65];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(4) Prctile_Female(4)]; % 50th
YY_Line = [0 80];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(5) Prctile_Female(5)]; % 75th
YY_Line = [0 65];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(6) Prctile_Female(6)]; % 90th
YY_Line = [0 45];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(7) Prctile_Female(7)]; % 95th
YY_Line = [0 25];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_3);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);

% For male
subplot(2,5,4)
hold on;
title('Male of JDHLE')
%xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 100]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

Prctile_Male = prctile(Residual_Male,My_Percentile);
% 
XX_Line = [Prctile_Male(1) Prctile_Male(1)]; % 5th
YY_Line = [0 20];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(2) Prctile_Male(2)]; % 10th
YY_Line = [0 40];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(3) Prctile_Male(3)]; % 25th
YY_Line = [0 60];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(4) Prctile_Male(4)]; % 50th
YY_Line = [0 75];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(5) Prctile_Male(5)]; % 75th
YY_Line = [0 60];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(6) Prctile_Male(6)]; % 90th
YY_Line = [0 40];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(7) Prctile_Male(7)]; % 95th
YY_Line = [0 20];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+12,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

xx = HH_Male.BinEdges;
yy = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_4);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_4);

%% 03-Yun
% Loading the Coefficients a and b
load('Coefficient_a_and_b_Yun.mat') % Coefficient_a_Female_Yun Coefficient_a_Male_Yun Coefficient_b_Female_Yun Coefficient_b_Male_Yun
% We import the data
Female_data = xlsread('Jilin_China.xlsx','Female');
Male_data = xlsread('Jilin_China.xlsx','Male');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data);% No. Age Height Weight
for i=1:M
    if Female_data(i,2) == 7
        Female_data_7 = [Female_data_7;Female_data(i,:)];
    end

    if Female_data(i,2) == 8
        Female_data_8 = [Female_data_8;Female_data(i,:)];
    end

    if Female_data(i,2) == 9
        Female_data_9 = [Female_data_9;Female_data(i,:)];
    end

    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,:)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data);% No. Age Height Weight
for i=1:M
    if Male_data(i,2) == 7
        Male_data_7 = [Male_data_7;Male_data(i,:)];
    end

    if Male_data(i,2) == 8
        Male_data_8 = [Male_data_8;Male_data(i,:)];
    end

    if Male_data(i,2) == 9
        Male_data_9 = [Male_data_9;Male_data(i,:)];
    end

    if Male_data(i,2) == 10
        Male_data_10 = [Male_data_10;Male_data(i,:)];
    end

    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,:)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,:)];
    end
end
% We calculate the distribution of a/Weight+b*Height
Residual_Female_7 = [];
Residual_Female_8 = [];
Residual_Female_9 = [];
Residual_Female_10 = [];
Residual_Female_11 = [];
Residual_Female_12 = [];
Residual_Female_13 = [];
Residual_Female_14 = [];
Residual_Female_15 = [];
Residual_Female_16 = [];
Residual_Female_17 = [];
Residual_Female_18 = [];

Residual_Male_7 = [];
Residual_Male_8 = [];
Residual_Male_9 = [];
Residual_Male_10 = [];
Residual_Male_11 = [];
Residual_Male_12 = [];
Residual_Male_13 = [];
Residual_Male_14 = [];
Residual_Male_15 = [];
Residual_Male_16 = [];
Residual_Male_17 = [];
Residual_Male_18 = [];

% For female
% Aged 7
[M N] = size(Female_data_7);
for i = 1:M
    Residual_Female_7 = [Residual_Female_7 Coefficient_a_Female_Yun(1)/Female_data_7(i,4)+Coefficient_b_Female_Yun(1)*Female_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Female_data_8);
for i = 1:M
    Residual_Female_8 = [Residual_Female_8 Coefficient_a_Female_Yun(2)/Female_data_8(i,4)+Coefficient_b_Female_Yun(2)*Female_data_8(i,3)/100];
end
% Aged 9
[M N] = size(Female_data_9);
for i = 1:M
    Residual_Female_9 = [Residual_Female_9 Coefficient_a_Female_Yun(3)/Female_data_9(i,4)+Coefficient_b_Female_Yun(3)*Female_data_9(i,3)/100];
end
% Aged 10
[M N] = size(Female_data_10);
for i = 1:M
    Residual_Female_10 = [Residual_Female_10 Coefficient_a_Female_Yun(4)/Female_data_10(i,4)+Coefficient_b_Female_Yun(4)*Female_data_10(i,3)/100];
end
% Aged 11
[M N] = size(Female_data_11);
for i = 1:M
    Residual_Female_11 = [Residual_Female_11 Coefficient_a_Female_Yun(5)/Female_data_11(i,4)+Coefficient_b_Female_Yun(5)*Female_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Female_data_12);
for i = 1:M
    Residual_Female_12 = [Residual_Female_12 Coefficient_a_Female_Yun(6)/Female_data_12(i,4)+Coefficient_b_Female_Yun(6)*Female_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Female_data_13);
for i = 1:M
    Residual_Female_13 = [Residual_Female_13 Coefficient_a_Female_Yun(7)/Female_data_13(i,4)+Coefficient_b_Female_Yun(7)*Female_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Female_data_14);
for i = 1:M
    Residual_Female_14 = [Residual_Female_14 Coefficient_a_Female_Yun(8)/Female_data_14(i,4)+Coefficient_b_Female_Yun(8)*Female_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Female_data_15);
for i = 1:M
    Residual_Female_15 = [Residual_Female_15 Coefficient_a_Female_Yun(9)/Female_data_15(i,4)+Coefficient_b_Female_Yun(9)*Female_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Female_data_16);
for i = 1:M
    Residual_Female_16 = [Residual_Female_16 Coefficient_a_Female_Yun(10)/Female_data_16(i,4)+Coefficient_b_Female_Yun(10)*Female_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Female_data_17);
for i = 1:M
    Residual_Female_17 = [Residual_Female_17 Coefficient_a_Female_Yun(11)/Female_data_17(i,4)+Coefficient_b_Female_Yun(11)*Female_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Female_data_18);
for i = 1:M
    Residual_Female_18 = [Residual_Female_18 Coefficient_a_Female_Yun(12)/Female_data_18(i,4)+Coefficient_b_Female_Yun(12)*Female_data_18(i,3)/100];
end

Residual_Female = [Residual_Female_7 Residual_Female_8 Residual_Female_9 Residual_Female_10 Residual_Female_11 ...
    Residual_Female_12 Residual_Female_13 Residual_Female_14 Residual_Female_15 Residual_Female_16 Residual_Female_17 Residual_Female_18 ...
    Residual_Female_19 Residual_Female_20 Residual_Female_21];

% For Male
% Aged 7
[M N] = size(Male_data_7);
for i = 1:M
    Residual_Male_7 = [Residual_Male_7 Coefficient_a_Male_Yun(1)/Male_data_7(i,4)+Coefficient_b_Male_Yun(1)*Male_data_7(i,3)/100];
end
% Aged 8
[M N] = size(Male_data_8);
for i = 1:M
    Residual_Male_8 = [Residual_Male_8 Coefficient_a_Male_Yun(2)/Male_data_8(i,4)+Coefficient_b_Male_Yun(2)*Male_data_8(i,3)/100];
end
% Aged 9
[M N] = size(Male_data_9);
for i = 1:M
    Residual_Male_9 = [Residual_Male_9 Coefficient_a_Male_Yun(3)/Male_data_9(i,4)+Coefficient_b_Male_Yun(3)*Male_data_9(i,3)/100];
end
% Aged 10
[M N] = size(Male_data_10);
for i = 1:M
    Residual_Male_10 = [Residual_Male_10 Coefficient_a_Male_Yun(4)/Male_data_10(i,4)+Coefficient_b_Male_Yun(4)*Male_data_10(i,3)/100];
end
% Aged 11
[M N] = size(Male_data_11);
for i = 1:M
    Residual_Male_11 = [Residual_Male_11 Coefficient_a_Male_Yun(5)/Male_data_11(i,4)+Coefficient_b_Male_Yun(5)*Male_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Male_data_12);
for i = 1:M
    Residual_Male_12 = [Residual_Male_12 Coefficient_a_Male_Yun(6)/Male_data_12(i,4)+Coefficient_b_Male_Yun(6)*Male_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Male_data_13);
for i = 1:M
    Residual_Male_13 = [Residual_Male_13 Coefficient_a_Male_Yun(7)/Male_data_13(i,4)+Coefficient_b_Male_Yun(7)*Male_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Male_data_14);
for i = 1:M
    Residual_Male_14 = [Residual_Male_14 Coefficient_a_Male_Yun(8)/Male_data_14(i,4)+Coefficient_b_Male_Yun(8)*Male_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Male_data_15);
for i = 1:M
    Residual_Male_15 = [Residual_Male_15 Coefficient_a_Male_Yun(9)/Male_data_15(i,4)+Coefficient_b_Male_Yun(9)*Male_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Male_data_16);
for i = 1:M
    Residual_Male_16 = [Residual_Male_16 Coefficient_a_Male_Yun(10)/Male_data_16(i,4)+Coefficient_b_Male_Yun(10)*Male_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Male_data_17);
for i = 1:M
    Residual_Male_17 = [Residual_Male_17 Coefficient_a_Male_Yun(11)/Male_data_17(i,4)+Coefficient_b_Male_Yun(11)*Male_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Male_data_18);
for i = 1:M
    Residual_Male_18 = [Residual_Male_18 Coefficient_a_Male_Yun(12)/Male_data_18(i,4)+Coefficient_b_Male_Yun(12)*Male_data_18(i,3)/100];
end
Residual_Male = [Residual_Male_7 Residual_Male_8 Residual_Male_9 Residual_Male_10 Residual_Male_11 ...
    Residual_Male_12 Residual_Male_13 Residual_Male_14 Residual_Male_15 Residual_Male_16 Residual_Male_17 Residual_Male_18];

% We show the results of a/Weight+b*Height
nbins = 35;
figure;
HH_Female = histogram(Residual_Female,nbins);
figure;
%nbins = 50;
HH_Male = histogram(Residual_Male,nbins);
nbins = 35;
figure(FF);
% For female
subplot(2,5,6)
hold on;
title('Female of Yun')
xlabel('a/Weight+b*Height');
ylabel('Count')
xlim([0.85 1.15]);
ylim([0 1900]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Show the percentiles
Prctile_Female = prctile(Residual_Female,My_Percentile);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;

XX_Line = [Prctile_Female(1) Prctile_Female(1)]; % 5th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(2) Prctile_Female(2)]; % 10th
YY_Line = [0 950];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(3) Prctile_Female(3)]; % 25th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(4) Prctile_Female(4)]; % 50th
YY_Line = [0 1800];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(5) Prctile_Female(5)]; % 75th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(6) Prctile_Female(6)]; % 90th
YY_Line = [0 950];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(7) Prctile_Female(7)]; % 95th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_1);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);

% For male
subplot(2,5,7)
hold on;
title('Male of Yun')
xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 1000]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

Prctile_Male = prctile(Residual_Male,My_Percentile);
% 
XX_Line = [Prctile_Male(1) Prctile_Male(1)]; % 5th
YY_Line = [0 300];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(2) Prctile_Male(2)]; % 10th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(3) Prctile_Male(3)]; % 25th
YY_Line = [0 770];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(4) Prctile_Male(4)]; % 50th
YY_Line = [0 900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(5) Prctile_Male(5)]; % 75th
YY_Line = [0 770];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(6) Prctile_Male(6)]; % 90th
YY_Line = [0 500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(7) Prctile_Male(7)]; % 95th
YY_Line = [0 300];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+22,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

xx = HH_Male.BinEdges;
yy = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_2);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_2);

%% 04-Khan
% Loading the Coefficients a and b
load('Coefficient_a_and_b_Khan.mat') % Coefficient_a_Female_Khan Coefficient_a_Male_Khan Coefficient_b_Female_Khan Coefficient_b_Male_Khan
% We import the data
Female_data = xlsread('Bangladesh_2011_14.xlsx','Female');
% Stratified by age and gender
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

% For female
[M N] = size(Female_data);% No. Age Height Weight
for i=1:M
    if Female_data(i,2) == 10
        Female_data_10 = [Female_data_10;Female_data(i,:)];
    end

    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,:)];
    end
end
% We calculate the distribution of a/Weight+b*Height
Residual_Female_10 = [];
Residual_Female_11 = [];
Residual_Female_12 = [];
Residual_Female_13 = [];
Residual_Female_14 = [];
Residual_Female_15 = [];
Residual_Female_16 = [];
Residual_Female_17 = [];
Residual_Female_18 = [];
Residual_Female_19 = [];

% For female
% Aged 10
[M N] = size(Female_data_10);
for i = 1:M
    Residual_Female_10 = [Residual_Female_10 Coefficient_a_Female_Khan(1)/Female_data_10(i,4)+Coefficient_b_Female_Khan(1)*Female_data_10(i,3)/100];
end
% Aged 11
[M N] = size(Female_data_11);
for i = 1:M
    Residual_Female_11 = [Residual_Female_11 Coefficient_a_Female_Khan(2)/Female_data_11(i,4)+Coefficient_b_Female_Khan(2)*Female_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Female_data_12);
for i = 1:M
    Residual_Female_12 = [Residual_Female_12 Coefficient_a_Female_Khan(3)/Female_data_12(i,4)+Coefficient_b_Female_Khan(3)*Female_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Female_data_13);
for i = 1:M
    Residual_Female_13 = [Residual_Female_13 Coefficient_a_Female_Khan(4)/Female_data_13(i,4)+Coefficient_b_Female_Khan(4)*Female_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Female_data_14);
for i = 1:M
    Residual_Female_14 = [Residual_Female_14 Coefficient_a_Female_Khan(5)/Female_data_14(i,4)+Coefficient_b_Female_Khan(5)*Female_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Female_data_15);
for i = 1:M
    Residual_Female_15 = [Residual_Female_15 Coefficient_a_Female_Khan(6)/Female_data_15(i,4)+Coefficient_b_Female_Khan(6)*Female_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Female_data_16);
for i = 1:M
    Residual_Female_16 = [Residual_Female_16 Coefficient_a_Female_Khan(7)/Female_data_16(i,4)+Coefficient_b_Female_Khan(7)*Female_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Female_data_17);
for i = 1:M
    Residual_Female_17 = [Residual_Female_17 Coefficient_a_Female_Khan(8)/Female_data_17(i,4)+Coefficient_b_Female_Khan(8)*Female_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Female_data_18);
for i = 1:M
    Residual_Female_18 = [Residual_Female_18 Coefficient_a_Female_Khan(9)/Female_data_18(i,4)+Coefficient_b_Female_Khan(9)*Female_data_18(i,3)/100];
end
% Aged 19
[M N] = size(Female_data_19);
for i = 1:M
    Residual_Female_19 = [Residual_Female_19 Coefficient_a_Female_Khan(10)/Female_data_19(i,4)+Coefficient_b_Female_Khan(10)*Female_data_19(i,3)/100];
end

% We show the results of a/Weight+b*Height
nbins = 35;
figure;
HH_Female = histogram(Residual_Female,nbins);
figure(FF);
% For female
subplot(2,5,10)
hold on;
title('Female of Khan')
xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 2000]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Show the percentiles
Prctile_Female = prctile(Residual_Female,My_Percentile);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;

XX_Line = [Prctile_Female(1) Prctile_Female(1)]; % 5th
YY_Line = [0 550];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(2) Prctile_Female(2)]; % 10th
YY_Line = [0 900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(3) Prctile_Female(3)]; % 25th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(4) Prctile_Female(4)]; % 50th
YY_Line = [0 1800];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(5) Prctile_Female(5)]; % 75th
YY_Line = [0 1500];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(6) Prctile_Female(6)]; % 90th
YY_Line = [0 900];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(7) Prctile_Female(7)]; % 95th
YY_Line = [0 550];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+52,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_1);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_1);

%% 05-KSPF
% Loading the Coefficients a and b
load('Coefficient_a_and_b_KSPF.mat') % Coefficient_a_Female_KSPF Coefficient_a_Male_KSPF Coefficient_b_Female_KSPF Coefficient_b_Male_KSPF
% We import the data
Female_data = xlsread('KSPF, Korea.xlsx','Female');
Male_data = xlsread('KSPF, Korea.xlsx','Male');
% Stratified by age and gender
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
[M N] = size(Female_data);% No. Age Height Weight HGS of left hand HGS of right hand
for i=1:M
    if Female_data(i,2) == 11
        Female_data_11 = [Female_data_11;Female_data(i,:)];
    end

    if Female_data(i,2) == 12
        Female_data_12 = [Female_data_12;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 13
        Female_data_13 = [Female_data_13;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 14
        Female_data_14 = [Female_data_14;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 15
        Female_data_15 = [Female_data_15;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 16
        Female_data_16 = [Female_data_16;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 17
        Female_data_17 = [Female_data_17;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 18
        Female_data_18 = [Female_data_18;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 19
        Female_data_19 = [Female_data_19;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 20
        Female_data_20 = [Female_data_20;Female_data(i,:)];
    end
    
    if Female_data(i,2) == 21
        Female_data_21 = [Female_data_21;Female_data(i,:)];
    end
end

% For male
[M N] = size(Male_data);% No. Age Height Weight HGS of left hand HGS of right hand
for i=1:M
    if Male_data(i,2) == 11
        Male_data_11 = [Male_data_11;Male_data(i,:)];
    end

    if Male_data(i,2) == 12
        Male_data_12 = [Male_data_12;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 13
        Male_data_13 = [Male_data_13;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 14
        Male_data_14 = [Male_data_14;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 15
        Male_data_15 = [Male_data_15;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 16
        Male_data_16 = [Male_data_16;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 17
        Male_data_17 = [Male_data_17;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 18
        Male_data_18 = [Male_data_18;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 19
        Male_data_19 = [Male_data_19;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 20
        Male_data_20 = [Male_data_20;Male_data(i,:)];
    end
    
    if Male_data(i,2) == 21
        Male_data_21 = [Male_data_21;Male_data(i,:)];
    end
end
% We calculate the distribution of a/Weight+b*Height
Residual_Female_11 = [];
Residual_Female_12 = [];
Residual_Female_13 = [];
Residual_Female_14 = [];
Residual_Female_15 = [];
Residual_Female_16 = [];
Residual_Female_17 = [];
Residual_Female_18 = [];
Residual_Female_19 = [];
Residual_Female_20 = [];
Residual_Female_21 = [];

Residual_Male_11 = [];
Residual_Male_12 = [];
Residual_Male_13 = [];
Residual_Male_14 = [];
Residual_Male_15 = [];
Residual_Male_16 = [];
Residual_Male_17 = [];
Residual_Male_18 = [];
Residual_Male_19 = [];
Residual_Male_20 = [];
Residual_Male_21 = [];

% For female
% Aged 11
[M N] = size(Female_data_11);
for i = 1:M
    Residual_Female_11 = [Residual_Female_11 Coefficient_a_Female_KSPF(1)/Female_data_11(i,4)+Coefficient_b_Female_KSPF(1)*Female_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Female_data_12);
for i = 1:M
    Residual_Female_12 = [Residual_Female_12 Coefficient_a_Female_KSPF(2)/Female_data_12(i,4)+Coefficient_b_Female_KSPF(2)*Female_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Female_data_13);
for i = 1:M
    Residual_Female_13 = [Residual_Female_13 Coefficient_a_Female_KSPF(3)/Female_data_13(i,4)+Coefficient_b_Female_KSPF(3)*Female_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Female_data_14);
for i = 1:M
    Residual_Female_14 = [Residual_Female_14 Coefficient_a_Female_KSPF(4)/Female_data_14(i,4)+Coefficient_b_Female_KSPF(4)*Female_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Female_data_15);
for i = 1:M
    Residual_Female_15 = [Residual_Female_15 Coefficient_a_Female_KSPF(5)/Female_data_15(i,4)+Coefficient_b_Female_KSPF(5)*Female_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Female_data_16);
for i = 1:M
    Residual_Female_16 = [Residual_Female_16 Coefficient_a_Female_KSPF(6)/Female_data_16(i,4)+Coefficient_b_Female_KSPF(6)*Female_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Female_data_17);
for i = 1:M
    Residual_Female_17 = [Residual_Female_17 Coefficient_a_Female_KSPF(7)/Female_data_17(i,4)+Coefficient_b_Female_KSPF(7)*Female_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Female_data_18);
for i = 1:M
    Residual_Female_18 = [Residual_Female_18 Coefficient_a_Female_KSPF(8)/Female_data_18(i,4)+Coefficient_b_Female_KSPF(8)*Female_data_18(i,3)/100];
end
% Aged 19
[M N] = size(Female_data_19);
for i = 1:M
    Residual_Female_19 = [Residual_Female_19 Coefficient_a_Female_KSPF(9)/Female_data_19(i,4)+Coefficient_b_Female_KSPF(9)*Female_data_19(i,3)/100];
end
% Aged 20
[M N] = size(Female_data_20);
for i = 1:M
    Residual_Female_20 = [Residual_Female_20 Coefficient_a_Female_KSPF(10)/Female_data_20(i,4)+Coefficient_b_Female_KSPF(10)*Female_data_20(i,3)/100];
end
% Aged 21
[M N] = size(Female_data_21);
for i = 1:M
    Residual_Female_21 = [Residual_Female_21 Coefficient_a_Female_KSPF(11)/Female_data_21(i,4)+Coefficient_b_Female_KSPF(11)*Female_data_21(i,3)/100];
end

Residual_Female = [Residual_Female_11 Residual_Female_12 Residual_Female_13 Residual_Female_14 Residual_Female_15 ...
    Residual_Female_16 Residual_Female_17 Residual_Female_18 Residual_Female_19 Residual_Female_20 Residual_Female_21];

% For Male
% Aged 11
[M N] = size(Male_data_11);
for i = 1:M
    Residual_Male_11 = [Residual_Male_11 Coefficient_a_Male_KSPF(1)/Male_data_11(i,4)+Coefficient_b_Male_KSPF(1)*Male_data_11(i,3)/100];
end
% Aged 12
[M N] = size(Male_data_12);
for i = 1:M
    Residual_Male_12 = [Residual_Male_12 Coefficient_a_Male_KSPF(2)/Male_data_12(i,4)+Coefficient_b_Male_KSPF(2)*Male_data_12(i,3)/100];
end
% Aged 13
[M N] = size(Male_data_13);
for i = 1:M
    Residual_Male_13 = [Residual_Male_13 Coefficient_a_Male_KSPF(3)/Male_data_13(i,4)+Coefficient_b_Male_KSPF(3)*Male_data_13(i,3)/100];
end
% Aged 14
[M N] = size(Male_data_14);
for i = 1:M
    Residual_Male_14 = [Residual_Male_14 Coefficient_a_Male_KSPF(4)/Male_data_14(i,4)+Coefficient_b_Male_KSPF(4)*Male_data_14(i,3)/100];
end
% Aged 15
[M N] = size(Male_data_15);
for i = 1:M
    Residual_Male_15 = [Residual_Male_15 Coefficient_a_Male_KSPF(5)/Male_data_15(i,4)+Coefficient_b_Male_KSPF(5)*Male_data_15(i,3)/100];
end
% Aged 16
[M N] = size(Male_data_16);
for i = 1:M
    Residual_Male_16 = [Residual_Male_16 Coefficient_a_Male_KSPF(6)/Male_data_16(i,4)+Coefficient_b_Male_KSPF(6)*Male_data_16(i,3)/100];
end
% Aged 17
[M N] = size(Male_data_17);
for i = 1:M
    Residual_Male_17 = [Residual_Male_17 Coefficient_a_Male_KSPF(7)/Male_data_17(i,4)+Coefficient_b_Male_KSPF(7)*Male_data_17(i,3)/100];
end
% Aged 18
[M N] = size(Male_data_18);
for i = 1:M
    Residual_Male_18 = [Residual_Male_18 Coefficient_a_Male_KSPF(8)/Male_data_18(i,4)+Coefficient_b_Male_KSPF(8)*Male_data_18(i,3)/100];
end
% Aged 19
[M N] = size(Male_data_19);
for i = 1:M
    Residual_Male_19 = [Residual_Male_19 Coefficient_a_Male_KSPF(9)/Male_data_19(i,4)+Coefficient_b_Male_KSPF(9)*Male_data_19(i,3)/100];
end
% Aged 20
[M N] = size(Male_data_20);
for i = 1:M
    Residual_Male_20 = [Residual_Male_20 Coefficient_a_Male_KSPF(10)/Male_data_20(i,4)+Coefficient_b_Male_KSPF(10)*Male_data_20(i,3)/100];
end
% Aged 21
[M N] = size(Male_data_21);
for i = 1:M
    Residual_Male_21 = [Residual_Male_21 Coefficient_a_Male_KSPF(11)/Male_data_21(i,4)+Coefficient_b_Male_KSPF(11)*Male_data_21(i,3)/100];
end

Residual_Male = [Residual_Male_11 Residual_Male_12 Residual_Male_13 Residual_Male_14 Residual_Male_15 ...
    Residual_Male_16 Residual_Male_17 Residual_Male_18 Residual_Male_19 Residual_Male_20 Residual_Male_21];

% We show the results of a/Weight+b*Height
nbins = 85;
figure;
HH_Female = histogram(Residual_Female,nbins);
figure;
nbins = 85;
HH_Male = histogram(Residual_Male,nbins);
%nbins = 35;
figure(FF);
% For female
subplot(2,5,8)
hold on;
title('Female of KSPF')
xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 16000]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

% Show the percentiles
Prctile_Female = prctile(Residual_Female,My_Percentile);
xx = HH_Female.BinEdges;
yy = HH_Female.Values;

XX_Line = [Prctile_Female(1) Prctile_Female(1)]; % 5th
YY_Line = [0 5000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(2) Prctile_Female(2)]; % 10th
YY_Line = [0 9000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(3) Prctile_Female(3)]; % 25th
YY_Line = [0 13000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(4) Prctile_Female(4)]; % 50th
YY_Line = [0 15000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(5) Prctile_Female(5)]; % 75th
YY_Line = [0 13000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(6) Prctile_Female(6)]; % 90th
YY_Line = [0 9000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Female(7) Prctile_Female(7)]; % 95th
YY_Line = [0 5000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

[M N] = size(HH_Female.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_3);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Female.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_3);

% For male
subplot(2,5,9)
hold on;
title('Male of KSPF')
xlabel('a/Weight+b*Height');
%ylabel('Count')
xlim([0.85 1.15]);
ylim([0 30000]);
set(gca,'xtick',[0.9,0.95,1,1.05,1.1])
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)

Prctile_Male = prctile(Residual_Male,My_Percentile);
% 
XX_Line = [Prctile_Male(1) Prctile_Male(1)]; % 5th
YY_Line = [0 12000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '5th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(2) Prctile_Male(2)]; % 10th
YY_Line = [0 16000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '10th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(3) Prctile_Male(3)]; % 25th
YY_Line = [0 25000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '25th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(4) Prctile_Male(4)]; % 50th
YY_Line = [0 29000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '50th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(5) Prctile_Male(5)]; % 75th
YY_Line = [0 25000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '75th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(6) Prctile_Male(6)]; % 90th
YY_Line = [0 16000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '90th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

XX_Line = [Prctile_Male(7) Prctile_Male(7)]; % 95th
YY_Line = [0 12000];
LL = line(XX_Line,YY_Line,'linewidth',My_LineWidth,'Color',Color_0);
My_text = '95th'; % sprintf('\n')
Text = text(XX_Line(2),YY_Line(2)+220,My_text,'FontSize',12,'FontName',My_FontName,'HorizontalAlignment','Center');

xx = HH_Male.BinEdges;
yy = HH_Male.Values;
[M N] = size(HH_Male.BinEdges);
for i = 1:N-1
    X_Fill = [xx(i) xx(i+1) xx(i+1) xx(i)];
    Y_Fill = [0 0 yy(i) yy(i)];
    H = fill(X_Fill,Y_Fill,Color_4);
    set(H,'edgealpha',1,'facealpha',My_Alpha);
end
x_data = [];
y_data = HH_Male.Values;
for i = 1:N-1
    x_data = [x_data (xx(i)+xx(i+1))/2];
end
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = min(xx):0.01:max(xx);
YY = fitobject(XX);
H1 = plot(XX,YY,'LineWidth',My_LineWidth,'Color',Color_4);
