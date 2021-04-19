clear;
clc;

for k = 1:1:13
folder_name = string('p'+string(k));
t = readtable('./'+folder_name+'/cpRGB.csv','ReadVariableNames',false');
a = table2array(t);
[m,n] = size(a);
t_1 = readtable('./'+folder_name+'/opR.csv','ReadVariableNames',false');
a_1 = table2array(t_1);
[m_1,n_1] = size(a_1);
T = zeros(m,1);
R = zeros(m,1);
G = zeros(m,1);
B = zeros(m,1);

for i = 1:m
    r = a(i,1);
    g = a(i,2);
    b = a(i,3);
    d = intmax;
    T(i) = 298;
    if sqrt((r-0)^2 + (g-0)^2 + (b-255)^2) < d 
        d = sqrt((r-0)^2 + (g-0)^2 + (b-255)^2);
        T(i,1) = 298;
        R(i,1) = 0;
        G(i,1) = 0;
        B(i,1) = 255;
    end
    if sqrt((r-255)^2 + (g-92)^2 + (b-0)^2) < d 
        d = sqrt((r-255)^2 + (g-92)^2 + (b-0)^2);
        T(i,1) = 1900;
        R(i,1) = 255;
        G(i,1) = 92;
        B(i,1) = 0;
    end
    if sqrt((r-255)^2 + (g-186)^2 + (b-0)^2) < d 
        d = sqrt((r-255)^2 + (g-186)^2 + (b-0)^2);
        T(i,1) = 1800;
        R(i,1) = 255;
        G(i,1) = 186;
        B(i,1) = 0;
    end
    if sqrt((r-232)^2 + (g-255)^2 + (b-0)^2) < d 
        d = sqrt((r-232)^2 + (g-255)^2 + (b-0)^2);
        T(i,1) = 1700;
        R(i,1) = 232;
        G(i,1) = 255;
        B(i,1) = 0;
    end
    if sqrt((r-140)^2 + (g-255)^2 + (b-0)^2) < d 
        d = sqrt((r-140)^2 + (g-255)^2 + (b-0)^2);
        T(i,1) = 1600;
        R(i,1) = 140;
        G(i,1) = 255;
        B(i,1) = 0;
    end
    if sqrt((r-46)^2 + (g-255)^2 + (b-0)^2) < d 
        d = sqrt((r-46)^2 + (g-255)^2 + (b-0)^2);
        T(i,1) = 1500;
        R(i,1) = 46;
        G(i,1) = 255;
        B(i,1) = 0;
    end
    if sqrt((r-0)^2 + (g-255)^2 + (b-46)^2) < d
        d = sqrt((r-0)^2 + (g-255)^2 + (b-46)^2);
        T(i,1) = 1400;
        R(i,1) = 0;
        G(i,1) = 255;
        B(i,1) = 46;
    end
    if sqrt((r-0)^2 + (g-255)^2 + (b-140)^2) < d 
        d = sqrt((r-0)^2 + (g-255)^2 + (b-140)^2);
        T(i,1) = 1300;
        R(i,1) = 0;
        G(i,1) = 255;
        B(i,1) = 140;
    end
    if sqrt((r-0)^2 + (g-255)^2 + (b-232)^2) < d 
        d = sqrt((r-0)^2 + (g-255)^2 + (b-232)^2);
        T(i,1) = 1200;
        R(i,1) = 0;
        G(i,1) = 255;
        B(i,1) = 232;
    end
    if sqrt((r-0)^2 + (g-186)^2 + (b-255)^2) < d 
        d = sqrt((r-0)^2 + (g-186)^2 + (b-255)^2);
        T(i,1) = 1100;
        R(i,1) = 0;
        G(i,1) = 186;
        B(i,1) = 255;
    end
    if sqrt((r-0)^2 + (g-92)^2 + (b-255)^2) < d
        d = sqrt((r-0)^2 + (g-92)^2 + (b-255)^2);
        T(i,1) = 1000;
        R(i,1) = 0;
        G(i,1) = 92;
        B(i,1) = 255;
    end
    if sqrt((r-255)^2 + (g-0)^2 + (b-0)^2) < d 
        d = sqrt((r-255)^2 + (g-0)^2 + (b-0)^2);
        T(i,1) = 2000;
        R(i,1) = 255;
        G(i,1) = 0;
        B(i,1) = 0;
    end
end
R = reshape(R,[m_1,n_1]);
G = reshape(G,[m_1,n_1]);
B = reshape(B,[m_1,n_1]);
csvwrite('./'+folder_name+'/'+'T_cal.csv',T);

end



%csvwrite('R_new.csv',R);
%csvwrite('G_new.csv',G);
%csvwrite('B_new.csv',B);