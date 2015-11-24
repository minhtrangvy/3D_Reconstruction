function [line] = epipolar_line_tool( set_number, image_number, point, base_P, image_P )
    %% Take in the images 
    input_dir = ['/Users/minhtrangvy/Documents/MATLAB/Computational_Photography/3D_Reconstruction/horse/set' num2str(set_number) '/'];
    input_file_ext = 'JPG';
    files = dir([input_dir '*.' input_file_ext]);
    file = files(image_number).name;
    current_image = imread([input_dir file]);
    
    C = null(base_P);
    image_epipole = image_P*C;
    pinv_P = pinv(base_P);
    F = image_epipole * (image_P*pinv_P);
    epiline = F * point;
end

