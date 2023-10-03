-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3576 (3943 with comment) chars
bE="%03d"

b=255
az=true
t=false
d=tonumber
M=string
s=screen
l=math
X=property
ao=input
I=ao.getBool
ap=X.getNumber
Q=l.floor
i=s.drawRectF
ai=l.abs
H=M.format
S=s.drawText
a=s.setColor
u=l.deg
g=s.drawLine
q=X.getText
aD=table.insert
j=l.pi
ag=l.sqrt
F=l.atan
k=l.sin
e=l.cos
h=ao.getNumber
do
end
_={}aq=0
function bh()_.Y=h(1)_.ab=h(2)_.bD=h(3)_.bv=_.ab-aq
aq=_.ab
local w=h(4)local L=h(5)local P=h(6)local V=h(10)local T=h(11)local ac=h(12)_.ba=h(13)local z,D=e(w),k(w)local K,C=e(L),k(L)local x,v=e(P),k(P)local bp=K*x
local bu=-z*v+D*C*x
local aW=D*v+z*C*x
local p=K*v
local r=z*x+D*C*v
local o=-D*x+z*C*v
local bc=-C
local bb=D*K
local aG=z*K
_.bw=F(p,ag(o*o+r*r))_.aV=F(r,ag(p*p+o*o))_.aN=F(o,ag(r*r+p*p))local b_=-F(k(w)*k(P)+e(w)*k(L)*e(P),e(w)*e(L))/2/j
_.J=((((1-b_)%1)*(j*2)))or 0
_.bz=bp*V+p*T+bc*ac
_.bB=bu*V+r*T+bb*ac
_.bA=aW*V+o*T+aG*ac
_.n=F(-_.aV,_.bw)_.aa=-_.aN
end
do
function aM(N,ak)if M.find(N,ak)==nil then
return{N}end
local Z={}local aK="(.-)"..ak.."()"
local as
for by,bt in M.gmatch(N,aK)do
aD(Z,by)as=bt
end
aD(Z,M.sub(N,as))return Z
end
function U(aL)local ad=d(q(aL),16)or 0
return(ad>>16)& b,(ad>>8)& b,ad & b
end
function aY(be,aZ,E)return(1-E)*be+E*aZ
end
function bx(Y)if Y<0 then
return-1
elseif Y>=0 then
return 1
else
return 0
end
end
end
do
function aE(bm,aP,B)if type(B)=="number" then
B=tostring(B)end
aX=q("F1")..q("F2")..q("F3")..q("F4")for c=1,B:len()do
av=B:sub(c,c):byte()*5-159
for R=1,5 do
bk="0x"..aX:sub(av,av+4):sub(R,R)for at=1,3 do
if bk & 2^(4-at)>0 then
aA=bm+c*4+at-5
ah=aP+R-1
g(aA,ah,aA+1,ah)end
end
end
end
end
function bi()local ae=0
local W=0
local am=32
local au=32
local O=10
local aj=5
local af=9
af=af-aj
for c=-90//O,90//O do
local br=e(_.n)*(u(_.aa))+am/2
local aJ=k(_.n)*(u(_.aa))+au/2
local E,ax=e(_.n)*c*O+br,k(_.n)*c*O+aJ
local ar=_.n+j/2
local ay=-_.n+j/2
local A=e(aY(0,j/2,_.aa+l.rad(c)))*af+aj
if c==0 then
a(b,0,b)A=20
elseif c>0 then
a(50,b,50)else
a(50,50,b)end
local bg,aH=e(ar)*A+E,k(ar)*A+ax
local aw,aC=e(ay)*A+E,-k(ay)*A+ax
g(bg+ae,aH+W-1,aw+ae,aC+W-1)S(aw+ae-1-3*bx(-_.n),aC+W-3,H("%-1d",ai(c//1)))end
end
function bq(aQ)local m=0
local bn={0,j*.5,j,j*1.5}local aI={"N","E","S","W"}a(5,70,5)for c=1,4,1 do
m=(u(-_.J+bn[c]+j)%360-180)*.6+15
S(m-1,24,aI[c])end
a(3,2,2)i(0,29,32,3)i(10,23,11,7)i(9,24,13,5)a(b,b,225)aE(10,24,H(bE,d(Q(u(_.J)))))a(5,70,5)for c=-72,72,1 do
if ai(c)%18==0 then
a(50,70,50)else
a(5,70,5)end
local m=(3*c+15)-(u(_.J+j)%360-180)*.6
g(m,29+c%2,m,33)end
a(250,40,40)local m=-(u(-aQ+_.J+j)%360-180)*.6+15
g(m,29,m,33)end
function bj(aT,bl,aR,bo)f=aM(bf,",")if aT then
a(d(f[1]),d(f[2]),d(f[3]))else
a(30,30,30)end
i(0,4,4,3)if bl then
a(d(f[4]),d(f[5]),d(f[6]))else
a(30,30,30)end
i(0,10,4,3)if aR then
a(d(f[7]),d(f[8]),d(f[9]))else
a(30,30,30)end
i(0,16,4,3)if bo then
a(d(f[7]),d(f[8]),d(f[9]))else
a(30,30,30)end
i(0,22,4,3)end
function aF()a(0,0,0,70)i(0,12,32,7)a(b,b,b)g(2,0,2,32)a(b,190,0)i(0,13,4,5)g(4,14,4,17)g(5,15,8,15)a(200,10,10)i(0,15,2,-_.bv*40)a(b,b,b)s.drawTextBox(6,0,26,32,H("%04d",Q(_.ab*aO)),0,0)end
function bd()a(2,2,2)i(11,12,18,7)a(b,b,b)g(29,0,29,20)a(b,180,0)g(27,15,27,16)g(28,14,28,17)g(29,13,29,18)g(30,13,30,18)a(b,b,b)S(12,13,H(bE,Q(_.ba*aU)))end
end
do
aS,aB,al=U("SkyColor")bC,aB,al=U("LandColor")aS,aB,al=U("CenterLineColor")bf=q("indicatorColor")aO=ap("Altitude Unit")aU=ap("Speed Unit")y={t,t,t,t}bs=X.getBool("Monitor Swap")G=t
an=0
function onTick()an=h(21)bh()y={I(1),I(2),I(3),I(4)}G=t
end
function onDraw()a(10,10,10)s.drawClear()if G~=bs then
am,au=32,32
bq(an)bd()bj(y[1],y[2],y[3],y[4])G=az
else
bi()aF()G=az
end
end
end
