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
ak=true
u=false
d=tonumber
H=string
p=screen
l=math
af=property
aq=input
P=aq.getBool
ah=af.getNumber
ag=l.floor
j=p.drawRectF
aA=l.abs
N=H.format
R=p.drawText
a=p.setColor
r=l.deg
e=p.drawLine
q=af.getText
an=table.insert
h=l.pi
ae=l.sqrt
y=l.atan
k=l.sin
f=l.cos
i=aq.getNumber
do
end
_={}ao=0
function aU()_.V=i(1)_.ad=i(2)_.bC=i(3)_.bn=_.ad-ao
ao=_.ad
local F=i(4)local I=i(5)local K=i(6)local W=i(10)local T=i(11)local Y=i(12)_.b_=i(13)local E,v=f(F),k(F)local J,A=f(I),k(I)local z,C=f(K),k(K)local aR=J*z
local aY=-E*C+v*A*z
local bs=v*C+E*A*z
local o=J*C
local s=E*z+v*A*C
local t=-v*z+E*A*C
local bl=-A
local aV=v*J
local aH=E*J
_.bg=y(o,ae(t*t+s*s))_.aF=y(s,ae(o*o+t*t))_.bd=y(t,ae(s*s+o*o))local bt=-y(k(F)*k(K)+f(F)*k(I)*f(K),f(F)*f(I))/2/h
_.L=((((1-bt)%1)*(h*2)))or 0
_.bA=aR*W+o*T+bl*Y
_.bD=aY*W+s*T+aV*Y
_.bB=bs*W+t*T+aH*Y
_.n=y(-_.aF,_.bg)_.ac=-_.bd
end
do
function bi(O,al)if H.find(O,al)==nil then
return{O}end
local Z={}local aZ="(.-)"..al.."()"
local av
for bc,bq in H.gmatch(O,aZ)do
an(Z,bc)av=bq
end
an(Z,H.sub(O,av))return Z
end
function X(bv)local S=d(q(bv),16)or 0
return(S>>16)& b,(S>>8)& b,S & b
end
function aP(aT,aK,B)return(1-B)*aT+B*aK
end
function bw(V)if V<0 then
return-1
elseif V>=0 then
return 1
else
return 0
end
end
end
do
function bh(aM,be,D)if type(D)=="number" then
D=tostring(D)end
br=q("F1")..q("F2")..q("F3")..q("F4")for c=1,D:len()do
aj=D:sub(c,c):byte()*5-159
for Q=1,5 do
aG="0x"..br:sub(aj,aj+4):sub(Q,Q)for at=1,3 do
if aG & 2^(4-at)>0 then
au=aM+c*4+at-5
az=be+Q-1
e(au,az,au+1,az)end
end
end
end
end
function bm()local aa=0
local U=0
local ax=32
local aw=32
local G=10
local aB=5
local ab=9
ab=ab-aB
for c=-90//G,90//G do
local bu=f(_.n)*(r(_.ac))+ax/2
local bj=k(_.n)*(r(_.ac))+aw/2
local B,ay=f(_.n)*c*G+bu,k(_.n)*c*G+bj
local ar=_.n+h/2
local aD=-_.n+h/2
local x=f(aP(0,h/2,_.ac+l.rad(c)))*ab+aB
if c==0 then
a(b,0,b)x=20
elseif c>0 then
a(50,b,50)else
a(50,50,b)end
local aW,aN=f(ar)*x+B,k(ar)*x+ay
local aC,as=f(aD)*x+B,-k(aD)*x+ay
e(aW+aa,aN+U-1,aC+aa,as+U-1)R(aC+aa-1-3*bw(-_.n),as+U-3,N("%-1d",aA(c//1)))end
end
function by(aJ)local m=0
local bf={0,h*.5,h,h*1.5}local bk={"N","E","S","W"}a(5,70,5)for c=1,4,1 do
m=(r(-_.L+bf[c]+h)%360-180)*.6+15
R(m-1,24,bk[c])end
a(3,2,2)j(0,29,32,3)j(10,23,11,7)j(9,24,13,5)a(b,b,225)bh(10,24,N(bE,d(ag(r(_.L)))))a(5,70,5)for c=-72,72,1 do
if aA(c)%18==0 then
a(50,70,50)else
a(5,70,5)end
local m=(3*c+15)-(r(_.L+h)%360-180)*.6
e(m,29+c%2,m,33)end
a(250,40,40)local m=-(r(-aJ+_.L+h)%360-180)*.6+15
e(m,29,m,33)end
function ba(aS,aO,bx,aX)g=bi(aQ,",")if aS then
a(d(g[1]),d(g[2]),d(g[3]))else
a(30,30,30)end
j(0,4,4,3)if aO then
a(d(g[4]),d(g[5]),d(g[6]))else
a(30,30,30)end
j(0,10,4,3)if bx then
a(d(g[7]),d(g[8]),d(g[9]))else
a(30,30,30)end
j(0,16,4,3)if aX then
a(d(g[7]),d(g[8]),d(g[9]))else
a(30,30,30)end
j(0,22,4,3)end
function bp()a(0,0,0,70)j(0,12,32,7)a(b,b,b)e(2,0,2,32)a(b,190,0)j(0,13,4,5)e(4,14,4,17)e(5,15,8,15)a(200,10,10)j(0,15,2,-_.bn*40)a(b,b,b)p.drawTextBox(6,0,26,32,N("%04d",ag(_.ad*aE)),0,0)end
function bo()a(2,2,2)j(11,12,18,7)a(b,b,b)e(29,0,29,20)a(b,180,0)e(27,15,27,16)e(28,14,28,17)e(29,13,29,18)e(30,13,30,18)a(b,b,b)R(12,13,N(bE,ag(_.b_*aI)))end
end
do
bb,ai,am=X("SkyColor")bz,ai,am=X("LandColor")bb,ai,am=X("CenterLineColor")aQ=q("indicatorColor")aE=ah("Altitude Unit")aI=ah("Speed Unit")w={u,u,u,u}aL=af.getBool("Monitor Swap")M=u
ap=0
function onTick()ap=i(21)aU()w={P(1),P(2),P(3),P(4)}M=u
end
function onDraw()a(10,10,10)p.drawClear()if M~=aL then
ax,aw=32,32
by(ap)bo()ba(w[1],w[2],w[3],w[4])M=ak
else
bm()bp()M=ak
end
end
end
