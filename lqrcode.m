clear all;
clc;
close all;
% syms a r b q s tf x0 t0
% [P X]=dsolve('Dp=-2*a*p+(1/r)*b*p^2-q,Dx=a*x+(-b/r)*b','p(tf)=s,x(t0)=x0','t');
% % X=dsolve('Dx=a*x+(-b/r)*b','x(t0)=x0','t');
% % pretty(P);
% U=-(b/r)*P*X;
% 
% t=0:0.1:1;
% u=subs(U,{a,b,s,q,r,t0,x0,tf},{1,1,1,1,1,0,0,1});

a=1;
b=1;
% s=1;
% q=1;
% r=1;
t0=0;
x0=2;
tf=1;
t=0:0.1:1;
i=[1;1;1;0;0;0];
j=[1;1;3;1;3;1];
k=[1;3;1;1;3;3];
set(figure,'Color','White');
for z=1:1:6
    s=i(z);
    q=j(z);
    r=k(z);
    [P,X]=dsolve('Dp=-2*a*p+(1/r)*b*p^2-q,Dx=a*x+(-b/r)*b','p(tf)=s,x(t0)=x0','t');
    U=-(b/r)*P*X;
    
    u=subs(U);
    x=subs(X);
    p=subs(P);
    
    figure(1);
    subplot(2,3,z);
    set(gca,'FontSize',35,'FontWeight','bold','Fontname','Times New Roman');
    set(gca,'linewidth',2);

    plot(t,u,'-or','LineWidth',2);
    hold on;
    plot(t,x,'-.xb','LineWidth',2);
    hold on;
    plot(t,p,'-+m','LineWidth',2);
    title(['r=',num2str(r),',s=',num2str(s),',q=',num2str(q)]);
    set(gca,'FontSize',25,'FontWeight','bold','Fontname','Times New Roman');
    
%     legend({'u(t)','x(t)','p(t)'},'Location','NorthWest','Orientation','horizontal');
%     set(gca,'FontSize',30,'FontWeight','bold','Fontname','Times New Roman');
%     set(legend,'edgecolor','White');
    box off;

end

subplot(2,3,1);
legend({'u(t)','x(t)','p(t)'},'Location','NorthWest','Orientation','horizontal');
set(gca,'FontSize',30,'FontWeight','bold','Fontname','Times New Roman');
set(legend,'edgecolor','White');

% [P,X]=dsolve('Dp=-2*a*p+(1/r)*b*p^2-q,Dx=a*x+(-b/r)*b','p(tf)=s,x(t0)=x0','t');
% U=-(b/r)*P*X;
% t=0:0.1:1;
% u=subs(U);
% x=subs(X);
% p=subs(P);


% figure(1);
% subplot(3,1,1);
% set(gca,'FontSize',25,'FontWeight','bold','Fontname','Times New Roman');
% set(gca,'linewidth',2);
% 
% 
% plot(t,u,'-or','LineWidth',2);
% hold on;
% plot(t,x,'-.xb','LineWidth',2);
% hold on;
% plot(t,p,'-+m','LineWidth',2);
% legend({'u(t)','x(t)','p(t)'},'Orientation','horizontal');
% set(gca,'FontSize',25,'FontWeight','bold','Fontname','Times New Roman');
% set(legend,'edgecolor','White');
% box off;
