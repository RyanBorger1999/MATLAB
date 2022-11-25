

%Code for pictures. DO NOT CHANGE THIS CODE. 
square=[[0;0],[1;0],[1;1],[0;1],[0;0]];
bug=[[0.0;.22] , [.25;.22] , [.375;.055] , [.50;0.] , [.625;.055],[.75;.22] , ...
    [1.00;.22] , [1.25; .22] , [1.375; .055],[1.50; 0.] , [1.625; .055] , ...
    [1.75; .22] , [2.; .22] , [1.875; .33] , [1.75; .55] , [1.625; .715] , [1.50; .825] , ...
    [1.375; .902], [1.3125; .935] , [1.25; .946] , [1.00;.99] , [.75;.935] , ...
    [.50;.66] , [.375;.66] , [.25;.616] , [.125;.55] , [.0625;.44] , [0.;.22]];
house=[[0;0;0] [1;0;0] [1;0;1]  [1;0;0] [1;1;0] [1;1;1] [1;1;0] [0;1;0] [0;1;1] [0;1;0 ] [0;0;0] [0;0;1]...
    [1;0;1] [1;1;1] [0;1;1] [0;0;1] [1;0;1] [0.5;0.5;1.5] [0.25;0.75;1.25] [0.25;0.75;1.5] [0.2;0.8;1.5]...
    [0.2;0.8;1.2] [0;1;1] [0;0;1] [0.5;0.5;1.5] [1;1;1]];
V0=[0;0;0]; V1=[1;0;0];V2=[1;1;0];V3=[0;1;0];V4=[0;0;1];V5=[1;0;1];V6=[1;1;1];V7=[0;1;1]
cube=[V0, V1, V5, V1, V2, V6, V2, V3, V7, V3, V0, V4, V5, V6, V7, V4];

%You may use the code for this example as a template. 
disp('Example: Define and demonstrate a tranformation which rotates points/lines/figures 90 degrees counterclockwise.')
disp(' a. Define the standard matrix of the transformation and demonstrate on a generic vector.')
syms x y
v=[x;y]
%Note, here [0;1] and [-1;0] are the columns of A. 
A=[[0;1],[-1;0]]

%Output is the result of the mapping T: R^2->R^2 which sends v->Av. 
Tv=A*v

disp('b.Demonstrate your transformation by using transform2D(A,square) and transform2D(A,bug) to see the action on these shapes and make sure it is the correct transformation.')
disp(' ')
disp('See figures.')
%Make sure the transform2D.m file is saved in the same folder or your main
%file or this function will not run. For all of the pictures, the original
%image is in blue and the transformed image is in red. 
figure(1)
transform2D(A,square) 
figure(2)
transform2D(A,bug)
disp(' ')
disp('c. Determine whether this transformation has an inverse. If so, describe and demonstrate it geometrically.')
disp('If not, explain why not geometrically.')
disp(' ')
disp('Yes, this transformation has an inverse, which would rotate 90 degrees clockwise.');
disp('We see the standard matrix of the inverse transformation below and demonstrate it using transform2Dsquare and transform2Dbug.');
%disp('d. IF the transformation has an inverse, find the standard matrix of the inverse transformation and demonstrate it using transform2D(Ainv,square) and transform2D(Ainv,bug).')
Ainv=A^-1
figure(3)
transform2D(Ainv,square) 
figure(4)
transform2D(Ainv,bug)

%Your code for Part 1 goes here. 

disp('Test for transform3D. This was just some random 3x3 matrix.')
M=[[1;2;3],[2;1;2], [0;1;0]]
syms z
w=[x;y;z] %So as not to overwrite the 2x2 vector v above. 
Sw=M*w
figure(5)
transform3D(M,cube)
figure(6)
transform3D(M,house)

%Your code for Part 2 goes here. 