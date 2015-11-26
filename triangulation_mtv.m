function [ X ] = triangulation_mtv( point1, P1, point2, P2 )
    x1 = point1(1,:);
    y1 = point1(2,:);
    x2 = point2(1,:);
    y2 = point2(2,:);
    A = [x1*P1(3,:) - P1(1,:);
         y1*P1(3,:) - P1(2,:);
         x2*P2(3,:) - P2(1,:);
         y2*P2(3,:) - P2(2,:)];
    [~, ~, V] = svd(A);
    X = reshape(V(:,end),4,1)';
    X = X/X(4);
end

