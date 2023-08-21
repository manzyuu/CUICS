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
Q=input
M=output
T=math
l=screen
O=property
z=O.getText
s=l.drawRect
o=l.drawRectF
h=l.drawLine
v=T.abs
x=string.format
_=l.setColor
K=M.setBool
y=Q.getBool
g=Q.getNumber
do
X=O.getBool("Monitor Swap")u=2
aj=20
d={}d.ad=0
d.A=0
d.P=0
H={}H.n=0
H.p=0
b={}b.E=0
b.D=0
b.t=c
b.r=c
S=c
I=0
end
function onTick()b.E=g(31)b.D=g(32)b.t=y(1)d.P=d.A
d.n=g(1)d.p=g(3)d.A=g(2)d.ag=(d.A-d.P)*60
d.ae=g(17)d.af=g(13)ah=g(29)ak=g(30)S=y(2)ai=y(3)m=y(4)if b.t and not b.r then
u=i(0,15,12,6,c)and 1 or
i(15,15,6,6,c)and 2 or
i(23,15,8,7,c)and 3 or
i(0,24,16,6,c)and 4 or
i(15,24,16,6,c)and 5 or
u~=0 and 0 or 1
b.r=k
end
F=c
K(1,b.t)M.setNumber(1,u)K(32,S)b.r=b.t and b.r or c
end
function onDraw()al=k
if F~=X then
F=k
if u~=0 then
_(10,10,10)l.drawClear()U()aa()end
else
F=k
end
end
function U()_(200,50,20)e(29,1,"X")e(17,1,x(am,v(d.n//j)))_(20,50,200)e(29,7,"Y")e(17,7,x(am,v(d.p//j)))_(f,f,f)e(0,1,x("%02d",T.min(v(I//1000),99)))l.drawText(7,1,".")e(10,1,x("%01d",v(I)//j%10))e(8,7,"KM")_(5,5,5)h(15,0,15,13)_(1,1,1)h(0,13,32,13)end
function aa()local a=0
_(30,30,30)o(0,15,13,7)_(50,50,50)s(0,15,12,6)a=i(0,15,12,6,c)and j or f
_(a,a,a)e(1,16,"MAP")_(30,30,30)o(15,15,7,7)_(50,50,50)s(15,15,6,6)a=i(15,15,6,6,c)and j or f
_(a,a,a)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)a=m and 70 or 30
_(a,a,a)o(23,15,8,7)_(50,50,50)s(23,15,8,6)a=m and 70 or 30
_(m and f or f,m and 20 or f,m and 50 or f)e(24,16,"Be")_(30,30,30)o(0,24,13,7)_(50,50,50)s(0,24,12,6)a=i(0,24,16,6,c)and j or f
_(a,a,a)e(1,25,"STA")_(30,30,30)o(16,24,17,7)_(50,50,50)s(15,24,16,6)a=i(15,24,16,6,c)and j or f
_(a,a,a)e(16,25,"EXTE")end
function i(n,p,ab,V,N)local w=c
if n<=b.E and
n+ab>=b.E and
p<=b.D and
p+V>=b.D and
b.t then
if not b.r and N then
w=k
elseif not N then
w=k
end
else
w=c
end
return w
end
function e(Z,W,q)if type(q)=="number" then
q=tostring(q)end
Y=z("F1")..z("F2")..z("F3")..z("F4")for B=1,q:len()do
G=q:sub(B,B):byte()*5-159
for C=1,5 do
ac="0x"..Y:sub(G,G+4):sub(C,C)for J=1,3 do
if ac & 2^(4-J)>0 then
R=Z+B*4+J-5
L=W+C-1
h(R,L,R+1,L)end
end
end
end
end
