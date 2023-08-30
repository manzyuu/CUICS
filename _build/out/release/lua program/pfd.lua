-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3577 (3944 with comment) chars
bC="N"
bB="%03d"

v=360
a=255
n=false
y=true
f=tonumber
s=screen
S=string
o=math
ag=property
aj=input
P=aj.getBool
au=ag.getNumber
Z=o.floor
W=S.format
k=s.drawRectF
r=s.drawText
b=s.setColor
i=s.drawLine
z=ag.getText
ao=table.insert
c=o.pi
ad=o.sqrt
F=o.atan
l=o.sin
j=o.cos
m=aj.getNumber
do
end
_={}function be()_.bz=m(1)_.br=m(2)_.bx=m(3)local B=m(4)local O=m(5)local U=m(6)local Y=m(10)local ab=m(11)local ai=m(12)_.bp=m(13)local J,L=j(B),l(B)local Q,C=j(O),l(O)local E,K=j(U),l(U)local b_=Q*E
local aE=-J*K+L*C*E
local bu=L*K+J*C*E
local x=Q*K
local w=J*E+L*C*K
local t=-L*E+J*C*K
local bs=-C
local aZ=L*Q
local bt=J*Q
_.aN=F(x,ad(t*t+w*w))/(c*2)_.aR=F(w,ad(x*x+t*t))/(c*2)_.aO=F(t,ad(w*w+x*x))/(c*2)local bm=-F(l(B)*l(U)+j(B)*l(O)*j(U),j(B)*j(O))/2/c
_.q=((((1-bm)%1)*(c*2)))or 0
_.bv=b_*Y+x*ab+bs*ai
_.bw=aE*Y+w*ab+aZ*ai
_.bA=bu*Y+t*ab+bt*ai
_.u=F(-_.aR,_.aN)_.af=-_.aO
end
do
function aQ(R,aq)if S.find(R,aq)==nil then
return{R}end
local V={}local aG="(.-)"..aq.."()"
local ax
for aL,bh in S.gmatch(R,aG)do
ao(V,aL)ax=bh
end
ao(V,S.sub(R,ax))return V
end
function ah(aY)local ae=f(z(aY),16)or 0
return(ae>>16)& a,(ae>>8)& a,ae & a
end
function bo(aF,aX,I)return(1-I)*aF+I*aX
end
end
do
function bk(bb,bg,A)if type(A)=="number" then
A=tostring(A)end
aU=z("F1")..z("F2")..z("F3")..z("F4")for g=1,A:len()do
am=A:sub(g,g):byte()*5-159
for ac=1,5 do
bd="0x"..aU:sub(am,am+4):sub(ac,ac)for av=1,3 do
if bd & 2^(4-av)>0 then
az=bb+g*4+av-5
ar=bg+ac-1
i(az,ar,az+1,ar)end
end
end
end
end
function bf()local al=0
local ak=0
local as=32
local X=32
local T=10
local aC=8
for g=-v//T,v//T do
local aS=j(_.u)*(g-_.af/c*v)+as/2
local aJ=l(_.u)*(g-_.af/c*v)+X/2
local I,ay=j(_.u)*g*T+aS,l(_.u)*g*T+aJ
local aA=_.u+c/2
local an=-_.u+c/2
local H=j(bo(0,c/2,(g+_.af/(c*2))*X))*aC
if g==0 then
b(a,a,a)local H=20
elseif g<0 then
b(50,a,50)else
b(50,50,a)end
local ba,bi=j(aA)*H+I,l(aA)*H+ay
local aD,aW=j(an)*H+I,-l(an)*H+ay
i(ba+al,bi+ak,aD+al,aW+ak)end
end
function bc(aa)local e=0
local d=4
local p=v*d/5*4
local aa=aa-c/2
local G=v*d
e=((-_.q/c/2+.00)*(p/d)+4*d)%G
r(e-1,25,bC)e=((-_.q/c/2+.25)*(p/d)+4*d)%G
r(e-1,25,"E")e=((-_.q/c/2+.50)*(p/d)+4*d)%G
r(e-1,25,"S")e=((-_.q/c/2+.75)*(p/d)+4*d)%G
r(e-1,25,"W")e=((-_.q/c/2+1.00)*(p/d)+4*d)%G
r(e-1,25,bC)b(3,2,2)k(0,29,32,3)k(10,23,11,7)k(9,24,13,5)b(a,a,225)bk(10,24,W(bB,f(Z(o.deg(_.q)))))b(5,70,5)for g=0,32/d do
local e=(-_.q/c/2*(p/d)+g*d)%32
i(e,29+g%2,e,33)end
b(250,250,40)local e=(-aa/c/2*(p/d)+2*d)%32
i(e,29,e,33)end
function aB(aK,aM,bn,aH)h=aQ(aP,",")if aK then
b(f(h[1]),f(h[2]),f(h[3]))else
b(10,10,10)end
k(0,4,4,3)if aM then
b(f(h[4]),f(h[5]),f(h[6]))else
b(10,10,10)end
k(0,10,4,3)if bn then
b(f(h[7]),f(h[8]),f(h[9]))else
b(10,10,10)end
k(0,16,4,3)if aH then
b(f(h[7]),f(h[8]),f(h[9]))else
b(10,10,10)end
k(0,22,4,3)end
function aV()b(a,10,50,100)k(0,12,32,7)b(a,a,a)i(2,0,2,32)b(a,190,0)k(0,13,4,5)i(4,14,4,17)i(5,15,8,15)s.drawTriangleF(30,16,32,13,32,19)b(a,a,a)s.drawTextBox(6,0,26,32,W("%04d",Z(_.br*aI)),0,0)end
function bl()b(2,2,2)k(11,12,18,7)b(a,a,a)i(29,0,29,20)b(a,180,0)i(27,15,27,16)i(28,14,28,17)i(29,13,29,18)i(30,13,30,18)b(a,a,a)r(12,13,W(bB,Z(_.bp*aT)))end
end
do
bq,ap,aw=ah("SkyColor")by,ap,aw=ah("LandColor")bq,ap,aw=ah("CenterLineColor")aP=z("indicatorColor")aI=au("Altitude Unit")aT=au("Speed Unit")at=y
N=y
M={n,n,n,n}bj=ag.getBool("Monitor Swap")D=n
function onTick()if at then
at=n
end
if N==n then return end
D=1
be()M={P(1),P(2),P(3),P(4)}N=n
D=n
end
function onDraw()if D~=bj then
if N==y then return end
N=y
as,X=32,32
bc(0)bl()aB(M[1],M[2],M[3],M[4])D=y
else
bf()aV()D=y
end
end
end
