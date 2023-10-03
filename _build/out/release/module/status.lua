-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 868 (1233 with comment) chars
H="%03d"

v=true
c=false
i=screen
q=property
g=q.getText
j=string.format
f=i.drawLine
h=i.setColor
b=input.getNumber
do
n=q.getBool("Monitor Swap")e=c
l=c
a={}a.y=0
a.z=0
a.F=c
a.G=c
end
function onTick()l=not l
output.setBool(32,l)D=b(1)A=b(2)C=b(3)a.y=b(30)a.z=b(31)p=b(32)e=c
end
function onDraw()if e~=n then
e=v
if n and p==3 then
t()end
else
e=v
if not n and p==3 then
t()end
end
end
function t()h(10,10,10)i.drawClear()h(1,1,1)f(0,12,32,12)h(7,7,7)f(0,20,32,20)f(0,26,32,26)h(255,255,255)_(0,15,"RPS")_(0,21,"TEMP")_(0,27,"FUEL")_(21,15,j(H,D//1))_(21,21,j(H,A//1))_(17,27,j("%04d",C//1))end
function _(E,x,d)if type(d)=="number" then
d=tostring(d)end
w=g("F1")..g("F2")..g("F3")..g("F4")for m=1,d:len()do
u=d:sub(m,m):byte()*5-159
for k=1,5 do
B="0x"..w:sub(u,u+4):sub(k,k)for s=1,3 do
if B & 2^(4-s)>0 then
o=E+m*4+s-5
r=x+k-1
f(o,r,o+1,r)end
end
end
end
end
