function [ y ] = calculate_y( a, b, c, x )
    firstThing = a/b;
    secondThing = c/b;
    y = -(firstThing.*x) - secondThing;
end

