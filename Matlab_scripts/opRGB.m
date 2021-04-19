for i = 1:1:13
    folder_name = string('p'+string(i));
	r = readtable('./'+folder_name+'/opR.csv','ReadVariableNames',false');
    r = table2array(r);
	[m,n] = size(r);
	rows = m*n;
	r = reshape(r,[rows,1]);

	g = readtable('./'+folder_name+'/opG.csv','ReadVariableNames',false');
	g = table2array(g);
	[m,n] = size(g);
	rows = m*n;
	g = reshape(g,[rows,1]);

	b = readtable('./'+folder_name+'/opB.csv','ReadVariableNames',false');
	b = table2array(b);
	[m,n] = size(b);
	rows = m*n;
	b = reshape(b,[rows,1]);

	op = zeros(rows,3);
	op(:,1) = r;
	op(:,2) = g;
	op(:,3) = b;
    csvwrite('./'+folder_name+'/'+'opRGB.csv', op);
end