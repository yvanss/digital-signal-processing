% P0204a: x(n)= [1,-2,4,6,-5,8,10]; -3<=n<=3;
% x1(n)= 3x(n+2)+x(n-4)-2x(n)
clc; close all;
n = [-3:3]; x = [1,-2,4,6,-5,8,10];
[x11,n11] = sigshift(x,n,-2); %shift by -2
[x12,n12] = sigshift(x,n,4); %shift by 4
[x13,n13] = sigadd(3*x11,n11,1*x12,n12); % add two sequences
[x1,n1] = sigadd(x13,n13,-2*x,n); % add two sequences
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P0204a');
Hs = stem(n1,x1,'filled'); set(Hs,'markersize',2);
axis([min(n1)-1,max(n1)+1,min(x1)-3,max(x1)+1]);
xlabel('n','FontSize',LFS);
ylabel('x_1(n)','FontSize',LFS);
title('Sequence x_1(n)','FontSize',TFS); ntick = n1;
ytick = [min(x1)-3:5:max(x1)+1];
set(gca,'XTickMode','manual','XTick',ntick);
set(gca,'YTickMode','manual','YTick',ytick);
print -deps2 ../CHAP2_EPSFILES/P0204a;