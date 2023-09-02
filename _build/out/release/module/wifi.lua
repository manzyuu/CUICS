aM="%04d"
aL="+"

k=255
o=false
e=true
ac=input
ai=output
C=screen
W=property
N=W.getText
x=C.drawRectF
T=string.format
y=C.drawText
Z=C.drawTriangleF
r=C.drawLine
h=C.setColor
I=ai.setNumber
H=ai.setBool
ao=math.floor
g=ac.getNumber
t=ac.getBool
do
S=10000
aJ=e
at=W.getBool("Monitor Swap")R=o
P=2
aC=W.getNumber("Passcode")aK,aE=0,0
aF,aH=1,10
F={}f={}f.q=1
f.O=o
d={}d.z={}d.G={}d.L={}d.ae={}d.am={}d.ab={}j={}j.w=0
j.v=0
j.B=0
c={0,0,0,0,0,0,0,0}aB=e
a={}a.w=0
a.v=0
a.A=0
a.u=o
a.p=e
a.ag=o
a.D=o
l=1
K=o
end
function onTick()do
a.D=t(1)a.p=a.A==0 and t(1)and a.ag
a.A=(t(1)and(a.A==0))and 5 or
a.A>0 and a.A-1 or 0
a.ag=not t(1)aj=not aj
if not t(32)and c[f.q]~=0 and f.O then
d.ae[c[f.q]]=g(1)d.am[c[f.q]]=g(7)//1
d.ab[c[f.q]]=g(8)//1
end
F.X=g(9)F.Y=g(10)F.aI=g(11)F.aD=g(12)F.aG=g(13)V=g(14)E=g(15)j.w=g(16)j.v=g(17)a.w=g(18)a.v=g(19)P=g(23)if a.A==0 then
f.M=g(20)f.O=t(20)l=g(24)for _=1,8,1 do
c[_]=ao(g(24+_))%S or 0
if 0~=c[_]then
local U=ao(g(24+_)/S)d.z[c[_]]=U & 1==1
d.G[c[_]]=U & 2==2
d.L[c[_]]=U & 4==4
end
end
end
for _=1,7,1 do
if c[_]==0 and c[_+1]~=0 then
for m=_,7,1 do
c[m]=c[m+1]end
end
for m=1,8,1 do
if _~=m and c[_]==c[m]and _<m then
c[m]=0
elseif _~=m and c[_]==c[m]and _>m then
c[_]=0
end
end
end
end
do
if P==2 then
if n(27,0,5,6,a.p,e)and V~=0 then
a.u=e
f.M=V
end
if n(27,7,5,5,a.p,e)then
for _=1,8,1 do
if c[_]==E or f.M==E then
break
end
if c[_]==0 and E~=0 then
c[_]=E%S
d.z[c[_]]=e
break
end
end
a.u=e
end
for _=0,1,1 do
if n(1,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.z[c[l+_]]=not d.z[c[l+_]]end
if n(7,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.G[c[l+_]]=not d.G[c[l+_]]end
if n(13,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.L[c[l+_]]=not d.L[c[l+_]]end
if n(20,15+_*12,3,2,a.p,e)and c[l+_]~=0 then
a.u=e
j.B=c[l+_]==j.B and 0 or c[l+_]end
if n(0,8+_*12,5,5,a.p,e)then
a.u=e
c[l+_]=0
end
end
end
end
do
K=P<=2 and a.p
do
if t(29)then
j.w=V//1
j.v=E//1
K=e
end
if t(30)and j.B~=0 then
j.w=d.am[j.B]or 0
j.v=d.ab[j.B]or 0
K=e
end
if t(31)then
j.w=g(21)j.v=g(22)K=e
end
end
H(10,K)H(11,n(27,27,5,5,a.p,e))H(12,n(27,20,5,5,a.p,e))H(13,n(27,14,5,5,a.p,e))H(32,aj)f.q=t(32)and f.q+1 or f.q
f.q=f.q+1==9 and 1 or f.q
f.q=1
I(16,j.w//1)I(17,j.v//1)I(20,f.M)I(21,c[f.q])for _=1,8,1 do
local as=d.z[c[_]]and 1 or 0
local ax=d.G[c[_]]and 2 or 0
local aA=d.L[c[_]]and 4 or 0
I(24+_,(c[_]+(as+ax+aA)*S))end
end
R=o
a.u=a.p and a.u or o
end
function onDraw()if R~=at then
R=e
else
R=e
if P==2 then
local b=0
h(10,10,10)C.drawClear()h(30,30,30)r(0,6,32,6)h(k,k,k)Z(2,1,0,4,5,4)r(2,4,2,6)b=f.O and k or 80
h(b,b,b)y(6,1,T(aM,f.M//1))h(25,25,25)x(27,0,5,6)b=n(27,0,5,6,a.D,o)and k or 50
h(b,b,b)y(28,2,"^")h(25,25,25)x(27,14,5,5)x(27,20,5,5)x(27,7,5,5)x(27,27,5,5)b=n(27,7,5,5,a.D,o)and k or 50
h(b,b,b)y(28,7,aL)b=n(27,14,5,5,a.D,o)and k or 50
h(b,b,b)Z(29,15,27,18,32,18)b=n(27,20,5,5,a.D,o)and k or 50
h(b,b,b)Z(29,25,26,21,32,21)b=f.O and k or 50
h(b,b,b)r(28,29,28,31)r(29,28,31,28)r(30,30,30,31)an(c[l],0)an(c[l+1],1)h(100,100,100)ah(24,27,T("%01d",l%2+l//2))end
end
end
function an(s,i)local av=s or 0
local b=0
i=i*12
b=s~=0 and 150 or 45
h(b,b,b)if d.ae[s]==4000 and s~=0 then
h(50,k,50)end
y(6,8+i,T(aM,av//1))h(25,25,25)for _=0,3,1 do
x(1+6*_,14+i,5,5)end
b=s~=0 and k or 80
x(0,8+i,5,5)h(k,k,k)y(1,8+i,"-")b=d.z[s]and k or 50
h(b,b,b)ah(2,13+i,"v")b=d.G[s]and k or 50
h(b,b,b)r(8,15+i,10,15+i)r(10,16+i,10,17+i)r(8,17+i,10,17+i)r(8,16+i,8,17+i)b=d.L[s]and k or 50
h(b,b,b)y(14,14+i,aL)b=(j.B==s and s~=0)and k or 50
h(b,b,b)x(20,15+i,3,2)r(20,17+i,20,18+i)end
function n(X,Y,ar,aq,az,ak)local Q=o
if X<=a.w and
X+ar>=a.w and
Y<=a.v and
Y+aq>=a.v and
az then
if not a.u and ak then
Q=e
elseif not ak then
Q=e
end
else
Q=o
end
return Q
end
function ah(aw,ay,J)if type(J)=="number" then
J=tostring(J)end
ap=N("F1")..N("F2")..N("F3")..N("F4")for _=1,J:len()do
ad=J:sub(_,_):byte()*5-159
for m=1,5 do
au="0x"..ap:sub(ad,ad+4):sub(m,m)for aa=1,3 do
if au & 2^(4-aa)>0 then
al=aw+_*4+aa-5
af=ay+m-1
r(al,af,al+1,af)end
end
end
end
end
