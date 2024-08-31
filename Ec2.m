function dy=Ec2(t,y)

m1=290;
b1=1000;
m2=59;
k1=16182;
f=0;
k2=19000;
z1=0.05*sin(0.5*pi*t);


dy=zeros(4,1);

x1=y(1);
x2=y(2);
dx1=y(3);
dx2=y(4);

M=[m1,0;0,m2];
C=[b1,-b1;-b1,b1];
G=[k1,-k1;-k1,(k1+k2)];
U=[1,0;-1,k2];


Mi = inv(M);

ddx = Mi*(U*[f;z1]-C * [dx1;dx2] - G*[x1;x2]);

dy(1)=dx1;
dy(2)=dx2;
dy(3)=ddx(1);
dy(4)=ddx(2);
