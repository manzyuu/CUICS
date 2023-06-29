-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 523 (888 with comment) chars

_=360
l=screen
b=math
o=b.pi
f=b.cos
h=b.sin
k=input.getNumber
q=l.drawLine
c=b.deg
a=b.floor
r=l.drawRectF
e=l.setColor
function t(n)local g=300
e(5,5,5)r(10,23,11,7)r(9,24,13,5)e(255,255,225)u(10,24,string.format("%03d",tonumber(a(c(d)))))e(5,70,5)for j=0,72,1 do
q(a(((a(c(d)-j*5+_)%_)/_)*g),29+j%2,a(((a(c(d)-j*5+_)%_)/_)*g),33)end
e(250,250,40)q(a(((a(c(d)-n+_)%_)/_)*g),29,a(((a(c(d)-n+_)%_)/_)*g),33)end
local i=k(4)local p=k(5)local m=k(6)local s=-b.atan(h(i)*h(m)+f(i)*h(p)*f(m),f(i)*f(p))/2/o
d=(((1-s)%1)*(o*2))