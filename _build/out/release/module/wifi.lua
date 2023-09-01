aM="+"
aL="%04d"

l=255
o=false
d=true
am=input
ag=output
C=screen
U=property
N=U.getText
x=C.drawRectF
X=string.format
A=C.drawText
Y=C.drawTriangleF
r=C.drawLine
h=C.setColor
I=ag.setNumber
G=ag.setBool
ai=math.floor
g=am.getNumber
s=am.getBool
do
O=10000
aB=d
aw=U.getBool("Monitor Swap")P=o
Q=2
aI=U.getNumber("Passcode")aF,aH=0,0
aC,aK=1,10
H={}f={}f.q=1
f.M=o
e={}e.y={}e.F={}e.D={}e.ac={}e.al={}e.aa={}i={}i.w=0
i.v=0
i.B=0
c={0,0,0,0,0,0,0,0}aE=d
a={}a.w=0
a.v=0
a.z=0
a.t=o
a.p=d
a.ae=o
a.E=o
k=1
K=o
end
function onTick()do
a.E=s(1)a.p=a.z==0 and s(1)and a.ae
a.z=(s(1)and(a.z==0))and 5 or
a.z>0 and a.z-1 or 0
a.ae=not s(1)aj=not aj
if not s(32)and c[f.q]~=0 and f.M then
e.ac[c[f.q]]=g(1)e.al[c[f.q]]=g(7)//1
e.aa[c[f.q]]=g(8)//1
end
H.Z=g(9)H.W=g(10)H.aJ=g(11)H.aG=g(12)H.aD=g(13)V=g(14)L=g(15)i.w=g(16)i.v=g(17)a.w=g(18)a.v=g(19)Q=g(23)if a.z==0 then
f.R=g(20)f.M=s(20)k=g(24)for _=1,8,1 do
c[_]=ai(g(24+_))%O or 0
if 0~=c[_]then
local T=ai(g(24+_)/O)e.y[c[_]]=T & 1==1
e.F[c[_]]=T & 2==2
e.D[c[_]]=T & 4==4
end
end
end
for _=1,7,1 do
if c[_]==0 and c[_+1]~=0 then
for n=_,7,1 do
c[n]=c[n+1]end
end
for n=1,8,1 do
if _~=n and c[_]==c[n]and _<n then
c[n]=0
elseif _~=n and c[_]==c[n]and _>n then
c[_]=0
end
end
end
end
do
if Q==2 then
if m(27,0,5,6,a.p,d)and V~=0 then
a.t=d
f.R=V
end
if m(27,7,5,5,a.p,d)then
for _=1,8,1 do
if c[_]==L or f.R==L then
break
end
if c[_]==0 and L~=0 then
c[_]=L%O
e.y[c[_]]=d
break
end
end
a.t=d
end
for _=0,1,1 do
if m(1,14+_*12,5,5,a.p,d)and c[k+_]~=0 then
a.t=d
e.y[c[k+_]]=not e.y[c[k+_]]end
if m(7,14+_*12,5,5,a.p,d)and c[k+_]~=0 then
a.t=d
e.F[c[k+_]]=not e.F[c[k+_]]end
if m(13,14+_*12,5,5,a.p,d)and c[k+_]~=0 then
a.t=d
e.D[c[k+_]]=not e.D[c[k+_]]end
if m(20,15+_*12,3,2,a.p,d)and c[k+_]~=0 then
a.t=d
i.B=c[k+_]==i.B and 0 or c[k+_]end
if m(0,8+_*12,5,5,a.p,d)then
a.t=d
c[k+_]=0
end
end
end
end
do
K=Q<=2 and a.p
do
if s(29)then
i.w=V//1
i.v=L//1
K=d
end
if s(30)and i.B~=0 then
i.w=e.al[i.B]or 0
i.v=e.aa[i.B]or 0
K=d
end
if s(31)then
i.w=g(21)i.v=g(22)K=d
end
end
G(10,K)G(11,m(27,27,5,5,a.p,d))G(12,m(27,20,5,5,a.p,d))G(13,m(27,14,5,5,a.p,d))G(32,aj)f.q=s(32)and f.q+1 or f.q
f.q=f.q+1==9 and 1 or f.q
f.q=1
I(16,i.w//1)I(17,i.v//1)I(20,f.R)I(21,c[f.q])for _=1,8,1 do
local au=e.y[c[_]]and 1 or 0
local ax=e.F[c[_]]and 2 or 0
local aA=e.D[c[_]]and 4 or 0
I(24+_,(c[_]+(au+ax+aA)*O))end
end
P=o
a.t=a.p and a.t or o
end
function onDraw()if P~=aw then
P=d
else
P=d
if Q==2 then
local b=0
h(10,10,10)C.drawClear()h(30,30,30)r(0,6,32,6)h(l,l,l)Y(2,1,0,4,5,4)r(2,4,2,6)b=f.M and l or 80
h(b,b,b)A(6,1,X(aL,f.R//1))h(25,25,25)x(27,0,5,6)b=m(27,0,5,6,a.E,o)and l or 50
h(b,b,b)A(28,2,"^")h(25,25,25)x(27,14,5,5)x(27,20,5,5)x(27,7,5,5)x(27,27,5,5)b=m(27,7,5,5,a.E,o)and l or 50
h(b,b,b)A(28,7,aM)b=m(27,14,5,5,a.E,o)and l or 50
h(b,b,b)Y(29,15,27,18,32,18)b=m(27,20,5,5,a.E,o)and l or 50
h(b,b,b)Y(29,25,26,21,32,21)b=f.M and l or 50
h(b,b,b)r(28,29,28,31)r(29,28,31,28)r(30,30,30,31)ah(c[k],0)ah(c[k+1],1)h(100,100,100)ao(24,27,X("%01d",k%2+k//2))end
end
end
function ah(u,j)local ap=u or 0
local b=0
j=j*12
b=u~=0 and 150 or 45
h(b,b,b)if e.ac[u]==4000 and u~=0 then
h(50,l,50)end
A(6,8+j,X(aL,ap//1))h(25,25,25)for _=0,3,1 do
x(1+6*_,14+j,5,5)end
b=u~=0 and l or 80
x(0,8+j,5,5)h(l,l,l)A(1,8+j,"-")b=e.y[u]and l or 50
h(b,b,b)ao(2,13+j,"v")b=e.F[u]and l or 50
h(b,b,b)r(8,15+j,10,15+j)r(10,16+j,10,17+j)r(8,17+j,10,17+j)r(8,16+j,8,17+j)b=e.D[u]and l or 50
h(b,b,b)A(14,14+j,aM)b=(i.B==u and u~=0)and l or 50
h(b,b,b)x(20,15+j,3,2)r(20,17+j,20,18+j)end
function m(Z,W,at,ay,av,af)local S=o
if Z<=a.w and
Z+at>=a.w and
W<=a.v and
W+ay>=a.v and
av then
if not a.t and af then
S=d
elseif not af then
S=d
end
else
S=o
end
return S
end
function ao(ar,az,J)if type(J)=="number" then
J=tostring(J)end
aq=N("F1")..N("F2")..N("F3")..N("F4")for _=1,J:len()do
ad=J:sub(_,_):byte()*5-159
for n=1,5 do
as="0x"..aq:sub(ad,ad+4):sub(n,n)for ak=1,3 do
if as & 2^(4-ak)>0 then
ab=ar+_*4+ak-5
an=az+n-1
r(ab,an,ab+1,an)end
end
end
end
end
