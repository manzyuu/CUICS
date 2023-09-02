-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 593 (958 with comment) chars

g=screen
o=true
a=false
n=property
d=n.getText
f=input.getNumber
do
t=n.getBool("Monitor Swap")c=a
e=a
_={}_.v=0
_.s=0
_.x=a
_.z=a
end
function onTick()e=not e
output.setBool(32,e)_.v=f(30)_.s=f(31)r=f(32)c=a
end
function onDraw()if c~=t then
c=o
else
c=o
if r==3 then
g.setColor(10,10,10)g.drawClear()end
end
end
function y(w,q,b)if type(b)=="number" then
b=tostring(b)end
p=d("F1")..d("F2")..d("F3")..d("F4")for i=1,b:len()do
l=b:sub(i,i):byte()*5-159
for h=1,5 do
u="0x"..p:sub(l,l+4):sub(h,h)for k=1,3 do
if u & 2^(4-k)>0 then
m=w+i*4+k-5
j=q+h-1
g.drawLine(m,j,m+1,j)end
end
end
end
end
