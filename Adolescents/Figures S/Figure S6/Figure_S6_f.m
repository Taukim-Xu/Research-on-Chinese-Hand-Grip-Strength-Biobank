%% Source codes for Figure S6(f).
% We use Fourier transform to calculate the frequency spectrum of 
% coefficients c and d changing with age for the KSPF.
% Model: 1 = c/HGS + d*Height
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Loading data
load('Coefficient_c_and_d_KSPF.mat')
%% Parameter information for drawing
My_MarkerSize = 7;
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
My_Alpha = 1; % transparency of the filled area
Edgealpha = 0;
Alpha =1;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;
%% We show the results
figure;
% Coefficients a
subplot(2,2,1);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('c for KSPF');
xlabel('Age (yr)');
ylabel('Coefficients c')
xlim([10 22]);
ylim([1 6]);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_KSPF;
y_data = Coefficient_c_Female_DH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age_KSPF;
y_data = Coefficient_c_Male_DH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');

% Legend
HH1 = plot([-2 -1],[-2 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
HH2 = plot([-2 -1],[-2 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HH1 HH2],'Female','Male','Location','northwest');
set(Legend,'Box','off','FontName',My_FontName)

% Coefficients b
subplot(2,2,2);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('d for KSPF');
xlabel('Age (yr)');
ylabel('Coefficients d')
xlim([10 22]);
ylim([0.4 0.65]);
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_KSPF;
y_data = Coefficient_d_Female_DH_KSPF; % Female
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H1 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_1);
HH1 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');

x_data = Age_KSPF;
y_data = Coefficient_d_Male_DH_KSPF; % Male
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 11:0.1:21;
YY = fitobject(XX);
H2 = plot(XX,YY,'r','LineWidth',My_LineWidth,'Color',Color_2);
HH2 = plot(x_data,y_data,'s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');

% Legend
HH1 = plot([-2 -1],[-2 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_1,'MarkerFaceColor','w');
HH2 = plot([-2 -1],[-2 -1],'-s','LineWidth',My_LineWidth,'MarkerSize',My_MarkerSize+1,'Color',Color_2,'MarkerFaceColor','w');
Legend = legend([HH1 HH2],'Female','Male','Location','southwest');
set(Legend,'Box','off','FontName',My_FontName)

%% Fast Fourier transform (FFT)
Fs = 50; % the Sampling frequency
% Coefficients a
subplot(2,2,3);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('c for KSPF');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 8]);
set(gca,'xtick',[0,0.125,0.5,1])
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_KSPF;
y_data = Coefficient_c_Female_DH_KSPF;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_1,'LineWidth',My_LineWidth);

x_data = Age_KSPF;
y_data = Coefficient_c_Male_DH_KSPF;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH2 = plot(f(1:end),P1(1:end),'color',Color_2,'LineWidth',My_LineWidth);

% Legend
Legend = legend([HH1 HH2],'Female','Male','Location','northeast');
set(Legend,'Box','off','FontName',My_FontName)

% Coefficient b
subplot(2,2,4);
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('d for KSPF');
xlabel('Frequency (Hz)');
ylabel('Magnitude')
xlim([0 0.7]);
ylim([0 0.7]);
set(gca,'xtick',[0,0.125,0.5,1])
%plot([0.125 0.125],[-1 10],'--k','LineWidth',1);

x_data = Age_KSPF;
y_data = Coefficient_d_Female_DH_KSPF;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH1 = plot(f(1:end),P1(1:end),'color',Color_1,'LineWidth',My_LineWidth);

x_data = Age_KSPF;
y_data = Coefficient_d_Male_DH_KSPF;
[fitobject,gof] = fit(x_data',y_data','smooth');
XX = 10.5:0.02:21.5;
YY = fitobject(XX);
X = YY;
[M N] = size(YY);
Y = fft(X); % FFT
P2 = abs(Y/M);
P1 = P2(1:M/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(M/2))/M;
HH2 = plot(f(1:end),P1(1:end),'color',Color_2,'LineWidth',My_LineWidth);

% Legend
Legend = legend([HH1 HH2],'Female','Male','Location','northeast');
set(Legend,'Box','off','FontName',My_FontName)
