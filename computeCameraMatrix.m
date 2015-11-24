function [ P ] = computeCameraMatrix( projection_points, real_world_points )
% Inputs: projection_of_image is the list of all the 2D points from the
% image. real_world_points is the list of all the 3D points from the real
% world
    A = [];
    for point = 1:length(projection_points)
        current_projection_point = projection_points(point,:);
        current_real_world_point = real_world_points(point,:);
        A = [A;find_2x12_matrix(current_projection_point, current_real_world_point)];
    end

    [~, ~, V] = svd(A);
    P = reshape(V(:,end),4,3)';
end

