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
aP="x"
aO="1"
aN="%03d"
aM="Y"
aL="y"
aK="0"

d=255
i=false
j=true
ab=output
S=input
A=math
r=screen
K=property
w=K.getText
q=r.drawRect
s=r.drawRectF
m=r.drawLine
z=A.abs
y=string.format
a=r.setColor
Q=A.max
u=A.min
n=S.getBool
_=S.getNumber
h=ab.setBool
do
B,aA,O,aj=j,j,j,K.getBool("Monitor Swap")P=i
D=2
aH=20
E,I=0,0
l,M=1,10
G=0
T={}e={}e.R=0
e.aa=0
C={}C.p=0
C.o=0
b={}b.aq,b.ao,b.aw,b.aG,b.am,b.ax,b.au,b.ap,b.as,b.an={},{},{},{},{},{},{},{},{},{}L={}L.ag=0
g={[aP]={},[aL]={},[aQ]={}}end
function onTick()if B==i then return end
B=i
P=not P
h(32,P)e.p,e.o=_(9),_(10)G=A.sqrt((C.p-e.p)^2+(C.o-e.o)^2)h(13,B)h(14,n(1)or n(2))F=i
g[aP][1],g[aL][1],g[aQ][1]=_(1),_(2),n(1)g[aP][2],g[aL][2],g[aQ][2]=_(3),_(4),n(2)T.av,T.c=_(5),_(6)ar,aJ=_(7),_(8)e.aa=e.R
e.p=_(9)e.o=_(10)e.R=_(11)e.aD=(_(11)-e.aa)*60
e.aI=_(17)e.az=_(18)aE=_(29)aC=_(30)al=n(3)ac=n(4)at=_(13)aB=_(14)J=_(15)aF=_(16)b["vis"][J]=n(5)b["dir"][J]=n(6)b["way"][J]=n(7)if g[aQ][1]then
D=f(0,15,12,6,1)and 1 or
f(15,15,6,6,1)and 2 or
f(0,24,16,6,1)and 3 or
f(15,24,16,6,1)and 4 or 0
end
h(13,f(15,24,16,6,1))if D==1 then
if O then
E,I=e.p,e.o
end
if g[aQ][2]==i then
x=i
end
if f(0,0,5,5,2)then
if x==i then
l=l+1
end
x=j
end
if f(0,6,5,5,2)then
if x==i then
l=l-1
end
x=j
end
l=u(Q(l,1),22)M=u(l-5,0)/5+u(Q(l-4,1),10)+u(Q(l-14,0),8)*5
if f(13,13,6,6,2)then
O=j
else
if g[aQ][2]and l==i then
E=-(g[aP][2]-16)*M/2+E
I=-(g[aL][2]-16)*M/2+I
O=i
end
end
end
if D==2 then
if f(27,0,5,6,2)then
c=""
if f(2,14,5,5,2)then
c=aO
else
c=aK
end
if f(8,14,5,5,2)then
c=c..aO
else
c=c..aK
end
if f(14,14,5,5,2)then
c=c..aO
else
c=c..aK
end
L.ag=tonumber(c)ab.setNumber(2,L.ay)h(2,f(27,7,5,5,2))h(7,f(27,14,5,5,2))h(8,f(27,20,5,5,2))h(9,f(0,20,5,5,2))h(10,f(27,27,5,5,2))h(11,f(0,26,9,6,2))h(12,f(22,20,4,6,1))end
h(13,j)else
for v=1,13 do
h(v,i)end
end
if(_(21)==K.getNumber("Passcode"))then
c=_(20)b[aR][c]=_(22)b[aM][c]=_(22)b["Dir"][c]=_(22)b["Alt"][c]=_(22)b["Spd"][c]=_(22)b["WayX"][c]=_(22)b["WayY"][c]=_(22)end
end
function onDraw()B=j
if F~=aj then
F=j
return
else
F=j
a(10,10,10)r.drawClear()a(200,50,20)k(29,1,aR)k(17,1,y(aN,z(e.p//100)))a(20,50,200)k(29,7,aM)k(17,7,y(aN,z(e.o//100)))a(d,d,d)k(0,1,y("%02d",u(z(G//1000),99)))r.drawText(7,1,".")k(10,1,y("%01d",z(G)//100%10))k(8,7,"KM")a(5,5,5)m(15,0,15,13)a(1,1,1)m(0,13,32,13)a(30,30,30)s(0,15,13,7)a(50,50,50)q(0,15,12,6)a(d,d,d)k(1,16,"MAP")a(30,30,30)s(15,15,7,7)a(50,50,50)q(15,15,6,6)a(d,d,d)m(16,19,16,21)m(16,19,19,16)m(19,16,21,16)m(18,19,18,21)m(19,18,21,18)m(20,20,21,20)if ac then
a(70,70,70)s(23,15,8,7)a(50,50,50)q(23,15,8,6)a(d,20,50)else
a(30,30,30)s(23,15,8,7)a(50,50,50)q(23,15,8,6)a(d,d,d)end
k(24,16,"Be")a(30,30,30)s(0,24,13,7)a(50,50,50)q(0,24,12,6)a(d,d,d)k(1,25,"STA")a(30,30,30)s(16,24,17,7)a(50,50,50)q(15,24,16,6)a(d,d,d)k(16,25,"EXTE")end
end
function f(p,o,af,ak,H)V,U=g[aP][H],g[aL][H]if p<=V and
p+af>=V and
o<=U and
o+ak>=U and
g[aQ][H]then
return j
else
return i
end
end
function k(ah,ad,t)if type(t)=="number" then
t=tostring(t)end
ai=w("F1")..w("F2")..w("F3")..w("F4")for v=1,t:len()do
W=t:sub(v,v):byte()*5-159
for N=1,5 do
ae="0x"..ai:sub(W,W+4):sub(N,N)for Y=1,3 do
if ae & 2^(4-Y)>0 then
X=ah+v*4+Y-5
Z=ad+N-1
m(X,Z,X+1,Z)end
end
end
end
end
