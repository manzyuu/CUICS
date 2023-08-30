-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Cpl."
T="ByMAKKI"
S="CUICS"
R="ONLYCAN"
Q="Powerd"
P="Var,1.0"
O="USE 1*1"

g=255
i=350
f=128
e=120
b=100
r=true
h=screen
D=property
s=math
x=s.abs
n=D.getText
t=h.drawRectF
G=h.drawCircleF
l=h.drawLine
j=h.drawClear
a=h.setColor
z=input.getBool
_=0
k=r
function onTick()if not D.getBool("StartUp Screen")then return end
if z(14)then
k=r
end
if z(13)then
k=false
end
if not k then
_=_+1
else
_=0
return
end
C=1
end
function onDraw()if not k then
if C==1 then
if _<60 then
a(0,0,0)j()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<e then
a(0,0,0)j()a(b,b,b)drawRectF((_-90)/60*f,15,(_-60)/60*f,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)G(33,15,(_-e)*4)a(0,0,0)c(7,14,S)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,S)c(17,25,U)elseif _<410 then
a(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-i,0,60)/60*g)c(7,14,S)c(17,25,U)else
k=r
end
C=2
else
if _<60 then
a(0,0,0)j()a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<e then
a(0,0,0)j()a(b,b,b)drawRectF((_-105)/60*f,15,(_-75)/60*f,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)G(-1,15,(_-e)*4)a(0,0,0)c(7,14,S)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,P)c(1,19,Q)c(2,25,T)elseif _<410 then
a(10,10,10,g-d(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-i,0,60)/60*g)c(3,3,P)c(1,19,Q)c(2,25,T)end
end
a(b,b,b)h.drawRect(-1,-1,33,33)a(0,10,0)t(0,35,35,477)t(35,0,477,256)a(b,0,0)c(0,34,R)c(0,40,O)c(34,2,R)c(34,8,O)a(b,b,b)else
return
end
end
function c(I,H,m)local w,A,y,p,u
if type(m)=="number" then
m=tostring(m)end
A=n("F1")..n("F2")..n("F3")..n("F4")for v=1,m:len()do
w=m:sub(v,v):byte()*5-159
for q=1,5 do
y="0x"..A:sub(w,w+4):sub(q,q)for F=1,3 do
if y & 2^(4-F)>0 then
p=I+v*4+F-5
u=H+q-1
l(p,u,p+1,u)end
end
end
end
end
function drawRectF(E,B,K,L)t(E,B,x(E-K)+1,x(B-L)+1)end
function d(J,M,N)local o=s.min(s.max(J,M),N)if o~=o then
return 0
else
return o
end
end
