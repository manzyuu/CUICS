-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 1262 (1629 with comment) chars
V="%03d"
U="RPS"

b=255
u=true
a=false
z=input
f=screen
x=property
i=x.getText
n=f.drawRectF
k=string.format
o=f.drawText
j=f.drawLine
c=f.setColor
e=z.getNumber
q=output.setBool
do
y=x.getBool("Monitor Swap")r=a
l=a
_={}_.p=0
_.t=0
_.B=a
_.L=a
end
function onTick()l=not l
q(32,l)K=e(1)R=e(2)O=e(3)S=e(4)_.B=z.getBool(1)_.p=e(30)_.t=e(31)H=e(32)q(1,F(25,1,5,5,a))q(2,F(25,7,5,5,a))end
function onDraw()if r then
r=a
if y and H==3 then
E()end
else
r=u
if not y and H==3 then
E()end
end
end
function E()c(10,10,10)f.drawClear()c(1,1,1)j(0,12,32,13)c(7,7,7)j(0,20,32,20)j(0,26,32,26)c(b,b,b)d(0,0,"ADD")d(3,6,U)o(18,7,k("%0d",S//1%10))c(3,3,3)n(24,0,7,13)c(50,50,50)n(25,1,5,5)n(25,7,5,5)c(b,b,b)o(26,1,"+")o(26,7,"-")c(b,b,b)d(0,15,U)d(0,21,"TEMP")d(0,27,"FUEL")d(21,15,k(V,K//1))d(21,21,k(V,R//1))d(17,27,k("%04d",O//1))end
function d(Q,P,g)if type(g)=="number" then
g=tostring(g)end
J=i("F1")..i("F2")..i("F3")..i("F4")for m=1,g:len()do
I=g:sub(m,m):byte()*5-159
for s=1,5 do
T="0x"..J:sub(I,I+4):sub(s,s)for G=1,3 do
if T & 2^(4-G)>0 then
C=Q+m*4+G-5
A=P+s-1
j(C,A,C+1,A)end
end
end
end
end
function F(w,v,M,N,D)local h=a
if w<=_.p and
w+M>=_.p and
v<=_.t and
v+N>=_.t and
_.B then
if not _.L and D then
h=u
elseif not D then
h=u
end
else
h=a
end
return h
end
