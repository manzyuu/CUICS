-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 2361 (2728 with comment) chars

e=false
g=true
af=input
n=math
k=screen
K=property
x=K.getText
V=k.drawText
ac=k.drawRect
N=k.drawLine
ae=k.drawRectF
t=k.setColor
ag=map.mapToScreen
O=n.max
A=n.min
L=n.floor
a=af.getNumber
Q=af.getBool
do
J=10000
av=g
as=K.getBool("Monitor Swap")E=e
H=e
M=1
l=K.getNumber("Passcode")o,p=0,0
h,m=1,10
j={}f={}f.i=1
f.ap=e
_={}_.aa={}_.T={}_.X={}_.ah={}_.r={}_.q={}_.F={}_.ai={}_.ak={}_.W={}_.Y={}b={0,0,0,0,0,0,0,0}U=g
d={}d.s=e
aA=1
end
function onTick()do
d.y=Q(1)H=not H
output.setBool(32,H)_.ah[b[f.i]]=a(1)or 0
_.r[b[f.i]]=a(1)==l and a(2)or 0
_.q[b[f.i]]=a(1)==l and a(3)or 0
_.F[b[f.i]]=a(1)==l and a(4)or 0
_.ai[b[f.i]]=a(1)==l and a(5)or 0
_.ak[b[f.i]]=a(1)==l and a(6)or 0
_.W[b[f.i]]=a(1)==l and a(7)or 0
_.Y[b[f.i]]=a(1)==l and a(8)or 0
j.v=a(9)j.B=a(10)j.G=a(11)j.ay=a(12)j.az=a(13)aw=a(14)ax=a(15)d.r=a(18)d.q=a(19)M=a(23)if not d.y then
f.aB=a(20)f.ap=Q(20)for c=1,8,1 do
b[c]=L(a(24+c))%J and L(a(24+c))%J or 0
if 0<b[c]then
local I=L(a(24+c)/J)_.aa[b[c]]=I & 1==1
_.T[b[c]]=I & 2==2
_.X[b[c]]=I & 4==4
end
end
end
end
do
if M==1 then
if D(0,0,5,5,g)then
d.s=g
h=h-1
end
if D(0,6,5,5,g)then
d.s=g
h=h+1
end
h=A(O(h,1),22)m=A(h-5,0)/5+A(O(h-4,1),10)+A(O(h-14,0),8)*5
if D(13,13,6,6,e)or(U and j.v~=0)then
U=e
d.s=g
o,p=j.v,j.B
elseif d.y and not D(0,0,5,11,e)then
o=(d.r-16)*m/2+o
p=-(d.q-16)*m/2+p
end
end
end
E=e
end
function onDraw()if E~=as then
E=g
else
E=g
if M==1 then
k.drawMap(o,p,m)ao(0,26,m)for c=1,8,1 do
if _.aa[b[c]]and b[c]~=0 then
local z,C=ag(o,p,m,32,32,_.r[b[c]],_.q[b[c]])t(150,50,150)ae(z-1,C,3,3)if _.T[b[c]]then
_.F[b[c]]=_.F[b[c]]or 0
local G=((_.F[b[c]]+1.75)%1-.5)*2*n.pi
N(z,C,n.sin(G)*8+z,-n.cos(G)*8+C)end
if _.X[b[c]]then
local al,at=ag(o,p,m,32,32,_.W[b[c]],_.Y[b[c]])t(150,150,100)N(z,C,al,at)end
end
end
t(5,5,5)ae(0,0,5,10)t(20,20,20)ac(0,0,4,4)ac(0,5,4,4)t(255,255,255)V(1,0,"+")V(1,5,"-")k.drawCircle(16,16,4)end
end
end
function D(v,B,aj,am,Z)local w=e
if v<=d.r and
v+aj>=d.r and
B<=d.q and
B+am>=d.q and
d.y then
if not d.s and Z then
w=g
elseif not Z then
w=g
end
elseif not d.y then
d.s=e
w=e
else
w=e
end
return w
end
function ao(ar,an,u)if type(u)=="number" then
u=tostring(u)end
au=x("F1")..x("F2")..x("F3")..x("F4")for c=1,u:len()do
ab=u:sub(c,c):byte()*5-159
for P=1,5 do
aq="0x"..au:sub(ab,ab+4):sub(P,P)for S=1,3 do
if aq & 2^(4-S)>0 then
ad=ar+c*4+S-5
R=an+P-1
N(ad,R,ad+1,R)end
end
end
end
end
