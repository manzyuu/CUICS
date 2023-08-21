-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3510 (3877 with comment) chars
bB="%03d"
bA="N"

s=360
a=255
q=false
P=true
f=tonumber
w=screen
R=string
n=math
ag=property
am=input
O=am.getBool
ak=ag.getNumber
ae=n.floor
af=R.format
m=w.drawRectF
t=w.drawText
b=w.setColor
i=w.drawLine
y=ag.getText
ai=table.insert
c=n.pi
ad=n.sqrt
G=n.atan
l=n.sin
h=n.cos
k=am.getNumber
do
end
_={}function aC()_.by=k(1)_.aX=k(2)_.bw=k(3)local H=k(4)local N=k(5)local Q=k(6)local V=k(10)local U=k(11)local aa=k(12)_.bq=k(13)local K,J=h(H),l(H)local M,z=h(N),l(N)local I,F=h(Q),l(Q)local bs=M*I
local aD=-K*F+J*z*I
local bb=J*F+K*z*I
local x=M*F
local v=K*I+J*z*F
local r=-J*I+K*z*F
local aS=-z
local aB=J*M
local aT=K*M
_.aJ=G(x,ad(r*r+v*v))/(c*2)_.aI=G(v,ad(x*x+r*r))/(c*2)_.bo=G(r,ad(v*v+x*x))/(c*2)local be=-G(l(H)*l(Q)+h(H)*l(N)*h(Q),h(H)*h(N))/2/c
_.o=((((1-be)%1)*(c*2)))or 0
_.bu=bs*V+x*U+aS*aa
_.bv=aD*V+v*U+aB*aa
_.bz=bb*V+r*U+aT*aa
_.u=G(-_.aI,_.aJ)_.ab=-_.bo
end
do
function aU(L,ap)if R.find(L,ap)==nil then
return{L}end
local Y={}local bt="(.-)"..ap.."()"
local al
for aH,b_ in R.gmatch(L,bt)do
ai(Y,aH)al=b_
end
ai(Y,R.sub(L,al))return Y
end
function ac(aK)local W=f(y(aK),16)or 0
return(W>>16)& a,(W>>8)& a,W & a
end
function bj(bi,aQ,D)return(1-D)*bi+D*aQ
end
end
do
function bl(aG,bh,E)if type(E)=="number" then
E=tostring(E)end
aR=y("F1")..y("F2")..y("F3")..y("F4")for g=1,E:len()do
as=E:sub(g,g):byte()*5-159
for X=1,5 do
bm="0x"..aR:sub(as,as+4):sub(X,X)for ax=1,3 do
if bm & 2^(4-ax)>0 then
aq=aG+g*4+ax-5
ah=bh+X-1
i(aq,ah,aq+1,ah)end
end
end
end
end
function aW()local at=0
local au=0
local T=10
local aZ=8
for g=-s//T,s//T do
local bg=h(_.u)*(g-_.ab/c*s)+bd/2
local aF=l(_.u)*(g-_.ab/c*s)+aj/2
local D,ar=h(_.u)*g*T+bg,l(_.u)*g*T+aF
local av=_.u+c/2
local az=-_.u+c/2
local B=h(bj(0,c/2,(g+_.ab/(c*2))*aj))*aZ
if g==0 then
b(a,a,a)local B=20
elseif g<0 then
b(50,a,50)else
b(50,50,a)end
local bc,aE=h(av)*B+D,l(av)*B+ar
local aN,ba=h(az)*B+D,-l(az)*B+ar
i(bc+at,aE+au,aN+at,ba+au)end
end
function aA(Z)local e=0
local d=4
local p=s*d/5*4
local Z=Z-c/2
local A=s*d
e=((-_.o/c/2+.00)*(p/d)+4*d)%A
t(e-1,25,bA)e=((-_.o/c/2+.25)*(p/d)+4*d)%A
t(e-1,25,"E")e=((-_.o/c/2+.50)*(p/d)+4*d)%A
t(e-1,25,"S")e=((-_.o/c/2+.75)*(p/d)+4*d)%A
t(e-1,25,"W")e=((-_.o/c/2+1.00)*(p/d)+4*d)%A
t(e-1,25,bA)b(3,2,2)m(0,29,32,3)m(10,23,11,7)m(9,24,13,5)b(a,a,225)bl(10,24,af(bB,f(ae(n.deg(_.o)))))b(5,70,5)for g=0,32/d do
local e=(-_.o/c/2*(p/d)+g*d)%32
i(e,29+g%2,e,33)end
b(250,250,40)local e=(-Z/c/2*(p/d)+2*d)%32
i(e,29,e,33)end
function aV(aO,bn,aL,bp)j=aU(aY,",")if aO then
b(f(j[1]),f(j[2]),f(j[3]))else
b(10,10,10)end
m(0,4,4,3)if bn then
b(f(j[4]),f(j[5]),f(j[6]))else
b(10,10,10)end
m(0,10,4,3)if aL then
b(f(j[7]),f(j[8]),f(j[9]))else
b(10,10,10)end
m(0,16,4,3)if bp then
b(f(j[7]),f(j[8]),f(j[9]))else
b(10,10,10)end
m(0,22,4,3)end
function bf()b(a,10,50,100)m(0,12,32,7)b(a,a,a)i(2,0,2,32)b(a,190,0)m(0,13,4,5)i(4,14,4,17)i(5,15,8,15)w.drawTriangleF(30,16,32,13,32,19)b(a,a,a)w.drawTextBox(6,0,26,32,af("%04d",ae(_.aX*br)),0,0)end
function aM()b(2,2,2)m(11,12,18,7)b(a,a,a)i(29,0,29,20)b(a,180,0)i(27,15,27,16)i(28,14,28,17)i(29,13,29,18)i(30,13,30,18)b(a,a,a)t(12,13,af(bB,ae(_.bq*bk)))end
end
do
aP,aw,ao=ac("SkyColor")bx,aw,ao=ac("LandColor")aP,aw,ao=ac("CenterLineColor")aY=y("indicatorColor")br=ak("Altitude Unit")bk=ak("Speed Unit")ay=P
S=P
C={q,q,q,q}function onTick()if ay then
ay=q
end
if S==q then return end
an=1
aC()C={O(1),O(2),O(3),O(4)}S=q
end
function onDraw()if(an==1)then
if S==P then return end
S=P
bd,aj=32,32
aA(0)aM()aV(C[1],C[2],C[3],C[4])an=2
else
aW()bf()end
end
end
