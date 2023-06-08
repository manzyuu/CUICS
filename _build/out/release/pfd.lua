-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3213 (3580 with comment) chars
bx="number"

d=360
a=255
o=false
e=tonumber
I=true
Q=string
r=screen
n=math
ao=property
ag=ao.getNumber
ay=table.insert
t=ao.getText
g=n.pi
Y=n.sqrt
p=n.atan
j=n.sin
f=n.cos
k=input.getNumber
q=r.drawLine
B=n.deg
i=n.floor
aw=Q.format
l=r.drawRectF
b=r.setColor
if I then
end
bp=n
function aX(av)local S=300
b(5,5,5)l(10,23,11,7)l(9,24,13,5)b(a,a,225)aM(10,24,aw("%03d",e(i(B(_.A)))))b(5,70,5)for c=0,72,1 do
q(i(((i(B(_.A)-c*5+d)%d)/d)*S),29+c%2,i(((i(B(_.A)-c*5+d)%d)/d)*S),33)end
b(250,250,40)q(i(((i(B(_.A)-av+d)%d)/d)*S),29,i(((i(B(_.A)-av+d)%d)/d)*S),33)end
function bo()_={}local u=k(4)local z=k(5)local R=k(6)local J,E=f(u),j(u)local N,H=f(z),j(z)local D,C=f(R),j(R)local ap=N*D
local aG=-J*C+E*H*D
local af=E*C+J*H*D
local x=N*C
local w=J*D+E*H*C
local s=-E*D+J*H*C
local al=-H
local aT=E*N
local ax=J*N
_.bc=p(x,Y(s*s+w*w))/(g*2)_.aV=p(w,Y(x*x+s*s))/(g*2)_.bi=p(s,Y(w*w+x*x))/(g*2)_.bw=p(ap,al)/-(g*2)_.bs=p(af,ax)/-(g*2)local ba=-p(j(u)*j(R)+f(u)*j(z)*f(R),f(u)*f(z))/2/g
K=(((1-ba)%1)*(g*2))_.A=aQ(K)local ad=k(10)local aa=k(11)local V=k(12)_.bt=ap*ad+x*aa+al*V
_.br=aG*ad+w*aa+aT*V
_.bu=af*ad+s*aa+ax*V
_.u=k(1)_.z=k(3)_.be=k(2)_.m=p(_.aV,_.bc)_.v=_.bi
end
function aM(aE,bm,F)local ac,aq,ai,ae,U
if type(F)==bxthen
F=tostring(F)end
aq=t("F1")..t("F2")..t("F3")..t("F4")for c=1,F:len()do
ac=F:sub(c,c):byte()*5-159
for ab=1,5 do
ai="0x"..aq:sub(ac,ac+4):sub(ab,ab)for aj=1,3 do
if ai&2^(4-aj)>0 then
ae=aE+c*4+aj-5
U=bm+ab-1
q(ae,U,ae+1,U)end
end
end
end
end
function aW(aO,bj,aU,aI)h=bf(bb,",")if aO then
b(e(h[1]),e(h[2]),e(h[3]))else
b(10,10,10)end
l(0,4,4,3)if bj then
b(e(h[4]),e(h[5]),e(h[6]))else
b(10,10,10)end
l(0,10,4,3)if aU then
b(e(h[7]),e(h[8]),e(h[9]))else
b(10,10,10)end
l(0,16,4,3)if aI then
b(e(h[7]),e(h[8]),e(h[9]))else
b(10,10,10)end
l(0,22,4,3)end
function bf(O,as)if Q.find(O,as)==nil then
return{O}end
local W={}local aK="(.-)"..as.."()"
local aA
for bg,bd in Q.gmatch(O,aK)do
ay(W,bg)aA=bd
end
ay(W,Q.sub(O,aA))return W
end
function X(bk)local T=e(t(bk),16)return(T>>16)& a,(T>>8)& a,T & a
end
function bn(bl,aJ,G)return(1-G)*bl+G*aJ
end
function aQ(Z)local K
if type(Z)~=bx then
K=o
else
K=Z%1..""=="0"
end
if K then
return Z
else
return 0
end
end
function aY()local m=_.m*(g*2)local v=_.v*(g*2)local ak=0
local ah=0
local L=10
local aS=8
for c=-d//L,d//L do
local aP=f(m)*(c+v)+aN/2
local b_=j(m)*(c+v)+aB/2
local G,au=f(m)*c*L+aP,j(m)*c*L+b_
local at=m+g/2
local az=-m+g/2
local y=f(bn(0,g/2,(c+v)/d*aB))*aS
if c==0 then
b(a,a,a)local y=20
elseif c<0 then
b(50,a,50)else
b(50,50,a)end
local aR,aZ=f(at)*y+G,j(at)*y+au
local aL,bh=f(az)*y+G,-j(az)*y+au
q(aR+ak,aZ+ah,aL+ak,bh+ah)end
b(a,a,a)r.drawText(16,25,v)end
function aD()b(a,10,50,100)l(0,12,32,7)b(a,a,a)q(2,0,2,32)b(a,190,0)l(0,13,4,5)q(4,14,4,17)q(5,15,8,15)r.drawTriangleF(30,16,32,13,32,19)b(a,a,a)r.drawTextBox(6,0,26,32,aw("%04d",i(_.be*aH)),0,0)end
aF,an,aC=X("SkyColor")bv,an,aC=X("LandColor")aF,an,aC=X("CenterLineColor")bb=t("indicatorColor")aH=ag("Altitude Unit")bq=ag("Speed Unit")am=I
M=I
P={o,o,o,o}function onTick()if am then
am=o
end
if M==o then return end
ar=1
bo()M=o
end
function onDraw()if(ar==1)then
if M==I then return end
M=I
aN,aB=32,32
aX(0)aW(P[1],P[2],P[3],P[4])ar=2
else
aY()aD()end
end
