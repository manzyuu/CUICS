-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3212 (3579 with comment) chars
aR="Y"
aQ="x"
aP="1"
aO="touch"
aN="X"
aM="y"
aL="%03d"
aK="0"

e=255
i=false
j=true
Y=output
ab=input
A=math
q=screen
P=property
x=P.getText
s=q.drawRect
r=q.drawRectF
p=q.drawLine
z=A.abs
B=string.format
a=q.setColor
F=A.max
u=A.min
o=ab.getBool
_=ab.getNumber
h=Y.setBool
do
w,aG,N,af=j,j,j,P.getBool("Monitor Swap")D=i
M=2
an=20
O,L=0,0
l,Q=1,10
H=0
W={}f={}f.R=0
f.X=0
y={}y.n=0
y.m=0
c={}c.aF,c.ar,c.aE,c.aB,c.av,c.au,c.aH,c.al,c.at,c.aD={},{},{},{},{},{},{},{},{},{}J={}J.ae=0
g={[aQ]={},[aM]={},[aO]={}}end
function onTick()if w==i then return end
w=i
D=not D
h(32,D)f.n,f.m=_(9),_(10)H=A.sqrt((y.n-f.n)^2+(y.m-f.m)^2)h(13,w)h(14,o(1)or o(2))K=i
g[aQ][1],g[aM][1],g[aO][1]=_(1),_(2),o(1)g[aQ][2],g[aM][2],g[aO][2]=_(3),_(4),o(2)W.aC,W.b=_(5),_(6)am,aq=_(7),_(8)f.X=f.R
f.n=_(9)f.m=_(10)f.R=_(11)f.as=(_(11)-f.X)*60
f.aA=_(17)f.ap=_(18)aw=_(29)ay=_(30)aJ=o(3)ad=o(4)aI=_(13)ax=_(14)E=_(15)az=_(16)c["vis"][E]=o(5)c["dir"][E]=o(6)c["way"][E]=o(7)if g[aO][1]then
M=d(0,15,12,6,1)and 1 or
d(15,15,6,6,1)and 2 or
d(0,24,16,6,1)and 3 or
d(15,24,16,6,1)and 4 or 0
end
h(13,d(15,24,16,6,1))if M==1 then
if N then
O,L=f.n,f.m
end
if g[aO][2]==i then
C=i
end
if d(0,0,5,5,2)then
if C==i then
l=l+1
end
C=j
end
if d(0,6,5,5,2)then
if C==i then
l=l-1
end
C=j
end
l=u(F(l,1),22)Q=u(l-5,0)/5+u(F(l-4,1),10)+u(F(l-14,0),8)*5
if d(13,13,6,6,2)then
N=j
else
if g[aO][2]and l==i then
O=-(g[aQ][2]-16)*Q/2+O
L=-(g[aM][2]-16)*Q/2+L
N=i
end
end
end
if M==2 then
if d(27,0,5,6,2)then
b=""
if d(2,14,5,5,2)then
b=aP
else
b=aK
end
if d(8,14,5,5,2)then
b=b..aP
else
b=b..aK
end
if d(14,14,5,5,2)then
b=b..aP
else
b=b..aK
end
J.ae=tonumber(b)Y.setNumber(2,J.ao)h(2,d(27,7,5,5,2))h(7,d(27,14,5,5,2))h(8,d(27,20,5,5,2))h(9,d(0,20,5,5,2))h(10,d(27,27,5,5,2))h(11,d(0,26,9,6,2))h(12,d(22,20,4,6,1))end
h(13,j)else
for v=1,13 do
h(v,i)end
end
if(_(21)==P.getNumber("Passcode"))then
b=_(20)c[aN][b]=_(22)c[aR][b]=_(22)c["Dir"][b]=_(22)c["Alt"][b]=_(22)c["Spd"][b]=_(22)c["WayX"][b]=_(22)c["WayY"][b]=_(22)end
end
function onDraw()w=j
if K~=af then
K=j
return
else
K=j
a(10,10,10)q.drawClear()a(200,50,20)k(29,1,aN)k(17,1,B(aL,z(f.n//100)))a(20,50,200)k(29,7,aR)k(17,7,B(aL,z(f.m//100)))a(e,e,e)k(0,1,B("%02d",u(z(H//1000),99)))q.drawText(7,1,".")k(10,1,B("%01d",z(H)//100%10))k(8,7,"KM")a(5,5,5)p(15,0,15,13)a(1,1,1)p(0,13,32,13)a(30,30,30)r(0,15,13,7)a(50,50,50)s(0,15,12,6)a(e,e,e)k(1,16,"MAP")a(30,30,30)r(15,15,7,7)a(50,50,50)s(15,15,6,6)a(e,e,e)p(16,19,16,21)p(16,19,19,16)p(19,16,21,16)p(18,19,18,21)p(19,18,21,18)p(20,20,21,20)if ad then
a(70,70,70)r(23,15,8,7)a(50,50,50)s(23,15,8,6)a(e,20,50)else
a(30,30,30)r(23,15,8,7)a(50,50,50)s(23,15,8,6)a(e,e,e)end
k(24,16,"Be")a(30,30,30)r(0,24,13,7)a(50,50,50)s(0,24,12,6)a(e,e,e)k(1,25,"STA")a(30,30,30)r(16,24,17,7)a(50,50,50)s(15,24,16,6)a(e,e,e)k(16,25,"EXTE")end
end
function d(n,m,ak,ac,G)Z,aa=g[aQ][G],g[aM][G]if n<=Z and
n+ak>=Z and
m<=aa and
m+ac>=aa and
g[aO][G]then
return j
else
return i
end
end
function k(ag,ai,t)if type(t)=="number" then
t=tostring(t)end
aj=x("F1")..x("F2")..x("F3")..x("F4")for v=1,t:len()do
T=t:sub(v,v):byte()*5-159
for I=1,5 do
ah="0x"..aj:sub(T,T+4):sub(I,I)for U=1,3 do
if ah & 2^(4-U)>0 then
V=ag+v*4+U-5
S=ai+I-1
p(V,S,V+1,S)end
end
end
end
end
