% pruebas para resolver mis dudas:
% ¿es lo mismo theta Transpose * X que X*theta??

theta= [3;5] % 2x1
X = [1,6; 1,8; 1,3; 1,5] % 4x2

%h=theta'*X NO match de las dimensiones 2x1 x 4x2
k=X*theta % SI match de las dimensiones 4x2 x 2x1

h=theta'*X'; % SI macth 1x2 x 2x4
h'    ;       % pero sale traspuesta

% ¿es lo mismo e=h.-y que e=h-y?
y=[5;6;7;8]

e=k-y
ee=k.-y

% funcion sum(matriz)
p=sum(e)

% normalized
X=[1 2 3 ; 4 5 6]
mu=mean(X)
sigma=std(X)
m=size(X,1)
mu_matrix=ones(m,1)*mu
sigma_matrix=ones(m,1)*sigma

X=X-mu_matrix
X=X./sigma_matrix
