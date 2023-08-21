-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3349 (3716 with comment) chars
aC="+"
aB="%04d"

i=255
n=false
c=true
X=input
V=output
u=screen
Q=property
E=Q.getText
s=u.drawRectF
I=string.format
t=u.drawText
O=u.drawTriangleF
p=u.drawLine
g=u.setColor
D=V.setNumber
N=V.setBool
T=math.floor
k=X.getNumber
F=X.getBool
do
R=10000
az=c
an=Q.getBool("Monitor Swap")C=n
J=2
ax=Q.getNumber("Passcode")as,ay=0,0
au,aw=1,10
A={}f={}f.q=1
f.v=n
e={}e.w={}e.B={}e.z={}e.S={}b={0,0,0,0,0,0,0,0}aA=c
d={}d.o=n
h=1
end
function onTick()do
d.G=F(1)ad=not ad
e.S[b[f.q]]=not F(32)and k(1)or e.S[b[f.q]]A.H=k(9)A.K=k(10)A.ar=k(11)A.av=k(12)A.at=k(13)af=k(14)L=k(15)d.ab=k(18)d.Y=k(19)J=k(23)if not d.G then
f.P=k(20)f.v=F(20)for _=1,8,1 do
b[_]=T(k(24+_))%R or 0
if 0~=b[_]then
local M=T(k(24+_)/R)e.w[b[_]]=M & 1==1
e.B[b[_]]=M & 2==2
e.z[b[_]]=M & 4==4
end
end
end
for _=1,7,1 do
if b[_]==0 and b[_+1]~=0 then
for l=_,7,1 do
b[l]=b[l+1]end
end
for l=1,8,1 do
if _~=l and b[_]==b[l]and _<l then
b[l]=0
elseif _~=l and b[_]==b[l]and _>l then
b[_]=0
end
end
end
end
do
if J==2 then
if m(27,20,5,5,c)and h<7 then
d.o=c
h=h+2
elseif m(27,14,5,5,c)and h>1 then
d.o=c
h=h-2
end
if m(27,0,5,6,c)and af~=0 then
d.o=c
f.P=af
end
if m(27,7,5,5,c)then
for _=1,8,1 do
if b[_]==L then
d.o=c
break
end
if b[_]==0
and L~=0 then
d.o=c
b[_]=L
e.w[b[_]]=c
break
end
end
end
for _=0,1,1 do
if m(2,14+_*12,5,5,c)and b[h+_]~=0 then
d.o=c
e.w[b[h+_]]=not e.w[b[h+_]]end
if m(8,14+_*12,5,5,c)then
d.o=c
e.B[b[h+_]]=not e.B[b[h+_]]end
if m(14,14+_*12,5,5,c)then
d.o=c
e.z[b[h+_]]=not e.z[b[h+_]]end
if m(0,8+_*12,5,5,c)then
d.o=c
b[h+_]=0
end
end
if m(27,27,5,5,c)then
d.o=c
f.v=not f.v
end
end
end
do
N(20,f.v)N(31,d.G)N(32,ad)D(17,h)f.q=F(32)and f.q+1 or f.q
f.q=f.q+1==9 and 1 or f.q
D(20,f.P)D(21,b[f.q])for _=1,8,1 do
local am=e.w[b[_]]and 1 or 0
local aq=e.B[b[_]]and 2 or 0
local aj=e.z[b[_]]and 4 or 0
D(24+_,(b[_]+(am+aq+aj)*R))end
end
C=n
end
function onDraw()if C~=an then
C=c
else
C=c
if J==2 then
local a=0
g(10,10,10)u.drawClear()g(30,30,30)p(0,6,32,6)g(i,i,i)O(2,1,0,4,5,4)p(2,4,2,6)a=f.v and i or 80
g(a,a,a)t(6,1,I(aB,f.P//1))g(25,25,25)s(27,0,5,6)a=m(27,0,5,6,n)and i or 50
g(a,a,a)t(28,2,"^")g(25,25,25)s(27,14,5,5)s(27,20,5,5)s(27,7,5,5)s(27,27,5,5)a=m(27,7,5,5,n)and i or 50
g(a,a,a)t(28,7,aC)a=m(27,14,5,5,n)and i or 50
g(a,a,a)O(29,15,27,18,32,18)a=m(27,20,5,5,n)and i or 50
g(a,a,a)O(29,25,26,21,32,21)a=f.v and i or 50
g(a,a,a)p(28,29,28,31)p(29,28,31,28)p(30,30,30,31)ae(b[h],0)ae(b[h+1],1)g(100,100,100)U(22,27,I("%01d",h%2+h//2))end
end
end
function ae(r,j)local a=0
j=j*12
a=r~=0 and 150 or 45
g(a,a,a)if e.S[r]==4000 and r~=0 then
g(50,i,50)end
t(6,8+j,I(aB,r//1))g(25,25,25)for _=0,2,1 do
s(2+6*_,14+j,5,5)end
a=r~=0 and i or 80
s(0,8+j,5,5)g(i,i,i)t(1,8+j,"-")a=e.w[r]and i or 50
g(a,a,a)U(3,13+j,"v")a=e.B[r]and i or 50
g(a,a,a)p(9,15+j,11,15+j)p(11,16+j,11,17+j)p(9,17+j,11,17+j)p(9,16+j,9,17+j)a=e.z[r]and i or 50
g(a,a,a)t(15,14+j,aC)end
function m(H,K,ai,ak,ac)local x=n
if H<=d.ab and
H+ai>=d.ab and
K<=d.Y and
K+ak>=d.Y and
d.G then
if not d.o and ac then
x=c
elseif not ac then
x=c
end
elseif not d.G then
d.o=n
x=n
else
x=n
end
return x
end
function U(al,ap,y)if type(y)=="number" then
y=tostring(y)end
ah=E("F1")..E("F2")..E("F3")..E("F4")for _=1,y:len()do
aa=y:sub(_,_):byte()*5-159
for l=1,5 do
ao="0x"..ah:sub(aa,aa+4):sub(l,l)for Z=1,3 do
if ao & 2^(4-Z)>0 then
W=al+_*4+Z-5
ag=ap+l-1
p(W,ag,W+1,ag)end
end
end
end
end
