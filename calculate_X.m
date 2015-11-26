function [ X ] = calculate_X( point1, P1, P2 )
    line = epipolar_line_tool(x1, P1, P2);
    universal_x = 1:2848;
    y = calculate_y(line(1), line(2), line(3), universal_x);
    x2 = floor(point1(1));
    y2 = y(x2);
    point2 = [x2, y2];
    X = triangulation_mtv(point1,P1, point2, P2);
end

