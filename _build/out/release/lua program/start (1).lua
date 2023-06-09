-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="CUICS"
T="Cpl."
S="Var,1.0"
R="Powerd"
Q="ONLYCAN"
P="USE 1*1"
O="ByMAKKI"

g=255
i=350
e=128
f=120
b=100
p=true
h=screen
G=property
r=math
y=r.abs
n=G.getText
s=h.drawRectF
E=h.drawCircleF
k=h.drawLine
j=h.drawClear
a=h.setColor
C=input.getBool
_=0
l=p
function onTick()if not G.getBool("StartUp Screen")then return end
if C(14)then
l=p
end
if C(13)then
l=false
end
if not l then
_=_+1
else
_=0
return
end
D=1
end
function onDraw()if not l then
if D==1 then
if _<60 then
a(0,0,0)j()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<f then
a(0,0,0)j()a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)E(33,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,U)c(17,25,T)elseif _<410 then
a(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-i,0,60)/60*g)c(7,14,U)c(17,25,T)else
l=p
end
D=2
else
if _<60 then
a(0,0,0)j()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<f then
a(0,0,0)j()a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)E(-1,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,S)c(1,19,R)c(2,25,O)elseif _<410 then
a(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-i,0,60)/60*g)c(3,3,S)c(1,19,R)c(2,25,O)end
end
a(b,b,b)h.drawRect(-1,-1,33,33)a(0,10,0)s(0,35,35,477)s(35,0,477,256)a(b,0,0)c(0,34,Q)c(0,40,P)c(34,2,Q)c(34,8,P)a(b,b,b)else
return
end
end
function c(I,N,m)local u,B,x,q,w
if type(m)=="number" then
m=tostring(m)end
B=n("F1")..n("F2")..n("F3")..n("F4")for o=1,m:len()do
u=m:sub(o,o):byte()*5-159
for v=1,5 do
x="0x"..B:sub(u,u+4):sub(v,v)for z=1,3 do
if x & 2^(4-z)>0 then
q=I+o*4+z-5
w=N+v-1
k(q,w,q+1,w)end
end
end
end
end
function drawRectF(F,A,M,L)s(F,A,y(F-M)+1,y(A-L)+1)end
function d(H,K,J)local t=r.min(r.max(H,K),J)if t~=t then
return 0
else
return t
end
end
