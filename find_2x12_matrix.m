function [ matrix ] = find_2x12_matrix(little_x_vector, big_x_vector )
%% For each x -> X correspondence
%   Stack a bunch (around 10 per image, 6 on checkerboard, 4 on boxes) of these to make the matrix A
    matrix = [0, 0, 0, 0, -little_x_vector(3)*big_x_vector', little_x_vector(2)*big_x_vector';
        little_x_vector(3)*big_x_vector', 0, 0, 0, 0, little_x_vector(1)*big_x_vector'];
end

%% epiline tool: combine projections from two images
% 