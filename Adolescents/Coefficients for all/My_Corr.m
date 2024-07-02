function P = My_Corr(X,Y)
%% To test whether the X and Y arrays conform to the normal distribution, 
% the Pearson correlation coefficient is calculated if it conforms, and 
% the Spearman correlation coefficient is calculated if it does not conform.
My_P = 0.005; % P value
%%
[h1,p1] = jbtest(X,My_P);% normality test
[h2,p2] = jbtest(Y,My_P);% normality test

if h1==0&&h2==0 % Yes
    P = corr(X,Y,'type','Pearson');
else
    P = corr(X,Y,'type','Spearman'); % No
end
