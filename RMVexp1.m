clc
body1 = rigidBody('body1');

jnt1 = rigidBodyJoint('jnt1','revolute');
jnt1.HomePosition = pi/2;
tform = trvec2tform([0.75, 0.75, 0]);
setFixedTransform(jnt1,tform);
body1.Joint = jnt1;

robot = rigidBodyTree;

addBody(robot,body1,'base')

body2 = rigidBody('body2');
jnt2 = rigidBodyJoint('jnt2','prismatic');
tform2 = trvec2tform([1, 0, 0]); 
setFixedTransform(jnt2,tform2);
body2.Joint = jnt2;
addBody(robot,body2,'body1');

body3 = rigidBody('body3');
body4 = rigidBody('body4');
jnt3 = rigidBodyJoint('jnt3','prismatic');
jnt4 = rigidBodyJoint('jnt4','revolute');
tform3 = trvec2tform([0.6, -0.1, 0])*eul2tform([-pi/2, 0, 0]);
tform4 = trvec2tform([1, 0, 0]);
setFixedTransform(jnt3,tform3);
setFixedTransform(jnt4,tform4);

body3.Joint = jnt3;
body4.Joint = jnt4;
addBody(robot,body3,'body2');
addBody(robot,body4,'body2');

bodyEndEffector = rigidBody('endeffector');
tform5 = trvec2tform([0.5, 0, 0]);
setFixedTransform(bodyEndEffector.Joint,tform5);
addBody(robot,bodyEndEffector,'body4');

config = randomConfiguration(robot);
tform = getTransform(robot,config,'endeffector','base');

showdetails(robot)
