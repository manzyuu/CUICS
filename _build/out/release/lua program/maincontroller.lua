aL="x"
aK="touch"
aJ="y"
aI="+"
aH="way2"
aG="A"
aF="X"
aE="WayX"
aD="WayY"
aC="%04d"
aB="dir"
aA="Alt"
az="%03d"
ay="Spd"
ax="way"
aw="Y"
av="vis"
au="Dir"

o=100
_=255
t=false
w=true
R=input
J=string
C=math
q=screen
Y=property
E=Y.getText
v=q.drawText
D=q.drawTriangleF
y=q.drawRect
h=q.drawRectF
m=C.floor
Q=C.abs
r=J.format
f=q.drawLine
aa=q.drawClear
a=q.setColor
n=R.getBool
j=output.setBool
b=R.getNumber
B=w
P=t
p=2
af=20
G,F=0,0
H=10
ag=0
x={}c={}c.O=0
c.W=0
X={["sendch"]=0}i={[av]={},[aB]={},[ax]={},[aH]={},[aF]={},[aw]={},[au]={},[aA]={},[ay]={},[aE]={},[aD]={}}g={[aL]={},[aJ]={},[aK]={}}T=w
function onTick()if T then
c.s=b(9)c.u=b(10)T=t
end
j(13,B)j(14,n(1)or n(2))if B==t then
return
end
B=t
V=1
g[aL][1],g[aJ][1],g[aK][1]=b(1),b(2),n(1)g[aL][2],g[aJ][2],g[aK][2]=b(3),b(4),n(2)x.am,x.k=b(5),b(6)aq,as=b(7),b(8)c.W=c.O
c.s=b(9)c.u=b(10)c.O=b(11)c.aj=(b(11)-c.W)*60
c.at=b(17)c.ao=b(18)ar=b(29)ap=b(30)an=n(3)ah=n(4)ab=b(13)ak=b(14)l=b(15)X.al=b(16)i[av][l]=n(5)i[aB][l]=n(6)i[ax][l]=n(7)i[aH][l]=n(8)if(e(22,20,4,6,1)==t)then
if g[aK][1]then p=0 end
if e(0,12,12,6,1)then p=1 end
if e(14,12,8,6,1)then p=2 end
if e(0,20,20,6,1)then p=3 end
end
if(p==1)then
if(P)then	G,F=c.s,c.u end
if e(13,13,6,6,2)then
P=w
else
if(g[aK][2])then
G=-(g[aL][2]-16)*H/2+G
F=-(g[aJ][2]-16)*H/2+F
P=t
end
end
end
if(p==2)then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))end	j(12,e(22,20,4,6,1))if(b(21)==Y.getNumber("Passcode"))then
k=b(20)i[aF][k]=b(22)i[aw][k]=b(22)i[au][k]=b(22)i[aA][k]=b(22)i[ay][k]=b(22)i[aE][k]=b(22)i[aD][k]=b(22)end
end
function onDraw()B=w
if(V==1)then
a(10,10,10)aa()if(c.s<0)then a(_,10,20)f(0,2,2,2)else a(20,50,200)end
d(2,0,r(az,Q(m(c.s/o))))if(c.u<0)then a(_,10,20)f(0,8,2,8)else a(20,50,200)end
d(2,6,r(az,Q(m(c.u/o))))a(20,_,20)d(14,0,aF)d(14,6,aw)d(20,0,r(az,Q(m(ag/o))))a(30,30,30)h(0,12,13,7)a(50,50,50)y(0,12,12,6)a(_,_,_)d(1,13,"MAP")a(30,30,30)h(14,12,9,7)a(50,50,50)y(14,12,8,6)a(_,_,_)d(15,13,"CH")a(30,30,30)h(0,20,21,7)a(50,50,50)y(0,20,20,6)a(_,_,_)d(1,21,"STATE")if(ah)then
a(_,180,10)f(24,22,24,26)a(10,10,10)d(23,21,aG)a(_,180,10)y(22,20,4,6)else
a(30,30,30)f(24,22,24,26)a(_,_,_)d(23,21,aG)a(50,50,50)y(22,20,4,6)end
a(_,_,_)f(31,14,31,29)a(_,10,20)k=C.min(C.max(-c.aj/af/2*15+21,13),32)D(31,k,28,k-3,28,k+3)a(o,o,o)d(3,27,r("%06.2f",m(c.O*o)/o))V=2
else
if(p==1)then
q.drawMap(G,F,H)q.drawCircle(16,16,4)end
if(p==2)then
a(10,10,10)aa()a(_,_,_)D(2,1,0,4,5,4)f(2,4,2,6)v(6,1,r(aC,m(X.al)))v(6,8,r(aC,m(ab)))a(30,30,30)f(0,6,32,6)a(50,50,50)v(6,20,r(aC,m(ak)))a(25,25,25)h(27,0,5,6)h(27,7,5,5)h(2,14,5,5)h(8,14,5,5)h(14,14,5,5)h(20,14,5,5)h(27,14,5,5)h(27,20,5,5)h(0,20,5,5)h(27,27,5,5)h(0,26,13,6)a(_,_,_)v(28,2,"^")v(28,7,aI)if(i[av][l])then
a(_,_,_)else a(50,50,50)end	d(3,13,"v")if(i[aB][l])then
a(_,_,_)else a(50,50,50)end	f(9,15,11,15)f(11,16,11,17)f(9,17,11,17)f(9,16,9,17)if(i[ax][l])then
a(_,_,_)else a(50,50,50)end	v(15,14,aI)if(i[aH][l])then
a(_,_,_)else a(50,50,50)end h(21,15,3,2)f(21,17,21,18)a(_,_,_)D(29,15,27,18,32,18)D(29,25,26,21,32,21)v(1,20,"-")if(an)then a(_,_,_)else a(50,50,50)end
f(28,29,28,31)f(29,28,31,28)f(30,30,30,31)d(1,27,"DEL")if l==11 then
d(15,27,"EMG")else
d(19,27,r("%02d",m(l)))end
end
if(p==3)then
a(_,30,60)d(0,0,"RPS :"..J.format(az,m(x.am)))if(x.k>o)then
a(_,0,10)end
d(0,6,"TEMP:"..J.format(az,m(x.k)))end
end
end
function e(s,u,ai,ac,z)if
s<=g[aL][z]and
s+ai>=g[aL][z]and
u<=g[aJ][z]and
u+ac>=g[aJ][z]and
w==g[aK][z]then return w
else
return t
end
end
function d(ad,ae,A)local K,U,S,M,N
if type(A)=="number"then
A=tostring(A)end
U=E("F1")..E("F2")..E("F3")..E("F4")for L=1,A:len()do
K=A:sub(L,L):byte()*5-159
for I=1,5 do
S="0x"..U:sub(K,K+4):sub(I,I)for Z=1,3 do
if S&2^(4-Z)>0 then
M=ad+L*4+Z-5
N=ae+I-1
f(M,N,M+1,N)end
end
end
end
end
