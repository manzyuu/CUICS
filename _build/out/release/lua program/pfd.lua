-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3518 (3885 with comment) chars
bB="%03d"
bA="N"

s=360
a=255
n=false
M=true
f=tonumber
x=screen
Q=string
o=math
ay=property
az=input
T=az.getBool
aj=ay.getNumber
V=o.floor
U=Q.format
l=x.drawRectF
r=x.drawText
b=x.setColor
j=x.drawLine
u=ay.getText
at=table.insert
c=o.pi
W=o.sqrt
G=o.atan
k=o.sin
h=o.cos
m=az.getNumber
do
end
_={}function aV()_.bw=m(1)_.aT=m(2)_.bv=m(3)local z=m(4)local O=m(5)local L=m(6)local ab=m(10)local ac=m(11)local ah=m(12)_.bq=m(13)local I,B=h(z),k(z)local R,F=h(O),k(O)local K,H=h(L),k(L)local bm=R*K
local bk=-I*H+B*F*K
local aN=B*H+I*F*K
local y=R*H
local t=I*K+B*F*H
local v=-B*K+I*F*H
local aY=-F
local aE=B*R
local be=I*R
_.bs=G(y,W(v*v+t*t))/(c*2)_.aG=G(t,W(y*y+v*v))/(c*2)_.aF=G(v,W(t*t+y*y))/(c*2)local aP=-G(k(z)*k(L)+h(z)*k(O)*h(L),h(z)*h(O))/2/c
_.q=((((1-aP)%1)*(c*2)))_.by=bm*ab+y*ac+aY*ah
_.bu=bk*ab+t*ac+aE*ah
_.bz=aN*ab+v*ac+be*ah
_.w=G(-_.aG,_.bs)_.Z=-_.aF
end
do
function bn(S,av)if Q.find(S,av)==nil then
return{S}end
local ag={}local aS="(.-)"..av.."()"
local ap
for b_,aC in Q.gmatch(S,aS)do
at(ag,b_)ap=aC
end
at(ag,Q.sub(S,ap))return ag
end
function ad(aU)local Y=f(u(aU),16)return(Y>>16)& a,(Y>>8)& a,Y & a
end
function ba(bi,bd,E)return(1-E)*bi+E*bd
end
end
do
function aK(aW,bg,D)local aa,au,aB,ae,ai
if type(D)=="number"then
D=tostring(D)end
au=u("F1")..u("F2")..u("F3")..u("F4")for g=1,D:len()do
aa=D:sub(g,g):byte()*5-159
for X=1,5 do
aB="0x"..au:sub(aa,aa+4):sub(X,X)for as=1,3 do
if aB&2^(4-as)>0 then
ae=aW+g*4+as-5
ai=bg+X-1
j(ae,ai,ae+1,ai)end
end
end
end
end
function bt()local ao=0
local aq=0
local P=10
local aM=8
for g=-s//P,s//P do
local aR=h(_.w)*(g-_.Z/c*s)+aQ/2
local aJ=k(_.w)*(g-_.Z/c*s)+ar/2
local E,am=h(_.w)*g*P+aR,k(_.w)*g*P+aJ
local aA=_.w+c/2
local aw=-_.w+c/2
local J=h(ba(0,c/2,(g+_.Z/(c*2))*ar))*aM
if g==0 then
b(a,a,a)local J=20
elseif g<0 then
b(50,a,50)else
b(50,50,a)end
local bp,bh=h(aA)*J+E,k(aA)*J+am
local aI,aO=h(aw)*J+E,-k(aw)*J+am
j(bp+ao,bh+aq,aI+ao,aO+aq)end
end
function aZ(af)local e=0
local d=4
local p=s*d/5*4
local af=af-c/2
local A=s*d
e=((-_.q/c/2+.00)*(p/d)+4*d)%A
r(e-1,25,bA)e=((-_.q/c/2+.25)*(p/d)+4*d)%A
r(e-1,25,"E")e=((-_.q/c/2+.50)*(p/d)+4*d)%A
r(e-1,25,"S")e=((-_.q/c/2+.75)*(p/d)+4*d)%A
r(e-1,25,"W")e=((-_.q/c/2+1.00)*(p/d)+4*d)%A
r(e-1,25,bA)b(3,2,2)l(0,29,32,3)l(10,23,11,7)l(9,24,13,5)b(a,a,225)aK(10,24,U(bB,f(V(o.deg(_.q)))))b(5,70,5)for g=0,32/d do
local e=(-_.q/c/2*(p/d)+g*d)%32
j(e,29+g%2,e,33)end
b(250,250,40)local e=(-af/c/2*(p/d)+2*d)%32
j(e,29,e,33)end
function bo(aH,br,bb,aD)i=bn(bl,",")if aH then
b(f(i[1]),f(i[2]),f(i[3]))else
b(10,10,10)end
l(0,4,4,3)if br then
b(f(i[4]),f(i[5]),f(i[6]))else
b(10,10,10)end
l(0,10,4,3)if bb then
b(f(i[7]),f(i[8]),f(i[9]))else
b(10,10,10)end
l(0,16,4,3)if aD then
b(f(i[7]),f(i[8]),f(i[9]))else
b(10,10,10)end
l(0,22,4,3)end
function bc()b(a,10,50,100)l(0,12,32,7)b(a,a,a)j(2,0,2,32)b(a,190,0)l(0,13,4,5)j(4,14,4,17)j(5,15,8,15)x.drawTriangleF(30,16,32,13,32,19)b(a,a,a)x.drawTextBox(6,0,26,32,U("%04d",V(_.aT*bj)),0,0)end
function bf()b(2,2,2)l(11,12,18,7)b(a,a,a)j(29,0,29,20)b(a,180,0)j(27,15,27,16)j(28,14,28,17)j(29,13,29,18)j(30,13,30,18)b(a,a,a)r(12,13,U(bB,V(_.bq*aX)))end
end
do
aL,ax,an=ad("SkyColor")bx,ax,an=ad("LandColor")aL,ax,an=ad("CenterLineColor")bl=u("indicatorColor")bj=aj("Altitude Unit")aX=aj("Speed Unit")ak=M
N=M
C={n,n,n,n}function onTick()if ak then
ak=n
end
if N==n then return end
al=1
aV()C={T(1),T(2),T(3),T(4)}N=n
end
function onDraw()if(al==1)then
if N==M then return end
N=M
aQ,ar=32,32
aZ(0)bf()bo(C[1],C[2],C[3],C[4])al=2
else
bt()bc()end
end
end
