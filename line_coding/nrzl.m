clc;
clear;
% bit array 
x=[ 0 1 0 1 0 0 0 1 1 0  1   1    0   0   0  1  1  1  1  1  ];
%   0 1 2 3 4 5 6 7 8 9 10   11  12  13  14 15 16 17 18 19 
T=length(x); % T = 20
n=200; 
N=n*T;  % N = 400
dt=T/N; % dt =.005
t=0:dt:T; % t[4000]
y=zeros(1,length(t)); % y [40000] 
for i=0:T-1; % will iterate 20 time 
    if x(i+1)==1
        y(i*n+1 : (i+1)*n)=1;
    else
        y(i*n+1 : (i+1)*n)=-1;
    end;
end;
plot(t,y);
axis([0 t(end) -2 2]);
grid on;
title('NRZ-L');

