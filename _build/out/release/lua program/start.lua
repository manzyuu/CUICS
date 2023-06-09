-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1808 (2175 with comment) chars
S="CUICS"
R="Cpl."
Q="ONLYCAN"
P="Powerd"
O="USE 1*1"
N="ByMAKKI"
M="Var,1.0"

g=255
i=350
f=128
e=120
a=100
w=true
h=screen
q=math
D=q.abs
m=property.getText
n=h.drawRectF
x=h.drawCircleF
j=h.drawLine
b=h.setColor
s=input.getBool
_=0
_=0
l=false
function onTick()if s(1)or s(2)or not s(3)then
l=w
_=0
return
else
_=_+1
end
E=1
end
function onDraw()if l then
return
end
if E==1 then
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<e then
b(a,a,a)drawRectF((_-90)/60*f,15,(_-60)/60*f,16)elseif _<245 then
b(a,a,a)b(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)x(33,15,(_-e)*4)b(0,0,0)c(7,14,S)elseif _<i then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(7,14,S)c(17,25,R)elseif _<410 then
b(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-i,0,60)/60*g)c(7,14,S)c(17,25,R)else
l=w
end
E=2
else
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<e then
b(a,a,a)drawRectF((_-105)/60*f,15,(_-75)/60*f,16)elseif _<245 then
b(a,a,a)b(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)x(-1,15,(_-e)*4)b(0,0,0)c(7,14,S)elseif _<i then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(3,3,M)c(1,19,P)c(2,25,N)elseif _<410 then
b(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-i,0,60)/60*g)c(3,3,M)c(1,19,P)c(2,25,N)end
end
b(a,a,a)h.drawRect(-1,-1,33,33)b(0,10,0)n(0,35,35,477)n(35,0,477,256)b(a,0,0)c(0,34,Q)c(0,40,O)c(34,2,Q)c(34,8,O)b(a,a,a)if l then
h.drawClear()end
end
function c(I,L,k)local t,z,B,v,o
if type(k)=="number" then
k=tostring(k)end
z=m("F1")..m("F2")..m("F3")..m("F4")for r=1,k:len()do
t=k:sub(r,r):byte()*5-159
for p=1,5 do
B="0x"..z:sub(t,t+4):sub(p,p)for A=1,3 do
if B & 2^(4-A)>0 then
v=I+r*4+A-5
o=L+p-1
j(v,o,v+1,o)end
end
end
end
end
function drawRectF(C,y,K,J)n(C,y,D(C-K)+1,D(y-J)+1)end
function d(F,G,H)local u=q.min(q.max(F,G),H)if u~=u then
return 0
else
return u
end
end
