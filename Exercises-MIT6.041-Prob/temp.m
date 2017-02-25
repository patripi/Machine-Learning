% EXPECTED VALUE RULE
% Let X be a uniform random variable on the range {−1,0,1,2}.
% Let Y=X4. Use the expected value rule to calculate E[Y].

%W=[-1, 0, 1,2]
%Y=W.^4
%P=[1/4,1/4,1/4,1/4]'
%Y*P

% Coupons collect problem
% k different copuons
% take:

%k=6
%n=k*log(k)

%6*(1/1+1/2+1/3+1/4+1/5+1/6)

%p=1/4+1/6
%r1=1-p
%r2=nchoosek(10,6)*p^6*(1-p)^6
%r3=nchoosek(2,2)*p^2+nchoosek(2,0)*(1-p)^2
%1/p
%r4=nchoosek(6,0)*p^6
%0.41667^2+0.58333^2

totalDado=6^6
pD=1/totalDado

% Combinaciones
totalW=6+15+20+15+6+1
p=1/totalW

p1=nchoosek(6,1)*p
p2=nchoosek(6,2)*p
p3=nchoosek(6,3)*p
p4=nchoosek(6,4)*p
p5=nchoosek(6,5)*p
p6=nchoosek(6,6)*p

Ptotal=p1+p2+p3+p4+p5+p6
