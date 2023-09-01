-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3212 (3579 with comment) chars
aR="x"
aQ="%03d"
aP="X"
aO="touch"
aN="y"
aM="1"
aL="Y"
aK="0"

d=255
i=false
k=true
X=output
T=input
C=math
q=screen
Q=property
z=Q.getText
r=q.drawRect
s=q.drawRectF
m=q.drawLine
x=C.abs
A=string.format
a=q.setColor
N=C.max
t=C.min
n=T.getBool
_=T.getNumber
h=X.setBool
do
w,at,K,ai=k,k,k,Q.getBool("Monitor Swap")O=i
G=2
al=20
M,I=0,0
l,H=1,10
F=0
ab={}f={}f.V=0
f.S=0
y={}y.o=0
y.p=0
b={}b.aB,b.aA,b.au,b.aF,b.az,b.ap,b.aC,b.an,b.aG,b.as={},{},{},{},{},{},{},{},{},{}P={}P.ah=0
g={[aR]={},[aN]={},[aO]={}}end
function onTick()if w==i then return end
w=i
O=not O
h(32,O)f.o,f.p=_(9),_(10)F=C.sqrt((y.o-f.o)^2+(y.p-f.p)^2)h(13,w)h(14,n(1)or n(2))J=i
g[aR][1],g[aN][1],g[aO][1]=_(1),_(2),n(1)g[aR][2],g[aN][2],g[aO][2]=_(3),_(4),n(2)ab.aI,ab.c=_(5),_(6)av,aw=_(7),_(8)f.S=f.V
f.o=_(9)f.p=_(10)f.V=_(11)f.aH=(_(11)-f.S)*60
f.am=_(17)f.aJ=_(18)aD=_(29)aq=_(30)ay=n(3)aj=n(4)ar=_(13)ax=_(14)D=_(15)ao=_(16)b["vis"][D]=n(5)b["dir"][D]=n(6)b["way"][D]=n(7)if g[aO][1]then
G=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
h(13,e(15,24,16,6,1))if G==1 then
if K then
M,I=f.o,f.p
end
if g[aO][2]==i then
B=i
end
if e(0,0,5,5,2)then
if B==i then
l=l+1
end
B=k
end
if e(0,6,5,5,2)then
if B==i then
l=l-1
end
B=k
end
l=t(N(l,1),22)H=t(l-5,0)/5+t(N(l-4,1),10)+t(N(l-14,0),8)*5
if e(13,13,6,6,2)then
K=k
else
if g[aO][2]and l==i then
M=-(g[aR][2]-16)*H/2+M
I=-(g[aN][2]-16)*H/2+I
K=i
end
end
end
if G==2 then
if e(27,0,5,6,2)then
c=""
if e(2,14,5,5,2)then
c=aM
else
c=aK
end
if e(8,14,5,5,2)then
c=c..aM
else
c=c..aK
end
if e(14,14,5,5,2)then
c=c..aM
else
c=c..aK
end
P.ah=tonumber(c)X.setNumber(2,P.aE)h(2,e(27,7,5,5,2))h(7,e(27,14,5,5,2))h(8,e(27,20,5,5,2))h(9,e(0,20,5,5,2))h(10,e(27,27,5,5,2))h(11,e(0,26,9,6,2))h(12,e(22,20,4,6,1))end
h(13,k)else
for v=1,13 do
h(v,i)end
end
if(_(21)==Q.getNumber("Passcode"))then
c=_(20)b[aP][c]=_(22)b[aL][c]=_(22)b["Dir"][c]=_(22)b["Alt"][c]=_(22)b["Spd"][c]=_(22)b["WayX"][c]=_(22)b["WayY"][c]=_(22)end
end
function onDraw()w=k
if J~=ai then
J=k
return
else
J=k
a(10,10,10)q.drawClear()a(200,50,20)j(29,1,aP)j(17,1,A(aQ,x(f.o//100)))a(20,50,200)j(29,7,aL)j(17,7,A(aQ,x(f.p//100)))a(d,d,d)j(0,1,A("%02d",t(x(F//1000),99)))q.drawText(7,1,".")j(10,1,A("%01d",x(F)//100%10))j(8,7,"KM")a(5,5,5)m(15,0,15,13)a(1,1,1)m(0,13,32,13)a(30,30,30)s(0,15,13,7)a(50,50,50)r(0,15,12,6)a(d,d,d)j(1,16,"MAP")a(30,30,30)s(15,15,7,7)a(50,50,50)r(15,15,6,6)a(d,d,d)m(16,19,16,21)m(16,19,19,16)m(19,16,21,16)m(18,19,18,21)m(19,18,21,18)m(20,20,21,20)if aj then
a(70,70,70)s(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,20,50)else
a(30,30,30)s(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,d,d)end
j(24,16,"Be")a(30,30,30)s(0,24,13,7)a(50,50,50)r(0,24,12,6)a(d,d,d)j(1,25,"STA")a(30,30,30)s(16,24,17,7)a(50,50,50)r(15,24,16,6)a(d,d,d)j(16,25,"EXTE")end
end
function e(o,p,ak,ae,L)U,Z=g[aR][L],g[aN][L]if o<=U and
o+ak>=U and
p<=Z and
p+ae>=Z and
g[aO][L]then
return k
else
return i
end
end
function j(ag,ac,u)if type(u)=="number" then
u=tostring(u)end
ad=z("F1")..z("F2")..z("F3")..z("F4")for v=1,u:len()do
W=u:sub(v,v):byte()*5-159
for E=1,5 do
af="0x"..ad:sub(W,W+4):sub(E,E)for R=1,3 do
if af & 2^(4-R)>0 then
aa=ag+v*4+R-5
Y=ac+E-1
m(aa,Y,aa+1,Y)end
end
end
end
end
