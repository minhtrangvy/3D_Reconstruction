function [ P ] = computeCameraMatrixForImage( x_for_image, y_for_image, real_world_points )
    projection_points(:,1) = x_for_image;
    projection_points(:,2) = y_for_image;
    projection_points(:,3) = 1;
    assert(length(projection_points) == length(real_world_points));
    P = computeCameraMatrix(projection_points, real_world_points);
end

