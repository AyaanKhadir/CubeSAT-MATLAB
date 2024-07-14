clc
L1 = 10; % link1 length
L2 = 07; % link2 length
L3 = 04; % link3 length

theta1 = 0:0.1:pi; % joint1 constraints
theta2 = 0:0.1:pi; % joint2 constraints 
theta3 = 0:0.1:pi; % joint3 constraints
[THETA1, THETA2, THETA3] = meshgrid (theta1, theta2, theta3);

X = L1*cos(THETA1) + L2*cos(THETA1+THETA2) + L3*cos(THETA1+THETA2+THETA3);
Y = L1*sin(THETA1) + L2*sin(THETA1+THETA2) + L3*sin(THETA1+THETA2+THETA3);
X1 = L1*cos(THETA1) + L2*cos(THETA1+THETA2);
Y1 = L1*sin(THETA1) + L2*sin(THETA1+THETA2);
X2 = L1*cos(THETA1);
Y2 = L1*sin(THETA1);

data1 = [X2(:), Y2(:), THETA1(:)];
data2 = [X1(:), Y1(:), THETA2(:)];
data3 = [X(:), Y(:), THETA3(:)];

figure; % work volume plot
plot(X2(:), Y2(:), 'g.', X1(:), Y1(:), 'b.', X(:), Y(:), 'r.');
axis equal;
xlabel('X', 'fontsize', 10);
ylabel('Y', 'fontsize', 10);
title("FORWARD KINEMATICS OF 3 D.O.F JOINTED ARM ROBOT");
hold on;