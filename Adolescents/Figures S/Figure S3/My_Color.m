function Color = My_Color(r,Color_0)
%% According to the calculated correlation coefficient ( r ) and the given color block Color _ 0, the corresponding RGB color is returned.
%
%%
[M N] = size(Color_0);
My_r = -1:2/M:1;
if r<=-1
    Color = Color_0(1,:);
end
if r>= 1
    Color = Color_0(M,:);
end
if r>=-1&&r<=1
for i = 1:M
    if r>=My_r(i)&&r<=My_r(i+1)
        Color = Color_0(i,:);
        break;
    end
end
end