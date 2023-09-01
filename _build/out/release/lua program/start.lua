-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1882 (2249 with comment) chars
W="Powerd"
V="ByMAKKI"
U="CUICS"
T="Cpl."
S="Var,1.0"

f=128
g=120
b=100
h=350
e=255
i=true
j=false
k=screen
B=property
v=math
F=v.abs
p=B.getText
H=k.drawCircleF
m=k.drawLine
a=k.setColor
s=input.getBool
do
_=0
n=j
o=j
r=i
Q=B.getBool("Monitor Swap")q=j
end
function onTick()I=(s(1)or s(2))and r
if I and not o then
r=j
o=i
elseif I and o then
r=j
n=i
_=0
return
elseif o and not n then
_=_+1
end
if not(s(1)or s(2))then
r=i
end
output.setBool(1,n)q=j
end
function onDraw()if n then
return
else
local A=o and 10 or 0
a(A,A,A,e-d(_-h,0,60)/60*e)k.drawClear()end
if q~=Q then
if _<60 and _>1 then
a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<g then
a(b,b,b)drawRectF((_-90)/60*f,15,(_-60)/60*f,16)elseif _<245 then
a(b,b,b)a(d(_-g,0,f)/16,d(_-g,0,f)/16,d(_-g,0,f)/16)H(33,15,(_-g)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,U)c(17,25,T)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(7,14,U)c(17,25,T)else
n=i
end
q=i
else
if _<60 and _>1 then
a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<g then
a(b,b,b)drawRectF((_-105)/60*f,15,(_-75)/60*f,16)elseif _<245 then
a(b,b,b)a(d(_-g,0,f)/16,d(_-g,0,f)/16,d(_-g,0,f)/16)H(-1,15,(_-g)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,S)c(1,19,W)c(2,25,V)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(3,3,S)c(1,19,W)c(2,25,V)end
q=i
end
end
function c(K,R,l)local y,E,G,w,u
if type(l)=="number" then
l=tostring(l)end
E=p("F1")..p("F2")..p("F3")..p("F4")for x=1,l:len()do
y=l:sub(x,x):byte()*5-159
for t=1,5 do
G="0x"..E:sub(y,y+4):sub(t,t)for C=1,3 do
if G & 2^(4-C)>0 then
w=K+x*4+C-5
u=R+t-1
m(w,u,w+1,u)end
end
end
end
end
function drawRectF(D,J,O,L)k.drawRectF(D,J,F(D-O)+1,F(J-L)+1)end
function d(N,M,P)local z=v.min(v.max(N,M),P)if z~=z then
return 0
else
return z
end
end
