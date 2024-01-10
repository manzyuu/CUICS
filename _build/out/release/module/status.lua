-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 857 (1222 with comment) chars
G="%03d"

c=false
h=screen
n=property
f=n.getText
i=string.format
e=h.drawLine
g=h.setColor
a=input.getNumber
do
r=n.getBool("Monitor Swap")m=c
l=c
b={}b.z=0
b.C=0
b.F=c
b.E=c
end
function onTick()l=not l
output.setBool(32,l)D=a(1)y=a(2)v=a(3)b.z=a(30)b.C=a(31)p=a(32)end
function onDraw()if m then
m=c
if r and p==2 then
u()end
else
m=true
if not r and p==2 then
u()end
end
end
function u()g(10,10,10)h.drawClear()g(1,1,1)e(0,12,32,12)g(7,7,7)e(0,20,32,20)e(0,26,32,26)g(255,255,255)_(0,15,"RPS")_(0,21,"TEMP")_(0,27,"FUEL")_(21,15,i(G,D//1))_(21,21,i(G,y//1))_(17,27,i("%04d",v//1))end
function _(w,B,d)if type(d)=="number" then
d=tostring(d)end
A=f("F1")..f("F2")..f("F3")..f("F4")for j=1,d:len()do
q=d:sub(j,j):byte()*5-159
for k=1,5 do
x="0x"..A:sub(q,q+4):sub(k,k)for o=1,3 do
if x & 2^(4-o)>0 then
s=w+j*4+o-5
t=B+k-1
e(s,t,s+1,t)end
end
end
end
end
