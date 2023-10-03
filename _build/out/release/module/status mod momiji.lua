-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1262 (1629 with comment) chars
V="RPS"
U="%03d"

a=255
l=true
b=false
H=input
f=screen
F=property
j=F.getText
u=f.drawRectF
h=string.format
q=f.drawText
i=f.drawLine
d=f.setColor
e=H.getNumber
n=output.setBool
do
w=F.getBool("Monitor Swap")o=b
r=b
_={}_.t=0
_.p=0
_.I=b
_.S=b
end
function onTick()r=not r
n(32,r)L=e(1)Q=e(2)O=e(3)K=e(4)_.I=H.getBool(1)_.t=e(30)_.p=e(31)D=e(32)n(1,C(25,1,5,5,b))n(2,C(25,7,5,5,b))end
function onDraw()if o then
o=b
if w and D==3 then
v()end
else
o=l
if not w and D==3 then
v()end
end
end
function v()d(10,10,10)f.drawClear()d(1,1,1)i(0,12,32,13)d(7,7,7)i(0,20,32,20)i(0,26,32,26)d(a,a,a)c(0,0,"ADD")c(3,6,V)q(18,7,h("%0d",K//1%10))d(3,3,3)u(24,0,7,13)d(50,50,50)u(25,1,5,5)u(25,7,5,5)d(a,a,a)q(26,1,"+")q(26,7,"-")d(a,a,a)c(0,15,V)c(0,21,"TEMP")c(0,27,"FUEL")c(21,15,h(U,L//1))c(21,21,h(U,Q//1))c(17,27,h("%04d",O//1))end
function c(M,R,g)if type(g)=="number" then
g=tostring(g)end
T=j("F1")..j("F2")..j("F3")..j("F4")for m=1,g:len()do
z=g:sub(m,m):byte()*5-159
for s=1,5 do
J="0x"..T:sub(z,z+4):sub(s,s)for B=1,3 do
if J & 2^(4-B)>0 then
G=M+m*4+B-5
A=R+s-1
i(G,A,G+1,A)end
end
end
end
end
function C(y,E,N,P,x)local k=b
if y<=_.t and
y+N>=_.t and
E<=_.p and
E+P>=_.p and
_.I then
if not _.S and x then
k=l
elseif not x then
k=l
end
else
k=b
end
return k
end
