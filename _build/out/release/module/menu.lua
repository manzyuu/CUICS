-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2438 (2805 with comment) chars
am="%03d"
al="-"

i=255
r=150
h=100
k=true
c=false
Q=input
P=output
S=math
m=screen
T=property
x=T.getText
u=m.drawRect
J=m.drawTriangleF
j=m.drawRectF
z=S.abs
w=string.format
g=m.drawLine
a=m.setColor
H=P.setBool
s=Q.getBool
o=Q.getNumber
do
aa=T.getBool("Monitor Swap")p=2
ak=20
d={}d.aj=0
d.V=0
d.ab=0
R={}R.l=0
R.n=0
b={}b.F=0
b.A=0
b.t=c
b.q=c
B=c
C=c
E=0
end
function onTick()b.F=o(21)b.A=o(22)b.t=s(1)d.ab=d.V
d.l=o(1)d.n=o(3)E=((o(23)-d.l)^2+(o(24)-d.n)^2)^.5
B=not B
af=s(2)ag=s(3)ad=s(4)X=s(5)if f(0,0,3,13,k)then
C=not C
b.q=k
end
if b.t and not b.q then
p=(f(5,0,32,13,c)and p~=0)and 0 or
f(0,15,12,6,c)and 1 or
f(15,15,6,6,c)and 2 or
f(0,24,16,6,c)and 3 or
f(15,24,16,6,c)and 4 or
p==0 and 1 or p
b.q=k
end
D=c
H(1,b.t)H(2,f(23,15,8,7,c))P.setNumber(1,p)H(32,B)b.q=b.t and b.q or c
end
function onDraw()if D~=aa then
D=k
if p~=0 then
a(10,10,10)m.drawClear()ae()W()end
else
D=k
end
end
function ae()a(1,1,1)g(0,13,32,13)do
a(200,50,20)e(8,1,"X")if d.l<0 then
e(12,1,al)end
e(16,1,w(am,z(d.l//h)))g(28,5,29,5)g(30,5,31,5)a(20,50,200)e(8,7,"Y")if d.n<0 then
e(12,7,al)end
e(16,7,w(am,z(d.n//h)))g(28,11,29,11)g(30,11,31,11)end
a(50,50,50)j(0,0,3,13)if C then
a(r,r,r)J(3,3,0,7,3,11)a(20,20,20)j(3,0,22,13)a(i,i,i)e(5,1,w(am,S.min(z(E//1000),999)))m.drawText(16,1,".")e(19,1,w("%01d",z(E)//h%10))e(16,7,"KM")else
a(r,r,r)J(0,3,3,7,0,11)end
end
function W()local _=0
a(30,30,30)j(0,15,13,7)a(50,50,50)u(0,15,12,6)_=f(0,15,12,6,c)and h or i
a(_,_,_)e(1,16,"MAP")_=ag and 50 or 30
a(30,_,30)j(15,15,7,7)_=f(15,15,6,6,c)and h or i
a(_,_,_)a(50,50,50)u(15,15,6,6)_=f(15,15,6,6,c)and h or i
a(_,_,_)g(16,19,16,21)g(16,19,19,16)g(19,16,21,16)g(18,19,18,21)g(19,18,21,18)g(20,20,21,20)_=ad and 70 or X and 0 or 30
a(_,_,30)j(23,15,8,7)a(50,50,50)u(23,15,8,6)_=af and i or h
a(_,_,_)e(24,16,"Be")a(30,30,30)j(0,24,13,7)a(50,50,50)u(0,24,12,6)_=f(0,24,16,6,c)and h or i
a(_,_,_)e(1,25,"STA")a(30,30,30)j(16,24,17,7)a(50,50,50)u(15,24,16,6)_=f(15,24,16,6,c)and h or i
a(_,_,_)e(16,25,"EXTE")end
function f(l,n,U,Y,O)local y=c
if l<=b.F and
l+U>=b.F and
n<=b.A and
n+Y>=b.A and
b.t then
if not b.q and O then
y=k
elseif not O then
y=k
end
else
y=c
end
return y
end
function e(ai,Z,v)if type(v)=="number" then
v=tostring(v)end
ah=x("F1")..x("F2")..x("F3")..x("F4")for I=1,v:len()do
K=v:sub(I,I):byte()*5-159
for G=1,5 do
ac="0x"..ah:sub(K,K+4):sub(G,G)for M=1,3 do
if ac & 2^(4-M)>0 then
N=ai+I*4+M-5
L=Z+G-1
g(N,L,N+1,L)end
end
end
end
end
