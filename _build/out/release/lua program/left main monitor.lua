-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3212 (3579 with comment) chars
aR="0"
aQ="touch"
aP="x"
aO="Y"
aN="X"
aM="y"
aL="1"
aK="%03d"

d=255
i=false
k=true
R=output
ab=input
x=math
s=screen
D=property
B=D.getText
q=s.drawRect
r=s.drawRectF
m=s.drawLine
y=x.abs
z=string.format
a=s.setColor
F=x.max
u=x.min
o=ab.getBool
_=ab.getNumber
h=R.setBool
do
C,az,H,ah=k,k,k,D.getBool("Monitor Swap")I=i
L=2
aE=20
G,J=0,0
l,O=1,10
N=0
V={}e={}e.Y=0
e.X=0
A={}A.n=0
A.p=0
c={}c.aD,c.al,c.am,c.av,c.an,c.aG,c.aJ,c.ao,c.au,c.aF={},{},{},{},{},{},{},{},{},{}M={}M.ac=0
g={[aP]={},[aM]={},[aQ]={}}end
function onTick()if C==i then return end
C=i
I=not I
h(32,I)e.n,e.p=_(9),_(10)N=x.sqrt((A.n-e.n)^2+(A.p-e.p)^2)h(13,C)h(14,o(1)or o(2))K=i
g[aP][1],g[aM][1],g[aQ][1]=_(1),_(2),o(1)g[aP][2],g[aM][2],g[aQ][2]=_(3),_(4),o(2)V.aI,V.b=_(5),_(6)aA,aC=_(7),_(8)e.X=e.Y
e.n=_(9)e.p=_(10)e.Y=_(11)e.at=(_(11)-e.X)*60
e.aB=_(17)e.ay=_(18)ar=_(29)aq=_(30)aH=o(3)ae=o(4)ap=_(13)aw=_(14)Q=_(15)ax=_(16)c["vis"][Q]=o(5)c["dir"][Q]=o(6)c["way"][Q]=o(7)if g[aQ][1]then
L=f(0,15,12,6,1)and 1 or
f(15,15,6,6,1)and 2 or
f(0,24,16,6,1)and 3 or
f(15,24,16,6,1)and 4 or 0
end
h(13,f(15,24,16,6,1))if L==1 then
if H then
G,J=e.n,e.p
end
if g[aQ][2]==i then
w=i
end
if f(0,0,5,5,2)then
if w==i then
l=l+1
end
w=k
end
if f(0,6,5,5,2)then
if w==i then
l=l-1
end
w=k
end
l=u(F(l,1),22)O=u(l-5,0)/5+u(F(l-4,1),10)+u(F(l-14,0),8)*5
if f(13,13,6,6,2)then
H=k
else
if g[aQ][2]and l==i then
G=-(g[aP][2]-16)*O/2+G
J=-(g[aM][2]-16)*O/2+J
H=i
end
end
end
if L==2 then
if f(27,0,5,6,2)then
b=""
if f(2,14,5,5,2)then
b=aL
else
b=aR
end
if f(8,14,5,5,2)then
b=b..aL
else
b=b..aR
end
if f(14,14,5,5,2)then
b=b..aL
else
b=b..aR
end
M.ac=tonumber(b)R.setNumber(2,M.as)h(2,f(27,7,5,5,2))h(7,f(27,14,5,5,2))h(8,f(27,20,5,5,2))h(9,f(0,20,5,5,2))h(10,f(27,27,5,5,2))h(11,f(0,26,9,6,2))h(12,f(22,20,4,6,1))end
h(13,k)else
for t=1,13 do
h(t,i)end
end
if(_(21)==D.getNumber("Passcode"))then
b=_(20)c[aN][b]=_(22)c[aO][b]=_(22)c["Dir"][b]=_(22)c["Alt"][b]=_(22)c["Spd"][b]=_(22)c["WayX"][b]=_(22)c["WayY"][b]=_(22)end
end
function onDraw()C=k
if K~=ah then
K=k
return
else
K=k
a(10,10,10)s.drawClear()a(200,50,20)j(29,1,aN)j(17,1,z(aK,y(e.n//100)))a(20,50,200)j(29,7,aO)j(17,7,z(aK,y(e.p//100)))a(d,d,d)j(0,1,z("%02d",u(y(N//1000),99)))s.drawText(7,1,".")j(10,1,z("%01d",y(N)//100%10))j(8,7,"KM")a(5,5,5)m(15,0,15,13)a(1,1,1)m(0,13,32,13)a(30,30,30)r(0,15,13,7)a(50,50,50)q(0,15,12,6)a(d,d,d)j(1,16,"MAP")a(30,30,30)r(15,15,7,7)a(50,50,50)q(15,15,6,6)a(d,d,d)m(16,19,16,21)m(16,19,19,16)m(19,16,21,16)m(18,19,18,21)m(19,18,21,18)m(20,20,21,20)if ae then
a(70,70,70)r(23,15,8,7)a(50,50,50)q(23,15,8,6)a(d,20,50)else
a(30,30,30)r(23,15,8,7)a(50,50,50)q(23,15,8,6)a(d,d,d)end
j(24,16,"Be")a(30,30,30)r(0,24,13,7)a(50,50,50)q(0,24,12,6)a(d,d,d)j(1,25,"STA")a(30,30,30)r(16,24,17,7)a(50,50,50)q(15,24,16,6)a(d,d,d)j(16,25,"EXTE")end
end
function f(n,p,ad,ak,P)T,Z=g[aP][P],g[aM][P]if n<=T and
n+ad>=T and
p<=Z and
p+ak>=Z and
g[aQ][P]then
return k
else
return i
end
end
function j(af,ai,v)if type(v)=="number" then
v=tostring(v)end
ag=B("F1")..B("F2")..B("F3")..B("F4")for t=1,v:len()do
U=v:sub(t,t):byte()*5-159
for E=1,5 do
aj="0x"..ag:sub(U,U+4):sub(E,E)for S=1,3 do
if aj & 2^(4-S)>0 then
aa=af+t*4+S-5
W=ai+E-1
m(aa,W,aa+1,W)end
end
end
end
end
