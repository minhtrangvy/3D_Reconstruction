function [epiline] = epipolar_line_tool(point, base_P, image_P )
    C = null(base_P);
    epipole = image_P*C;
    epipole_x = [0 -epipole(3) epipole(2);
                 epipole(3) 0 -epipole(1);
                 -epipole(2) epipole(1) 0];
    pinv_P = pinv(base_P);
    F = epipole_x .* (image_P*pinv_P);
    point(:,3) = 1;
    epiline = F * point';
end

