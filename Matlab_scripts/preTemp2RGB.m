%close all;


for k = 1:1:13
folder_name = string('p'+string(k));
a = readtable('./'+folder_name+'/'+folder_name+'_pred.csv');
T = table2array(a);
T = T(2:end,2);

[m,n] = size(T);
R = zeros(m,1);
G = zeros(m,1);
B = zeros(m,1);

for i = 1:m
   if T(i) == 2000
       R(i) = 255;
       G(i) = 0;
       B(i) = 0;
   elseif T(i) == 1900
       R(i) = 255;
       G(i) = 92;
       B(i) = 0;
   elseif T(i) == 1800
       R(i) = 255;
       G(i) = 186;
       B(i) = 0;
   elseif T(i) == 1700
       R(i) = 232;
       G(i) = 255;
       B(i) = 0;
   elseif T(i) == 1600
       R(i) = 140;
       G(i) = 255;
       B(i) = 0;
   elseif T(i) == 1500
       R(i) = 46;
       G(i) = 255;
       B(i) = 0;
   elseif T(i) == 1400
       R(i) = 0;
       G(i) = 255;
       B(i) = 46;
   elseif T(i) == 1300
       R(i) = 0;
       G(i) = 255;
       B(i) = 140;
   elseif T(i) == 1200
       R(i) = 0;
       G(i) = 255;
       B(i) = 232;
   elseif T(i) == 1100
       R(i) = 0;
       G(i) = 186;
       B(i) = 255;
   elseif T(i) == 1000
       R(i) = 0;
       G(i) = 92;
       B(i) = 255;
   elseif T(i) == 298
       R(i) = 0;
       G(i) = 0;
       B(i) = 255;
   end     
end

test = readtable('./'+folder_name+'/opR.csv');
test = table2array(test);
[m_1,n_1] = size(test);

R = reshape(R,[m_1,n_1]);
G = reshape(G,[m_1,n_1]);
B = reshape(B,[m_1,n_1]);

pre_img = zeros(m_1,n_1,3);
pre_img(:,:,1) = R;
pre_img(:,:,2) = G;
pre_img(:,:,3) = B;
pre_img = uint8(pre_img);
image(pre_img);
saveas(gcf,'./'+folder_name+'/'+'pre_img.jpg');
	
end

%temp2RGB



