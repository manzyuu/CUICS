-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3579 (3946 with comment) chars
bE="%03d"

b=255
am=true
u=false
d=tonumber
N=string
s=screen
l=math
Z=property
ar=input
G=ar.getBool
aD=Z.getNumber
ag=l.floor
j=s.drawRectF
aC=l.abs
O=N.format
X=s.drawText
a=s.setColor
p=l.deg
e=s.drawLine
q=Z.getText
aA=table.insert
h=l.pi
W=l.sqrt
D=l.atan
k=l.sin
f=l.cos
i=ar.getNumber
do
end
_={}al=0
function bn()_.aa=i(1)_.ad=i(2)_.bz=i(3)_.aI=_.ad-al
al=_.ad
local E=i(4)local K=i(5)local P=i(6)local V=i(10)local S=i(11)local R=i(12)_.bw=i(13)local A,C=f(E),k(E)local I,x=f(K),k(K)local z,F=f(P),k(P)local aS=I*z
local aJ=-A*F+C*x*z
local ba=C*F+A*x*z
local t=I*F
local o=A*z+C*x*F
local r=-C*z+A*x*F
local bq=-x
local bp=C*I
local bo=A*I
_.bk=D(t,W(r*r+o*o))_.bh=D(o,W(t*t+r*r))_.aW=D(r,W(o*o+t*t))local aT=-D(k(E)*k(P)+f(E)*k(K)*f(P),f(E)*f(K))/2/h
_.J=((((1-aT)%1)*(h*2)))or 0
_.bC=aS*V+t*S+bq*R
_.bB=aJ*V+o*S+bp*R
_.bD=ba*V+r*S+bo*R
_.n=D(-_.bh,_.bk)_.ae=-_.aW
end
do
function aN(M,ah)if N.find(M,ah)==nil then
return{M}end
local Q={}local bi="(.-)"..ah.."()"
local an
for aE,bc in N.gmatch(M,bi)do
aA(Q,aE)an=bc
end
aA(Q,N.sub(M,an))return Q
end
function ac(aX)local af=d(q(aX),16)or 0
return(af>>16)& b,(af>>8)& b,af & b
end
function aH(bb,aV,B)return(1-B)*bb+B*aV
end
function aQ(aa)if aa<0 then
return-1
elseif aa>=0 then
return 1
else
return 0
end
end
end
do
function bj(b_,bm,y)if type(y)=="number" then
y=tostring(y)end
aF=q("F1")..q("F2")..q("F3")..q("F4")for c=1,y:len()do
az=y:sub(c,c):byte()*5-159
for T=1,5 do
br="0x"..aF:sub(az,az+4):sub(T,T)for au=1,3 do
if br & 2^(4-au)>0 then
at=b_+c*4+au-5
aj=bm+T-1
e(at,aj,at+1,aj)end
end
end
end
end
function bx()local Y=0
local ab=0
local av=32
local ap=32
local L=10
local ak=5
local U=9
U=U-ak
for c=-90//L,90//L do
local by=f(_.n)*(p(_.ae))+av/2
local bs=k(_.n)*(p(_.ae))+ap/2
local B,ax=f(_.n)*c*L+by,k(_.n)*c*L+bs
local aB=_.n+h/2
local aw=-_.n+h/2
local w=f(aH(0,h/2,_.ae+l.rad(c)))*U+ak
if c==0 then
a(b,0,b)w=20
elseif c>0 then
a(50,b,50)else
a(50,50,b)end
local aK,aU=f(aB)*w+B,k(aB)*w+ax
local aq,ai=f(aw)*w+B,-k(aw)*w+ax
e(aK+Y,aU+ab-1,aq+Y,ai+ab-1)X(aq+Y-1-3*aQ(-_.n),ai+ab-3,O("%-1d",aC(c//1)))end
end
function aO(bt)local m=0
local bv={0,h*.5,h,h*1.5}local aZ={"N","E","S","W"}a(5,70,5)for c=1,4,1 do
m=(p(-_.J+bv[c]+h)%360-180)*.6+15
X(m-1,24,aZ[c])end
a(3,2,2)j(0,29,32,3)j(10,23,11,7)j(9,24,13,5)a(b,b,225)bj(10,24,O(bE,d(ag(p(_.J)))))a(5,70,5)for c=-72,72,1 do
if aC(c)%18==0 then
a(50,70,50)else
a(5,70,5)end
local m=(3*c+15)-(p(_.J+h)%360-180)*.6
e(m,29+c%2,m,33)end
a(250,40,40)local m=-(p(-bt+_.J+h)%360-180)*.6+15
e(m,29,m,33)end
function be(bg,aP,aL,aG)g=aN(bu,",")if bg then
a(d(g[1]),d(g[2]),d(g[3]))else
a(30,30,30)end
j(0,4,4,3)if aP then
a(d(g[4]),d(g[5]),d(g[6]))else
a(30,30,30)end
j(0,10,4,3)if aL then
a(d(g[7]),d(g[8]),d(g[9]))else
a(30,30,30)end
j(0,16,4,3)if aG then
a(d(g[10]),d(g[11]),d(g[12]))else
a(30,30,30)end
j(0,22,4,3)end
function aR()a(0,0,0,70)j(0,12,32,7)a(b,b,b)e(2,0,2,32)a(b,190,0)j(0,13,4,5)e(4,14,4,17)e(5,15,8,15)a(200,10,10)j(0,15,2,-_.aI*40)a(b,b,b)s.drawTextBox(6,0,26,32,O("%04d",ag(_.ad*bf)),0,0)end
function aY()a(2,2,2)j(11,12,18,7)a(b,b,b)e(29,0,29,20)a(b,180,0)e(27,15,27,16)e(28,14,28,17)e(29,13,29,18)e(30,13,30,18)a(b,b,b)X(12,13,O(bE,ag(_.bw*bd)))end
end
do
bl,ay,as=ac("SkyColor")bA,ay,as=ac("LandColor")bl,ay,as=ac("CenterLineColor")bu=q("indicatorColor")bf=aD("Altitude Unit")bd=aD("Speed Unit")v={u,u,u,u}aM=Z.getBool("Monitor Swap")H=u
ao=0
function onTick()ao=i(21)bn()v={G(1),G(2),G(3),G(4)}H=u
end
function onDraw()a(10,10,10)s.drawClear()if H~=aM then
av,ap=32,32
aO(ao)aY()be(v[1],v[2],v[3],v[4])H=am
else
bx()aR()H=am
end
end
end
