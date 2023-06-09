-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3518 (3885 with comment) chars
bB="N"
bA="%03d"

v=360
a=255
q=false
M=true
g=tonumber
r=screen
N=string
n=math
aq=property
ak=input
R=ak.getBool
am=aq.getNumber
aa=n.floor
Z=N.format
k=r.drawRectF
x=r.drawText
b=r.setColor
j=r.drawLine
t=aq.getText
ao=table.insert
c=n.pi
U=n.sqrt
A=n.atan
l=n.sin
i=n.cos
m=ak.getNumber
do
end
_={}function bm()_.by=m(1)_.aD=m(2)_.bv=m(3)local J=m(4)local P=m(5)local L=m(6)local ah=m(10)local X=m(11)local ag=m(12)_.aH=m(13)local C,E=i(J),l(J)local Q,I=i(P),l(P)local G,F=i(L),l(L)local aU=Q*G
local bl=-C*F+E*I*G
local bd=E*F+C*I*G
local w=Q*F
local y=C*G+E*I*F
local u=-E*G+C*I*F
local bt=-I
local br=E*Q
local aO=C*Q
_.bs=A(w,U(u*u+y*y))/(c*2)_.ba=A(y,U(w*w+u*u))/(c*2)_.be=A(u,U(y*y+w*w))/(c*2)local aM=-A(l(J)*l(L)+i(J)*l(P)*i(L),i(J)*i(P))/2/c
_.p=((((1-aM)%1)*(c*2)))_.bu=aU*ah+w*X+bt*ag
_.bw=bl*ah+y*X+br*ag
_.bz=bd*ah+u*X+aO*ag
_.s=A(-_.ba,_.bs)_.V=-_.be
end
do
function bc(T,aj)if N.find(T,aj)==nil then
return{T}end
local ab={}local aP="(.-)"..aj.."()"
local ap
for bg,aI in N.gmatch(T,aP)do
ao(ab,bg)ap=aI
end
ao(ab,N.sub(T,ap))return ab
end
function Y(aS)local ai=g(t(aS),16)return(ai>>16)& a,(ai>>8)& a,ai & a
end
function aF(aK,aQ,B)return(1-B)*aK+B*aQ
end
end
do
function aL(bj,aC,z)local af,av,as,W,ad
if type(z)=="number"then
z=tostring(z)end
av=t("F1")..t("F2")..t("F3")..t("F4")for f=1,z:len()do
af=z:sub(f,f):byte()*5-159
for ac=1,5 do
as="0x"..av:sub(af,af+4):sub(ac,ac)for au=1,3 do
if as&2^(4-au)>0 then
W=bj+f*4+au-5
ad=aC+ac-1
j(W,ad,W+1,ad)end
end
end
end
end
function bo()local aA=0
local aw=0
local O=10
local bn=8
for f=-v//O,v//O do
local aN=i(_.s)*(f-_.V/c*v)+bb/2
local aE=l(_.s)*(f-_.V/c*v)+aB/2
local B,ar=i(_.s)*f*O+aN,l(_.s)*f*O+aE
local ay=_.s+c/2
local ax=-_.s+c/2
local H=i(aF(0,c/2,(f+_.V/(c*2))*aB))*bn
if f==0 then
b(a,a,a)local H=20
elseif f<0 then
b(50,a,50)else
b(50,50,a)end
local aG,aV=i(ay)*H+B,l(ay)*H+ar
local bi,bk=i(ax)*H+B,-l(ax)*H+ar
j(aG+aA,aV+aw,bi+aA,bk+aw)end
end
function aX(ae)local e=0
local d=4
local o=v*d/5*4
local ae=ae-c/2
local K=v*d
e=((-_.p/c/2+.00)*(o/d)+4*d)%K
x(e-1,25,bB)e=((-_.p/c/2+.25)*(o/d)+4*d)%K
x(e-1,25,"E")e=((-_.p/c/2+.50)*(o/d)+4*d)%K
x(e-1,25,"S")e=((-_.p/c/2+.75)*(o/d)+4*d)%K
x(e-1,25,"W")e=((-_.p/c/2+1.00)*(o/d)+4*d)%K
x(e-1,25,bB)b(3,2,2)k(0,29,32,3)k(10,23,11,7)k(9,24,13,5)b(a,a,225)aL(10,24,Z(bA,g(aa(n.deg(_.p)))))b(5,70,5)for f=0,32/d do
local e=(-_.p/c/2*(o/d)+f*d)%32
j(e,29+f%2,e,33)end
b(250,250,40)local e=(-ae/c/2*(o/d)+2*d)%32
j(e,29,e,33)end
function bp(aY,aR,bf,bq)h=bc(aZ,",")if aY then
b(g(h[1]),g(h[2]),g(h[3]))else
b(10,10,10)end
k(0,4,4,3)if aR then
b(g(h[4]),g(h[5]),g(h[6]))else
b(10,10,10)end
k(0,10,4,3)if bf then
b(g(h[7]),g(h[8]),g(h[9]))else
b(10,10,10)end
k(0,16,4,3)if bq then
b(g(h[7]),g(h[8]),g(h[9]))else
b(10,10,10)end
k(0,22,4,3)end
function b_()b(a,10,50,100)k(0,12,32,7)b(a,a,a)j(2,0,2,32)b(a,190,0)k(0,13,4,5)j(4,14,4,17)j(5,15,8,15)r.drawTriangleF(30,16,32,13,32,19)b(a,a,a)r.drawTextBox(6,0,26,32,Z("%04d",aa(_.aD*bh)),0,0)end
function aW()b(2,2,2)k(11,12,18,7)b(a,a,a)j(29,0,29,20)b(a,180,0)j(27,15,27,16)j(28,14,28,17)j(29,13,29,18)j(30,13,30,18)b(a,a,a)x(12,13,Z(bA,aa(_.aH*aJ)))end
end
do
aT,az,al=Y("SkyColor")bx,az,al=Y("LandColor")aT,az,al=Y("CenterLineColor")aZ=t("indicatorColor")bh=am("Altitude Unit")aJ=am("Speed Unit")at=M
S=M
D={q,q,q,q}function onTick()if at then
at=q
end
if S==q then return end
an=1
bm()D={R(1),R(2),R(3),R(4)}S=q
end
function onDraw()if(an==1)then
if S==M then return end
S=M
bb,aB=32,32
aX(0)aW()bp(D[1],D[2],D[3],D[4])an=2
else
bo()b_()end
end
end
