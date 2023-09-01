-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3330 (3697 with comment) chars

y=255
B=150
s=100
f=false
g=true
aq=input
A=math
u=screen
Y=property
S=Y.getText
at=u.drawText
H=u.drawRect
am=A.cos
ag=A.sin
C=u.drawLine
P=A.pi
x=u.drawRectF
z=map.mapToScreen
h=u.setColor
O=output.setBool
ab=A.max
Q=A.min
X=A.floor
a=aq.getNumber
V=aq.getBool
do
Z=10000
aP=g
aw=Y.getBool("Monitor Swap")W=f
af=f
F=1
av=Y.getNumber("Passcode")q,r=0,0
t,o=1,10
p={}l={}l.w=1
l.ae=f
_={}_.ao={}_.al={}_.as={}_.an={}_.n={}_.m={}_.T={}_.aB={}_.az={}_.ap={}_.ar={}c={0,0,0,0,0,0,0,0}G={}G.n=0
G.m=0
v={}v.n=0
v.m=0
aJ=g
e={}e.D=f
aO=1
U=f
R=g
end
function onTick()do
e.E=V(1)af=not af
_.an[c[l.w]]=a(1)or 0
if a(1)==av and not V(32)then
_.n[c[l.w]]=a(2)//1 or 0
_.m[c[l.w]]=a(3)//1 or 0
_.T[c[l.w]]=a(4)or 0
_.aB[c[l.w]]=a(5)//1 or 0
_.az[c[l.w]]=a(6)//1 or 0
_.ap[c[l.w]]=a(7)//1 or 0
_.ar[c[l.w]]=a(8)//1 or 0
end
p.i=a(9)p.k=a(10)p.N=a(11)p.aN=a(12)p.aK=a(13)aM=a(14)aL=a(15)G.n=a(16)G.m=a(17)e.n=a(18)e.m=a(19)v.n=a(21)v.m=a(22)F=a(23)l.ae=V(20)v.ax=V(21)for b=1,8,1 do
c[b]=X(a(24+b))%Z and
X(a(24+b))%Z or 0
if 0<c[b]then
local aa=X(a(24+b)/Z)_.ao[c[b]]=aa & 1==1
_.al[c[b]]=aa & 2==2
_.as[c[b]]=aa & 4==4
end
end
end
do
if F==1 then
do
if j(0,0,5,5,g)then
e.D=g
t=t-1
end
if j(0,6,5,5,g)then
e.D=g
t=t+1
end
t=Q(ab(t,1),22)o=Q(t-5,0)/5+Q(ab(t-4,1),10)+Q(ab(t-14,0),8)*5
end
do
R=j(13,13,6,6,f)and g or R
if R then
q,r=p.i,p.k
end
local d=U and 23 or 6
if e.E and not(j(0,0,5,11,f)or j(26,0,6,d,f)or j(13,13,6,6,f))then
R=f
q=(e.n-16)*o/2+q
r=-(e.m-16)*o/2+r
end
if j(27,0,5,4,g)then
e.D=g
U=not U
end
end
end
end
do
O(1,j(27,6,5,5,g)and F==1)O(2,j(27,12,5,5,g)and F==1)O(3,j(27,18,5,5,g)and F==1)O(32,af)end
W=f
e.D=e.E and e.D or f
end
function onDraw()if W~=aw then
W=g
else
W=g
if F==1 then
do
u.drawMap(q,r,o)h(s,s,s)K(0,26,o)h(30,30,30)local i,k=z(q,r,o,32,32,p.i,p.k)x(i-1,k-1,3,3)local ah=((p.N+1.75)%1-.5)*2*P+P/2
C(i,k,ag(ah)*8+i,am(ah)*8+k)end
if v.ax then
h(B,B,0,70)local i,k=z(q,r,o,32,32,v.n,v.m)u.drawCircleF(i,k,10/o)end
for b=1,8,1 do
if _.ao[c[b]]and c[b]~=0 and _.an[c[b]]==av and l.ae then
local M,L=z(q,r,o,32,32,_.n[c[b]],_.m[c[b]])h(B,50,B)x(M-1,L-1,3,3)if _.al[c[b]]then
_.T[c[b]]=_.T[c[b]]or 0
local N=((_.T[c[b]]+1.75)%1-.5)*2*P+P/2
C(M,L,ag(N)*8+M,am(N)*8+L)end
if _.as[c[b]]then
local ad,aA=z(q,r,o,32,32,_.ap[c[b]],_.ar[c[b]])h(B,B,s)C(M,L,ad,aA)x(ad-1,ad-1,3,3)end
end
end
if U then
local i,k=z(q,r,o,32,32,p.i,p.k)local aE,aI=z(q,r,o,32,32,G.n,G.m)h(s,10,s)C(i,k,aE,aI)local d=0
h(5,5,5)x(27,6,5,16)h(20,20,20)H(27,6,4,5)H(27,11,4,5)H(27,16,4,6)d=j(27,6,5,4,f)and s or y
h(d,d,d)K(28,6,"p")d=l.ae and y or 50
d=j(27,12,5,4,f)and s or d
h(d,d,d)x(28,13,3,2)C(28,13,28,16)d=j(27,18,5,4,f)and s or y
h(d,d,d)K(28,17,"B")end
do
h(5,5,5)x(0,0,5,10)x(27,0,4,4)h(20,20,20)H(0,0,4,4)H(0,5,4,4)H(27,0,4,4)h(y,y,y)at(1,0,"+")at(1,5,"-")d=j(27,0,5,4,f)and s or y
h(d,d,d)K(28,-1,"w")h(200,200,200,200)u.drawCircle(16,16,4)end
end
end
end
function j(i,k,aD,aF,E)local J=f
if i<=e.n and
i+aD>=e.n and
k<=e.m and
k+aF>=e.m and
e.E then
if not e.D and E then
J=g
elseif not E then
J=g
end
else
J=f
end
return J
end
function K(aC,aH,I)if type(I)=="number" then
I=tostring(I)end
ay=S("F1")..S("F2")..S("F3")..S("F4")for b=1,I:len()do
aj=I:sub(b,b):byte()*5-159
for ac=1,5 do
aG="0x"..ay:sub(aj,aj+4):sub(ac,ac)for ak=1,3 do
if aG & 2^(4-ak)>0 then
au=aC+b*4+ak-5
ai=aH+ac-1
C(au,ai,au+1,ai)end
end
end
end
end
