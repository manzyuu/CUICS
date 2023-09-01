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

x=360
a=255
n=false
z=true
g=tonumber
v=screen
T=string
p=math
ad=property
aq=input
S=aq.getBool
ao=ad.getNumber
ae=p.floor
ah=T.format
k=v.drawRectF
w=v.drawText
b=v.setColor
i=v.drawLine
s=ad.getText
ap=table.insert
c=p.pi
Y=p.sqrt
J=p.atan
l=p.sin
h=p.cos
m=aq.getNumber
do
end
_={}function bc()_.bA=m(1)_.bt=m(2)_.bz=m(3)local K=m(4)local U=m(5)local P=m(6)local V=m(10)local aa=m(11)local X=m(12)_.aK=m(13)local G,A=h(K),l(K)local N,B=h(U),l(U)local C,E=h(P),l(P)local aC=N*C
local aF=-G*E+A*B*C
local bh=A*E+G*B*C
local r=N*E
local t=G*C+A*B*E
local u=-A*C+G*B*E
local aZ=-B
local bu=A*N
local aO=G*N
_.aN=J(r,Y(u*u+t*t))/(c*2)_.bn=J(t,Y(r*r+u*u))/(c*2)_.b_=J(u,Y(t*t+r*r))/(c*2)local aD=-J(l(K)*l(P)+h(K)*l(U)*h(P),h(K)*h(U))/2/c
_.q=((((1-aD)%1)*(c*2)))or 0
_.by=aC*V+r*aa+aZ*X
_.bx=aF*V+t*aa+bu*X
_.bv=bh*V+u*aa+aO*X
_.y=J(-_.bn,_.aN)_.Z=-_.b_
end
do
function bj(R,aj)if T.find(R,aj)==nil then
return{R}end
local ab={}local aJ="(.-)"..aj.."()"
local ar
for bq,br in T.gmatch(R,aJ)do
ap(ab,bq)ar=br
end
ap(ab,T.sub(R,ar))return ab
end
function ai(aX)local W=g(s(aX),16)or 0
return(W>>16)& a,(W>>8)& a,W & a
end
function aQ(aU,aV,H)return(1-H)*aU+H*aV
end
end
do
function aM(bl,aS,M)if type(M)=="number" then
M=tostring(M)end
aR=s("F1")..s("F2")..s("F3")..s("F4")for f=1,M:len()do
at=M:sub(f,f):byte()*5-159
for ag=1,5 do
bp="0x"..aR:sub(at,at+4):sub(ag,ag)for ak=1,3 do
if bp & 2^(4-ak)>0 then
al=bl+f*4+ak-5
as=aS+ag-1
i(al,as,al+1,as)end
end
end
end
end
function aI()local an=0
local ax=0
local am=32
local af=32
local O=10
local bo=8
for f=-x//O,x//O do
local ba=h(_.y)*(f-_.Z/c*x)+am/2
local aE=l(_.y)*(f-_.Z/c*x)+af/2
local H,aw=h(_.y)*f*O+ba,l(_.y)*f*O+aE
local av=_.y+c/2
local az=-_.y+c/2
local I=h(aQ(0,c/2,(f+_.Z/(c*2))*af))*bo
if f==0 then
b(a,a,a)local I=20
elseif f<0 then
b(50,a,50)else
b(50,50,a)end
local bm,aT=h(av)*I+H,l(av)*I+aw
local bk,aW=h(az)*I+H,-l(az)*I+aw
i(bm+an,aT+ax,bk+an,aW+ax)end
end
function bs(ac)local e=0
local d=4
local o=x*d/5*4
local ac=ac-c/2
local L=x*d
e=((-_.q/c/2+.00)*(o/d)+4*d)%L
w(e-1,25,bC)e=((-_.q/c/2+.25)*(o/d)+4*d)%L
w(e-1,25,"E")e=((-_.q/c/2+.50)*(o/d)+4*d)%L
w(e-1,25,"S")e=((-_.q/c/2+.75)*(o/d)+4*d)%L
w(e-1,25,"W")e=((-_.q/c/2+1.00)*(o/d)+4*d)%L
w(e-1,25,bC)b(3,2,2)k(0,29,32,3)k(10,23,11,7)k(9,24,13,5)b(a,a,225)aM(10,24,ah(bB,g(ae(p.deg(_.q)))))b(5,70,5)for f=0,32/d do
local e=(-_.q/c/2*(o/d)+f*d)%32
i(e,29+f%2,e,33)end
b(250,250,40)local e=(-ac/c/2*(o/d)+2*d)%32
i(e,29,e,33)end
function aH(aG,aY,bd,bb)j=bj(bi,",")if aG then
b(g(j[1]),g(j[2]),g(j[3]))else
b(10,10,10)end
k(0,4,4,3)if aY then
b(g(j[4]),g(j[5]),g(j[6]))else
b(10,10,10)end
k(0,10,4,3)if bd then
b(g(j[7]),g(j[8]),g(j[9]))else
b(10,10,10)end
k(0,16,4,3)if bb then
b(g(j[7]),g(j[8]),g(j[9]))else
b(10,10,10)end
k(0,22,4,3)end
function aL()b(a,10,50,100)k(0,12,32,7)b(a,a,a)i(2,0,2,32)b(a,190,0)k(0,13,4,5)i(4,14,4,17)i(5,15,8,15)v.drawTriangleF(30,16,32,13,32,19)b(a,a,a)v.drawTextBox(6,0,26,32,ah("%04d",ae(_.bt*bf)),0,0)end
function bg()b(2,2,2)k(11,12,18,7)b(a,a,a)i(29,0,29,20)b(a,180,0)i(27,15,27,16)i(28,14,28,17)i(29,13,29,18)i(30,13,30,18)b(a,a,a)w(12,13,ah(bB,ae(_.aK*aP)))end
end
do
be,aA,ay=ai("SkyColor")bw,aA,ay=ai("LandColor")be,aA,ay=ai("CenterLineColor")bi=s("indicatorColor")bf=ao("Altitude Unit")aP=ao("Speed Unit")au=z
Q=z
F={n,n,n,n}aB=ad.getBool("Monitor Swap")D=n
function onTick()if au then
au=n
end
if Q==n then return end
D=1
bc()F={S(1),S(2),S(3),S(4)}Q=n
D=n
end
function onDraw()if D~=aB then
if Q==z then return end
Q=z
am,af=32,32
bs(0)bg()aH(F[1],F[2],F[3],F[4])D=z
else
aI()aL()D=z
end
end
end
