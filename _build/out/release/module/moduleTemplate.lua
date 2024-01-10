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
k=property
c=k.getText
j=input.getNumber
do
f=k.getBool("Monitor Swap")i=b
g=b
_={}_.w=0
_.t=0
_.z=b
_.y=b
end
function onTick()g=not g
output.setBool(32,g)_.w=j(30)_.t=j(31)o=j(32)end
function onDraw()if i~=f then
i=b
if f and o==3 then
q()end
else
i=true
if not f and o==3 then
q()end
end
end
function q()d.setColor(10,10,10)d.drawClear()end
function x(r,u,a)if type(a)=="number" then
a=tostring(a)end
s=c("F1")..c("F2")..c("F3")..c("F4")for e=1,a:len()do
m=a:sub(e,e):byte()*5-159
for h=1,5 do
v="0x"..s:sub(m,m+4):sub(h,h)for p=1,3 do
if v & 2^(4-p)>0 then
n=r+e*4+p-5
l=u+h-1
d.drawLine(n,l,n+1,l)end
end
end
end
end
