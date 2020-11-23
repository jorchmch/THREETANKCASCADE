clc;
K1=5/3;
K2=2;
K3=0.75;
T1=1/12;
T2=1/6;
T3=0.125;
% syms K1 K2 K3 T1 T2 T3 S

% step1=(T1*S+1)*(T2*S+1)*(T3*S+1)


[Ai,Bi,Ci,Di]=zp2ss([],[-1/T1, -1/T2, -1/T3],K1*K2*K2);
[numIN, denIN]=zp2tf([],[-1/T1, -1/T2, -1/T3],K1*K2*K2);
tfIN=tf(numIN,denIN)

[Ao,Bo,Co,Do]=zp2ss([],[-1/T1, -1/T2, -1/T3],-K1*K2*K2);
[numOUT, denOUT]=zp2tf([],[-1/T1, -1/T2, -1/T3],-K1*K2*K2)
tfOUT=tf(numOUT,denOUT)


