aL="X"
aK="dir"
aJ="y"
aI="x"
aH="WayY"
aG="WayX"
aF="Alt"
aE="+"
aD="Spd"
aC="way"
aB="vis"
aA="Y"
az="%03d"
ay="way2"
ax="touch"
aw="%04d"
av="Dir"
au="A"

o=100
_=255
t=false
w=true
U=input
H=string
B=math
q=screen
V=property
F=V.getText
s=q.drawText
D=q.drawTriangleF
z=q.drawRect
i=q.drawRectF
l=B.floor
J=B.abs
r=H.format
f=q.drawLine
W=q.drawClear
a=q.setColor
n=U.getBool
j=output.setBool
b=U.getNumber
E=w
Q=t
p=2
am=20
C,G=0,0
N=10
ai=0
y={}c={}c.O=0
c.Z=0
S={["sendch"]=0}g={[aB]={},[aK]={},[aC]={},[ay]={},[aL]={},[aA]={},[av]={},[aF]={},[aD]={},[aG]={},[aH]={}}h={[aI]={},[aJ]={},[ax]={}}T=w
function onTick()if T then
c.u=b(9)c.v=b(10)T=t
end
j(13,E)j(14,n(1)or n(2))if E==t then
return
end
E=t
X=1
h[aI][1],h[aJ][1],h[ax][1]=b(1),b(2),n(1)h[aI][2],h[aJ][2],h[ax][2]=b(3),b(4),n(2)y.ag,y.k=b(5),b(6)aq,ap=b(7),b(8)c.Z=c.O
c.u=b(9)c.v=b(10)c.O=b(11)c.af=(b(11)-c.Z)*60
c.ar=b(17)c.as=b(18)ao=b(29)at=b(30)ab=n(3)ah=n(4)ae=b(13)ak=b(14)m=b(15)S.aj=b(16)g[aB][m]=n(5)g[aK][m]=n(6)g[aC][m]=n(7)g[ay][m]=n(8)if(e(22,20,4,6,1)==t)then
if h[ax][1]then p=0 end
if e(0,12,12,6,1)then p=1 end
if e(14,12,8,6,1)then p=2 end
if e(0,20,20,6,1)then p=3 end
end
if(p==1)then
if(Q)then	C,G=c.u,c.v end
if e(13,13,6,6,2)then
Q=w
else
if(h[ax][2])then
C=-(h[aI][2]-16)*N/2+C
G=-(h[aJ][2]-16)*N/2+G
Q=t
end
end
end
if(p==2)then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))end	j(12,e(22,20,4,6,1))if(b(21)==V.getNumber("Passcode"))then
k=b(20)g[aL][k]=b(22)g[aA][k]=b(22)g[av][k]=b(22)g[aF][k]=b(22)g[aD][k]=b(22)g[aG][k]=b(22)g[aH][k]=b(22)end
end
function onDraw()E=w
if(X==1)then
a(10,10,10)W()if(c.u<0)then a(_,10,20)f(0,2,2,2)else a(20,50,200)end
d(2,0,r(az,J(l(c.u/o))))if(c.v<0)then a(_,10,20)f(0,8,2,8)else a(20,50,200)end
d(2,6,r(az,J(l(c.v/o))))a(20,_,20)d(14,0,aL)d(14,6,aA)d(20,0,r(az,J(l(ai/o))))a(30,30,30)i(0,12,13,7)a(50,50,50)z(0,12,12,6)a(_,_,_)d(1,13,"MAP")a(30,30,30)i(14,12,9,7)a(50,50,50)z(14,12,8,6)a(_,_,_)d(15,13,"CH")a(30,30,30)i(0,20,21,7)a(50,50,50)z(0,20,20,6)a(_,_,_)d(1,21,"STATE")if(ah)then
a(_,180,10)f(24,22,24,26)a(10,10,10)d(23,21,au)a(_,180,10)z(22,20,4,6)else
a(30,30,30)f(24,22,24,26)a(_,_,_)d(23,21,au)a(50,50,50)z(22,20,4,6)end
a(_,_,_)f(31,14,31,29)a(_,10,20)k=B.min(B.max(-c.af/am/2*15+21,13),32)D(31,k,28,k-3,28,k+3)a(o,o,o)d(3,27,r("%06.2f",l(c.O*o)/o))X=2
else
if(p==1)then
q.drawMap(C,G,N)q.drawCircle(16,16,4)end
if(p==2)then
a(10,10,10)W()a(_,_,_)D(2,1,0,4,5,4)f(2,4,2,6)s(6,1,r(aw,l(S.aj)))s(6,8,r(aw,l(ae)))a(30,30,30)f(0,6,32,6)a(50,50,50)s(6,20,r(aw,l(ak)))a(25,25,25)i(27,0,5,6)i(27,7,5,5)i(2,14,5,5)i(8,14,5,5)i(14,14,5,5)i(20,14,5,5)i(27,14,5,5)i(27,20,5,5)i(0,20,5,5)i(27,27,5,5)i(0,26,13,6)a(_,_,_)s(28,2,"^")s(28,7,aE)if(g[aB][m])then
a(_,_,_)else a(50,50,50)end	d(3,13,"v")if(g[aK][m])then
a(_,_,_)else a(50,50,50)end	f(9,15,11,15)f(11,16,11,17)f(9,17,11,17)f(9,16,9,17)if(g[aC][m])then
a(_,_,_)else a(50,50,50)end	s(15,14,aE)if(g[ay][m])then
a(_,_,_)else a(50,50,50)end i(21,15,3,2)f(21,17,21,18)a(_,_,_)D(29,15,27,18,32,18)D(29,25,26,21,32,21)s(1,20,"-")if(ab)then a(_,_,_)else a(50,50,50)end
f(28,29,28,31)f(29,28,31,28)f(30,30,30,31)d(1,27,"DEL")if m==11 then
d(15,27,"EMG")else
d(19,27,r("%02d",l(m)))end
end
if(p==3)then
a(_,30,60)d(0,0,"RPS :"..H.format(az,l(y.ag)))if(y.k>o)then
a(_,0,10)end
d(0,6,"TEMP:"..H.format(az,l(y.k)))end
end
end
function e(u,v,an,al,A)if
u<=h[aI][A]and
u+an>=h[aI][A]and
v<=h[aJ][A]and
v+al>=h[aJ][A]and
w==h[ax][A]then return w
else
return t
end
end
function d(ad,ac,x)local I,R,Y,K,M
if type(x)=="number"then
x=tostring(x)end
R=F("F1")..F("F2")..F("F3")..F("F4")for L=1,x:len()do
I=x:sub(L,L):byte()*5-159
for P=1,5 do
Y="0x"..R:sub(I,I+4):sub(P,P)for aa=1,3 do
if Y&2^(4-aa)>0 then
K=ad+L*4+aa-5
M=ac+P-1
f(K,M,K+1,M)end
end
end
end
end
