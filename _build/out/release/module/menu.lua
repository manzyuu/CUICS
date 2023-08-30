-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2112 (2479 with comment) chars
al="%03d"

e=255
j=100
l=true
c=false
L=input
J=output
N=math
k=screen
P=property
x=P.getText
p=k.drawRect
s=k.drawRectF
h=k.drawLine
u=N.abs
v=string.format
a=k.setColor
S=J.setBool
G=L.getBool
g=L.getNumber
do
ab=P.getBool("Monitor Swap")w=2
ad=20
d={}d.ai=0
d.D=0
d.M=0
K={}K.o=0
K.q=0
b={}b.F=0
b.A=0
b.n=c
b.r=c
E=c
H=0
end
function onTick()b.F=g(31)b.A=g(32)b.n=G(1)d.M=d.D
d.o=g(1)d.q=g(3)d.D=g(2)d.ak=(d.D-d.M)*60
d.ae=g(17)d.aj=g(13)ah=g(29)ag=g(30)E=not E
af=G(3)t=G(4)if b.n and not b.r then
w=i(0,15,12,6,c)and 1 or
i(15,15,6,6,c)and 2 or
i(23,15,8,7,c)and 3 or
i(0,24,16,6,c)and 4 or
i(15,24,16,6,c)and 5 or
w~=0 and 0 or 1
b.r=l
end
C=c
S(1,b.n)J.setNumber(1,w)S(32,E)b.r=b.n and b.r or c
end
function onDraw()if C~=ab then
C=l
if w~=0 then
a(10,10,10)k.drawClear()X()Y()end
else
C=l
end
end
function X()a(200,50,20)f(29,1,"X")f(17,1,v(al,u(d.o//j)))a(20,50,200)f(29,7,"Y")f(17,7,v(al,u(d.q//j)))a(e,e,e)f(0,1,v("%02d",N.min(u(H//1000),99)))k.drawText(7,1,".")f(10,1,v("%01d",u(H)//j%10))f(8,7,"KM")a(5,5,5)h(15,0,15,13)a(1,1,1)h(0,13,32,13)end
function Y()local _=0
a(30,30,30)s(0,15,13,7)a(50,50,50)p(0,15,12,6)_=i(0,15,12,6,c)and j or e
a(_,_,_)f(1,16,"MAP")a(30,30,30)s(15,15,7,7)a(50,50,50)p(15,15,6,6)_=i(15,15,6,6,c)and j or e
a(_,_,_)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)_=t and 70 or 30
a(_,_,_)s(23,15,8,7)a(50,50,50)p(23,15,8,6)_=t and 70 or 30
a(t and e or e,t and 20 or e,t and 50 or e)f(24,16,"Be")a(30,30,30)s(0,24,13,7)a(50,50,50)p(0,24,12,6)_=i(0,24,16,6,c)and j or e
a(_,_,_)f(1,25,"STA")a(30,30,30)s(16,24,17,7)a(50,50,50)p(15,24,16,6)_=i(15,24,16,6,c)and j or e
a(_,_,_)f(16,25,"EXTE")end
function i(o,q,W,U,T)local y=c
if o<=b.F and
o+W>=b.F and
q<=b.A and
q+U>=b.A and
b.n then
if not b.r and T then
y=l
elseif not T then
y=l
end
else
y=c
end
return y
end
function f(ac,Z,m)if type(m)=="number" then
m=tostring(m)end
V=x("F1")..x("F2")..x("F3")..x("F4")for B=1,m:len()do
Q=m:sub(B,B):byte()*5-159
for z=1,5 do
aa="0x"..V:sub(Q,Q+4):sub(z,z)for R=1,3 do
if aa & 2^(4-R)>0 then
I=ac+B*4+R-5
O=Z+z-1
h(I,O,I+1,O)end
end
end
end
end
