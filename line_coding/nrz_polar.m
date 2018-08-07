clc;
clear;
% bit array 
x=[ 0 1 0 1 0 0 0 1 1 0  1   1    0   0   0  1  1  1  1  1  ];
%   0 1 2 3 4 5 6 7 8 9 10   11  12  13  14 15 16 17 18 19 
T=length(x); % T = 20
n=200; 
N=n*T;  % N = 4000 (200 X 20)
dt=T/N; % dt =.005
%t = 0:N ;
t=0:dt:T; % t[4000]
y=zeros(1,length(t)); % y [40000] 
for i=0:T-1; % will iterate 20 time 
    if x(i+1)==1
        %y(i*n+1 : (i+1)*n)=1;
        % half one for 1
        lo = i*(n/2);
        hi = (n/2)* (i+1);
        y( lo : hi)=1;
                
        % half one for 0
        lo = hi + 1 ;
        hi = (i+1) * n ;
        y(lo : hi ) = 0 ;
    else
        y(i*n+1 : (i+1)*n)=  0;
    end;
end;
plot(t,y);
axis([0 t(end) -2 2]);
grid on;
title('NRZ-L');

