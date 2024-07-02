function P = My_Corr(X,Y)
%% 检验X和Y数组是否符合正态分布，符合则计算Pearson相关系数，不符合则计算Spearman相关系数
My_P = 0.005; % 正态检验P值
%%
[h1,p1] = jbtest(X,My_P);% 正态性检验
[h2,p2] = jbtest(Y,My_P);% 正态性检验

if h1==0&&h2==0 % 服从正态分布
    P = corr(X,Y,'type','Pearson');
else
    P = corr(X,Y,'type','Spearman'); % 不服从正态分布
end
