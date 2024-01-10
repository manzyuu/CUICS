-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Powerd"
T="CUICS"
S="Var,1.0"
R="USE 1*1"
Q="ONLYCAN"
P="Cpl."
O="ByMAKKI"

g=255
i=350
e=128
d=120
b=100
v=true
h=screen
A=property
q=math
B=q.abs
n=A.getText
r=h.drawRectF
D=h.drawCircleF
l=h.drawLine
j=h.drawClear
a=h.setColor
y=input.getBool
_=0
k=v
function onTick()if not A.getBool("StartUp Screen")then return end
if y(14)then
k=v
end
if y(13)then
k=false
end
if not k then
_=_+1
else
_=0
return
end
G=1
end
function onDraw()if not k then
if G==1 then
if _<60 then
a(0,0,0)j()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<d then
a(0,0,0)j()a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)D(33,15,(_-d)*4)a(0,0,0)c(7,14,T)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,T)c(17,25,P)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(7,14,T)c(17,25,P)else
k=v
end
G=2
else
if _<60 then
a(0,0,0)j()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<d then
a(0,0,0)j()a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)D(-1,15,(_-d)*4)a(0,0,0)c(7,14,T)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,S)c(1,19,U)c(2,25,O)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(3,3,S)c(1,19,U)c(2,25,O)end
end
a(b,b,b)h.drawRect(-1,-1,33,33)a(0,10,0)r(0,35,35,477)r(35,0,477,256)a(b,0,0)c(0,34,Q)c(0,40,R)c(34,2,Q)c(34,8,R)a(b,b,b)else
return
end
end
function c(J,M,m)local o,F,C,u,s
if type(m)=="number" then
m=tostring(m)end
F=n("F1")..n("F2")..n("F3")..n("F4")for t=1,m:len()do
o=m:sub(t,t):byte()*5-159
for p=1,5 do
C="0x"..F:sub(o,o+4):sub(p,p)for z=1,3 do
if C & 2^(4-z)>0 then
u=J+t*4+z-5
s=M+p-1
l(u,s,u+1,s)end
end
end
end
end
function drawRectF(x,E,I,N)r(x,E,B(x-I)+1,B(E-N)+1)end
function f(K,H,L)local w=q.min(q.max(K,H),L)if w~=w then
return 0
else
return w
end
end
