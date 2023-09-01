-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Powerd"
T="ByMAKKI"
S="CUICS"
R="Cpl."
Q="Var,1.0"
P="USE 1*1"
O="ONLYCAN"

g=255
j=350
e=128
d=120
b=100
q=true
h=screen
G=property
w=math
E=w.abs
n=G.getText
v=h.drawRectF
x=h.drawCircleF
l=h.drawLine
i=h.drawClear
a=h.setColor
F=input.getBool
_=0
k=q
function onTick()if not G.getBool("StartUp Screen")then return end
if F(14)then
k=q
end
if F(13)then
k=false
end
if not k then
_=_+1
else
_=0
return
end
B=1
end
function onDraw()if not k then
if B==1 then
if _<60 then
a(0,0,0)i()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<d then
a(0,0,0)i()a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(0,0,0)i()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)x(33,15,(_-d)*4)a(0,0,0)c(7,14,S)elseif _<j then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,S)c(17,25,R)elseif _<410 then
a(10,10,10,g-f(_-j,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-j,0,60)/60*g)c(7,14,S)c(17,25,R)else
k=q
end
B=2
else
if _<60 then
a(0,0,0)i()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<d then
a(0,0,0)i()a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(0,0,0)i()a(b,b,b)a(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)x(-1,15,(_-d)*4)a(0,0,0)c(7,14,S)elseif _<j then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,Q)c(1,19,U)c(2,25,T)elseif _<410 then
a(10,10,10,g-f(_-j,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-j,0,60)/60*g)c(3,3,Q)c(1,19,U)c(2,25,T)end
end
a(b,b,b)h.drawRect(-1,-1,33,33)a(0,10,0)v(0,35,35,477)v(35,0,477,256)a(b,0,0)c(0,34,O)c(0,40,P)c(34,2,O)c(34,8,P)a(b,b,b)else
return
end
end
function c(K,L,m)local t,C,y,r,u
if type(m)=="number" then
m=tostring(m)end
C=n("F1")..n("F2")..n("F3")..n("F4")for o=1,m:len()do
t=m:sub(o,o):byte()*5-159
for p=1,5 do
y="0x"..C:sub(t,t+4):sub(p,p)for z=1,3 do
if y & 2^(4-z)>0 then
r=K+o*4+z-5
u=L+p-1
l(r,u,r+1,u)end
end
end
end
end
function drawRectF(A,D,I,H)v(A,D,E(A-I)+1,E(D-H)+1)end
function f(N,M,J)local s=w.min(w.max(N,M),J)if s~=s then
return 0
else
return s
end
end
