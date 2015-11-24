%% Project 4: 3D Reconstruction

%% Clean up
clear all
close all

% %% Take in the images and grab the grey of them
input_dir = '/Users/minhtrangvy/Documents/MATLAB/Computational_Photography/3D_Reconstruction/horse/set2/';
input_file_ext = 'JPG';
files = dir([input_dir '*.' input_file_ext]);
file = files(5).name;
current_image = imread([input_dir file]);
imshow(current_image)

[x_set2_right,y_set2_right] = ginput(10)