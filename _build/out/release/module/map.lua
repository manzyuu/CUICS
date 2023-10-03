-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3389 (3756 with comment) chars

x=255
D=150
p=100
e=false
h=true
ai=input
A=math
t=screen
Y=property
U=Y.getText
an=t.drawText
F=t.drawRect
aw=A.cos
ao=A.sin
E=t.drawLine
L=A.pi
w=t.drawRectF
B=map.mapToScreen
g=t.setColor
T=output.setBool
ac=A.max
W=A.min
b=ai.getNumber
Z=A.floor
Q=ai.getBool
do
ab=10000
aO=h
au=Y.getBool("Monitor Swap")K=e
ad=e
y=1
at=Y.getNumber("Passcode")r,q=0,0
s,l=1,10
o={}I={}I.aL=1
I.ae=e
_={}_.ap={}_.am={}_.ax={}_.aj={}_.m={}_.n={}_.X={}_.az={}_.aA={}_.ak={}_.aq={}c={0,0,0,0,0,0,0,0}z={}z.m=0
z.n=0
v={}v.m=0
v.n=0
aN=h
f={}f.C=e
aP=1
O=e
R=h
K=e
V=5
end
function onTick()do
f.G=Q(1)ad=not ad
V=Q(32)and 5 or
V>0 and V-1 or 0
for a=1,8,1 do
c[a]=Z(b(24+a))%ab and
Z(b(24+a))%ab or 0
if 0<c[a]then
local af=Z(b(24+a)/ab)_.ap[c[a]]=af & 1==1
_.am[c[a]]=af & 2==2
_.ax[c[a]]=af & 4==4
end
local u=c[a]if b(1)==at and V==0 and c[a]==b(13)then
_.aj[u]=b(1)_.m[u]=b(2)//1
_.n[u]=b(3)//1
_.X[u]=b(4)_.az[u]=b(5)//1
_.aA[u]=b(6)//1
_.ak[u]=b(7)//1
_.aq[u]=b(8)//1
end
end
o.i=b(9)o.j=b(10)o.N=b(11)o.aR=b(12)aM=b(14)aQ=b(15)z.m=b(16)z.n=b(17)f.m=b(18)f.n=b(19)v.m=b(21)v.n=b(22)y=b(23)I.ae=Q(20)v.aI=Q(21)end
do
if y==1 then
do
if k(0,0,5,5,h)then
f.C=h
s=s-1
end
if k(0,6,5,5,h)then
f.C=h
s=s+1
end
s=W(ac(s,1),22)l=W(s-5,0)/5+W(ac(s-4,1),10)+W(ac(s-14,0),8)*5
end
do
R=k(13,13,6,6,e)and h or R
if R then
r,q=o.i,o.j
end
local d=O and 23 or 6
if f.G and not(k(0,0,5,11,e)or k(26,0,6,d,e)or k(13,13,6,6,e))then
R=e
r=(f.m-16)*l/2+r
q=-(f.n-16)*l/2+q
end
if k(27,0,5,4,h)then
f.C=h
O=not O
end
end
end
end
do
T(1,k(27,6,5,5,h)and y==1)T(2,k(27,12,5,5,h)and y==1)T(3,k(27,18,5,5,h)and y==1)T(32,ad)end
f.C=f.G and f.C or e
end
function onDraw()if K
then
K=e
if au and y==1 then
ah()end
else
K=h
if not au and y==1 then
ah()end
end
end
function ah()do
t.drawMap(r,q,l)g(p,p,p)P(0,26,l)g(30,30,30)local i,j=B(r,q,l,32,32,o.i,o.j)w(i-1,j-1,3,3)local al=((o.N+1.75)%1-.5)*2*L+L/2
E(i,j,ao(al)*8+i,aw(al)*8+j)end
if v.aI then
g(D,D,0,70)local i,j=B(r,q,l,32,32,v.m,v.n)t.drawCircleF(i,j,10/l)end
for a=1,8,1 do
if _.ap[c[a]]and c[a]~=0 and _.aj[c[a]]==at and I.ae then
local J,S=B(r,q,l,32,32,_.m[c[a]],_.n[c[a]])g(D,50,D)w(J-1,S-1,3,3)if _.am[c[a]]then
_.X[c[a]]=_.X[c[a]]or 0
local N=((_.X[c[a]]+1.75)%1-.5)*2*L+L/2
E(J,S,ao(N)*8+J,aw(N)*8+S)if _.ax[c[a]]then
local ag,aH=B(r,q,l,32,32,_.ak[c[a]],_.aq[c[a]])g(D,D,p)E(J,S,ag,aH)w(ag-1,ag-1,3,3)end
end
end
if c[a+1]==0 then
break
end
end
if O then
local i,j=B(r,q,l,32,32,o.i,o.j)local aG,aD=B(r,q,l,32,32,z.m,z.n)g(p,10,p)E(i,j,aG,aD)local d=0
g(5,5,5)w(27,6,5,16)g(20,20,20)F(27,6,4,5)F(27,11,4,5)F(27,16,4,6)d=k(27,6,5,4,e)and p or x
g(d,d,d)P(28,6,"p")d=I.ae and x or 50
d=k(27,12,5,4,e)and p or d
g(d,d,d)w(28,13,3,2)E(28,13,28,16)d=k(27,18,5,4,e)and p or x
g(d,d,d)P(28,17,"B")end
do
g(5,5,5)w(0,0,5,10)w(27,0,4,4)g(20,20,20)F(0,0,4,4)F(0,5,4,4)F(27,0,4,4)g(x,x,x)an(1,0,"+")an(1,5,"-")d=k(27,0,5,4,e)and p or x
g(d,d,d)P(28,-1,"w")g(200,200,200,200)t.drawCircle(16,16,4)end
end
function k(i,j,aB,aF,G)local M=e
if i<=f.m and
i+aB>=f.m and
j<=f.n and
j+aF>=f.n and
f.G then
if not f.C and G then
M=h
elseif not G then
M=h
end
else
M=e
end
return M
end
function P(aK,aE,H)if type(H)=="number" then
H=tostring(H)end
aC=U("F1")..U("F2")..U("F3")..U("F4")for a=1,H:len()do
ar=H:sub(a,a):byte()*5-159
for aa=1,5 do
aJ="0x"..aC:sub(ar,ar+4):sub(aa,aa)for as=1,3 do
if aJ & 2^(4-as)>0 then
ay=aK+a*4+as-5
av=aE+aa-1
E(ay,av,ay+1,av)end
end
end
end
end
