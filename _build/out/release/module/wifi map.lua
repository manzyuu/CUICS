aP="+"
aO="-"
aN="%04d"

i=255
N=150
m=false
d=true
ao=input
G=math
as=output
s=screen
X=property
Q=X.getText
ae=string.format
ad=s.drawTriangleF
v=s.drawText
aq=s.drawRect
p=s.drawLine
r=s.drawRectF
h=s.setColor
ak=map.mapToScreen
V=as.setNumber
ap=as.setBool
Z=G.max
R=G.min
ag=G.floor
f=ao.getNumber
aa=ao.getBool
U=10000
aM=d
aE=X.getBool("Monitor Swap")P=m
K=2
L=X.getNumber("Passcode")z,F=0,0
q,x=1,10
t={}g={}g.o=1
g.D=m
b={}b.w={}b.y={}b.C={}b.aj={}b.E={}b.B={}b.S={}b.ai={}b.am={}a={0,0,0,0,0,0,0,0}an=d
e={}e.n=m
j=1
function onTick()e.I=aa(1)b.aj[a[g.o]]=f(1)b.E[a[g.o]]=f(1)==L and f(2)or 0
b.B[a[g.o]]=f(1)==L and f(3)or 0
b.S[a[g.o]]=f(1)==L and f(4)or 0
b.ai[a[g.o]]=f(1)==L and f(7)or 0
b.am[a[g.o]]=f(1)==L and f(8)or 0
t.H=f(9)t.O=f(10)t.ah=f(11)t.aK=f(12)t.aL=f(13)at=f(14)Y=f(15)e.E=f(18)e.B=f(19)K=f(23)if not e.I then
g.af=f(20)g.D=aa(20)for _=1,8,1 do
a[_]=ag(f(24+_))%U and ag(f(24+_))%U or 0
if 0<a[_]then
local ab=ag(f(24+_)/U)b.w[a[_]]=ab & 1==1
b.y[a[_]]=ab & 2==2
b.C[a[_]]=ab & 4==4
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
q=q-1
end
if k(0,6,5,5,d)then
e.n=d
q=q+1
end
q=R(Z(q,1),22)x=R(q-5,0)/5+R(Z(q-4,1),10)+R(Z(q-14,0),8)*5
if k(13,13,6,6,m)or(an and t.H~=0)then
an=m
e.n=d
z,F=t.H,t.O
elseif e.I and not k(0,0,5,11,m)then
z=(e.E-16)*x/2+z
F=-(e.B-16)*x/2+F
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
if k(27,0,5,6,d)and at~=0 then
e.n=d
g.af=at
end
if k(27,7,5,5,d)then
for _=1,8,1 do
if a[_]==Y then
e.n=d
break
end
if a[_]==0
and Y~=0 then
e.n=d
a[_]=Y
b.w[a[_]]=d
break
end
end
end
for _=0,1,1 do
if k(2,14+_*12,5,5,d)and a[j+_]~=0 then
e.n=d
b.w[a[j+_]]=not b.w[a[j+_]]end
if k(8,14+_*12,5,5,d)then
e.n=d
b.y[a[j+_]]=not b.y[a[j+_]]end
if k(14,14+_*12,5,5,d)then
e.n=d
b.C[a[j+_]]=not b.C[a[j+_]]end
if k(0,8+_*12,5,5,d)then
e.n=d
a[j+_]=0
end
end
if k(27,27,5,5,d)then
e.n=d
g.D=not g.D
end
end
ap(20,g.D)ap(32,e.I)V(17,j)g.o=aa(32)and g.o+1 or g.o
g.o=g.o+1==9 and 1 or g.o
V(20,g.af)V(21,a[g.o])for _=1,8,1 do
local aH=b.w[a[_]]and 1 or 0
local aA=b.y[a[_]]and 2 or 0
local aD=b.C[a[_]]and 4 or 0
V(24+_,(a[_]+(aH+aA+aD)*U))end
P=m
end
function onDraw()if P~=aE then
P=d
else
P=d
if K==1 then
s.drawMap(z,F,x)ac(0,26,x)for _=1,8,1 do
if b.w[a[_]]and a[_]~=0 then
local W,T=ak(z,F,x,32,32,b.E[a[_]],b.B[a[_]])h(N,50,N)r(W-1,T,3,3)if b.y[a[_]]then
b.S[a[_]]=b.S[a[_]]or 0
local ah=((b.S[a[_]]+1.75)%1-.5)*2*G.pi
p(W,T,G.sin(ah)*8+W,-G.cos(ah)*8+T)end
if b.C[a[_]]then
local aB,ay=ak(z,F,x,32,32,b.ai[a[_]],b.am[a[_]])h(N,N,100)p(W,T,aB,ay)end
end
end
h(5,5,5)r(0,0,5,10)h(20,20,20)aq(0,0,4,4)aq(0,5,4,4)h(i,i,i)v(1,0,aP)v(1,5,aO)s.drawCircle(16,16,4)end
if K==2 then
local c=0
h(10,10,10)s.drawClear()h(30,30,30)p(0,6,32,6)h(i,i,i)ad(2,1,0,4,5,4)p(2,4,2,6)c=g.D and i or 80
h(c,c,c)v(6,1,ae(aN,g.af//1))h(25,25,25)r(27,0,5,6)c=k(27,0,5,6,m)and i or 50
h(c,c,c)v(28,2,"^")h(25,25,25)r(27,14,5,5)r(27,20,5,5)r(27,7,5,5)r(27,27,5,5)c=k(27,7,5,5,m)and i or 50
h(c,c,c)v(28,7,aP)c=k(27,14,5,5,m)and i or 50
h(c,c,c)ad(29,15,27,18,32,18)c=k(27,20,5,5,m)and i or 50
h(c,c,c)ad(29,25,26,21,32,21)c=g.D and i or 50
h(c,c,c)p(28,29,28,31)p(29,28,31,28)p(30,30,30,31)aw(a[j],0)aw(a[j+1],1)h(100,100,100)ac(22,27,ae("%01d",j%2+j//2))end
end
end
function aw(u,l)local c=0
l=l*12
c=u~=0 and N or 45
h(c,c,c)if b.aj[u]==4000 and u~=0 then
h(50,i,50)end
v(6,8+l,ae(aN,u//1))h(25,25,25)for _=0,2,1 do
r(2+6*_,14+l,5,5)end
c=u~=0 and i or 80
r(0,8+l,5,5)h(i,i,i)v(1,8+l,aO)c=b.w[u]and i or 50
h(c,c,c)ac(3,13+l,"v")c=b.y[u]and i or 50
h(c,c,c)p(9,15+l,11,15+l)p(11,16+l,11,17+l)p(9,17+l,11,17+l)p(9,16+l,9,17+l)c=b.C[u]and i or 50
h(c,c,c)v(15,14+l,aP)end
function k(H,O,aC,az,al)local M=m
if H<=e.E and
H+aC>=e.E and
O<=e.B and
O+az>=e.B and
e.I then
if not e.n and al then
M=d
elseif not al then
M=d
end
elseif not e.I then
e.n=m
M=m
else
M=m
end
return M
end
function ac(aJ,aG,J)if type(J)=="number" then
J=tostring(J)end
aF=Q("F1")..Q("F2")..Q("F3")..Q("F4")for _=1,J:len()do
au=J:sub(_,_):byte()*5-159
for A=1,5 do
aI="0x"..aF:sub(au,au+4):sub(A,A)for ar=1,3 do
if aI & 2^(4-ar)>0 then
av=aJ+_*4+ar-5
ax=aG+A-1
p(av,ax,av+1,ax)end
end
end
end
end
