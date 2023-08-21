-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Var,1.0"
T="Powerd"
S="ByMAKKI"
R="Cpl."
Q="ONLYCAN"
P="CUICS"
O="USE 1*1"

g=255
i=350
d=128
f=120
b=100
u=true
j=screen
A=property
v=math
C=v.abs
n=A.getText
w=j.drawRectF
E=j.drawCircleF
m=j.drawLine
h=j.drawClear
a=j.setColor
F=input.getBool
_=0
k=u
function onTick()if not A.getBool("StartUp Screen")then return end
if F(14)then
k=u
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
x=1
end
function onDraw()if not k then
if x==1 then
if _<60 then
a(0,0,0)h()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<f then
a(0,0,0)h()a(b,b,b)drawRectF((_-90)/60*d,15,(_-60)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)E(33,15,(_-f)*4)a(0,0,0)c(7,14,P)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,P)c(17,25,R)elseif _<410 then
a(10,10,10,g-e(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-e(_-i,0,60)/60*g)c(7,14,P)c(17,25,R)else
k=u
end
x=2
else
if _<60 then
a(0,0,0)h()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<f then
a(0,0,0)h()a(b,b,b)drawRectF((_-105)/60*d,15,(_-75)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)E(-1,15,(_-f)*4)a(0,0,0)c(7,14,P)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,U)c(1,19,T)c(2,25,S)elseif _<410 then
a(10,10,10,g-e(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-e(_-i,0,60)/60*g)c(3,3,U)c(1,19,T)c(2,25,S)end
end
a(b,b,b)j.drawRect(-1,-1,33,33)a(0,10,0)w(0,35,35,477)w(35,0,477,256)a(b,0,0)c(0,34,Q)c(0,40,O)c(34,2,Q)c(34,8,O)a(b,b,b)else
return
end
end
function c(I,J,l)local p,y,G,q,r
if type(l)=="number" then
l=tostring(l)end
y=n("F1")..n("F2")..n("F3")..n("F4")for t=1,l:len()do
p=l:sub(t,t):byte()*5-159
for o=1,5 do
G="0x"..y:sub(p,p+4):sub(o,o)for z=1,3 do
if G & 2^(4-z)>0 then
q=I+t*4+z-5
r=J+o-1
m(q,r,q+1,r)end
end
end
end
end
function drawRectF(B,D,M,H)w(B,D,C(B-M)+1,C(D-H)+1)end
function e(L,K,N)local s=v.min(v.max(L,K),N)if s~=s then
return 0
else
return s
end
end
