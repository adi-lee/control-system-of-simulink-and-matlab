t=0:0.02:10;u=5*sin(2*t);
plot(t,u,'--');
hold on
c=4;d=saturation([-c,c]);
y=evaluate(d,u');
plot(t,y),grid on
legend('���������ź�','�����������')

% t=0:0.02:10;u=5*sin(2*t);
% plot(t,u,'--');
% hold on
% c=0.7;d=deadzone([-c,c]);
% y=evaluate(d,u');
% plot(t,y),grid on
% legend('���������ź�','�����������')