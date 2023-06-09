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

x=360
a=255
p=false
N=true
f=tonumber
y=screen
T=string
n=math
aw=property
az=input
S=az.getBool
au=aw.getNumber
ac=n.floor
X=T.format
k=y.drawRectF
u=y.drawText
b=y.setColor
i=y.drawLine
t=aw.getText
aA=table.insert
c=n.pi
Z=n.sqrt
C=n.atan
l=n.sin
j=n.cos
m=az.getNumber
do
end
_={}function aH()_.bv=m(1)_.aI=m(2)_.bu=m(3)local F=m(4)local O=m(5)local M=m(6)local af=m(10)local ah=m(11)local U=m(12)_.aY=m(13)local A,J=j(F),l(F)local P,I=j(O),l(O)local D,E=j(M),l(M)local aD=P*D
local aV=-A*E+J*I*D
local aZ=J*E+A*I*D
local v=P*E
local s=A*D+J*I*E
local r=-J*D+A*I*E
local aU=-I
local bi=J*P
local aE=A*P
_.bo=C(v,Z(r*r+s*s))/(c*2)_.bn=C(s,Z(v*v+r*r))/(c*2)_.aX=C(r,Z(s*s+v*v))/(c*2)local aM=-C(l(F)*l(M)+j(F)*l(O)*j(M),j(F)*j(O))/2/c
_.o=((((1-aM)%1)*(c*2)))_.bw=aD*af+v*ah+aU*U
_.bz=aV*af+s*ah+bi*U
_.bx=aZ*af+r*ah+aE*U
_.w=C(-_.bn,_.bo)_.Y=-_.aX
end
do
function bh(Q,aj)if T.find(Q,aj)==nil then
return{Q}end
local W={}local be="(.-)"..aj.."()"
local av
for aT,bb in T.gmatch(Q,be)do
aA(W,aT)av=bb
end
aA(W,T.sub(Q,av))return W
end
function ag(aP)local ad=f(t(aP),16)return(ad>>16)& a,(ad>>8)& a,ad & a
end
function aW(b_,bd,H)return(1-H)*b_+H*bd
end
end
do
function aG(bg,br,K)local V,an,at,aa,ai
if type(K)=="number"then
K=tostring(K)end
an=t("F1")..t("F2")..t("F3")..t("F4")for g=1,K:len()do
V=K:sub(g,g):byte()*5-159
for ab=1,5 do
at="0x"..an:sub(V,V+4):sub(ab,ab)for as=1,3 do
if at&2^(4-as)>0 then
aa=bg+g*4+as-5
ai=br+ab-1
i(aa,ai,aa+1,ai)end
end
end
end
end
function aF()local ao=0
local aq=0
local R=10
local bc=8
for g=-x//R,x//R do
local bq=j(_.w)*(g-_.Y/c*x)+aK/2
local bl=l(_.w)*(g-_.Y/c*x)+ar/2
local H,ak=j(_.w)*g*R+bq,l(_.w)*g*R+bl
local aB=_.w+c/2
local al=-_.w+c/2
local z=j(aW(0,c/2,(g+_.Y/(c*2))*ar))*bc
if g==0 then
b(a,a,a)local z=20
elseif g<0 then
b(50,a,50)else
b(50,50,a)end
local aR,bj=j(aB)*z+H,l(aB)*z+ak
local aQ,aN=j(al)*z+H,-l(al)*z+ak
i(aR+ao,bj+aq,aQ+ao,aN+aq)end
end
function bm(ae)local e=0
local d=4
local q=x*d/5*4
local ae=ae-c/2
local G=x*d
e=((-_.o/c/2+.00)*(q/d)+4*d)%G
u(e-1,25,bB)e=((-_.o/c/2+.25)*(q/d)+4*d)%G
u(e-1,25,"E")e=((-_.o/c/2+.50)*(q/d)+4*d)%G
u(e-1,25,"S")e=((-_.o/c/2+.75)*(q/d)+4*d)%G
u(e-1,25,"W")e=((-_.o/c/2+1.00)*(q/d)+4*d)%G
u(e-1,25,bB)b(3,2,2)k(0,29,32,3)k(10,23,11,7)k(9,24,13,5)b(a,a,225)aG(10,24,X(bA,f(ac(n.deg(_.o)))))b(5,70,5)for g=0,32/d do
local e=(-_.o/c/2*(q/d)+g*d)%32
i(e,29+g%2,e,33)end
b(250,250,40)local e=(-ae/c/2*(q/d)+2*d)%32
i(e,29,e,33)end
function aO(ba,aC,bt,bs)h=bh(aS,",")if ba then
b(f(h[1]),f(h[2]),f(h[3]))else
b(10,10,10)end
k(0,4,4,3)if aC then
b(f(h[4]),f(h[5]),f(h[6]))else
b(10,10,10)end
k(0,10,4,3)if bt then
b(f(h[7]),f(h[8]),f(h[9]))else
b(10,10,10)end
k(0,16,4,3)if bs then
b(f(h[7]),f(h[8]),f(h[9]))else
b(10,10,10)end
k(0,22,4,3)end
function aJ()b(a,10,50,100)k(0,12,32,7)b(a,a,a)i(2,0,2,32)b(a,190,0)k(0,13,4,5)i(4,14,4,17)i(5,15,8,15)y.drawTriangleF(30,16,32,13,32,19)b(a,a,a)y.drawTextBox(6,0,26,32,X("%04d",ac(_.aI*aL)),0,0)end
function bk()b(2,2,2)k(11,12,18,7)b(a,a,a)i(29,0,29,20)b(a,180,0)i(27,15,27,16)i(28,14,28,17)i(29,13,29,18)i(30,13,30,18)b(a,a,a)u(12,13,X(bA,ac(_.aY*bf)))end
end
do
bp,ap,ay=ag("SkyColor")by,ap,ay=ag("LandColor")bp,ap,ay=ag("CenterLineColor")aS=t("indicatorColor")aL=au("Altitude Unit")bf=au("Speed Unit")am=N
L=N
B={p,p,p,p}function onTick()if am then
am=p
end
if L==p then return end
ax=1
aH()B={S(1),S(2),S(3),S(4)}L=p
end
function onDraw()if(ax==1)then
if L==N then return end
L=N
aK,ar=32,32
bm(0)bk()aO(B[1],B[2],B[3],B[4])ax=2
else
aF()aJ()end
end
end
