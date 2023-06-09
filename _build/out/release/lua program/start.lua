-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1808 (2175 with comment) chars
S="Cpl."
R="USE 1*1"
Q="ByMAKKI"
P="CUICS"
O="Powerd"
N="ONLYCAN"
M="Var,1.0"

g=255
h=350
f=128
e=120
a=100
w=true
i=screen
s=math
x=s.abs
l=property.getText
o=i.drawRectF
D=i.drawCircleF
j=i.drawLine
b=i.setColor
q=input.getBool
_=0
_=0
m=false
function onTick()if q(1)or q(2)or not q(3)then
m=w
_=0
return
else
_=_+1
end
z=1
end
function onDraw()if m then
return
end
if z==1 then
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<e then
b(a,a,a)drawRectF((_-90)/60*f,15,(_-60)/60*f,16)elseif _<245 then
b(a,a,a)b(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)D(33,15,(_-e)*4)b(0,0,0)c(7,14,P)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(7,14,P)c(17,25,S)elseif _<410 then
b(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-h,0,60)/60*g)c(7,14,P)c(17,25,S)else
m=w
end
z=2
else
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<e then
b(a,a,a)drawRectF((_-105)/60*f,15,(_-75)/60*f,16)elseif _<245 then
b(a,a,a)b(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)D(-1,15,(_-e)*4)b(0,0,0)c(7,14,P)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(3,3,M)c(1,19,O)c(2,25,Q)elseif _<410 then
b(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-d(_-h,0,60)/60*g)c(3,3,M)c(1,19,O)c(2,25,Q)end
end
b(a,a,a)i.drawRect(-1,-1,33,33)b(0,10,0)o(0,35,35,477)o(35,0,477,256)b(a,0,0)c(0,34,N)c(0,40,R)c(34,2,N)c(34,8,R)b(a,a,a)if m then
i.drawClear()end
end
function c(K,G,k)local p,C,E,u,v
if type(k)=="number" then
k=tostring(k)end
C=l("F1")..l("F2")..l("F3")..l("F4")for n=1,k:len()do
p=k:sub(n,n):byte()*5-159
for r=1,5 do
E="0x"..C:sub(p,p+4):sub(r,r)for A=1,3 do
if E & 2^(4-A)>0 then
u=K+n*4+A-5
v=G+r-1
j(u,v,u+1,v)end
end
end
end
end
function drawRectF(y,B,I,L)o(y,B,x(y-I)+1,x(B-L)+1)end
function d(H,F,J)local t=s.min(s.max(H,F),J)if t~=t then
return 0
else
return t
end
end
