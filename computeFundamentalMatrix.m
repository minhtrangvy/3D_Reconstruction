function [ Q ] = computeFundamentalMatrix( P )
    C = null(P);
    epipole = P'*C;
    invP = pinv(P);
    Q = epipole * (P' * invP);
end