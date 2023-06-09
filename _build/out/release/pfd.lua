-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3478 (3845 with comment) chars
bz="N"

s=360
a=255
n=false
L=true
g=tonumber
v=screen
O=string
p=math
ah=property
ai=input
S=ai.getBool
au=ah.getNumber
an=p.floor
al=O.format
m=v.drawRectF
y=v.drawText
b=v.setColor
h=v.drawLine
x=ah.getText
ao=table.insert
c=p.pi
V=p.sqrt
z=p.atan
k=p.sin
i=p.cos
l=ai.getNumber
do
end
_={}function bo()_.bv=l(1)_.ba=l(2)_.bx=l(3)local C=l(4)local M=l(5)local R=l(6)local Z=l(10)local ae=l(11)local ac=l(12)local F,G=i(C),k(C)local N,B=i(M),k(M)local I,K=i(R),k(R)local bj=N*I
local bp=-F*K+G*B*I
local aH=G*K+F*B*I
local r=N*K
local w=F*I+G*B*K
local t=-G*I+F*B*K
local bl=-B
local bm=G*N
local aP=F*N
_.aD=z(r,V(t*t+w*w))/(c*2)_.aU=z(w,V(r*r+t*t))/(c*2)_.b_=z(t,V(w*w+r*r))/(c*2)local aW=-z(k(C)*k(R)+i(C)*k(M)*i(R),i(C)*i(M))/2/c
_.q=((((1-aW)%1)*(c*2)))_.bw=bj*Z+r*ae+bl*ac
_.bs=bp*Z+w*ae+bm*ac
_.bt=aH*Z+t*ae+aP*ac
_.u=z(-_.aU,_.aD)_.Y=-_.b_
end
do
function aL(T,ak)if O.find(T,ak)==nil then
return{T}end
local af={}local bb="(.-)"..ak.."()"
local aq
for aC,aF in O.gmatch(T,bb)do
ao(af,aC)aq=aF
end
ao(af,O.sub(T,aq))return af
end
function ab(bq)local X=g(x(bq),16)return(X>>16)& a,(X>>8)& a,X & a
end
function br(aO,bn,H)return(1-H)*aO+H*bn
end
end
do
function aV(aS,aT,D)local ag,az,ax,ad,W
if type(D)=="number"then
D=tostring(D)end
az=x("F1")..x("F2")..x("F3")..x("F4")for f=1,D:len()do
ag=D:sub(f,f):byte()*5-159
for U=1,5 do
ax="0x"..az:sub(ag,ag+4):sub(U,U)for ar=1,3 do
if ax&2^(4-ar)>0 then
ad=aS+f*4+ar-5
W=aT+U-1
h(ad,W,ad+1,W)end
end
end
end
end
function bh()local aA=0
local ay=0
local P=10
local aG=8
for f=-s//P,s//P do
local be=i(_.u)*(f-_.Y/c*s)+aE/2
local aQ=k(_.u)*(f-_.Y/c*s)+av/2
local H,ap=i(_.u)*f*P+be,k(_.u)*f*P+aQ
local aB=_.u+c/2
local at=-_.u+c/2
local J=i(br(0,c/2,(f+_.Y/(c*2))*av))*aG
if f==0 then
b(a,a,a)local J=20
elseif f<0 then
b(50,a,50)else
b(50,50,a)end
local bc,aR=i(aB)*J+H,k(aB)*J+ap
local bd,aX=i(at)*J+H,-k(at)*J+ap
h(bc+aA,aR+ay,bd+aA,aX+ay)end
end
function bi(aa)local e=0
local d=4
local o=s*d/5*4
local aa=aa-c/2
local A=s*d
e=((-_.q/c/2+.00)*(o/d)+4*d)%A
y(e-1,25,bz)e=((-_.q/c/2+.25)*(o/d)+4*d)%A
y(e-1,25,"E")e=((-_.q/c/2+.50)*(o/d)+4*d)%A
y(e-1,25,"S")e=((-_.q/c/2+.75)*(o/d)+4*d)%A
y(e-1,25,"W")e=((-_.q/c/2+1.00)*(o/d)+4*d)%A
y(e-1,25,bz)b(5,5,5,50)m(10,23,11,7)m(9,24,13,5)b(a,a,225)aV(10,24,al("%03d",g(an(p.deg(_.q)))))b(5,70,5)for f=0,32/d do
local e=(-_.q/c/2*(o/d)+f*d)%32
h(e,29+f%2,e,33)end
b(250,250,40)local e=(-aa/c/2*(o/d)+2*d)%32
h(e,29,e,33)end
function bf(aN,aI,bg,aY)j=aL(aZ,",")if aN then
b(g(j[1]),g(j[2]),g(j[3]))else
b(10,10,10)end
m(0,4,4,3)if aI then
b(g(j[4]),g(j[5]),g(j[6]))else
b(10,10,10)end
m(0,10,4,3)if bg then
b(g(j[7]),g(j[8]),g(j[9]))else
b(10,10,10)end
m(0,16,4,3)if aY then
b(g(j[7]),g(j[8]),g(j[9]))else
b(10,10,10)end
m(0,22,4,3)end
function aM()b(a,10,50,100)m(0,12,32,7)b(a,a,a)h(2,0,2,32)b(a,190,0)m(0,13,4,5)h(4,14,4,17)h(5,15,8,15)v.drawTriangleF(30,16,32,13,32,19)b(a,a,a)v.drawTextBox(6,0,26,32,al("%04d",an(_.ba*aK)),0,0)end
function aJ()b(2,2,2)m(11,12,18,7)b(a,a,a)h(29,0,29,20)b(a,180,0)h(27,15,27,16)h(28,14,28,17)h(29,13,29,18)h(30,13,30,18)b(a,a,a)y(12,13,220)end
end
do
bk,as,aw=ab("SkyColor")bu,as,aw=ab("LandColor")bk,as,aw=ab("CenterLineColor")aZ=x("indicatorColor")aK=au("Altitude Unit")by=au("Speed Unit")aj=L
Q=L
E={n,n,n,n}function onTick()if aj then
aj=n
end
if Q==n then return end
am=1
bo()E={S(1),S(2),S(3),S(4)}Q=n
end
function onDraw()if(am==1)then
if Q==L then return end
Q=L
aE,av=32,32
bi(0)aJ()bf(E[1],E[2],E[3],E[4])am=2
else
bh()aM()end
end
end
