-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="CUICS"
T="Var,1.0"
S="Cpl."
R="Powerd"
Q="ONLYCAN"
P="USE 1*1"
O="ByMAKKI"

g=255
i=350
d=128
e=120
b=100
p=true
j=screen
F=property
r=math
E=r.abs
n=F.getText
t=j.drawRectF
C=j.drawCircleF
k=j.drawLine
h=j.drawClear
a=j.setColor
D=input.getBool
_=0
m=p
function onTick()if not F.getBool("StartUp Screen")then return end
if D(14)then
m=p
end
if D(13)then
m=false
end
if not m then
_=_+1
else
_=0
return
end
G=1
end
function onDraw()if not m then
if G==1 then
if _<60 then
a(0,0,0)h()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<e then
a(0,0,0)h()a(b,b,b)drawRectF((_-90)/60*d,15,(_-60)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-e,0,d)/16,f(_-e,0,d)/16,f(_-e,0,d)/16)C(33,15,(_-e)*4)a(0,0,0)c(7,14,U)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,U)c(17,25,S)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(7,14,U)c(17,25,S)else
m=p
end
G=2
else
if _<60 then
a(0,0,0)h()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<e then
a(0,0,0)h()a(b,b,b)drawRectF((_-105)/60*d,15,(_-75)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-e,0,d)/16,f(_-e,0,d)/16,f(_-e,0,d)/16)C(-1,15,(_-e)*4)a(0,0,0)c(7,14,U)elseif _<i then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,T)c(1,19,R)c(2,25,O)elseif _<410 then
a(10,10,10,g-f(_-i,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-i,0,60)/60*g)c(3,3,T)c(1,19,R)c(2,25,O)end
end
a(b,b,b)j.drawRect(-1,-1,33,33)a(0,10,0)t(0,35,35,477)t(35,0,477,256)a(b,0,0)c(0,34,Q)c(0,40,P)c(34,2,Q)c(34,8,P)a(b,b,b)else
return
end
end
function c(J,H,l)local q,A,z,o,s
if type(l)=="number" then
l=tostring(l)end
A=n("F1")..n("F2")..n("F3")..n("F4")for v=1,l:len()do
q=l:sub(v,v):byte()*5-159
for w=1,5 do
z="0x"..A:sub(q,q+4):sub(w,w)for y=1,3 do
if z & 2^(4-y)>0 then
o=J+v*4+y-5
s=H+w-1
k(o,s,o+1,s)end
end
end
end
end
function drawRectF(B,x,M,I)t(B,x,E(B-M)+1,E(x-I)+1)end
function f(K,N,L)local u=r.min(r.max(K,N),L)if u~=u then
return 0
else
return u
end
end
