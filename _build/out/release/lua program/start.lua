-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1956 (2323 with comment) chars
Y="ByMAKKI"
X="Var,1.0"
W="Powerd"
V="CUICS"
U="Cpl."

e=128
f=120
b=100
h=350
g=255
i=true
n=false
o=screen
K=property
A=math
M=A.abs
r=K.getText
I=o.drawCircleF
l=o.drawLine
a=o.setColor
p=input.getBool
do
_=0
k=n
j=n
q=i
L=K.getBool("Monitor Swap")w=i
end
function onTick()F=(p(1)or p(2))and q
if F and not j then
q=n
j=i
elseif F and j then
q=n
k=i
_=0
return
elseif j and not k then
_=_+1
end
if not(p(1)or p(2))then
q=i
end
output.setBool(1,k)end
function onDraw()if k then
return
else
local v=j and 10 or 0
a(v,v,v,g-d(_-h,0,60)/60*g)o.drawClear()end
if w then
if L then
E()else
C()end
w=n
else
if L then
C()else
E()end
w=i
end
k=_>410
end
function C()if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)I(33,15,(_-f)*4)a(0,0,0)c(7,14,V)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,V)c(17,25,U)elseif _<410 then
a(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-h,0,60)/60*g)c(7,14,V)c(17,25,U)end
end
function E()if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,e)/16,d(_-f,0,e)/16,d(_-f,0,e)/16)I(-1,15,(_-f)*4)a(0,0,0)c(7,14,V)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,X)c(1,19,W)c(2,25,Y)elseif _<410 then
a(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-h,0,60)/60*g)c(3,3,X)c(1,19,W)c(2,25,Y)end
end
function c(R,P,m)local y,B,H,u,z
if type(m)=="number" then
m=tostring(m)end
B=r("F1")..r("F2")..r("F3")..r("F4")for x=1,m:len()do
y=m:sub(x,x):byte()*5-159
for s=1,5 do
H="0x"..B:sub(y,y+4):sub(s,s)for G=1,3 do
if H & 2^(4-G)>0 then
u=R+x*4+G-5
z=P+s-1
l(u,z,u+1,z)end
end
end
end
end
function drawRectF(D,J,S,T)o.drawRectF(D,J,M(D-S)+1,M(J-T)+1)end
function d(Q,N,O)local t=A.min(A.max(Q,N),O)if t~=t then
return 0
else
return t
end
end
