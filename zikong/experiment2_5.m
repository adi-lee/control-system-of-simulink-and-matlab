 t=0:0.1:10;
 kosi=[0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0,2.0];
 for i=1:length(kosi)
     num=1;      
     den=[1,2*kosi(i)*1,1];
     step(num,den,t)
     hold on;
 end
 grid on
 title('不同阻尼比下系统的单位阶跃响应曲线');
 text(1.6,1.9,'kosi=0');
 text(3,0.4,'kosi=2.0');
 xlabel('Time/sec');
 ylabel('Response');
 
 t=0:0.01:2;
Wn=[2,4,6,8,10,12];
 
 for i=1:length(Wn)
     num=[Wn(i)*Wn(i)];
     den=[1,2*0.6*Wn(i),Wn(i)*Wn(i)];
     step(num,den,t)
     hold on;
 end
 grid on;
 title('不同自然频率下系统的单位阶跃响应曲线');
  text(1.25,0.8,'Wn=2'); text(0.1,1.1,'Wn=12');
 xlabel('Time/sec');
 ylabel('Response');