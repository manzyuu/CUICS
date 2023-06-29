-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3215 (3582 with comment) chars
aQ="X"
aP="Y"
aO="0"
aN="touch"
aM="1"
aL="y"
aK="%03d"
aJ="x"

f=255
h=false
l=true
aa=input
y=math
r=screen
E=property
x=E.getText
s=r.drawRect
q=r.drawRectF
o=r.drawLine
C=y.abs
z=string.format
a=r.setColor
L=y.max
v=y.min
p=aa.getBool
i=output.setBool
_=aa.getNumber
do
B,H,af=l,l,E.getBool("Monitor Swap")D=2
au=20
M,I=0,0
k,F=1,10
G=0
V={}e={}e.R=0
e.S=0
w={}w.m=0
w.n=0
b={}b.aD,b.aq,b.az,b.ap,b.aA,b.as,b.aw,b.aG,b.am,b.aB={},{},{},{},{},{},{},{},{},{}Y={}Y.ak=0
g={[aJ]={},[aL]={},[aN]={}}end
function onTick()if B==h then return end
B=h
e.m,e.n=_(9),_(10)G=y.sqrt((w.m-e.m)^2+(w.n-e.n)^2)i(13,B)i(14,p(1)or p(2))O=h
g[aJ][1],g[aL][1],g[aN][1]=_(1),_(2),p(1)g[aJ][2],g[aL][2],g[aN][2]=_(3),_(4),p(2)V.aI,V.c=_(5),_(6)ao,al=_(7),_(8)e.S=e.R
e.m=_(9)e.n=_(10)e.R=_(11)e.av=(_(11)-e.S)*60
e.ar=_(17)e.ay=_(18)aC=_(29)aF=_(30)an=p(3)ai=p(4)aE=_(13)at=_(14)J=_(15)ax=_(16)b["vis"][J]=p(5)b["dir"][J]=p(6)b["way"][J]=p(7)if g[aN][1]then
D=d(0,15,12,6,1)and 1 or
d(15,15,6,6,1)and 2 or
d(0,24,16,6,1)and 3 or
d(15,24,16,6,1)and 4 or 0
end
i(13,d(15,24,16,6,1))if D==1 then
if H then
M,I=e.m,e.n
end
if g[aN][2]==h then
A=h
end
if d(0,0,5,5,2)then
if A==h then
k=k+1
end
A=l
end
if d(0,6,5,5,2)then
if A==h then
k=k-1
end
A=l
end
k=v(L(k,1),22)F=v(k-5,0)/5+v(L(k-4,1),10)+v(L(k-14,0),8)*5
if d(13,13,6,6,2)then
H=l
else
if g[aN][2]and k==h then
M=-(g[aJ][2]-16)*F/2+M
I=-(g[aL][2]-16)*F/2+I
H=h
end
end
end
if D==2 then
if d(27,0,5,6,2)then
c=""
if d(2,14,5,5,2)then
c=aM
else
c=aO
end
if d(8,14,5,5,2)then
c=c..aM
else
c=c..aO
end
if d(14,14,5,5,2)then
c=c..aM
else
c=c..aO
end
Y.ak=tonumber(c)i(2,d(27,7,5,5,2))i(7,d(27,14,5,5,2))i(8,d(27,20,5,5,2))i(9,d(0,20,5,5,2))i(10,d(27,27,5,5,2))i(11,d(0,26,9,6,2))i(12,d(22,20,4,6,1))end
i(13,l)else
for u=1,13 do
i(u,h)end
end
if(_(21)==E.getNumber("Passcode"))then
c=_(20)b[aQ][c]=_(22)b[aP][c]=_(22)b["Dir"][c]=_(22)b["Alt"][c]=_(22)b["Spd"][c]=_(22)b["WayX"][c]=_(22)b["WayY"][c]=_(22)end
end
function onDraw()B=l
if O~=af then
O=l
return
else
O=l
a(10,10,10)r.drawClear()a(200,50,20)j(29,1,aQ)j(17,1,z(aK,C(e.m//100)))a(20,50,200)j(29,7,aP)j(17,7,z(aK,C(e.n//100)))a(f,f,f)j(0,1,z("%02d",v(C(G//1000),99)))r.drawText(7,1,".")j(10,1,z("%01d",C(G)//100%10))j(8,7,"KM")a(5,5,5)o(15,0,15,13)a(1,1,1)o(0,13,32,13)a(30,30,30)q(0,15,13,7)a(50,50,50)s(0,15,12,6)a(f,f,f)j(1,16,"MAP")a(30,30,30)q(15,15,7,7)a(50,50,50)s(15,15,6,6)a(f,f,f)o(16,19,16,21)o(16,19,19,16)o(19,16,21,16)o(18,19,18,21)o(19,18,21,18)o(20,20,21,20)if ai then
a(70,70,70)q(23,15,8,7)a(50,50,50)s(23,15,8,6)a(f,20,50)else
a(30,30,30)q(23,15,8,7)a(50,50,50)s(23,15,8,6)a(f,f,f)end
j(24,16,"Be")a(30,30,30)q(0,24,13,7)a(50,50,50)s(0,24,12,6)a(f,f,f)j(1,25,"STA")a(30,30,30)q(16,24,17,7)a(50,50,50)s(15,24,16,6)a(f,f,f)j(16,25,"EXTE")end
end
function d(m,n,ad,aj,K)Q,Z=g[aJ][K],g[aL][K]if m<=Q and
m+ad>=Q and
n<=Z and
n+aj>=Z and
g[aN][K]then
return l
else
return h
end
end
function j(ag,ac,t)if type(t)=="number" then
t=tostring(t)end
ah=x("F1")..x("F2")..x("F3")..x("F4")for u=1,t:len()do
ab=t:sub(u,u):byte()*5-159
for N=1,5 do
ae="0x"..ah:sub(ab,ab+4):sub(N,N)for U=1,3 do
if ae & 2^(4-U)>0 then
T=ag+u*4+U-5
W=ac+N-1
o(T,W,T+1,W)end
end
end
end
end
function aH(P,X)return P or X and(P and X)==h
end
