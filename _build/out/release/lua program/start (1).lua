-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="ByMAKKI"
T="Var,1.0"
S="Powerd"
R="CUICS"
Q="ONLYCAN"
P="USE 1*1"
O="Cpl."

g=255
i=350
e=128
d=120
b=100
u=true
j=screen
C=property
p=math
G=p.abs
n=C.getText
v=j.drawRectF
z=j.drawCircleF
m=j.drawLine
h=j.drawClear
a=j.setColor
B=input.getBool
_=0
k=u
function onTick()if not C.getBool("StartUp Screen")then return end
if B(14)then
k=u
end
if B(13)then
k=false
end
if not k then
_=_+1
else
_=0
return
end
A=1
end
function onDraw()if not k then
if A==1 then
if _<60 then
a(0,0,0)h()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<d then
a(0,0,0)h()a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)z(33,15,(_-d)*4)a(0,0,0)c(7,14,R)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,R)c(17,25,O)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(7,14,R)c(17,25,O)else
k=u
end
A=2
else
if _<60 then
a(0,0,0)h()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<d then
a(0,0,0)h()a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)z(-1,15,(_-d)*4)a(0,0,0)c(7,14,R)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,T)c(1,19,S)c(2,25,U)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(3,3,T)c(1,19,S)c(2,25,U)end
end
a(b,b,b)j.drawRect(-1,-1,33,33)a(0,10,0)v(0,35,35,477)v(35,0,477,256)a(b,0,0)c(0,34,Q)c(0,40,P)c(34,2,Q)c(34,8,P)a(b,b,b)else
return
end
end
function c(J,N,l)local q,F,E,s,r
if type(l)=="number" then
l=tostring(l)end
F=n("F1")..n("F2")..n("F3")..n("F4")for w=1,l:len()do
q=l:sub(w,w):byte()*5-159
for o=1,5 do
E="0x"..F:sub(q,q+4):sub(o,o)for x=1,3 do
if E & 2^(4-x)>0 then
s=J+w*4+x-5
r=N+o-1
m(s,r,s+1,r)end
end
end
end
end
function drawRectF(D,y,L,K)v(D,y,G(D-L)+1,G(y-K)+1)end
function f(I,M,H)local t=p.min(p.max(I,M),H)if t~=t then
return 0
else
return t
end
end
