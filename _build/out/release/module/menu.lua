-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2644 (3011 with comment) chars
aq="%04d"
ap="%03d"
ao="-"

i=255
k=100
w=true
b=false
M=input
O=output
T=math
l=screen
B=property
z=B.getText
s=l.drawRect
y=T.abs
p=string.format
o=l.drawRectF
g=l.drawLine
V=l.drawClear
a=l.setColor
x=O.setBool
Y=B.getNumber
v=M.getBool
h=M.getNumber
do
aa=B.getBool("Monitor Swap")j=2
am=20
C=b
d={}d.S=0
d.I=0
d.ai=0
R={}R.m=0
R.n=0
c={}c.D=0
c.E=0
c.u=b
c.r=b
G=b
an=b
H=0
F=0
L=1
q=0
end
function onTick()c.D=h(21)c.E=h(22)c.u=v(1)d.ai=d.I
d.m=h(1)d.I=h(2)*Y("Altitude Unit")d.n=h(3)d.S=h(13)*Y("Speed Unit")H=((h(23)-d.m)^2+(h(24)-d.n)^2)^.5
G=not G
ac=v(2)ab=v(3)ak=v(4)ah=v(5)F=h(25)q=q>0 and q-1 or 0
j=q==0 and h(26)or j
if c.u and not c.r then
q=6
L=j~=0 and j or L
j=(f(7,0,32,13,b)and j~=0)and 0 or
f(0,15,12,6,b)and 1 or
f(15,15,6,6,b)and 2 or
f(0,24,16,6,b)and 3 or
f(15,24,16,6,b)and 4 or
j==0 and L or j
c.r=w
end
x(1,c.u)x(2,f(23,15,8,7,b))x(3,f(0,0,5,13,b))O.setNumber(1,j)x(32,G)c.r=c.u and c.r or b
end
function onDraw()if C then
C=b
if not aa then
a(10,10,10)V()Q()N()end
else
C=w
if aa then
a(10,10,10)V()Q()N()end
end
end
function Q()a(1,1,1)g(0,13,32,13)a(50,50,50)o(0,0,3,13)a(150,150,150)l.drawTriangleF(0,3,3,7,0,11)if F==0 then
e(3,1,"ALT")e(16,1,p(aq,d.I//1))e(3,7,"SPD")e(16,7,p(aq,d.S//1))elseif F==1 then
a(200,50,20)e(8,1,"X")if d.m<0 then
e(12,1,ao)end
e(16,1,p(ap,y(d.m//k)))g(28,5,29,5)g(30,5,31,5)a(20,50,200)e(8,7,"Y")if d.n<0 then
e(12,7,ao)end
e(16,7,p(ap,y(d.n//k)))g(28,11,29,11)g(30,11,31,11)else
a(i,i,i)e(7,1,p(ap,T.min(y(H//1000),999)))l.drawText(18,1,".")e(21,1,p("%01d",y(H)//k%10))e(23,7,"KM")end
end
function N()local _=0
a(30,30,30)o(0,15,13,7)a(50,50,50)s(0,15,12,6)_=f(0,15,12,6,b)and k or i
a(_,_,_)e(1,16,"MAP")_=ab and 50 or 30
a(30,_,30)o(15,15,7,7)_=f(15,15,6,6,b)and k or i
a(_,_,_)a(50,50,50)s(15,15,6,6)_=f(15,15,6,6,b)and k or i
a(_,_,_)g(16,19,16,21)g(16,19,19,16)g(19,16,21,16)g(18,19,18,21)g(19,18,21,18)g(20,20,21,20)_=ak and 70 or ah and 0 or 30
a(_,_,30)o(23,15,8,7)a(50,50,50)s(23,15,8,6)_=ac and i or k
a(_,_,_)e(24,16,"Be")a(30,30,30)o(0,24,13,7)a(50,50,50)s(0,24,12,6)_=f(0,24,16,6,b)and k or i
a(_,_,_)e(1,25,"STA")a(30,30,30)o(16,24,17,7)a(50,50,50)s(15,24,16,6)_=f(15,24,16,6,b)and k or i
a(_,_,_)e(16,25,"EXTE")end
function f(m,n,ad,al,Z)local A=b
if m<=c.D and
m+ad>=c.D and
n<=c.E and
n+al>=c.E and
c.u then
if not c.r and Z then
A=w
elseif not Z then
A=w
end
else
A=b
end
return A
end
function e(af,aj,t)if type(t)=="number" then
t=tostring(t)end
ag=z("F1")..z("F2")..z("F3")..z("F4")for J=1,t:len()do
X=t:sub(J,J):byte()*5-159
for K=1,5 do
ae="0x"..ag:sub(X,X+4):sub(K,K)for U=1,3 do
if ae & 2^(4-U)>0 then
P=af+J*4+U-5
W=aj+K-1
g(P,W,P+1,W)end
end
end
end
end
