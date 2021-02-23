for k = 1:1:13
    folder_name = string('p'+string(k));
    a = readtable('./'+folder_name+'/cpRGB.csv');
    a = table2array(a);
    endval = size(a,1);
    b = zeros(endval,1);
    cnt = 0;

    for i = 1:1:endval
        R = a(i,1);
        G = a(i,2);
        B = a(i,3);

        %{
        255 0 0   - 2000
        255 92 0  - 1900
        255 186 0 - 1800
        232 255 0 - 1700
        140 255 0 - 1600
        46 255 0  - 1500
        0 255 46  - 1400
        0 255 140 - 1300
        0 255 232 - 1200
        0 186 255 - 1100
        0 92 255  - 1000
        0 0 255   - 298
        anything else 298
        %}

        if R==255 && G==0 && B==0
            b(i,1) = 2000;
        elseif R==255 && G==92 && B==0
            b(i,1) = 1900;
        elseif R==255 && G==186 && B==0
            b(i,1) = 1800;
        elseif R==232 && G==255 && B==0
            b(i,1) = 1700;
        elseif R==140 && G==255 && B==0
            b(i,1) = 1600;
        elseif R==46 && G==255 && B==0
            b(i,1) = 1500;
        elseif R==0 && G==255 && B==46
            b(i,1) = 1400;
        elseif R==0 && G==255 && B==140
            b(i,1) = 1300;
        elseif R==0 && G==255 && B==232
            b(i,1) = 1200;
        elseif R==0 && G==186 && B==255
            b(i,1) = 1100;
        elseif R==0 && G==92 && B==255
            b(i,1) = 1000;
        elseif R==0 && G==0 && B==255
            b(i,1) = 298;
            cnt=cnt+1;
        else
            b(i,1) = 298;
            cnt=cnt+1;
        end

    end

    csvwrite('./'+folder_name+'/Temp.csv', b);
    cnt;
end