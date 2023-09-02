-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 804 (1169 with comment) chars
G="%03d"

o=true
d=false
m=screen
r=property
e=r.getText
l=string.format
f=m.drawLine
h=m.setColor
a=input.getNumber
do
t=r.getBool("Monitor Swap")g=d
k=d
b={}b.y=0
b.w=0
b.F=d
b.E=d
end
function onTick()k=not k
output.setBool(32,k)A=a(1)D=a(2)x=a(3)b.y=a(30)b.w=a(31)v=a(32)g=d
end
function onDraw()if g~=t then
g=o
else
g=o
if v==3 then
h(10,10,10)m.drawClear()h(1,1,1)f(0,12,32,12)h(7,7,7)f(0,20,32,20)f(0,26,32,26)h(255,255,255)_(0,15,"RPS")_(0,21,"TEMP")_(0,27,"FUEL")_(21,15,l(G,A))_(21,21,l(G,D))_(17,27,l("%04d",x))end
end
end
function _(u,B,c)if type(c)=="number" then
c=tostring(c)end
C=e("F1")..e("F2")..e("F3")..e("F4")for j=1,c:len()do
q=c:sub(j,j):byte()*5-159
for i=1,5 do
z="0x"..C:sub(q,q+4):sub(i,i)for n=1,3 do
if z & 2^(4-n)>0 then
p=u+j*4+n-5
s=B+i-1
f(p,s,p+1,s)end
end
end
end
end
