figure(2);
subplot(2,2,1);
plot(t.time,X.signals.values(:,1:1));
grid on;
xlabel('t(s)');
ylabel('x_l');%短横线+数字会变成下标
subplot(2,2,2);
plot(t.time,X.signals.values(:,2:2));
grid on;
xlabel('t(s)');
ylabel('x_2');
subplot(2,2,3);
plot(t.time,X.signals.values(:,3:3));
grid on;
xlabel('t(s)');
ylabel('x_3');
subplot(2,2,4);
plot(t.time,X.signals.values(:,4:4));
grid on;
xlabel('t(s)');
ylabel('x_4');

figure(3);
subplot(2,2,1);
plot(t.time,X2.signals.values(:,1:1));
grid on;
xlabel('t(s)');
ylabel('x_l');%短横线+数字会变成下标
subplot(2,2,2);
plot(t.time,X2.signals.values(:,2:2));
grid on;
xlabel('t(s)');
ylabel('x_2');
subplot(2,2,3);
plot(t.time,X2.signals.values(:,3:3));
grid on;
xlabel('t(s)');
ylabel('x_3');
subplot(2,2,4);
plot(t.time,X2.signals.values(:,4:4));
grid on;
xlabel('t(s)');
ylabel('x_4');



figure(4);
subplot(2,2,1);
plot(t.time,X3.signals.values(:,1:1));
grid on;
xlabel('t(s)');
ylabel('x_l');%短横线+数字会变成下标
subplot(2,2,2);
plot(t.time,X3.signals.values(:,2:2));
grid on;
xlabel('t(s)');
ylabel('x_2');
subplot(2,2,3);
plot(t.time,X3.signals.values(:,3:3));
grid on;
xlabel('t(s)');
ylabel('x_3');
subplot(2,2,4);
plot(t.time,X3.signals.values(:,4:4));
grid on;
xlabel('t(s)');
ylabel('x_4');