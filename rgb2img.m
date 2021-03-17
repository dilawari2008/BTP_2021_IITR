R = readtable('./R_test.csv');
G = readtable('./G_test.csv');
B = readtable('./B_test.csv');

z = size(R);
a = zeros(z(1),z(2),3);
R=table2array(R);
G=table2array(G);
B=table2array(B);

a(:,:,1) = R;
a(:,:,2) = G;
a(:,:,3) = B;

image(a);
