aP="+"
aO="-"
aN="%04d"

i=255
M=150
n=false
d=true
aj=input
z=math
ai=output
r=screen
ae=property
O=ae.getText
X=string.format
ag=r.drawTriangleF
t=r.drawText
ak=r.drawRect
p=r.drawLine
s=r.drawRectF
h=r.setColor
am=map.mapToScreen
Q=ai.setNumber
aw=ai.setBool
Y=z.max
U=z.min
ad=z.floor
f=aj.getNumber
ac=aj.getBool
R=10000
aK=d
aA=ae.getBool("Monitor Swap")V=n
L=2
N=ae.getNumber("Passcode")G,B=0,0
q,w=1,10
u={}g={}g.o=1
g.C=n
c={}c.x={}c.y={}c.D={}c.as={}c.E={}c.A={}c.T={}c.at={}c.ar={}a={0,0,0,0,0,0,0,0}aq=d
e={}e.m=n
j=1
function onTick()e.K=ac(1)c.as[a[g.o]]=f(1)c.E[a[g.o]]=f(1)==N and f(2)or 0
c.A[a[g.o]]=f(1)==N and f(3)or 0
c.T[a[g.o]]=f(1)==N and f(4)or 0
c.at[a[g.o]]=f(1)==N and f(7)or 0
c.ar[a[g.o]]=f(1)==N and f(8)or 0
u.J=f(9)u.S=f(10)u.aa=f(11)u.aL=f(12)u.aM=f(13)au=f(14)ab=f(15)e.E=f(18)e.A=f(19)L=f(23)if not e.K then
g.ah=f(20)g.C=ac(20)for _=1,8,1 do
a[_]=ad(f(24+_))%R and ad(f(24+_))%R or 0
if 0<a[_]then
local Z=ad(f(24+_)/R)c.x[a[_]]=Z & 1==1
c.y[a[_]]=Z & 2==2
c.D[a[_]]=Z & 4==4
end
end
end
for _=1,7,1 do
if a[_]==0 and a[_+1]~=0 then
for F=_,7,1 do
a[F]=a[F+1]end
end
end
if L==1 then
if k(0,0,5,5,d)then
e.m=d
q=q-1
end
if k(0,6,5,5,d)then
e.m=d
q=q+1
end
q=U(Y(q,1),22)w=U(q-5,0)/5+U(Y(q-4,1),10)+U(Y(q-14,0),8)*5
if k(13,13,6,6,n)or(aq and u.J~=0)then
aq=n
e.m=d
G,B=u.J,u.S
elseif e.K and not k(0,0,5,11,n)then
G=(e.E-16)*w/2+G
B=-(e.A-16)*w/2+B
end
end
if L==2 then
if k(27,20,5,5,d)and j<7 then
e.m=d
j=j+2
elseif k(27,14,5,5,d)and j>1 then
e.m=d
j=j-2
end
if k(27,0,5,6,d)and au~=0 then
e.m=d
g.ah=au
end
if k(27,7,5,5,d)then
for _=1,8,1 do
if a[_]==ab then
e.m=d
break
end
if a[_]==0
and ab~=0 then
e.m=d
a[_]=ab
c.x[a[_]]=d
break
end
end
end
for _=0,1,1 do
if k(2,14+_*12,5,5,d)and a[j+_]~=0 then
e.m=d
c.x[a[j+_]]=not c.x[a[j+_]]end
if k(8,14+_*12,5,5,d)then
e.m=d
c.y[a[j+_]]=not c.y[a[j+_]]end
if k(14,14+_*12,5,5,d)then
e.m=d
c.D[a[j+_]]=not c.D[a[j+_]]end
if k(0,8+_*12,5,5,d)then
e.m=d
a[j+_]=0
end
end
if k(27,27,5,5,d)then
e.m=d
g.C=not g.C
end
end
aw(20,g.C)aw(32,e.K)Q(17,j)g.o=ac(32)and g.o+1 or g.o
g.o=g.o+1==9 and 1 or g.o
Q(20,g.ah)Q(21,a[g.o])for _=1,8,1 do
local aH=c.x[a[_]]and 1 or 0
local ay=c.y[a[_]]and 2 or 0
local aB=c.D[a[_]]and 4 or 0
Q(24+_,(a[_]+(aH+ay+aB)*R))end
V=n
end
function onDraw()if V~=aA then
V=d
else
V=d
if L==1 then
r.drawMap(G,B,w)af(0,26,w)for _=1,8,1 do
if c.x[a[_]]and a[_]~=0 then
local W,P=am(G,B,w,32,32,c.E[a[_]],c.A[a[_]])h(M,50,M)s(W-1,P,3,3)if c.y[a[_]]then
c.T[a[_]]=c.T[a[_]]or 0
local aa=((c.T[a[_]]+1.75)%1-.5)*2*z.pi
p(W,P,z.sin(aa)*8+W,-z.cos(aa)*8+P)end
if c.D[a[_]]then
local aJ,aG=am(G,B,w,32,32,c.at[a[_]],c.ar[a[_]])h(M,M,100)p(W,P,aJ,aG)end
end
end
h(5,5,5)s(0,0,5,10)h(20,20,20)ak(0,0,4,4)ak(0,5,4,4)h(i,i,i)t(1,0,aP)t(1,5,aO)r.drawCircle(16,16,4)end
if L==2 then
local b=0
h(10,10,10)r.drawClear()h(30,30,30)p(0,6,32,6)h(i,i,i)ag(2,1,0,4,5,4)p(2,4,2,6)b=g.C and i or 80
h(b,b,b)t(6,1,X(aN,g.ah//1))h(25,25,25)s(27,0,5,6)b=k(27,0,5,6,n)and i or 50
h(b,b,b)t(28,2,"^")h(25,25,25)s(27,14,5,5)s(27,20,5,5)s(27,7,5,5)s(27,27,5,5)b=k(27,7,5,5,n)and i or 50
h(b,b,b)t(28,7,aP)b=k(27,14,5,5,n)and i or 50
h(b,b,b)ag(29,15,27,18,32,18)b=k(27,20,5,5,n)and i or 50
h(b,b,b)ag(29,25,26,21,32,21)b=g.C and i or 50
h(b,b,b)p(28,29,28,31)p(29,28,31,28)p(30,30,30,31)al(a[j],0)al(a[j+1],1)h(100,100,100)af(22,27,X("%01d",j%2+j//2))end
end
end
function al(v,l)local b=0
l=l*12
b=v~=0 and M or 45
h(b,b,b)if c.as[v]==4000 and v~=0 then
h(50,i,50)end
t(6,8+l,X(aN,v//1))h(25,25,25)for _=0,2,1 do
s(2+6*_,14+l,5,5)end
b=v~=0 and i or 80
s(0,8+l,5,5)h(i,i,i)t(1,8+l,aO)b=c.x[v]and i or 50
h(b,b,b)af(3,13+l,"v")b=c.y[v]and i or 50
h(b,b,b)p(9,15+l,11,15+l)p(11,16+l,11,17+l)p(9,17+l,11,17+l)p(9,16+l,9,17+l)b=c.D[v]and i or 50
h(b,b,b)t(15,14+l,aP)end
function k(J,S,aD,aF,an)local H=n
if J<=e.E and
J+aD>=e.E and
S<=e.A and
S+aF>=e.A and
e.K then
if not e.m and an then
H=d
elseif not an then
H=d
end
elseif not e.K then
e.m=n
H=n
else
H=n
end
return H
end
function af(az,aI,I)if type(I)=="number" then
I=tostring(I)end
aC=O("F1")..O("F2")..O("F3")..O("F4")for _=1,I:len()do
ax=I:sub(_,_):byte()*5-159
for F=1,5 do
aE="0x"..aC:sub(ax,ax+4):sub(F,F)for av=1,3 do
if aE & 2^(4-av)>0 then
ap=az+_*4+av-5
ao=aI+F-1
p(ap,ao,ap+1,ao)end
end
end
end
end
