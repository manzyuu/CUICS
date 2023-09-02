-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1942 (2309 with comment) chars
U="Powerd"
T="Var,1.0"
S="CUICS"
R="ONLYCAN"
Q="USE 1*1"
P="Cpl."
O="ByMAKKI"

g=255
h=350
f=128
e=120
b=100
r=true
i=screen
E=property
u=math
F=u.abs
n=E.getText
o=i.drawRectF
G=i.drawCircleF
m=i.drawLine
j=i.drawClear
a=i.setColor
D=input.getBool
_=0
l=r
function onTick()if not E.getBool("StartUp Screen")then return end
if D(14)then
l=r
end
if D(13)then
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
a(0,0,0)j()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<e then
a(0,0,0)j()a(b,b,b)drawRectF((_-90)/60*f,15,(_-60)/60*f,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)G(33,15,(_-e)*4)a(0,0,0)c(7,14,S)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(7,14,S)c(17,25,P)elseif _<410 then
a(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-h,0,60)/60*g)c(7,14,S)c(17,25,P)else
l=r
end
x=2
else
if _<60 then
a(0,0,0)j()a(b,b,b)m(0,0,32,32)m(0,32,32,0)elseif _<e then
a(0,0,0)j()a(b,b,b)drawRectF((_-105)/60*f,15,(_-75)/60*f,16)elseif _<245 then
a(0,0,0)j()a(b,b,b)a(d(_-e,0,f)/16,d(_-e,0,f)/16,d(_-e,0,f)/16)G(-1,15,(_-e)*4)a(0,0,0)c(7,14,S)elseif _<h then
a(10,10,10)drawRectF(0,0,32,32)a(0,0,0)c(3,3,T)c(1,19,U)c(2,25,O)elseif _<410 then
a(10,10,10,g-d(_-h,0,60)/60*g)drawRectF(0,0,32,32)a(0,0,0,g-d(_-h,0,60)/60*g)c(3,3,T)c(1,19,U)c(2,25,O)end
end
a(b,b,b)i.drawRect(-1,-1,33,33)a(0,10,0)o(0,35,35,477)o(35,0,477,256)a(b,0,0)c(0,34,R)c(0,40,Q)c(34,2,R)c(34,8,Q)a(b,b,b)else
return
end
end
function c(L,J,k)local v,z,y,t,q
if type(k)=="number" then
k=tostring(k)end
z=n("F1")..n("F2")..n("F3")..n("F4")for s=1,k:len()do
v=k:sub(s,s):byte()*5-159
for p=1,5 do
y="0x"..z:sub(v,v+4):sub(p,p)for A=1,3 do
if y & 2^(4-A)>0 then
t=L+s*4+A-5
q=J+p-1
m(t,q,t+1,q)end
end
end
end
end
function drawRectF(C,B,I,N)o(C,B,F(C-I)+1,F(B-N)+1)end
function d(K,H,M)local w=u.min(u.max(K,H),M)if w~=w then
return 0
else
return w
end
end
