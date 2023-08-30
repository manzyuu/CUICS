-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1882 (2249 with comment) chars
W="ByMAKKI"
V="CUICS"
U="Cpl."
T="Powerd"
S="Var,1.0"

g=128
f=120
b=100
h=350
e=255
i=true
j=false
k=screen
H=property
t=math
J=t.abs
r=H.getText
I=k.drawCircleF
l=k.drawLine
a=k.setColor
q=input.getBool
do
_=0
n=j
m=j
s=i
O=H.getBool("Monitor Swap")p=j
end
function onTick()C=(q(1)or q(2))and s
if C and not m then
s=j
m=i
elseif C and m then
s=j
n=i
_=0
return
elseif m and not n then
_=_+1
end
if not(q(1)or q(2))then
s=i
end
output.setBool(1,n)p=j
end
function onDraw()if n then
return
else
local A=m and 10 or 0
a(A,A,A,e-d(_-h,0,60)/60*e)k.drawClear()end
if p~=O then
if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-90)/60*g,15,(_-60)/60*g,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,g)/16,d(_-f,0,g)/16,d(_-f,0,g)/16)I(33,15,(_-f)*4)a(0,0,0)c(7,14,V)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,V)c(17,25,U)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(7,14,V)c(17,25,U)else
n=i
end
p=i
else
if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-105)/60*g,15,(_-75)/60*g,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,g)/16,d(_-f,0,g)/16,d(_-f,0,g)/16)I(-1,15,(_-f)*4)a(0,0,0)c(7,14,V)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,S)c(1,19,T)c(2,25,W)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(3,3,S)c(1,19,T)c(2,25,W)end
p=i
end
end
function c(Q,K,o)local y,E,D,x,w
if type(o)=="number" then
o=tostring(o)end
E=r("F1")..r("F2")..r("F3")..r("F4")for v=1,o:len()do
y=o:sub(v,v):byte()*5-159
for z=1,5 do
D="0x"..E:sub(y,y+4):sub(z,z)for G=1,3 do
if D & 2^(4-G)>0 then
x=Q+v*4+G-5
w=K+z-1
l(x,w,x+1,w)end
end
end
end
end
function drawRectF(F,B,P,M)k.drawRectF(F,B,J(F-P)+1,J(B-M)+1)end
function d(R,L,N)local u=t.min(t.max(R,L),N)if u~=u then
return 0
else
return u
end
end
