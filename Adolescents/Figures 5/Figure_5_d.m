%% Source codes for Figure 5(d).
% We use Fourier transform to calculate the frequency spectrum of 
% coefficients a, b, c, and d changing with age for our data (DH only).
% Model: 1 = a/Weight + b*Height, 1 = c/HGS + d*Height
% Abbreviations: HGS = Hand grip strength, FCF = Forearm circumference, 
% DH = Dominate hand, NDH = None-dominate hand.
%
%% Parameter information for drawing
My_LineWidth = 1.5;
My_FontName = 'Times New Roman';
My_fontSize = 12;
%% Colors
Color_1 = [239 118 122]/255;
Color_2 = [69 105 144]/255;
Color_3 = [72 192 170]/255;
Color_4 = [0 191 196]/255;
Color_5 = [63 154 128]/255;
%%
figure;
%%
% For female
subplot(3,1,1)
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Female')
xlabel('Frequency (Hz)');
ylabel('Count')
%xlim([0 0.6]);
ylim([0 8]);
XX = ["0.125" "0.2" "0.25" "0.333" "0.4"];
YY = [2 2 2 5 2];
BB = bar(XX,YY);
set(BB(1),'FaceColor',Color_1)
xtips1 = BB(1).XEndPoints;
ytips1 = BB(1).YEndPoints;
labels1 = ["2" "2" "2" "5" "2"];
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')

% For male
subplot(3,1,2)
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('Male')
xlabel('Frequency (Hz)');
ylabel('Count')
%xlim([0 0.6]);
ylim([0 8]);
XX = ["0.125" "0.2" "0.25" "0.333" "0.4"];
YY = [0 1 2 7 2];
BB = bar(XX,YY);
set(BB(1),'FaceColor',Color_2)
xtips1 = BB(1).XEndPoints;
ytips1 = BB(1).YEndPoints;
labels1 = ["0" "1" "2" "7" "2"];
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')

% For all
subplot(3,1,3)
hold on;
set(gca,'linewidth',My_LineWidth,'TickDir','out','FontName',My_FontName,'FontSize',My_fontSize)
title('ALL')
xlabel('Frequency (Hz)');
ylabel('Count')
%xlim([0 0.6]);
ylim([0 15]);
XX = ["0.125" "0.2" "0.25" "0.333" "0.4"];
YY = [2 3 4 12 4];
BB = bar(XX,YY);
set(BB(1),'FaceColor',Color_3)
xtips1 = BB(1).XEndPoints;
ytips1 = BB(1).YEndPoints;
labels1 = ["2" "3" "4" "12" "4"];
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')
