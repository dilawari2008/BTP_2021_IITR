for k = 1:1:13

folder_name = string('p'+string(k));
path = './'+folder_name+'/op.png';
path = convertStringsToChars(path);
og_img = imread(path);

image(og_img);
axis off
saveas(gcf,'./'+folder_name+'/'+'flame_img.jpg');


end