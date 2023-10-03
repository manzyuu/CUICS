-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2476 (2843 with comment) chars
an="%03d"
am="-"

i=255
n=150
h=100
o=true
c=false
Q=input
K=output
N=math
m=screen
R=property
y=R.getText
u=m.drawRect
P=m.drawTriangleF
l=m.drawRectF
z=N.abs
w=string.format
g=m.drawLine
O=m.drawClear
a=m.setColor
C=K.setBool
v=Q.getBool
p=Q.getNumber
do
W=R.getBool("Monitor Swap")r=2
al=20
H=c
e={}e.ak=0
e.ac=0
e.ag=0
M={}M.k=0
M.j=0
b={}b.B=0
b.A=0
b.s=c
b.q=c
G=c
F=c
I=0
end
function onTick()b.B=p(21)b.A=p(22)b.s=v(1)e.ag=e.ac
e.k=p(1)e.j=p(3)I=((p(23)-e.k)^2+(p(24)-e.j)^2)^.5
G=not G
ae=v(2)ai=v(3)ad=v(4)af=v(5)if f(0,0,3,13,o)then
F=not F
b.q=o
end
if b.s and not b.q then
r=(f(5,0,32,13,c)and r~=0)and 0 or
f(0,15,12,6,c)and 1 or
f(15,15,6,6,c)and 2 or
f(0,24,16,6,c)and 3 or
f(15,24,16,6,c)and 4 or
r==0 and 1 or r
b.q=o
end
C(1,b.s)C(2,f(23,15,8,7,c))K.setNumber(1,r)C(32,G)b.q=b.s and b.q or c
end
function onDraw()if H then
H=c
if not W then
a(10,10,10)O()S()X()end
else
H=o
if W then
a(10,10,10)O()S()X()end
end
end
function S()a(1,1,1)g(0,13,32,13)do
a(200,50,20)d(8,1,"X")if e.k<0 then
d(12,1,am)end
d(16,1,w(an,z(e.k//h)))g(28,5,29,5)g(30,5,31,5)a(20,50,200)d(8,7,"Y")if e.j<0 then
d(12,7,am)end
d(16,7,w(an,z(e.j//h)))g(28,11,29,11)g(30,11,31,11)end
a(50,50,50)l(0,0,3,13)if F then
a(n,n,n)P(3,3,0,7,3,11)a(20,20,20)l(3,0,22,13)a(i,i,i)d(5,1,w(an,N.min(z(I//1000),999)))m.drawText(16,1,".")d(19,1,w("%01d",z(I)//h%10))d(16,7,"KM")else
a(n,n,n)P(0,3,3,7,0,11)end
end
function X()local _=0
a(30,30,30)l(0,15,13,7)a(50,50,50)u(0,15,12,6)_=f(0,15,12,6,c)and h or i
a(_,_,_)d(1,16,"MAP")_=ai and 50 or 30
a(30,_,30)l(15,15,7,7)_=f(15,15,6,6,c)and h or i
a(_,_,_)a(50,50,50)u(15,15,6,6)_=f(15,15,6,6,c)and h or i
a(_,_,_)g(16,19,16,21)g(16,19,19,16)g(19,16,21,16)g(18,19,18,21)g(19,18,21,18)g(20,20,21,20)_=ad and 70 or af and 0 or 30
a(_,_,30)l(23,15,8,7)a(50,50,50)u(23,15,8,6)_=ae and i or h
a(_,_,_)d(24,16,"Be")a(30,30,30)l(0,24,13,7)a(50,50,50)u(0,24,12,6)_=f(0,24,16,6,c)and h or i
a(_,_,_)d(1,25,"STA")a(30,30,30)l(16,24,17,7)a(50,50,50)u(15,24,16,6)_=f(15,24,16,6,c)and h or i
a(_,_,_)d(16,25,"EXTE")end
function f(k,j,aa,ab,V)local x=c
if k<=b.B and
k+aa>=b.B and
j<=b.A and
j+ab>=b.A and
b.s then
if not b.q and V then
x=o
elseif not V then
x=o
end
else
x=c
end
return x
end
function d(Y,Z,t)if type(t)=="number" then
t=tostring(t)end
ah=y("F1")..y("F2")..y("F3")..y("F4")for D=1,t:len()do
L=t:sub(D,D):byte()*5-159
for E=1,5 do
aj="0x"..ah:sub(L,L+4):sub(E,E)for T=1,3 do
if aj & 2^(4-T)>0 then
U=Y+D*4+T-5
J=Z+E-1
g(U,J,U+1,J)end
end
end
end
end
