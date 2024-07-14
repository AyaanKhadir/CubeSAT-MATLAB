function rbt=exampleHelperFourBarLinkageTree()
%This class is for internal use only and may be removed in the future.
%exampleHelperFourBarLinkageTree Rigid body tree of a four bar linkage

%Copyright 2021 The MathWorks, Inc.
    rbt=rigidBodyTree("DataFormat","row","MaxNumBodies",4);
    rbt.Base.addCollision("cylinder",[0.05,1],...
        trvec2tform([0.5,0,0])*eul2tform([0,-pi/2,0]));
    rbt.BaseName='link0';
    rb1=rigidBody("link1");
    rb1.addCollision("cylinder",[0.05,1],...
        trvec2tform([0.5,0,0])*eul2tform([0,-pi/2,0]));
    j1=rigidBodyJoint("j1","revolute");
    j1.PositionLimits=[-4*pi,4*pi];
    rb1.Joint=j1;
    rbt.addBody(rb1,rbt.BaseName);

    rb2=rigidBody("link2");
    rb2.addCollision("cylinder",[0.05,1],...
        trvec2tform([0.5,0,0])*eul2tform([0,-pi/2,0]));
    j2=rigidBodyJoint("j2","revolute");
    j2.setFixedTransform(trvec2tform([1,0,0]));
    j2.PositionLimits=[-4*pi,4*pi];
    rb2.Joint=j2;
    rbt.addBody(rb2,"link1")

    rb3=rigidBody("link3");
    rb3.addCollision("cylinder",[0.05,1],...
        trvec2tform([0.5,0,0])*eul2tform([0,-pi/2,0]));
    j3=rigidBodyJoint("j3","revolute");
    j3.PositionLimits=[-4*pi,4*pi];
    j3.setFixedTransform(trvec2tform([1,0,0]));
    rb3.Joint=j3;
    rbt.addBody(rb3,"link2");
end
