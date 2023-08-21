aP="-"
aO="+"
aN="%04d"

i=255
H=150
m=false
d=true
aj=input
E=math
ar=output
q=screen
ab=property
T=ab.getText
ag=string.format
af=q.drawTriangleF
t=q.drawText
ak=q.drawRect
p=q.drawLine
r=q.drawRectF
h=q.setColor
al=map.mapToScreen
W=ar.setNumber
ax=ar.setBool
X=E.max
R=E.min
aa=E.floor
f=aj.getNumber
Y=aj.getBool
S=10000
aL=d
aC=ab.getBool("Monitor Swap")U=m
K=2
M=ab.getNumber("Passcode")y,C=0,0
s,w=1,10
v={}g={}g.o=1
g.B=m
c={}c.x={}c.G={}c.z={}c.at={}c.F={}c.D={}c.O={}c.aw={}c.ai={}a={0,0,0,0,0,0,0,0}am=d
e={}e.n=m
j=1
function onTick()e.I=Y(1)c.at[a[g.o]]=f(1)c.F[a[g.o]]=f(1)==M and f(2)or 0
c.D[a[g.o]]=f(1)==M and f(3)or 0
c.O[a[g.o]]=f(1)==M and f(4)or 0
c.aw[a[g.o]]=f(1)==M and f(7)or 0
c.ai[a[g.o]]=f(1)==M and f(8)or 0
v.J=f(9)v.P=f(10)v.Z=f(11)v.aK=f(12)v.aM=f(13)an=f(14)ad=f(15)e.F=f(18)e.D=f(19)K=f(23)if not e.I then
g.ae=f(20)g.B=Y(20)for _=1,8,1 do
a[_]=aa(f(24+_))%S and aa(f(24+_))%S or 0
if 0<a[_]then
local ah=aa(f(24+_)/S)c.x[a[_]]=ah & 1==1
c.G[a[_]]=ah & 2==2
c.z[a[_]]=ah & 4==4
end
end
end
for _=1,7,1 do
if a[_]==0 and a[_+1]~=0 then
for A=_,7,1 do
a[A]=a[A+1]end
end
end
if K==1 then
if k(0,0,5,5,d)then
e.n=d
s=s-1
end
if k(0,6,5,5,d)then
e.n=d
s=s+1
end
s=R(X(s,1),22)w=R(s-5,0)/5+R(X(s-4,1),10)+R(X(s-14,0),8)*5
if k(13,13,6,6,m)or(am and v.J~=0)then
am=m
e.n=d
y,C=v.J,v.P
elseif e.I and not k(0,0,5,11,m)then
y=(e.F-16)*w/2+y
C=-(e.D-16)*w/2+C
end
end
if K==2 then
if k(27,20,5,5,d)and j<7 then
e.n=d
j=j+2
elseif k(27,14,5,5,d)and j>1 then
e.n=d
j=j-2
end
if k(27,0,5,6,d)and an~=0 then
e.n=d
g.ae=an
end
if k(27,7,5,5,d)then
for _=1,8,1 do
if a[_]==ad then
e.n=d
break
end
if a[_]==0
and ad~=0 then
e.n=d
a[_]=ad
c.x[a[_]]=d
break
end
end
end
for _=0,1,1 do
if k(2,14+_*12,5,5,d)and a[j+_]~=0 then
e.n=d
c.x[a[j+_]]=not c.x[a[j+_]]end
if k(8,14+_*12,5,5,d)then
e.n=d
c.G[a[j+_]]=not c.G[a[j+_]]end
if k(14,14+_*12,5,5,d)then
e.n=d
c.z[a[j+_]]=not c.z[a[j+_]]end
if k(0,8+_*12,5,5,d)then
e.n=d
a[j+_]=0
end
end
if k(27,27,5,5,d)then
e.n=d
g.B=not g.B
end
end
ax(20,g.B)ax(32,e.I)W(17,j)g.o=Y(32)and g.o+1 or g.o
g.o=g.o+1==9 and 1 or g.o
W(20,g.ae)W(21,a[g.o])for _=1,8,1 do
local aG=c.x[a[_]]and 1 or 0
local aI=c.G[a[_]]and 2 or 0
local aH=c.z[a[_]]and 4 or 0
W(24+_,(a[_]+(aG+aI+aH)*S))end
U=m
end
function onDraw()if U~=aC then
U=d
else
U=d
if K==1 then
q.drawMap(y,C,w)ac(0,26,w)for _=1,8,1 do
if c.x[a[_]]and a[_]~=0 then
local Q,V=al(y,C,w,32,32,c.F[a[_]],c.D[a[_]])h(H,50,H)r(Q-1,V,3,3)if c.G[a[_]]then
c.O[a[_]]=c.O[a[_]]or 0
local Z=((c.O[a[_]]+1.75)%1-.5)*2*E.pi
p(Q,V,E.sin(Z)*8+Q,-E.cos(Z)*8+V)end
if c.z[a[_]]then
local aJ,aB=al(y,C,w,32,32,c.aw[a[_]],c.ai[a[_]])h(H,H,100)p(Q,V,aJ,aB)end
end
end
h(5,5,5)r(0,0,5,10)h(20,20,20)ak(0,0,4,4)ak(0,5,4,4)h(i,i,i)t(1,0,aO)t(1,5,aP)q.drawCircle(16,16,4)end
if K==2 then
local b=0
h(10,10,10)q.drawClear()h(30,30,30)p(0,6,32,6)h(i,i,i)af(2,1,0,4,5,4)p(2,4,2,6)b=g.B and i or 80
h(b,b,b)t(6,1,ag(aN,g.ae//1))h(25,25,25)r(27,0,5,6)b=k(27,0,5,6,m)and i or 50
h(b,b,b)t(28,2,"^")h(25,25,25)r(27,14,5,5)r(27,20,5,5)r(27,7,5,5)r(27,27,5,5)b=k(27,7,5,5,m)and i or 50
h(b,b,b)t(28,7,aO)b=k(27,14,5,5,m)and i or 50
h(b,b,b)af(29,15,27,18,32,18)b=k(27,20,5,5,m)and i or 50
h(b,b,b)af(29,25,26,21,32,21)b=g.B and i or 50
h(b,b,b)p(28,29,28,31)p(29,28,31,28)p(30,30,30,31)ap(a[j],0)ap(a[j+1],1)h(100,100,100)ac(22,27,ag("%01d",j%2+j//2))end
end
end
function ap(u,l)local b=0
l=l*12
b=u~=0 and H or 45
h(b,b,b)if c.at[u]==4000 and u~=0 then
h(50,i,50)end
t(6,8+l,ag(aN,u//1))h(25,25,25)for _=0,2,1 do
r(2+6*_,14+l,5,5)end
b=u~=0 and i or 80
r(0,8+l,5,5)h(i,i,i)t(1,8+l,aP)b=c.x[u]and i or 50
h(b,b,b)ac(3,13+l,"v")b=c.G[u]and i or 50
h(b,b,b)p(9,15+l,11,15+l)p(11,16+l,11,17+l)p(9,17+l,11,17+l)p(9,16+l,9,17+l)b=c.z[u]and i or 50
h(b,b,b)t(15,14+l,aO)end
function k(J,P,aE,ay,as)local L=m
if J<=e.F and
J+aE>=e.F and
P<=e.D and
P+ay>=e.D and
e.I then
if not e.n and as then
L=d
elseif not as then
L=d
end
elseif not e.I then
e.n=m
L=m
else
L=m
end
return L
end
function ac(aD,az,N)if type(N)=="number" then
N=tostring(N)end
aA=T("F1")..T("F2")..T("F3")..T("F4")for _=1,N:len()do
au=N:sub(_,_):byte()*5-159
for A=1,5 do
aF="0x"..aA:sub(au,au+4):sub(A,A)for av=1,3 do
if aF & 2^(4-av)>0 then
aq=aD+_*4+av-5
ao=az+A-1
p(aq,ao,aq+1,ao)end
end
end
end
end
