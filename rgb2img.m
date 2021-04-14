R = readtable('./opR.csv');
G = readtable('./opG.csv');
B = readtable('./opB.csv');

z = size(R);
a = zeros(z(1),z(2),3);
R=table2array(R);
G=table2array(G);
B=table2array(B);

a(:,:,1) = R;
a(:,:,2) = G;
a(:,:,3) = B;

image(a);
