-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3330 (3697 with comment) chars

y=255
C=150
s=100
f=false
g=true
au=input
B=math
v=screen
Z=property
Q=Z.getText
an=v.drawText
H=v.drawRect
as=B.cos
ar=B.sin
z=v.drawLine
L=B.pi
x=v.drawRectF
E=map.mapToScreen
h=v.setColor
M=output.setBool
X=B.max
R=B.min
ab=B.floor
a=au.getNumber
U=au.getBool
do
ae=10000
aJ=g
aH=Z.getBool("Monitor Swap")J=f
ac=f
D=1
ak=Z.getNumber("Passcode")q,r=0,0
t,n=1,10
p={}l={}l.u=1
l.ad=f
_={}_.aq={}_.ag={}_.ah={}_.ao={}_.o={}_.m={}_.O={}_.aB={}_.aD={}_.aj={}_.am={}b={0,0,0,0,0,0,0,0}F={}F.o=0
F.m=0
w={}w.o=0
w.m=0
aM=g
e={}e.A=f
aL=1
K=f
N=g
end
function onTick()do
e.G=U(1)ac=not ac
_.ao[b[l.u]]=a(1)or 0
if a(1)==ak and not U(32)then
_.o[b[l.u]]=a(2)//1 or 0
_.m[b[l.u]]=a(3)//1 or 0
_.O[b[l.u]]=a(4)or 0
_.aB[b[l.u]]=a(5)//1 or 0
_.aD[b[l.u]]=a(6)//1 or 0
_.aj[b[l.u]]=a(7)//1 or 0
_.am[b[l.u]]=a(8)//1 or 0
end
p.i=a(9)p.k=a(10)p.T=a(11)p.aN=a(12)p.aP=a(13)aK=a(14)aO=a(15)F.o=a(16)F.m=a(17)e.o=a(18)e.m=a(19)w.o=a(21)w.m=a(22)D=a(23)l.ad=U(20)w.ax=U(21)for c=1,8,1 do
b[c]=ab(a(24+c))%ae and
ab(a(24+c))%ae or 0
if 0<b[c]then
local af=ab(a(24+c)/ae)_.aq[b[c]]=af & 1==1
_.ag[b[c]]=af & 2==2
_.ah[b[c]]=af & 4==4
end
end
end
do
if D==1 then
do
if j(0,0,5,5,g)then
e.A=g
t=t-1
end
if j(0,6,5,5,g)then
e.A=g
t=t+1
end
t=R(X(t,1),22)n=R(t-5,0)/5+R(X(t-4,1),10)+R(X(t-14,0),8)*5
end
do
N=j(13,13,6,6,f)and g or N
if N then
q,r=p.i,p.k
end
local d=K and 23 or 6
if e.G and not(j(0,0,5,11,f)or j(26,0,6,d,f)or j(13,13,6,6,f))then
N=f
q=(e.o-16)*n/2+q
r=-(e.m-16)*n/2+r
end
if j(27,0,5,4,g)then
e.A=g
K=not K
end
end
end
end
do
M(1,j(27,6,5,5,g)and D==1)M(2,j(27,12,5,5,g)and D==1)M(3,j(27,18,5,5,g)and D==1)M(32,ac)end
J=f
e.A=e.G and e.A or f
end
function onDraw()if J~=aH then
J=g
else
J=g
if D==1 then
do
v.drawMap(q,r,n)h(s,s,s)W(0,26,n)h(30,30,30)local i,k=E(q,r,n,32,32,p.i,p.k)x(i-1,k-1,3,3)local av=((p.T+1.75)%1-.5)*2*L+L/2
z(i,k,ar(av)*8+i,as(av)*8+k)end
if w.ax then
h(C,C,0,70)local i,k=E(q,r,n,32,32,w.o,w.m)v.drawCircleF(i,k,10/n)end
for c=1,8,1 do
if _.aq[b[c]]and b[c]~=0 and _.ao[b[c]]==ak and l.ad then
local V,S=E(q,r,n,32,32,_.o[b[c]],_.m[b[c]])h(C,50,C)x(V-1,S-1,3,3)if _.ag[b[c]]then
_.O[b[c]]=_.O[b[c]]or 0
local T=((_.O[b[c]]+1.75)%1-.5)*2*L+L/2
z(V,S,ar(T)*8+V,as(T)*8+S)end
if _.ah[b[c]]then
local aa,az=E(q,r,n,32,32,_.aj[b[c]],_.am[b[c]])h(C,C,s)z(V,S,aa,az)x(aa-1,aa-1,3,3)end
end
end
if K then
local i,k=E(q,r,n,32,32,p.i,p.k)local aF,aw=E(q,r,n,32,32,F.o,F.m)h(s,10,s)z(i,k,aF,aw)local d=0
h(5,5,5)x(27,6,5,16)h(20,20,20)H(27,6,4,5)H(27,11,4,5)H(27,16,4,6)d=j(27,6,5,4,f)and s or y
h(d,d,d)W(28,6,"p")d=l.ad and y or 50
d=j(27,12,5,4,f)and s or d
h(d,d,d)x(28,13,3,2)z(28,13,28,16)d=j(27,18,5,4,f)and s or y
h(d,d,d)W(28,17,"B")end
do
h(5,5,5)x(0,0,5,10)x(27,0,4,4)h(20,20,20)H(0,0,4,4)H(0,5,4,4)H(27,0,4,4)h(y,y,y)an(1,0,"+")an(1,5,"-")d=j(27,0,5,4,f)and s or y
h(d,d,d)W(28,-1,"w")h(200,200,200,200)v.drawCircle(16,16,4)end
end
end
end
function j(i,k,aA,aE,G)local P=f
if i<=e.o and
i+aA>=e.o and
k<=e.m and
k+aE>=e.m and
e.G then
if not e.A and G then
P=g
elseif not G then
P=g
end
else
P=f
end
return P
end
function W(aI,aG,I)if type(I)=="number" then
I=tostring(I)end
aC=Q("F1")..Q("F2")..Q("F3")..Q("F4")for c=1,I:len()do
ai=I:sub(c,c):byte()*5-159
for Y=1,5 do
ay="0x"..aC:sub(ai,ai+4):sub(Y,Y)for ap=1,3 do
if ay & 2^(4-ap)>0 then
al=aI+c*4+ap-5
at=aG+Y-1
z(al,at,al+1,at)end
end
end
end
end
