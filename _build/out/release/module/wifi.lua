aM="%04d"
aL="+"

k=255
o=false
e=true
ah=input
ao=output
C=screen
W=property
P=W.getText
x=C.drawRectF
S=string.format
A=C.drawText
X=C.drawTriangleF
r=C.drawLine
h=C.setColor
J=ao.setNumber
K=ao.setBool
Z=math.floor
g=ah.getNumber
t=ah.getBool
do
R=10000
aC=e
ap=W.getBool("Monitor Swap")N=o
M=2
aJ=W.getNumber("Passcode")aF,aB=0,0
aE,aK=1,10
D={}f={}f.q=1
f.L=o
d={}d.B={}d.H={}d.G={}d.aa={}d.ag={}d.ae={}j={}j.v=0
j.w=0
j.z=0
c={0,0,0,0,0,0,0,0}aH=e
a={}a.v=0
a.w=0
a.y=0
a.u=o
a.p=e
a.ac=o
a.E=o
l=1
ad=o
end
function onTick()do
a.E=t(1)a.p=a.y==0 and t(1)and a.ac
a.y=(t(1)and(a.y==0))and 5 or
a.y>0 and a.y-1 or 0
a.ac=not t(1)al=not al
if not t(32)and c[f.q]~=0 and f.L then
d.aa[c[f.q]]=g(1)d.ag[c[f.q]]=g(7)//1
d.ae[c[f.q]]=g(8)//1
end
D.Y=g(9)D.T=g(10)D.aG=g(11)D.aI=g(12)D.aD=g(13)V=g(14)F=g(15)j.v=g(16)j.w=g(17)a.v=g(18)a.w=g(19)M=g(23)if a.y==0 then
f.O=g(20)f.L=t(20)l=g(24)for _=1,8,1 do
c[_]=Z(g(24+_))%R or 0
if 0~=c[_]then
local U=Z(g(24+_)/R)d.B[c[_]]=U & 1==1
d.H[c[_]]=U & 2==2
d.G[c[_]]=U & 4==4
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
if M==2 then
if n(27,0,5,6,a.p,e)and V~=0 then
a.u=e
f.O=V
end
if n(27,7,5,5,a.p,e)then
for _=1,8,1 do
if c[_]==F or f.O==F then
break
end
if c[_]==0 and F~=0 then
c[_]=F%R
d.B[c[_]]=e
break
end
end
a.u=e
end
for _=0,1,1 do
if n(1,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.B[c[l+_]]=not d.B[c[l+_]]end
if n(7,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.H[c[l+_]]=not d.H[c[l+_]]end
if n(13,14+_*12,5,5,a.p,e)and c[l+_]~=0 then
a.u=e
d.G[c[l+_]]=not d.G[c[l+_]]end
if n(20,15+_*12,3,2,a.p,e)and c[l+_]~=0 then
a.u=e
j.z=c[l+_]==j.z and 0 or c[l+_]end
if n(0,8+_*12,5,5,a.p,e)then
a.u=e
c[l+_]=0
end
end
end
end
do
if t(29)then
j.v=V//1
j.w=F//1
end
if t(30)and j.z~=0 then
j.v=d.ag[j.z]or 0
j.w=d.ae[j.z]or 0
end
if t(32)then
j.v=g(21)j.w=g(22)end
ad=M<=2 and a.p
K(10,ad)K(11,n(27,27,5,5,a.p,e))K(12,n(27,20,5,5,a.p,e))K(13,n(27,14,5,5,a.p,e))K(32,al)f.q=t(32)and f.q+1 or f.q
f.q=f.q+1==9 and 1 or f.q
f.q=1
J(16,j.v//1)J(17,j.w//1)J(20,f.O)J(21,c[f.q])for _=1,8,1 do
local az=d.B[c[_]]and 1 or 0
local ay=d.H[c[_]]and 2 or 0
local ax=d.G[c[_]]and 4 or 0
J(24+_,(c[_]+(az+ay+ax)*R))end
end
N=o
a.u=a.p and a.u or o
end
function onDraw()if N~=ap then
N=e
else
N=e
if M==2 then
local b=0
h(10,10,10)C.drawClear()h(30,30,30)r(0,6,32,6)h(k,k,k)X(2,1,0,4,5,4)r(2,4,2,6)b=f.L and k or 80
h(b,b,b)A(6,1,S(aM,f.O//1))h(25,25,25)x(27,0,5,6)b=n(27,0,5,6,a.E,o)and k or 50
h(b,b,b)A(28,2,"^")h(25,25,25)x(27,14,5,5)x(27,20,5,5)x(27,7,5,5)x(27,27,5,5)b=n(27,7,5,5,a.E,o)and k or 50
h(b,b,b)A(28,7,aL)b=n(27,14,5,5,a.E,o)and k or 50
h(b,b,b)X(29,15,27,18,32,18)b=n(27,20,5,5,a.E,o)and k or 50
h(b,b,b)X(29,25,26,21,32,21)b=f.L and k or 50
h(b,b,b)r(28,29,28,31)r(29,28,31,28)r(30,30,30,31)am(c[l],0)am(c[l+1],1)h(100,100,100)aj(24,27,S("%01d",l%2+l//2))end
end
end
function am(s,i)local au=s or 0
local b=0
i=i*12
b=s~=0 and 150 or 45
h(b,b,b)if d.aa[s]==4000 and s~=0 then
h(50,k,50)end
A(6,8+i,S(aM,au//1))h(25,25,25)for _=0,3,1 do
x(1+6*_,14+i,5,5)end
b=s~=0 and k or 80
x(0,8+i,5,5)h(k,k,k)A(1,8+i,"-")b=d.B[s]and k or 50
h(b,b,b)aj(2,13+i,"v")b=d.H[s]and k or 50
h(b,b,b)r(8,15+i,10,15+i)r(10,16+i,10,17+i)r(8,17+i,10,17+i)r(8,16+i,8,17+i)b=d.G[s]and k or 50
h(b,b,b)A(14,14+i,aL)b=(j.z==s and s~=0)and k or 50
h(b,b,b)x(20,15+i,3,2)r(20,17+i,20,18+i)end
function n(Y,T,av,ar,as,af)local Q=o
if Y<=a.v and
Y+av>=a.v and
T<=a.w and
T+ar>=a.w and
as then
if not a.u and af then
Q=e
elseif not af then
Q=e
end
else
Q=o
end
return Q
end
function aj(aA,aw,I)if type(I)=="number" then
I=tostring(I)end
aq=P("F1")..P("F2")..P("F3")..P("F4")for _=1,I:len()do
ai=I:sub(_,_):byte()*5-159
for m=1,5 do
at="0x"..aq:sub(ai,ai+4):sub(m,m)for ab=1,3 do
if at & 2^(4-ab)>0 then
an=aA+_*4+ab-5
ak=aw+m-1
r(an,ak,an+1,ak)end
end
end
end
end
