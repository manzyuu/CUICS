-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3566 (3933 with comment) chars
bE="%03d"

b=255
aq=true
u=false
d=tonumber
O=string
r=screen
k=math
U=property
aC=input
L=aC.getBool
as=U.getNumber
S=k.floor
j=r.drawRectF
ay=k.abs
K=O.format
Q=r.drawText
a=r.setColor
t=k.deg
f=r.drawLine
s=U.getText
ax=table.insert
h=k.pi
V=k.sqrt
y=k.atan
l=k.sin
g=k.cos
i=aC.getNumber
do
end
_={}aw=0
function aO()_.ag=i(1)_.af=i(2)_.bD=i(3)_.aM=_.af-aw
aw=_.af
local F=i(4)local M=i(5)local H=i(6)local R=i(10)local X=i(11)local T=i(12)_.aG=i(13)local z,B=g(F),l(F)local P,D=g(M),l(M)local E,v=g(H),l(H)local bs=P*E
local aY=-z*v+B*D*E
local bi=B*v+z*D*E
local p=P*v
local o=z*E+B*D*v
local n=-B*E+z*D*v
local aH=-D
local bk=B*P
local bg=z*P
_.aL=y(p,V(n*n+o*o))_.aP=y(o,V(p*p+n*n))_.aV=y(n,V(o*o+p*p))local aT=-y(l(F)*l(H)+g(F)*l(M)*g(H),g(F)*g(M))/2/h
_.I=((((1-aT)%1)*(h*2)))or 0
_.bC=bs*R+p*X+aH*T
_.by=aY*R+o*X+bk*T
_.bz=bi*R+n*X+bg*T
_.q=y(-_.aP,_.aL)_.Z=-_.aV
end
do
function aW(G,am)if O.find(G,am)==nil then
return{G}end
local ab={}local be="(.-)"..am.."()"
local az
for aJ,br in O.gmatch(G,be)do
ax(ab,aJ)az=br
end
ax(ab,O.sub(G,az))return ab
end
function ad(bl)local Y=d(s(bl),16)or 0
return(Y>>16)& b,(Y>>8)& b,Y & b
end
function b_(bq,bc,C)return(1-C)*bq+C*bc
end
function k.bB(ag)if ag<0 then
return-1
elseif ag>0 then
return 1
else
return 0
end
end
end
do
function bf(bo,aQ,w)if type(w)=="number" then
w=tostring(w)end
aX=s("F1")..s("F2")..s("F3")..s("F4")for c=1,w:len()do
aA=w:sub(c,c):byte()*5-159
for W=1,5 do
bm="0x"..aX:sub(aA,aA+4):sub(W,W)for ar=1,3 do
if bm & 2^(4-ar)>0 then
ak=bo+c*4+ar-5
aj=aQ+W-1
f(ak,aj,ak+1,aj)end
end
end
end
end
function aI()local ae=0
local aa=0
local ao=32
local aD=32
local J=10
local al=5
local ac=9
ac=ac-al
for c=-90//J,90//J do
local aZ=g(_.q)*(t(_.Z))+ao/2
local aS=l(_.q)*(t(_.Z))+aD/2
local C,av=g(_.q)*c*J+aZ,l(_.q)*c*J+aS
local ah=_.q+h/2
local aB=-_.q+h/2
local x=g(b_(0,h/2,_.Z+k.rad(c)))*ac+al
if c==0 then
a(b,0,b)x=20
elseif c>0 then
a(50,b,50)else
a(50,50,b)end
local bw,bu=g(ah)*x+C,l(ah)*x+av
local at,an=g(aB)*x+C,-l(aB)*x+av
f(bw+ae,bu+aa-1,at+ae,an+aa-1)Q(at+ae-4,an+aa-3,K("%-1d",ay(c//1)))end
end
function aK(bd)local m=0
local ba={0,h*.5,h,h*1.5}local bv={"N","E","S","W"}a(5,70,5)for c=1,4,1 do
m=(t(-_.I+ba[c]+h)%360-180)*.6+15
Q(m-1,24,bv[c])end
a(3,2,2)j(0,29,32,3)j(10,23,11,7)j(9,24,13,5)a(b,b,225)bf(10,24,K(bE,d(S(t(_.I)))))a(5,70,5)for c=-72,72,1 do
if ay(c)%18==0 then
a(50,70,50)else
a(5,70,5)end
local m=(3*c+15)-(t(_.I+h)%360-180)*.6
f(m,29+c%2,m,33)end
a(250,40,40)local m=-(t(-bd+_.I+h)%360-180)*.6+15
f(m,29,m,33)end
function bb(aR,bn,aE,bh)e=aW(bx,",")if aR then
a(d(e[1]),d(e[2]),d(e[3]))else
a(30,30,30)end
j(0,4,4,3)if bn then
a(d(e[4]),d(e[5]),d(e[6]))else
a(30,30,30)end
j(0,10,4,3)if aE then
a(d(e[7]),d(e[8]),d(e[9]))else
a(30,30,30)end
j(0,16,4,3)if bh then
a(d(e[7]),d(e[8]),d(e[9]))else
a(30,30,30)end
j(0,22,4,3)end
function aF()a(0,0,0,70)j(0,12,32,7)a(b,b,b)f(2,0,2,32)a(b,190,0)j(0,13,4,5)f(4,14,4,17)f(5,15,8,15)a(200,10,10)j(0,15,2,-_.aM*60)a(b,b,b)r.drawTextBox(6,0,26,32,K("%04d",S(_.af*bp)),0,0)end
function bt()a(2,2,2)j(11,12,18,7)a(b,b,b)f(29,0,29,20)a(b,180,0)f(27,15,27,16)f(28,14,28,17)f(29,13,29,18)f(30,13,30,18)a(b,b,b)Q(12,13,K(bE,S(_.aG*aU)))end
end
do
bj,ai,ap=ad("SkyColor")bA,ai,ap=ad("LandColor")bj,ai,ap=ad("CenterLineColor")bx=s("indicatorColor")bp=as("Altitude Unit")aU=as("Speed Unit")A={u,u,u,u}aN=U.getBool("Monitor Swap")N=u
au=0
function onTick()au=i(21)aO()A={L(1),L(2),L(3),L(4)}N=u
end
function onDraw()a(10,10,10)r.drawClear()if N~=aN then
ao,aD=32,32
aK(au)bt()bb(A[1],A[2],A[3],A[4])N=aq
else
aI()aF()N=aq
end
end
end
