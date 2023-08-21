-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1808 (2175 with comment) chars
S="Var,1.0"
R="Powerd"
Q="ByMAKKI"
P="Cpl."
O="ONLYCAN"
N="CUICS"
M="USE 1*1"

g=255
i=350
e=128
f=120
a=100
z=true
h=screen
u=math
D=u.abs
l=property.getText
v=h.drawRectF
E=h.drawCircleF
j=h.drawLine
b=h.setColor
p=input.getBool
_=0
_=0
m=false
function onTick()if p(1)or p(2)or not p(3)then
m=z
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
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<f then
b(a,a,a)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
b(a,a,a)b(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)E(33,15,(_-f)*4)b(0,0,0)c(7,14,N)elseif _<i then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(7,14,N)c(17,25,P)elseif _<410 then
b(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-i,0,60)/60*g)c(7,14,N)c(17,25,P)else
m=z
end
A=2
else
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<f then
b(a,a,a)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
b(a,a,a)b(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)E(-1,15,(_-f)*4)b(0,0,0)c(7,14,N)elseif _<i then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(3,3,S)c(1,19,R)c(2,25,Q)elseif _<410 then
b(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-i,0,60)/60*g)c(3,3,S)c(1,19,R)c(2,25,Q)end
end
b(a,a,a)h.drawRect(-1,-1,33,33)b(0,10,0)v(0,35,35,477)v(35,0,477,256)b(a,0,0)c(0,34,O)c(0,40,M)c(34,2,O)c(34,8,M)b(a,a,a)if m then
h.drawClear()end
end
function c(H,K,k)local r,x,w,n,o
if type(k)=="number" then
k=tostring(k)end
x=l("F1")..l("F2")..l("F3")..l("F4")for t=1,k:len()do
r=k:sub(t,t):byte()*5-159
for q=1,5 do
w="0x"..x:sub(r,r+4):sub(q,q)for y=1,3 do
if w & 2^(4-y)>0 then
n=H+t*4+y-5
o=K+q-1
j(n,o,n+1,o)end
end
end
end
end
function drawRectF(C,B,I,L)v(C,B,D(C-I)+1,D(B-L)+1)end
function d(J,G,F)local s=u.min(u.max(J,G),F)if s~=s then
return 0
else
return s
end
end
