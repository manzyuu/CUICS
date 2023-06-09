-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3281 (3648 with comment) chars
bw="N"

r=360
c=255
q=false
K=true
g=tonumber
v=screen
R=string
o=math
al=property
ag=al.getNumber
ax=o.floor
ai=R.format
l=v.drawRectF
I=v.drawText
a=v.setColor
n=v.drawLine
s=al.getText
ah=table.insert
b=o.pi
af=o.sqrt
H=o.atan
j=o.sin
h=o.cos
k=input.getNumber
do
end
_={}function be()_.bq=k(1)_.aK=k(2)_.bt=k(3)local C=k(4)local Q=k(5)local S=k(6)local aa=k(10)local W=k(11)local Y=k(12)local E,F=h(C),j(C)local N,z=h(Q),j(Q)local J,D=h(S),j(S)local aO=N*J
local aN=-E*D+F*z*J
local aQ=F*D+E*z*J
local t=N*D
local u=E*J+F*z*D
local x=-F*J+E*z*D
local ba=-z
local bo=F*N
local aG=E*N
_.aS=H(t,af(x*x+u*u))/(b*2)_.aU=H(u,af(t*t+x*x))/(b*2)_.bm=H(x,af(u*u+t*t))/(b*2)local bk=-H(j(C)*j(S)+h(C)*j(Q)*h(S),h(C)*h(Q))/2/b
_.m=((((1-bk)%1)*(b*2)))_.bu=aO*aa+t*W+ba*Y
_.br=aN*aa+u*W+bo*Y
_.bp=aQ*aa+x*W+aG*Y
_.w=H(_.aU,_.aS)_.ab=_.bm
end
do
function aY(O,av)if R.find(O,av)==nil then
return{O}end
local ae={}local bc="(.-)"..av.."()"
local as
for aA,bb in R.gmatch(O,bc)do
ah(ae,aA)as=bb
end
ah(ae,R.sub(O,as))return ae
end
function T(aI)local ac=g(s(aI),16)return(ac>>16)& c,(ac>>8)& c,ac & c
end
function aC(aF,aD,G)return(1-G)*aF+G*aD
end
end
do
function aR(aM,aJ,y)local X,ak,az,V,ad
if type(y)=="number"then
y=tostring(y)end
ak=s("F1")..s("F2")..s("F3")..s("F4")for f=1,y:len()do
X=y:sub(f,f):byte()*5-159
for Z=1,5 do
az="0x"..ak:sub(X,X+4):sub(Z,Z)for ap=1,3 do
if az&2^(4-ap)>0 then
V=aM+f*4+ap-5
ad=aJ+Z-1
n(V,ad,V+1,ad)end
end
end
end
end
function aE()local ay=0
local an=0
local L=10
local bh=8
for f=-r//L,r//L do
local aT=h(_.w)*(f+_.ab/b*r)+aV/2
local aX=j(_.w)*(f+_.ab/b*r)+aw/2
local G,ar=h(_.w)*f*L+aT,j(_.w)*f*L+aX
local at=_.w+b/2
local au=-_.w+b/2
local A=h(aC(0,b/2,(f+_.ab/(b*2))*aw))*bh
if f==0 then
a(c,c,c)local A=20
elseif f>0 then
a(50,c,50)else
a(50,50,c)end
local bg,aB=h(at)*A+G,j(at)*A+ar
local aL,aZ=h(au)*A+G,-j(au)*A+ar
n(bg+ay,aB+an,aL+ay,aZ+an)end
end
function bd(U)local e=0
local d=4
local p=r*d/5*4
local U=U-b/2
local B=r*d
e=((-_.m/b/2+.00)*(p/d)+4*d)%B
I(e-1,25,bw)e=((-_.m/b/2+.25)*(p/d)+4*d)%B
I(e-1,25,"E")e=((-_.m/b/2+.50)*(p/d)+4*d)%B
I(e-1,25,"S")e=((-_.m/b/2+.75)*(p/d)+4*d)%B
I(e-1,25,"W")e=((-_.m/b/2+1.00)*(p/d)+4*d)%B
I(e-1,25,bw)a(5,5,5,50)l(10,23,11,7)l(9,24,13,5)a(c,c,225)aR(10,24,ai("%03d",g(ax(o.deg(_.m)))))a(5,70,5)for f=0,32/d do
local e=(-_.m/b/2*(p/d)+f*d)%32
n(e,29+f%2,e,33)end
a(250,250,40)local e=(-U/b/2*(p/d)+2*d)%32
n(e,29,e,33)end
function bf(bn,bl,bi,bj)i=aY(b_,",")if bn then
a(g(i[1]),g(i[2]),g(i[3]))else
a(10,10,10)end
l(0,4,4,3)if bl then
a(g(i[4]),g(i[5]),g(i[6]))else
a(10,10,10)end
l(0,10,4,3)if bi then
a(g(i[7]),g(i[8]),g(i[9]))else
a(10,10,10)end
l(0,16,4,3)if bj then
a(g(i[7]),g(i[8]),g(i[9]))else
a(10,10,10)end
l(0,22,4,3)end
function aP()a(c,10,50,100)l(0,12,32,7)a(c,c,c)n(2,0,2,32)a(c,190,0)l(0,13,4,5)n(4,14,4,17)n(5,15,8,15)v.drawTriangleF(30,16,32,13,32,19)a(c,c,c)v.drawTextBox(6,0,26,32,ai("%04d",ax(_.aK*aW)),0,0)end
end
do
aH,ao,aj=T("SkyColor")bs,ao,aj=T("LandColor")aH,ao,aj=T("CenterLineColor")b_=s("indicatorColor")aW=ag("Altitude Unit")bv=ag("Speed Unit")aq=K
M=K
P={q,q,q,q}function onTick()if aq then
aq=q
end
if M==q then return end
am=1
be()M=q
end
function onDraw()if(am==1)then
if M==K then return end
M=K
aV,aw=32,32
bd(0)bf(P[1],P[2],P[3],P[4])am=2
else
aE()aP()end
end
end
