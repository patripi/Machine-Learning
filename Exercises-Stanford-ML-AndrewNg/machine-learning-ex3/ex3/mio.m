% Ejmeplo double checking para
% J =3*theta^3+2
% y theta =1
% y epsion =0.01


theta=1
epsilon=0.01

JPlus=3*(theta+epsilon)^3+2
JMin=3*(theta-epsilon)^3+2

der=(JPlus-JMin)/(2*epsilon)
