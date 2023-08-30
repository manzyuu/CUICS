-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2115 (2482 with comment) chars
am="%03d"

f=255
j=100
k=true
c=false
J=input
N=output
K=math
l=screen
H=property
y=H.getText
r=l.drawRect
n=l.drawRectF
h=l.drawLine
u=K.abs
x=string.format
_=l.setColor
I=N.setBool
w=J.getBool
g=J.getNumber
do
W=H.getBool("Monitor Swap")v=2
af=20
d={}d.ag=0
d.E=0
d.R=0
S={}S.q=0
S.s=0
b={}b.B=0
b.D=0
b.o=c
b.p=c
G=c
O=0
end
function onTick()b.B=g(31)b.D=g(32)b.o=w(1)d.R=d.E
d.q=g(1)d.s=g(3)d.E=g(2)d.ad=(d.E-d.R)*60
d.ai=g(17)d.ae=g(13)aj=g(29)ah=g(30)G=w(2)al=w(3)m=w(4)if b.o and not b.p then
v=i(0,15,12,6,c)and 1 or
i(15,15,6,6,c)and 2 or
i(23,15,8,7,c)and 3 or
i(0,24,16,6,c)and 4 or
i(15,24,16,6,c)and 5 or
v~=0 and 0 or 1
b.p=k
end
F=c
I(1,b.o)N.setNumber(1,v)I(32,G)b.p=b.o and b.p or c
end
function onDraw()ak=k
if F~=W then
F=k
else
F=k
if v~=0 then
_(10,10,10)l.drawClear()ab()V()end
end
end
function ab()_(200,50,20)e(29,1,"X")e(17,1,x(am,u(d.q//j)))_(20,50,200)e(29,7,"Y")e(17,7,x(am,u(d.s//j)))_(f,f,f)e(0,1,x("%02d",K.min(u(O//1000),99)))l.drawText(7,1,".")e(10,1,x("%01d",u(O)//j%10))e(8,7,"KM")_(5,5,5)h(15,0,15,13)_(1,1,1)h(0,13,32,13)end
function V()local a=0
_(30,30,30)n(0,15,13,7)_(50,50,50)r(0,15,12,6)a=i(0,15,12,6,c)and j or f
_(a,a,a)e(1,16,"MAP")_(30,30,30)n(15,15,7,7)_(50,50,50)r(15,15,6,6)a=i(15,15,6,6,c)and j or f
_(a,a,a)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)a=m and 70 or 30
_(a,a,a)n(23,15,8,7)_(50,50,50)r(23,15,8,6)a=m and 70 or 30
_(m and f or f,m and 20 or f,m and 50 or f)e(24,16,"Be")_(30,30,30)n(0,24,13,7)_(50,50,50)r(0,24,12,6)a=i(0,24,16,6,c)and j or f
_(a,a,a)e(1,25,"STA")_(30,30,30)n(16,24,17,7)_(50,50,50)r(15,24,16,6)a=i(15,24,16,6,c)and j or f
_(a,a,a)e(16,25,"EXTE")end
function i(q,s,aa,ac,M)local z=c
if q<=b.B and
q+aa>=b.B and
s<=b.D and
s+ac>=b.D and
b.o then
if not b.p and M then
z=k
elseif not M then
z=k
end
else
z=c
end
return z
end
function e(Z,U,t)if type(t)=="number" then
t=tostring(t)end
X=y("F1")..y("F2")..y("F3")..y("F4")for A=1,t:len()do
Q=t:sub(A,A):byte()*5-159
for C=1,5 do
Y="0x"..X:sub(Q,Q+4):sub(C,C)for T=1,3 do
if Y & 2^(4-T)>0 then
L=Z+A*4+T-5
P=U+C-1
h(L,P,L+1,P)end
end
end
end
end
