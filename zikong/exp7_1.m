t=0:0.02:10;u=5*sin(2*t);
plot(t,u,'--');
hold on
c=4;d=saturation([-c,c]);
y=evaluate(d,u');
plot(t,y),grid on
legend('正弦输入信号','饱和特性输出')

% t=0:0.02:10;u=5*sin(2*t);
% plot(t,u,'--');
% hold on
% c=0.7;d=deadzone([-c,c]);
% y=evaluate(d,u');
% plot(t,y),grid on
% legend('正弦输入信号','死区特性输出')