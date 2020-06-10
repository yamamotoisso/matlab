clear all;
clc;

% %% quaternions
% q=[1,0.5,0.5,1];
% for i=1:1:100
%    x=i;
%    y=i;
%    z=i;
%    r=quat2dcm(q);
%    u=r*[x;y;z];
%    figure(2);
%    scatter3(x,y,z,'b');
%    hold on;
%    plot3(u(1,:),u(2,:),u(3,:),'ro');
%    hold on
% end

%% three-demsional rotation
theta =30;
R1=[1,0,0;0,cosd(theta),-sind(theta);0,sind(theta),cosd(theta)];
R2=[cosd(theta),0,sind(theta);0,1,0;-sind(theta),0,cosd(theta)];
R3=[cosd(theta),-sind(theta),0;sind(theta),cosd(theta),0;0,0,1];
for i=1:0.1:10
    x=0.1*cos(i*180/pi);
    y=0.2*sin(i*180/pi);
    z=3*i;
    u=R1*[x;y;z];
    v=R2*u;
    w=R3*v;
    E=R3*R2*R1*[x;y;z];
    figure(1);
    scatter3(x,y,z,'b','LineWidth',2);
    hold on
    scatter3(u(1,:),u(2,:),u(3,:),'r','LineWidth',2);
    hold on
    scatter3(v(1,:),v(2,:),v(3,:),'m','LineWidth',2);
    hold on;
    scatter3(w(1,:),w(2,:),w(3,:),'g','LineWidth',2);
    hold on;
    scatter3(E(1,:),E(2,:),E(3,:),'b*','LineWidth',1);
    
end
    title('Rotate 30 Degrees');
    legend('{\fontname{TSTong}原始图形}','{\fontname{TSTong}X轴旋转30}','{\fontname{TSTong}Y轴旋转30}','{\fontname{TSTong}Z轴旋转30}','{\fontname{TSTong}综合旋转}');
    xlabel('X AXIS');
    ylabel('Y AXIS');
    zlabel('Z AXIS');
    set(gca,'FontSize',30,'FontWeight','bold','Fontname','Times New Roman');
    set(legend,'edgecolor','White');
%   box off;
%   grid off;