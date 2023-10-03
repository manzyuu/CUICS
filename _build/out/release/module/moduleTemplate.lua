-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 640 (1005 with comment) chars

d=screen
b=false
q=property
c=q.getText
i=input.getNumber
do
j=q.getBool("Monitor Swap")h=b
g=b
_={}_.u=0
_.v=0
_.z=b
_.x=b
end
function onTick()g=not g
output.setBool(32,g)_.u=i(30)_.v=i(31)p=i(32)end
function onDraw()if h~=j then
h=b
if j and p==3 then
n()end
else
h=true
if not j and p==3 then
n()end
end
end
function n()d.setColor(10,10,10)d.drawClear()end
function y(t,w,a)if type(a)=="number" then
a=tostring(a)end
s=c("F1")..c("F2")..c("F3")..c("F4")for f=1,a:len()do
m=a:sub(f,f):byte()*5-159
for e=1,5 do
r="0x"..s:sub(m,m+4):sub(e,e)for k=1,3 do
if r & 2^(4-k)>0 then
l=t+f*4+k-5
o=w+e-1
d.drawLine(l,o,l+1,o)end
end
end
end
end
