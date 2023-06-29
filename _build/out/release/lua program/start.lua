-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1808 (2175 with comment) chars
S="CUICS"
R="Var,1.0"
Q="Cpl."
P="Powerd"
O="ONLYCAN"
N="USE 1*1"
M="ByMAKKI"

g=255
h=350
d=128
f=120
a=100
w=true
i=screen
n=math
D=n.abs
l=property.getText
r=i.drawRectF
z=i.drawCircleF
k=i.drawLine
b=i.setColor
t=input.getBool
_=0
_=0
m=false
function onTick()if t(1)or t(2)or not t(3)then
m=w
_=0
return
else
_=_+1
end
A=1
end
function onDraw()if m then
return
end
if A==1 then
if _<60 then
b(a,a,a)k(0,0,32,32)k(0,32,32,0)elseif _<f then
b(a,a,a)drawRectF((_-90)/60*d,15,(_-60)/60*d,16)elseif _<245 then
b(a,a,a)b(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)z(33,15,(_-f)*4)b(0,0,0)c(7,14,S)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(7,14,S)c(17,25,Q)elseif _<410 then
b(10,10,10,g-e(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-e(_-h,0,60)/60*g)c(7,14,S)c(17,25,Q)else
m=w
end
A=2
else
if _<60 then
b(a,a,a)k(0,0,32,32)k(0,32,32,0)elseif _<f then
b(a,a,a)drawRectF((_-105)/60*d,15,(_-75)/60*d,16)elseif _<245 then
b(a,a,a)b(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)z(-1,15,(_-f)*4)b(0,0,0)c(7,14,S)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(3,3,R)c(1,19,P)c(2,25,M)elseif _<410 then
b(10,10,10,g-e(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-e(_-h,0,60)/60*g)c(3,3,R)c(1,19,P)c(2,25,M)end
end
b(a,a,a)i.drawRect(-1,-1,33,33)b(0,10,0)r(0,35,35,477)r(35,0,477,256)b(a,0,0)c(0,34,O)c(0,40,N)c(34,2,O)c(34,8,N)b(a,a,a)if m then
i.drawClear()end
end
function c(I,L,j)local o,x,C,p,q
if type(j)=="number" then
j=tostring(j)end
x=l("F1")..l("F2")..l("F3")..l("F4")for v=1,j:len()do
o=j:sub(v,v):byte()*5-159
for u=1,5 do
C="0x"..x:sub(o,o+4):sub(u,u)for y=1,3 do
if C & 2^(4-y)>0 then
p=I+v*4+y-5
q=L+u-1
k(p,q,p+1,q)end
end
end
end
end
function drawRectF(B,E,G,H)r(B,E,D(B-G)+1,D(E-H)+1)end
function e(K,F,J)local s=n.min(n.max(K,F),J)if s~=s then
return 0
else
return s
end
end
