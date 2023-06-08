-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1808 (2175 with comment) chars
S="CUICS"
R="USE 1*1"
Q="Var,1.0"
P="Cpl."
O="ONLYCAN"
N="ByMAKKI"
M="Powerd"

g=255
h=350
e=128
d=120
a=100
y=true
i=screen
o=math
x=o.abs
m=property.getText
p=i.drawRectF
w=i.drawCircleF
j=i.drawLine
b=i.setColor
n=input.getBool
_=0
_=0
l=false
function onTick()if n(1)or n(2)or not n(3)then
l=y
_=0
return
else
_=_+1
end
E=1
end
function onDraw()if l then
return
end
if E==1 then
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<d then
b(a,a,a)drawRectF((_-90)/60*e,15,(_-60)/60*e,16)elseif _<245 then
b(a,a,a)b(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)w(33,15,(_-d)*4)b(0,0,0)c(7,14,S)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(7,14,S)c(17,25,P)elseif _<410 then
b(10,10,10,g-f(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-f(_-h,0,60)/60*g)c(7,14,S)c(17,25,P)else
l=y
end
E=2
else
if _<60 then
b(a,a,a)j(0,0,32,32)j(0,32,32,0)elseif _<d then
b(a,a,a)drawRectF((_-105)/60*e,15,(_-75)/60*e,16)elseif _<245 then
b(a,a,a)b(f(_-d,0,e)/16,f(_-d,0,e)/16,f(_-d,0,e)/16)w(-1,15,(_-d)*4)b(0,0,0)c(7,14,S)elseif _<h then
b(10,10,10)drawRectF(0,0,32,32)b(0,0,0)c(3,3,Q)c(1,19,M)c(2,25,N)elseif _<410 then
b(10,10,10,g-f(_-h,0,60)/60*g)drawRectF(0,0,32,32)b(0,0,0,g-f(_-h,0,60)/60*g)c(3,3,Q)c(1,19,M)c(2,25,N)end
end
b(a,a,a)i.drawRect(-1,-1,33,33)b(0,10,0)p(0,35,35,477)p(35,0,477,256)b(a,0,0)c(0,34,O)c(0,40,R)c(34,2,O)c(34,8,R)b(a,a,a)if l then
i.drawClear()end
end
function c(L,K,k)local v,D,C,r,q
if type(k)=="number" then
k=tostring(k)end
D=m("F1")..m("F2")..m("F3")..m("F4")for t=1,k:len()do
v=k:sub(t,t):byte()*5-159
for s=1,5 do
C="0x"..D:sub(v,v+4):sub(s,s)for B=1,3 do
if C & 2^(4-B)>0 then
r=L+t*4+B-5
q=K+s-1
j(r,q,r+1,q)end
end
end
end
end
function drawRectF(A,z,J,I)p(A,z,x(A-J)+1,x(z-I)+1)end
function f(G,H,F)local u=o.min(o.max(G,H),F)if u~=u then
return 0
else
return u
end
end
