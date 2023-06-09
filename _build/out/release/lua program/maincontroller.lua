aM="%02d"
aL="WayX"
aK="way2"
aJ="Y"
aI="vis"
aH="Dir"
aG="x"
aF="Alt"
aE="%04d"
aD="way"
aC="%03d"
aB="Be"
aA="+"
az="WayY"
ay="X"
ax="Spd"
aw="y"
av="touch"
au="dir"

_=255
w=false
u=true
S=input
K=string
ab=math
p=screen
R=property
E=R.getText
N=p.drawTriangleF
v=p.drawRect
e=p.drawRectF
d=p.drawLine
s=p.drawText
m=ab.floor
C=ab.abs
r=K.format
H=p.drawClear
a=p.setColor
n=S.getBool
i=output.setBool
b=S.getNumber
do
end
do
B=u
F=w
k=2
ao=20
D,A=0,0
P=10
O=0
x={}c={}c.Z=0
c.U=0
T={["sendch"]=0}Q={[aG]=0,[aw]=0}j={[aI]={},[au]={},[aD]={},[aK]={},[ay]={},[aJ]={},[aH]={},[aF]={},[ax]={},[aL]={},[az]={}}h={[aG]={},[aw]={},[av]={}}W=u
end
function onTick()if W then
W=w
end
if B==w then return	end
B=w
c.q=b(9)c.t=b(10)O=(Q.q-c.q)^2+(Q.t-c.q)^2
i(13,B)i(14,n(1)or n(2))X=1
h[aG][1],h[aw][1],h[av][1]=b(1),b(2),n(1)h[aG][2],h[aw][2],h[av][2]=b(3),b(4),n(2)x.ah,x.o=b(5),b(6)ap,ar=b(7),b(8)c.U=c.Z
c.q=b(9)c.t=b(10)c.Z=b(11)c.at=(b(11)-c.U)*60
c.an=b(17)c.am=b(18)as=b(29)aq=b(30)ai=n(3)ad=n(4)ae=b(13)aj=b(14)l=b(15)T.ag=b(16)j[aI][l]=n(5)j[au][l]=n(6)j[aD][l]=n(7)j[aK][l]=n(8)do
if h[av][1]then k=0 end
if g(0,15,12,6,1)then k=1 end
if g(15,15,6,6,1)then k=2 end
if g(0,24,16,6,1)then k=3 end
if g(15,24,16,6,1)then k=4 end
i(13,g(15,24,16,6,1))end
if(k==1)then
if(F)then	D,A=c.q,c.t end
if g(13,13,6,6,2)then
F=u
else
if(h[av][2])then
D=-(h[aG][2]-16)*P/2+D
A=-(h[aw][2]-16)*P/2+A
F=w
end
end
end
if(k==2)then
i(1,g(27,0,5,6,2))i(2,g(27,7,5,5,2))i(3,g(2,14,5,5,2))i(4,g(8,14,5,5,2))i(5,g(14,14,5,5,2))i(6,g(20,14,5,5,2))i(7,g(27,14,5,5,2))i(8,g(27,20,5,5,2))i(9,g(0,20,5,5,2))i(10,g(27,27,5,5,2))i(11,g(0,26,9,6,2))i(12,g(22,20,4,6,1))end
if(b(21)==R.getNumber("Passcode"))then
o=b(20)j[ay][o]=b(22)j[aJ][o]=b(22)j[aH][o]=b(22)j[aF][o]=b(22)j[ax][o]=b(22)j[aL][o]=b(22)j[az][o]=b(22)end
end
function onDraw()B=u
if(X==1)then
a(10,10,10)H()do
a(200,50,20)f(29,1,ay)f(17,1,r(aC,C(m(c.q/100))))a(20,50,200)f(29,7,aJ)f(17,7,r(aC,C(m(c.t/100))))end
do
a(_,_,_)f(0,1,r(aM,C(m(O/100))))s(7,1,".")f(10,1,r("%01d",C(m(O/1))))f(8,7,"KM")end
a(5,5,5)d(15,0,15,13)a(1,1,1)d(0,13,32,13)do
a(30,30,30)e(0,15,13,7)a(50,50,50)v(0,15,12,6)a(_,_,_)f(1,16,"MAP")end
do
a(30,30,30)e(15,15,7,7)a(50,50,50)v(15,15,6,6)a(_,_,_)d(16,19,16,21)d(16,19,19,16)d(19,16,21,16)d(18,19,18,21)d(19,18,21,18)d(20,20,21,20)end
do
if(ad)then
a(70,70,70)e(23,15,8,7)a(50,50,50)v(23,15,8,6)a(_,20,50)f(24,16,aB)else
a(30,30,30)e(23,15,8,7)a(50,50,50)v(23,15,8,6)a(_,_,_)f(24,16,aB)end
end
do
a(30,30,30)e(0,24,13,7)a(50,50,50)v(0,24,12,6)a(_,_,_)f(1,25,"STA")end
do
a(30,30,30)e(16,24,17,7)a(50,50,50)v(15,24,16,6)a(_,_,_)f(16,25,"EXTE")end
X=2
else
if(k==0)then
elseif(k==1)then
p.drawMap(D,A,P)p.drawCircle(16,16,4)elseif(k==2)then
a(10,10,10)H()a(_,_,_)N(2,1,0,4,5,4)d(2,4,2,6)s(6,1,r(aE,m(T.ag)))s(6,8,r(aE,m(ae)))a(30,30,30)d(0,6,32,6)a(50,50,50)s(6,20,r(aE,m(aj)))a(25,25,25)e(27,0,5,6)e(27,7,5,5)e(2,14,5,5)e(8,14,5,5)e(14,14,5,5)e(20,14,5,5)e(27,14,5,5)e(27,20,5,5)e(0,20,5,5)e(27,27,5,5)e(0,26,13,6)a(_,_,_)s(28,2,"^")s(28,7,aA)if(j[aI][l])then
a(_,_,_)else a(50,50,50)end	f(3,13,"v")if(j[au][l])then
a(_,_,_)else a(50,50,50)end	d(9,15,11,15)d(11,16,11,17)d(9,17,11,17)d(9,16,9,17)if(j[aD][l])then
a(_,_,_)else a(50,50,50)end	s(15,14,aA)if(j[aK][l])then
a(_,_,_)else a(50,50,50)end e(21,15,3,2)d(21,17,21,18)a(_,_,_)N(29,15,27,18,32,18)N(29,25,26,21,32,21)s(1,20,"-")if(ai)then a(_,_,_)else a(50,50,50)end
d(28,29,28,31)d(29,28,31,28)d(30,30,30,31)f(1,27,"DEL")if l==11 then
f(15,27,"EMG")else
f(19,27,r(aM,m(l)))end
elseif(k==3)then
a(10,10,10)H()a(_,30,60)f(0,0,"RPS :"..K.format(aC,m(x.ah)))if(x.o>100)then
a(_,0,10)end
f(0,6,"TEMP:"..K.format(aC,m(x.o)))elseif(k==4)then
end
end
end
function g(q,t,ak,af,y)if
q<=h[aG][y]and
q+ak>=h[aG][y]and
t<=h[aw][y]and
t+af>=h[aw][y]and
u==h[av][y]then return u
else
return w
end
end
function f(al,ac,z)local L,V,aa,I,G
if type(z)=="number"then
z=tostring(z)end
V=E("F1")..E("F2")..E("F3")..E("F4")for J=1,z:len()do
L=z:sub(J,J):byte()*5-159
for M=1,5 do
aa="0x"..V:sub(L,L+4):sub(M,M)for Y=1,3 do
if aa&2^(4-Y)>0 then
I=al+J*4+Y-5
G=ac+M-1
d(I,G,I+1,G)end
end
end
end
end
