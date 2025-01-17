
% PART ONE

% 1.a Define and plot vectors u, v, and w

u = [1, 0, 3];
v = [-1, 4, 2];
w = [3, 1, -4];
origin = [0,0,0];

% degree symbol
deg = char(176);

figure;hold on;
title("Plot of u, v, and w");
plot3([origin(1) u(1)],[origin(2) u(2)],[origin(3) u(3)],'r-^', 'LineWidth',3);
plot3([origin(1) v(1)],[origin(2) v(2)],[origin(3) v(3)],'g-^', 'LineWidth',3);
plot3([origin(1) w(1)],[origin(2) w(2)],[origin(3) w(3)],'b-^', 'LineWidth',3);
grid on;
legend("u", "v", "w");
xlabel('X axis'), ylabel('Y axis'), zlabel('Z axis');

%1.b Calculate u + v + w
disp("Sum of vectors:");
disp(u + v + w);

%1.c Calculate the dot product of u v
disp("dot product of u, v: " + dot(u, v));

%1.d Find two different linear combinations of the vectors u, v, and w
c1 = 2; c2 = 3; c3 = 4;
linear_combination_1 = (c1 * u) + (c2 * v) + (c3 * w);
disp("Linear Combination 1 with constants c1 = 2, c2 = 3, and c3 = 4");
disp(linear_combination_1);

c1 = 5; c2 = 6; c3 = 7;
linear_combination_2 = (c1 * u) + (c2 * v) + (c3 * w);
disp("Linear Combination 1 with constants c1 = 5, c2 = 6, and c3 = 7");
disp(linear_combination_2);

%1.e Determine which pair of vectors has the smallest distance btwn them
dist_u_to_v = norm(u - v);
dist_u_to_w = norm(u - w);
dist_v_to_w = norm(v - w);

if dist_u_to_v <= min(dist_u_to_w, dist_v_to_w)
    disp("u, v have the smallest distance between them: " + dist_u_to_v);
elseif dist_u_to_w <= min(dist_u_to_v, dist_v_to_w)
    disp("u, w have the smallest distance between them: " + dist_u_to_w);
else 
    disp("v, w have the smallest distance between them: " + dist_v_to_w);
end

%1.f Determine which pair of vectors has the smallest angle btwn them
ang_u_v = rad2deg(acos((dot(u, v))/(norm(u)*norm(v))));
ang_u_w = rad2deg(acos((dot(u, w))/(norm(u)*norm(w))));
ang_v_w = rad2deg(acos((dot(v, w))/(norm(v)*norm(w))));

if ang_u_v <= min(ang_u_w, ang_v_w)
    disp("u, v have the smallest angle between them: " + ang_u_v + deg);
elseif ang_u_w <= min(ang_u_v, ang_v_w)
    disp("u, w have the smallest angle between them: " + ang_u_w + deg);
else 
    disp("v, w have the smallest angle between them: " + ang_v_w + deg);
end

%1.g Find the projection of u onto v. Plot the vectors u and v and 
% the projection. Does your computed projection make sense geometrically? 
% Explain.

proj_u_v = (dot(u, v)/dot(v, v)) * v;
disp(proj_u_v);

figure;hold on;
title("Plot of u, v, and the projection of u onto v");
plot3([origin(1) u(1)],[origin(2) u(2)],[origin(3) u(3)],'r-^', 'LineWidth',3);
plot3([origin(1) v(1)],[origin(2) v(2)],[origin(3) v(3)],'g-^', 'LineWidth',3);
plot3([origin(1) proj_u_v(1)],[origin(2) proj_u_v(2)],[origin(3) proj_u_v(3)],'b-^', 'LineWidth',3);
grid on;
legend("u", "v", "proj u onto v");
xlabel('X axis'), ylabel('Y axis'), zlabel('Z axis');

answer = "Yes, our answer makes sense geometrically as we would expect" + newline + ...
     "proj u onto v to be parrallel with v and with a smaller magnitude." + newline + ...
     "We expect to see projection u onto v appear where a line could be drawn" + newline + ...
     "from u to v creating a 90 degree angle and this appears to be the case" + newline + ...
     "when looking at the plot.";

disp(answer);
disp(newline);

% PART TWO

%2.a
syms x y
e1 = x - y == 3;
e2 = 4*y == 1;
e3 = (3*x) + (2*y) == -4;
sol = solve(e1, e2, e3);

% sol.x and sol.y have no value, hence no solution

answer = "No, you cannot write w as a linear combination of u, v" + newline + ...
    "as the `solve` command yields no solution for the system";
disp(answer);


