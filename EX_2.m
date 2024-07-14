clc;

l1 = 10;
l2 = 07;

theta1 = 0: 0.1: pi;
theta2 = 0: 0.1: pi;

[THETA1,THETA2] = meshgrid(theta1,theta2);
X = l1*cos(THETA1)+l2*cos(THETA1+THETA2);
Y = l1*sin(THETA1)+l2*sin(THETA1+THETA2);
X1 = l1*cos(THETA1);
Y1 = l1*sin(THETA1);
data1 = [X1(:),Y1(:),THETA1(:)];
data2 = [X(:),Y(:),THETA2(:)];

figure;
plot (X1(:),Y1(:),'b.',X(:),Y(:),'r.');
axis equal;
xlabel('X','FontSize',10);
xlabel('Y','FontSize',10);
title('FORWARD KINEMATICS OF 2 D.O.F JOINTED ARM ROBOT');
hold on;

figure, % joint angles plot
plot(X, THETA1)