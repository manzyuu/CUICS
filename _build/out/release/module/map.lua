-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3222 (3589 with comment) chars

v=255
p=100
f=false
g=true
ar=input
y=math
x=screen
ae=property
T=ae.getText
aq=x.drawText
z=x.drawRect
ap=y.cos
at=y.sin
E=x.drawLine
M=y.pi
w=x.drawRectF
G=map.mapToScreen
h=x.setColor
R=output.setBool
ab=y.max
J=y.min
Y=y.floor
a=ar.getNumber
ad=ar.getBool
do
W=10000
aN=g
ax=ae.getBool("Monitor Swap")P=f
aa=f
C=1
aj=ae.getNumber("Passcode")r,t=0,0
s,o=1,10
l={}j={}j.u=1
j.X=f
_={}_.al={}_.ag={}_.ak={}_.ao={}_.m={}_.q={}_.S={}_.av={}_.az={}_.ah={}_.af={}c={0,0,0,0,0,0,0,0}A={}A.m=0
A.q=0
H={}H.m=0
H.q=0
aI=g
d={}d.B=f
aK=1
V=f
I=g
end
function onTick()do
d.D=ad(1)aa=not aa
_.ao[c[j.u]]=a(1)or 0
if a(1)==aj and not ad(32)then
_.m[c[j.u]]=a(2)//1 or 0
_.q[c[j.u]]=a(3)//1 or 0
_.S[c[j.u]]=a(4)or 0
_.av[c[j.u]]=a(5)//1 or 0
_.az[c[j.u]]=a(6)//1 or 0
_.ah[c[j.u]]=a(7)//1 or 0
_.af[c[j.u]]=a(8)//1 or 0
end
l.k=a(9)l.n=a(10)l.Q=a(11)l.aM=a(12)l.aJ=a(13)aH=a(14)aL=a(15)A.m=a(16)A.q=a(17)d.m=a(18)d.q=a(19)H.m=a(21)H.m=a(22)C=a(23)j.X=ad(20)for b=1,8,1 do
c[b]=Y(a(24+b))%W and
Y(a(24+b))%W or 0
if 0<c[b]then
local ac=Y(a(24+b)/W)_.al[c[b]]=ac & 1==1
_.ag[c[b]]=ac & 2==2
_.ak[c[b]]=ac & 4==4
end
end
end
do
if C==1 then
do
if i(0,0,5,5,g)then
d.B=g
s=s-1
end
if i(0,6,5,5,g)then
d.B=g
s=s+1
end
s=J(ab(s,1),22)o=J(s-5,0)/5+J(ab(s-4,1),10)+J(ab(s-14,0),8)*5
end
do
I=i(13,13,6,6,f)and g or I
if I then
r,t=l.k,l.n
end
if d.D and not(i(0,0,5,11,f)or i(26,0,6,23,f)or i(13,13,6,6,f))then
I=f
r=(d.m-16)*o/2+r
t=-(d.q-16)*o/2+t
end
if i(27,0,5,4,g)then
d.B=g
V=not V
end
end
end
end
do
R(1,i(27,6,5,4,g)and C==1)R(2,i(27,12,5,4,g)and C==1)R(3,i(27,18,5,4,g)and C==1)R(32,aa)end
P=f
d.B=d.D and d.B or f
end
function onDraw()if P~=ax then
P=g
else
P=g
if C==1 then
do
x.drawMap(r,t,o)h(p,p,p)K(0,26,o)h(30,30,30)local k,n=G(r,t,o,32,32,l.k,l.n)w(k-1,n-1,3,3)local am=((l.Q+1.75)%1-.5)*2*M+M/2
E(k-1,n-1,at(am)*8+k,ap(am)*8+n)end
for b=1,8,1 do
if _.al[c[b]]and c[b]~=0 and _.ao[c[b]]==aj and j.X then
local L,O=G(r,t,o,32,32,_.m[c[b]],_.q[c[b]])h(150,50,150)w(L-1,O-1,3,3)if _.ag[c[b]]then
_.S[c[b]]=_.S[c[b]]or 0
local Q=((_.S[c[b]]+1.75)%1-.5)*2*M+M/2
E(L,O,at(Q)*8+L,ap(Q)*8+O)end
if _.ak[c[b]]then
local Z,aG=G(r,t,o,32,32,_.ah[c[b]],_.af[c[b]])h(150,150,p)E(L,O,Z,aG)w(Z-1,Z-1,3,3)end
end
end
do
h(5,5,5)w(0,0,5,10)w(27,0,4,4)h(20,20,20)z(0,0,4,4)z(0,5,4,4)z(27,0,4,4)h(v,v,v)aq(1,0,"+")aq(1,5,"-")e=i(27,0,5,4,f)and p or v
h(e,e,e)K(28,-1,"w")h(200,200,200,200)x.drawCircle(16,16,4)end
if V then
local e=0
h(5,5,5)w(27,6,5,16)h(20,20,20)z(27,6,4,5)z(27,11,4,5)z(27,16,4,6)e=i(27,6,5,4,f)and p or v
h(e,e,e)K(28,6,"p")e=j.X and v or 50
e=i(27,12,5,4,f)and p or e
h(e,e,e)w(28,13,3,2)E(28,13,28,16)e=i(27,18,5,4,f)and p or v
h(e,e,e)K(28,17,"B")local k,n=G(r,t,o,32,32,l.k,l.n)local aE,aF=G(r,t,o,32,32,A.m,A.q)h(p,10,p)E(k-1,n-1,aE,aF)end
end
end
end
function i(k,n,aD,ay,D)local N=f
if k<=d.m and
k+aD>=d.m and
n<=d.q and
n+ay>=d.q and
d.D then
if not d.B and D then
N=g
elseif not D then
N=g
end
else
N=f
end
return N
end
function K(aC,aw,F)if type(F)=="number" then
F=tostring(F)end
aA=T("F1")..T("F2")..T("F3")..T("F4")for b=1,F:len()do
ai=F:sub(b,b):byte()*5-159
for U=1,5 do
aB="0x"..aA:sub(ai,ai+4):sub(U,U)for an=1,3 do
if aB & 2^(4-an)>0 then
as=aC+b*4+an-5
au=aw+U-1
E(as,au,as+1,au)end
end
end
end
end
