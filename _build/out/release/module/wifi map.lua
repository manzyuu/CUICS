aP="%04d"
aO="-"
aN="+"

i=255
J=150
n=false
d=true
au=input
C=math
ax=output
s=screen
ah=property
W=ah.getText
af=string.format
Y=s.drawTriangleF
v=s.drawText
an=s.drawRect
p=s.drawLine
r=s.drawRectF
h=s.setColor
ap=map.mapToScreen
U=ax.setNumber
ai=ax.setBool
X=C.max
V=C.min
ag=C.floor
f=au.getNumber
aa=au.getBool
T=10000
aK=d
az=ah.getBool("Monitor Swap")P=n
N=2
M=ah.getNumber("Passcode")E,A=0,0
q,x=1,10
t={}g={}g.o=1
g.y=n
b={}b.w={}b.G={}b.F={}b.ak={}b.z={}b.B={}b.O={}b.am={}b.at={}a={0,0,0,0,0,0,0,0}aj=d
e={}e.m=n
j=1
function onTick()e.L=aa(1)b.ak[a[g.o]]=f(1)b.z[a[g.o]]=f(1)==M and f(2)or 0
b.B[a[g.o]]=f(1)==M and f(3)or 0
b.O[a[g.o]]=f(1)==M and f(4)or 0
b.am[a[g.o]]=f(1)==M and f(7)or 0
b.at[a[g.o]]=f(1)==M and f(8)or 0
t.K=f(9)t.R=f(10)t.ab=f(11)t.aL=f(12)t.aM=f(13)as=f(14)ad=f(15)e.z=f(18)e.B=f(19)N=f(23)if not e.L then
g.ae=f(20)g.y=aa(20)for _=1,8,1 do
a[_]=ag(f(24+_))%T and ag(f(24+_))%T or 0
if 0<a[_]then
local Z=ag(f(24+_)/T)b.w[a[_]]=Z & 1==1
b.G[a[_]]=Z & 2==2
b.F[a[_]]=Z & 4==4
end
end
end
for _=1,7,1 do
if a[_]==0 and a[_+1]~=0 then
for D=_,7,1 do
a[D]=a[D+1]end
end
end
if N==1 then
if k(0,0,5,5,d)then
e.m=d
q=q-1
end
if k(0,6,5,5,d)then
e.m=d
q=q+1
end
q=V(X(q,1),22)x=V(q-5,0)/5+V(X(q-4,1),10)+V(X(q-14,0),8)*5
if k(13,13,6,6,n)or(aj and t.K~=0)then
aj=n
e.m=d
E,A=t.K,t.R
elseif e.L and not k(0,0,5,11,n)then
E=(e.z-16)*x/2+E
A=-(e.B-16)*x/2+A
end
end
if N==2 then
if k(27,20,5,5,d)and j<7 then
e.m=d
j=j+2
elseif k(27,14,5,5,d)and j>1 then
e.m=d
j=j-2
end
if k(27,0,5,6,d)and as~=0 then
e.m=d
g.ae=as
end
if k(27,7,5,5,d)then
for _=1,8,1 do
if a[_]==ad then
e.m=d
break
end
if a[_]==0
and ad~=0 then
e.m=d
a[_]=ad
b.w[a[_]]=d
break
end
end
end
for _=0,1,1 do
if k(2,14+_*12,5,5,d)and a[j+_]~=0 then
e.m=d
b.w[a[j+_]]=not b.w[a[j+_]]end
if k(8,14+_*12,5,5,d)then
e.m=d
b.G[a[j+_]]=not b.G[a[j+_]]end
if k(14,14+_*12,5,5,d)then
e.m=d
b.F[a[j+_]]=not b.F[a[j+_]]end
if k(0,8+_*12,5,5,d)then
e.m=d
a[j+_]=0
end
end
if k(27,27,5,5,d)then
e.m=d
g.y=not g.y
end
end
ai(20,g.y)ai(32,e.L)U(17,j)g.o=aa(32)and g.o+1 or g.o
g.o=g.o+1==9 and 1 or g.o
U(20,g.ae)U(21,a[g.o])for _=1,8,1 do
local aJ=b.w[a[_]]and 1 or 0
local aG=b.G[a[_]]and 2 or 0
local aI=b.F[a[_]]and 4 or 0
U(24+_,(a[_]+(aJ+aG+aI)*T))end
P=n
end
function onDraw()if P~=az then
P=d
else
P=d
if N==1 then
s.drawMap(E,A,x)ac(0,26,x)for _=1,8,1 do
if b.w[a[_]]and a[_]~=0 then
local Q,S=ap(E,A,x,32,32,b.z[a[_]],b.B[a[_]])h(J,50,J)r(Q-1,S,3,3)if b.G[a[_]]then
b.O[a[_]]=b.O[a[_]]or 0
local ab=((b.O[a[_]]+1.75)%1-.5)*2*C.pi
p(Q,S,C.sin(ab)*8+Q,-C.cos(ab)*8+S)end
if b.F[a[_]]then
local aD,aH=ap(E,A,x,32,32,b.am[a[_]],b.at[a[_]])h(J,J,100)p(Q,S,aD,aH)end
end
end
h(5,5,5)r(0,0,5,10)h(20,20,20)an(0,0,4,4)an(0,5,4,4)h(i,i,i)v(1,0,aN)v(1,5,aO)s.drawCircle(16,16,4)end
if N==2 then
local c=0
h(10,10,10)s.drawClear()h(30,30,30)p(0,6,32,6)h(i,i,i)Y(2,1,0,4,5,4)p(2,4,2,6)c=g.y and i or 80
h(c,c,c)v(6,1,af(aP,g.ae//1))h(25,25,25)r(27,0,5,6)c=k(27,0,5,6,n)and i or 50
h(c,c,c)v(28,2,"^")h(25,25,25)r(27,14,5,5)r(27,20,5,5)r(27,7,5,5)r(27,27,5,5)c=k(27,7,5,5,n)and i or 50
h(c,c,c)v(28,7,aN)c=k(27,14,5,5,n)and i or 50
h(c,c,c)Y(29,15,27,18,32,18)c=k(27,20,5,5,n)and i or 50
h(c,c,c)Y(29,25,26,21,32,21)c=g.y and i or 50
h(c,c,c)p(28,29,28,31)p(29,28,31,28)p(30,30,30,31)av(a[j],0)av(a[j+1],1)h(100,100,100)ac(22,27,af("%01d",j%2+j//2))end
end
end
function av(u,l)local c=0
l=l*12
c=u~=0 and J or 45
h(c,c,c)if b.ak[u]==4000 and u~=0 then
h(50,i,50)end
v(6,8+l,af(aP,u//1))h(25,25,25)for _=0,2,1 do
r(2+6*_,14+l,5,5)end
c=u~=0 and i or 80
r(0,8+l,5,5)h(i,i,i)v(1,8+l,aO)c=b.w[u]and i or 50
h(c,c,c)ac(3,13+l,"v")c=b.G[u]and i or 50
h(c,c,c)p(9,15+l,11,15+l)p(11,16+l,11,17+l)p(9,17+l,11,17+l)p(9,16+l,9,17+l)c=b.F[u]and i or 50
h(c,c,c)v(15,14+l,aN)end
function k(K,R,ay,aC,aq)local I=n
if K<=e.z and
K+ay>=e.z and
R<=e.B and
R+aC>=e.B and
e.L then
if not e.m and aq then
I=d
elseif not aq then
I=d
end
elseif not e.L then
e.m=n
I=n
else
I=n
end
return I
end
function ac(aF,aB,H)if type(H)=="number" then
H=tostring(H)end
aA=W("F1")..W("F2")..W("F3")..W("F4")for _=1,H:len()do
aw=H:sub(_,_):byte()*5-159
for D=1,5 do
aE="0x"..aA:sub(aw,aw+4):sub(D,D)for ar=1,3 do
if aE & 2^(4-ar)>0 then
al=aF+_*4+ar-5
ao=aB+D-1
p(al,ao,al+1,ao)end
end
end
end
end
