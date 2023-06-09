-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Cpl."
T="USE 1*1"
S="ByMAKKI"
R="CUICS"
Q="Powerd"
P="ONLYCAN"
O="Var,1.0"

g=255
j=350
d=128
e=120
b=100
p=true
i=screen
C=property
q=math
D=q.abs
n=C.getText
o=i.drawRectF
G=i.drawCircleF
k=i.drawLine
h=i.drawClear
a=i.setColor
B=input.getBool
_=0
l=p
function onTick()if not C.getBool("StartUp Screen")then return end
if B(14)then
l=p
end
if B(13)then
l=false
end
if not l then
_=_+1
else
_=0
return
end
x=1
end
function onDraw()if not l then
if x==1 then
if _<60 then
a(0,0,0)h()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<e then
a(0,0,0)h()a(b,b,b)drawRectF((_-90)/60*d,15,(_-60)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-e,0,d)/16,f(_-e,0,d)/16,f(_-e,0,d)/16)G(33,15,(_-e)*4)a(0,0,0)c(7,14,R)elseif _<j then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,R)c(17,25,U)elseif _<410 then
a(10,10,10,g-f(_-j,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-j,0,60)/60*g)c(7,14,R)c(17,25,U)else
l=p
end
x=2
else
if _<60 then
a(0,0,0)h()a(b,b,b)k(0,0,32,32)k(0,32,32,0)elseif _<e then
a(0,0,0)h()a(b,b,b)drawRectF((_-105)/60*d,15,(_-75)/60*d,16)elseif _<245 then
a(0,0,0)h()a(b,b,b)a(f(_-e,0,d)/16,f(_-e,0,d)/16,f(_-e,0,d)/16)G(-1,15,(_-e)*4)a(0,0,0)c(7,14,R)elseif _<j then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,O)c(1,19,Q)c(2,25,S)elseif _<410 then
a(10,10,10,g-f(_-j,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-f(_-j,0,60)/60*g)c(3,3,O)c(1,19,Q)c(2,25,S)end
end
a(b,b,b)i.drawRect(-1,-1,33,33)a(0,10,0)o(0,35,35,477)o(35,0,477,256)a(b,0,0)c(0,34,P)c(0,40,T)c(34,2,P)c(34,8,T)a(b,b,b)else
return
end
end
function c(K,H,m)local u,F,E,t,w
if type(m)=="number" then
m=tostring(m)end
F=n("F1")..n("F2")..n("F3")..n("F4")for s=1,m:len()do
u=m:sub(s,s):byte()*5-159
for v=1,5 do
E="0x"..F:sub(u,u+4):sub(v,v)for z=1,3 do
if E & 2^(4-z)>0 then
t=K+s*4+z-5
w=H+v-1
k(t,w,t+1,w)end
end
end
end
end
function drawRectF(y,A,I,N)o(y,A,D(y-I)+1,D(A-N)+1)end
function f(J,L,M)local r=q.min(q.max(J,L),M)if r~=r then
return 0
else
return r
end
end
