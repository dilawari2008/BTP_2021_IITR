initval = 1;
stepval = 1;
endval = 13;

for i = initval:stepval:endval
    a = string('p'+string(i));
    %first op
    RGB = double(imread('./'+a+'/op.png')) ;
    R = RGB(:,:,1) ;
    G = RGB(:,:,2) ;
    B = RGB(:,:,3) ;
    csvwrite('./'+a+'/'+'opR.csv', R);
    csvwrite('./'+a+'/'+'opG.csv', G);
    csvwrite('./'+a+'/'+'opB.csv', B);
    %second cp
    RGB = double(imread('./'+a+'/cp.png')) ;
    R = RGB(:,:,1) ;
    G = RGB(:,:,2) ;
    B = RGB(:,:,3) ;
    csvwrite('./'+a+'/'+'cpR.csv', R);
    csvwrite('./'+a+'/'+'cpG.csv', G);
    csvwrite('./'+a+'/'+'cpB.csv', B);
end