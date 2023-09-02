-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2421 (2788 with comment) chars
am="%03d"
al="-"

h=255
o=150
i=100
m=true
c=false
M=input
J=output
R=math
j=screen
O=property
x=O.getText
t=j.drawRect
L=j.drawTriangleF
k=j.drawRectF
w=R.abs
y=string.format
f=j.drawLine
a=j.setColor
E=J.setBool
v=M.getBool
p=M.getNumber
do
ac=O.getBool("Monitor Swap")s=2
aj=20
d={}d.ak=0
d.Y=0
d.X=0
N={}N.l=0
N.n=0
b={}b.B=0
b.D=0
b.u=c
b.q=c
F=c
H=c
A=0
end
function onTick()b.B=p(21)b.D=p(22)b.u=v(1)d.X=d.Y
d.l=p(1)d.n=p(3)A=((p(23)-d.l)^2+(p(24)-d.n)^2)^.5
F=not F
ad=v(2)U=v(3)W=v(4)ae=v(5)if g(0,0,3,13,m)then
H=not H
b.q=m
end
if b.u and not b.q then
s=(g(5,0,32,13,c)and s~=0)and 0 or
g(0,15,12,6,c)and 1 or
g(15,15,6,6,c)and 2 or
g(0,24,16,6,c)and 3 or
g(15,24,16,6,c)and 4 or
s==0 and 1 or s
b.q=m
end
I=c
E(1,b.u)E(2,g(23,15,8,7,c))J.setNumber(1,s)E(32,F)b.q=b.u and b.q or c
end
function onDraw()if I~=ac then
I=m
a(10,10,10)j.drawClear()ah()ag()else
I=m
end
end
function ah()a(1,1,1)f(0,13,32,13)do
a(200,50,20)e(8,1,"X")if d.l<0 then
e(12,1,al)end
e(16,1,y(am,w(d.l//i)))f(28,5,29,5)f(30,5,31,5)a(20,50,200)e(8,7,"Y")if d.n<0 then
e(12,7,al)end
e(16,7,y(am,w(d.n//i)))f(28,11,29,11)f(30,11,31,11)end
a(50,50,50)k(0,0,3,13)if H then
a(o,o,o)L(3,3,0,7,3,11)a(20,20,20)k(3,0,22,13)a(h,h,h)e(5,1,y(am,R.min(w(A//1000),999)))j.drawText(16,1,".")e(19,1,y("%01d",w(A)//i%10))e(16,7,"KM")else
a(o,o,o)L(0,3,3,7,0,11)end
end
function ag()local _=0
a(30,30,30)k(0,15,13,7)a(50,50,50)t(0,15,12,6)_=g(0,15,12,6,c)and i or h
a(_,_,_)e(1,16,"MAP")_=U and 50 or 30
a(30,_,30)k(15,15,7,7)_=g(15,15,6,6,c)and i or h
a(_,_,_)a(50,50,50)t(15,15,6,6)_=g(15,15,6,6,c)and i or h
a(_,_,_)f(16,19,16,21)f(16,19,19,16)f(19,16,21,16)f(18,19,18,21)f(19,18,21,18)f(20,20,21,20)_=W and 70 or ae and 0 or 30
a(_,_,30)k(23,15,8,7)a(50,50,50)t(23,15,8,6)_=ad and h or i
a(_,_,_)e(24,16,"Be")a(30,30,30)k(0,24,13,7)a(50,50,50)t(0,24,12,6)_=g(0,24,16,6,c)and i or h
a(_,_,_)e(1,25,"STA")a(30,30,30)k(16,24,17,7)a(50,50,50)t(15,24,16,6)_=g(15,24,16,6,c)and i or h
a(_,_,_)e(16,25,"EXTE")end
function g(l,n,aa,ab,Q)local z=c
if l<=b.B and
l+aa>=b.B and
n<=b.D and
n+ab>=b.D and
b.u then
if not b.q and Q then
z=m
elseif not Q then
z=m
end
else
z=c
end
return z
end
function e(Z,ai,r)if type(r)=="number" then
r=tostring(r)end
V=x("F1")..x("F2")..x("F3")..x("F4")for C=1,r:len()do
S=r:sub(C,C):byte()*5-159
for G=1,5 do
af="0x"..V:sub(S,S+4):sub(G,G)for K=1,3 do
if af & 2^(4-K)>0 then
T=Z+C*4+K-5
P=ai+G-1
f(T,P,T+1,P)end
end
end
end
end
