%close all;

% a = readtable('cpRGB.csv');
% a = table2array(a);
% 
% R = a(:,1);
% G = a(:,2);
% B = a(:,3);
% 
% test = readtable('opR.csv');
% test = table2array(test);
% [m_1,n_1] = size(test);
% 
% R = reshape(R,[m_1,n_1]);
% G = reshape(G,[m_1,n_1]);
% B = reshape(B,[m_1,n_1]);
% 
% og_img = zeros(m_1,n_1,3);
% og_img(:,:,1) = R;
% og_img(:,:,2) = G;
% og_img(:,:,3) = B;
% image(og_img);
% % saveas(gcf,'og_img.jpg');

for k = 1:1:13

folder_name = string('p'+string(k));
path = './'+folder_name+'/cp.png';
path = convertStringsToChars(path);
og_img = imread(path);
image(og_img)
axis off

saveas(gcf,'./'+folder_name+'/'+'og_img.jpg');


end


