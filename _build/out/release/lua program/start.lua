-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1956 (2323 with comment) chars
Y="Powerd"
X="CUICS"
W="Var,1.0"
V="Cpl."
U="ByMAKKI"

e=128
g=120
b=100
h=350
f=255
i=true
m=false
l=screen
E=property
u=math
M=u.abs
p=E.getText
D=l.drawCircleF
o=l.drawLine
a=l.setColor
q=input.getBool
do
_=0
n=m
k=m
r=i
G=E.getBool("Monitor Swap")y=i
end
function onTick()K=(q(1)or q(2))and r
if K and not k then
r=m
k=i
elseif K and k then
r=m
n=i
_=0
return
elseif k and not n then
_=_+1
end
if not(q(1)or q(2))then
r=i
end
output.setBool(1,n)end
function onDraw()if n then
return
else
local t=k and 10 or 0
a(t,t,t,f-d(_-h,0,60)/60*f)l.drawClear()end
if y then
if G then
F()else
C()end
y=m
else
if G then
C()else
F()end
y=i
end
n=_>410
end
function C()if _<60 and _>1 then
a(b,b,b)o(0,0,32,32)o(0,32,32,0)elseif _<g then
a(b,b,b)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
a(b,b,b)a(d(_-g,0,e)/16,d(_-g,0,e)/16,d(_-g,0,e)/16)D(33,15,(_-g)*4)a(0,0,0)c(7,14,X)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,X)c(17,25,V)elseif _<410 then
a(10,10,10,f-d(_-h,0,60)/60*f)drawRectF(0,0,32,32)a(0,0,0,f-d(_-h,0,60)/60*f)c(7,14,X)c(17,25,V)end
end
function F()if _<60 and _>1 then
a(b,b,b)o(0,0,32,32)o(0,32,32,0)elseif _<g then
a(b,b,b)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
a(b,b,b)a(d(_-g,0,e)/16,d(_-g,0,e)/16,d(_-g,0,e)/16)D(-1,15,(_-g)*4)a(0,0,0)c(7,14,X)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,W)c(1,19,Y)c(2,25,U)elseif _<410 then
a(10,10,10,f-d(_-h,0,60)/60*f)drawRectF(0,0,32,32)a(0,0,0,f-d(_-h,0,60)/60*f)c(3,3,W)c(1,19,Y)c(2,25,U)end
end
function c(R,P,j)local s,I,L,w,A
if type(j)=="number" then
j=tostring(j)end
I=p("F1")..p("F2")..p("F3")..p("F4")for v=1,j:len()do
s=j:sub(v,v):byte()*5-159
for z=1,5 do
L="0x"..I:sub(s,s+4):sub(z,z)for B=1,3 do
if L & 2^(4-B)>0 then
w=R+v*4+B-5
A=P+z-1
o(w,A,w+1,A)end
end
end
end
end
function drawRectF(H,J,N,Q)l.drawRectF(H,J,M(H-N)+1,M(J-Q)+1)end
function d(O,T,S)local x=u.min(u.max(O,T),S)if x~=x then
return 0
else
return x
end
end
