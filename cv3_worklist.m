%% Nasobeni matic

A = [1 2 3 4 5; 6 7 8 9 10; -1 -2 -3 -4 -5; -6 -7 -8 -9 -10]

B = [4 2 1; 1 2 4; 1 1 1; 2 2 2; 4 4 4]

C = A*B

D = maticoveNasobeni(A,B)
DD = A*B

%% Gaussova eliminace

A = [1 1 1; 1 2 2; 3 2 1];
b = [1; 2; 3];

[U,b_u] = gaussElim(A,b)
C=[A b];
D = rref(C)


%% Zpetny beh

x = zpetnyBeh(U,b_u) % jak jsme to spocitali my

xx = D(:,4)
%% LU dekompozice

[L,U] = luDekomp(A)

% vypiseme kontrolni soucin
disp('L*U = ');
disp(L*U);  

[L,U]=lu(A)

%% VELIKA MATICE
R=randi([-20, 20],[1000,1000]);
S=randi([-20, 20],[1000,1000]);
t=randi([-20,20],1000);

disp('Maticove nasobeni')
disp('Rucne definovana funkce')
tic
D = maticoveNasobeni(R,S);
toc
disp('MATLABi funkce')
tic
D = R*S;
toc

disp('Gaussova eliminace')
disp('Rucne definovana funkce')
tic
[R,t_r] = gaussElim(R,t);
toc
disp('MATLABi funkce')
tic
V=[R t];
W= rref(V);
toc 

disp('Zpetny Beh')
disp('Rucne definovana funkce')
tic
x = zpetnyBeh(R,t_r); % jak jsme to spocitali my
toc
disp('MATLABi funkce')
tic
V=[R t];
W= rref(V);
xx = W(:,4);
toc

disp('LU dekompozice')
disp('Rucne definovana funkce')
tic
[L,U] = luDekomp(R);
toc
disp('MATLABi funkce')
tic
[L,U]=lu(R);
toc

