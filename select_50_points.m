close all

input_dir1 = ['/Users/minhtrangvy/Documents/MATLAB/Computational_Photography/3D_Reconstruction/horse/set1/'];
input_dir2 = ['/Users/minhtrangvy/Documents/MATLAB/Computational_Photography/3D_Reconstruction/horse/set2/'];

input_file_ext = 'JPG';
files = dir([input_dir2 '*.' input_file_ext]);

%% %set1 pair1 = back left and left
% image1_s1 = imread([input_dir1 files(1).name]);
% image2_s1 = imread([input_dir1 files(4).name]);

%% %set1 pair2 = back right and right
% image3_s1 = imread([input_dir1 files(2).name]);
% image4_s1 = imread([input_dir1 files(5).name]);

%% % set2 pair1 = front right, right
% image1_s2 = imread([input_dir2 files(2).name]);
% image2_s2 = imread([input_dir2 files(5).name]);

%% %set2 pair2 = back, front_right (it's actually back right)
image3_s2 = imread([input_dir2 files(1).name]);
image4_s2 = imread([input_dir2 files(3).name]);

load('set2_pair2')

%% Double Check Points
figure
imshow(image3_s2)
hold on;
x1 = set2_pair2_back(:,1);
y1 = set2_pair2_back(:,2);
plot(x1(30),y1(30),'.', 'MarkerSize',20);
% scatter(x1,y1)
figure
imshow(image4_s2)
hold on;
x2 = set2_pair2_front_right(:,1);
y2 = set2_pair2_front_right(:,2);
plot(x2(30),y2(30),'.', 'MarkerSize',20);
% scatter(x2,y2)
break

%% Pick points
figure
imshow(image3_s2)
set2_pair2_back = [set2_pair2_back; ginput(5)];

figure
imshow(image4_s2)
set2_pair2_front_right = [set2_pair2_front_right; ginput(5)];

delete('set2_pair2')
save('set2_pair2')
close all