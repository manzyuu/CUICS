-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="CUICS"
T="USE 1*1"
S="Powerd"
R="Var,1.0"
Q="Cpl."
P="ONLYCAN"
O="ByMAKKI"

g=255
h=350
d=128
f=120
b=100
u=true
i=screen
z=property
r=math
x=r.abs
n=z.getText
o=i.drawRectF
y=i.drawCircleF
m=i.drawLine
j=i.drawClear
a=i.setColor
A=input.getBool
_=0
k=u
function onTick()if not z.getBool("StartUp Screen")then return end
if A(14)then
k=u
end
if A(13)then
k=false
end
if not k then
_=_+1
else
_=0
return
end
E=1
end
function onDraw()if not k then
if E==1 then
if _<60 then
a(0,0,0)j()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<f then
a(0,0,0)j()a(b,b,b)drawRectF((_-90)/60*d,15,(_-60)/60*d,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)y(33,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,U)c(17,25,Q)elseif _<410 then
a(10,10,10,g-e(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-e(_-h,0,60)/60*g)c(7,14,U)c(17,25,Q)else
k=u
end
E=2
else
if _<60 then
a(0,0,0)j()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<f then
a(0,0,0)j()a(b,b,b)drawRectF((_-105)/60*d,15,(_-75)/60*d,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(e(_-f,0,d)/16,e(_-f,0,d)/16,e(_-f,0,d)/16)y(-1,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,R)c(1,19,S)c(2,25,O)elseif _<410 then
a(10,10,10,g-e(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-e(_-h,0,60)/60*g)c(3,3,R)c(1,19,S)c(2,25,O)end
end
a(b,b,b)i.drawRect(-1,-1,33,33)a(0,10,0)o(0,35,35,477)o(35,0,477,256)a(b,0,0)c(0,34,P)c(0,40,T)c(34,2,P)c(34,8,T)a(b,b,b)else
return
end
end
function c(L,M,l)local s,G,B,t,q
if type(l)=="number" then
l=tostring(l)end
G=n("F1")..n("F2")..n("F3")..n("F4")for v=1,l:len()do
s=l:sub(v,v):byte()*5-159
for p=1,5 do
B="0x"..G:sub(s,s+4):sub(p,p)for D=1,3 do
if B & 2^(4-D)>0 then
t=L+v*4+D-5
q=M+p-1
m(t,q,t+1,q)end
end
end
end
end
function drawRectF(C,F,N,I)o(C,F,x(C-N)+1,x(F-I)+1)end
function e(H,J,K)local w=r.min(r.max(H,J),K)if w~=w then
return 0
else
return w
end
end
