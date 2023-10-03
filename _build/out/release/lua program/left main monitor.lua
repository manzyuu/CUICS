-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3212 (3579 with comment) chars
aR="X"
aQ="touch"
aP="%03d"
aO="x"
aN="Y"
aM="0"
aL="y"
aK="1"

d=255
i=false
j=true
Z=output
V=input
w=math
s=screen
E=property
y=E.getText
r=s.drawRect
q=s.drawRectF
m=s.drawLine
A=w.abs
x=string.format
a=s.setColor
M=w.max
v=w.min
n=V.getBool
_=V.getNumber
h=Z.setBool
do
z,aA,I,ah=j,j,j,E.getBool("Monitor Swap")J=i
K=2
at=20
O,D=0,0
l,N=1,10
P=0
X={}e={}e.U=0
e.Y=0
B={}B.p=0
B.o=0
b={}b.aw,b.aC,b.ay,b.au,b.aJ,b.aq,b.ap,b.ar,b.al,b.ax={},{},{},{},{},{},{},{},{},{}L={}L.ac=0
g={[aO]={},[aL]={},[aQ]={}}end
function onTick()if z==i then return end
z=i
J=not J
h(32,J)e.p,e.o=_(9),_(10)P=w.sqrt((B.p-e.p)^2+(B.o-e.o)^2)h(13,z)h(14,n(1)or n(2))H=i
g[aO][1],g[aL][1],g[aQ][1]=_(1),_(2),n(1)g[aO][2],g[aL][2],g[aQ][2]=_(3),_(4),n(2)X.aB,X.c=_(5),_(6)az,av=_(7),_(8)e.Y=e.U
e.p=_(9)e.o=_(10)e.U=_(11)e.aH=(_(11)-e.Y)*60
e.aI=_(17)e.aD=_(18)aG=_(29)ao=_(30)aE=n(3)ai=n(4)am=_(13)aF=_(14)G=_(15)an=_(16)b["vis"][G]=n(5)b["dir"][G]=n(6)b["way"][G]=n(7)if g[aQ][1]then
K=f(0,15,12,6,1)and 1 or
f(15,15,6,6,1)and 2 or
f(0,24,16,6,1)and 3 or
f(15,24,16,6,1)and 4 or 0
end
h(13,f(15,24,16,6,1))if K==1 then
if I then
O,D=e.p,e.o
end
if g[aQ][2]==i then
C=i
end
if f(0,0,5,5,2)then
if C==i then
l=l+1
end
C=j
end
if f(0,6,5,5,2)then
if C==i then
l=l-1
end
C=j
end
l=v(M(l,1),22)N=v(l-5,0)/5+v(M(l-4,1),10)+v(M(l-14,0),8)*5
if f(13,13,6,6,2)then
I=j
else
if g[aQ][2]and l==i then
O=-(g[aO][2]-16)*N/2+O
D=-(g[aL][2]-16)*N/2+D
I=i
end
end
end
if K==2 then
if f(27,0,5,6,2)then
c=""
if f(2,14,5,5,2)then
c=aK
else
c=aM
end
if f(8,14,5,5,2)then
c=c..aK
else
c=c..aM
end
if f(14,14,5,5,2)then
c=c..aK
else
c=c..aM
end
L.ac=tonumber(c)Z.setNumber(2,L.as)h(2,f(27,7,5,5,2))h(7,f(27,14,5,5,2))h(8,f(27,20,5,5,2))h(9,f(0,20,5,5,2))h(10,f(27,27,5,5,2))h(11,f(0,26,9,6,2))h(12,f(22,20,4,6,1))end
h(13,j)else
for u=1,13 do
h(u,i)end
end
if(_(21)==E.getNumber("Passcode"))then
c=_(20)b[aR][c]=_(22)b[aN][c]=_(22)b["Dir"][c]=_(22)b["Alt"][c]=_(22)b["Spd"][c]=_(22)b["WayX"][c]=_(22)b["WayY"][c]=_(22)end
end
function onDraw()z=j
if H~=ah then
H=j
return
else
H=j
a(10,10,10)s.drawClear()a(200,50,20)k(29,1,aR)k(17,1,x(aP,A(e.p//100)))a(20,50,200)k(29,7,aN)k(17,7,x(aP,A(e.o//100)))a(d,d,d)k(0,1,x("%02d",v(A(P//1000),99)))s.drawText(7,1,".")k(10,1,x("%01d",A(P)//100%10))k(8,7,"KM")a(5,5,5)m(15,0,15,13)a(1,1,1)m(0,13,32,13)a(30,30,30)q(0,15,13,7)a(50,50,50)r(0,15,12,6)a(d,d,d)k(1,16,"MAP")a(30,30,30)q(15,15,7,7)a(50,50,50)r(15,15,6,6)a(d,d,d)m(16,19,16,21)m(16,19,19,16)m(19,16,21,16)m(18,19,18,21)m(19,18,21,18)m(20,20,21,20)if ai then
a(70,70,70)q(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,20,50)else
a(30,30,30)q(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,d,d)end
k(24,16,"Be")a(30,30,30)q(0,24,13,7)a(50,50,50)r(0,24,12,6)a(d,d,d)k(1,25,"STA")a(30,30,30)q(16,24,17,7)a(50,50,50)r(15,24,16,6)a(d,d,d)k(16,25,"EXTE")end
end
function f(p,o,af,ae,Q)ab,aa=g[aO][Q],g[aL][Q]if p<=ab and
p+af>=ab and
o<=aa and
o+ae>=aa and
g[aQ][Q]then
return j
else
return i
end
end
function k(ad,aj,t)if type(t)=="number" then
t=tostring(t)end
ag=y("F1")..y("F2")..y("F3")..y("F4")for u=1,t:len()do
R=t:sub(u,u):byte()*5-159
for F=1,5 do
ak="0x"..ag:sub(R,R+4):sub(F,F)for S=1,3 do
if ak & 2^(4-S)>0 then
T=ad+u*4+S-5
W=aj+F-1
m(T,W,T+1,W)end
end
end
end
end
