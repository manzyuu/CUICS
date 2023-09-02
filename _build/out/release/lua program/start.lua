-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1882 (2249 with comment) chars
W="Powerd"
V="Var,1.0"
U="CUICS"
T="Cpl."
S="ByMAKKI"

g=128
f=120
b=100
h=350
e=255
i=true
j=false
m=screen
J=property
A=math
C=A.abs
q=J.getText
B=m.drawCircleF
l=m.drawLine
a=m.setColor
s=input.getBool
do
_=0
n=j
k=j
p=i
K=J.getBool("Monitor Swap")r=j
end
function onTick()E=(s(1)or s(2))and p
if E and not k then
p=j
k=i
elseif E and k then
p=j
n=i
_=0
return
elseif k and not n then
_=_+1
end
if not(s(1)or s(2))then
p=i
end
output.setBool(1,n)r=j
end
function onDraw()if n then
return
else
local z=k and 10 or 0
a(z,z,z,e-d(_-h,0,60)/60*e)m.drawClear()end
if r~=K then
if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-90)/60*g,15,(_-60)/60*g,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,g)/16,d(_-f,0,g)/16,d(_-f,0,g)/16)B(33,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,U)c(17,25,T)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(7,14,U)c(17,25,T)else
n=i
end
r=i
else
if _<60 and _>1 then
a(b,b,b)l(0,0,32,32)l(0,32,32,0)elseif _<f then
a(b,b,b)drawRectF((_-105)/60*g,15,(_-75)/60*g,16)elseif _<245 then
a(b,b,b)a(d(_-f,0,g)/16,d(_-f,0,g)/16,d(_-f,0,g)/16)B(-1,15,(_-f)*4)a(0,0,0)c(7,14,U)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,V)c(1,19,W)c(2,25,S)elseif _<410 then
a(10,10,10,e-d(_-h,0,60)/60*e)drawRectF(0,0,32,32)a(0,0,0,e-d(_-h,0,60)/60*e)c(3,3,V)c(1,19,W)c(2,25,S)end
r=i
end
end
function c(L,N,o)local x,H,D,u,w
if type(o)=="number" then
o=tostring(o)end
H=q("F1")..q("F2")..q("F3")..q("F4")for y=1,o:len()do
x=o:sub(y,y):byte()*5-159
for t=1,5 do
D="0x"..H:sub(x,x+4):sub(t,t)for G=1,3 do
if D & 2^(4-G)>0 then
u=L+y*4+G-5
w=N+t-1
l(u,w,u+1,w)end
end
end
end
end
function drawRectF(F,I,R,Q)m.drawRectF(F,I,C(F-R)+1,C(I-Q)+1)end
function d(M,P,O)local v=A.min(A.max(M,P),O)if v~=v then
return 0
else
return v
end
end
