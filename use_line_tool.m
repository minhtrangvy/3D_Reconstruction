%% Clean up
clear all
close all

%% Take in the first image and select a point on that image
% input_dir = ['/Users/minhtrangvy/Documents/MATLAB/Computational_Photography/3D_Reconstruction/horse/set1/'];
% input_file_ext = 'JPG';
% files = dir([input_dir '*.' input_file_ext]);
% file = files(1).name;
% set1_back_left_image = imread([input_dir file]);
% imshow(set1_back_left_image)
% [set1_epipolar_x, set1_epipolar_y] = ginput(1);
load('set1_epipolar_point')

%% Find epipolar lines in the remaining images in the set based on that points
load('all_camera_matrices')
set1_back_right_line = epipolar_line_tool(1, 2,[set1_epipolar_x,set1_epipolar_y], P_set1_back_left, P_set1_back_right);
break
set1_front_left_line = epipolar_line_tool(1, 3,[set1_epipolar_x,set1_epipolar_y], P_set1_back_left, P_set1_front_left);
set1_left_line = epipolar_line_tool(1, 4,[set1_epipolar_x,set1_epipolar_y], P_set1_back_left, P_set1_left);
set1_right_line = epipolar_line_tool(1, 5,[set1_epipolar_x,set1_epipolar_y], P_set1_back_left, P_set1_right);