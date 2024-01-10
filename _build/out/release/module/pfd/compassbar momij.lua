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
r=b.pi
f=b.cos
h=b.sin
j=input.getNumber
o=l.drawLine
d=b.deg
a=b.floor
p=l.drawRectF
e=l.setColor
function u(n)local g=300
e(5,5,5)p(10,23,11,7)p(9,24,13,5)e(255,255,225)t(10,24,string.format("%03d",tonumber(a(d(c)))))e(5,70,5)for i=0,72,1 do
o(a(((a(d(c)-i*5+_)%_)/_)*g),29+i%2,a(((a(d(c)-i*5+_)%_)/_)*g),33)end
e(250,250,40)o(a(((a(d(c)-n+_)%_)/_)*g),29,a(((a(d(c)-n+_)%_)/_)*g),33)end
local k=j(4)local q=j(5)local m=j(6)local s=-b.atan(h(k)*h(m)+f(k)*h(q)*f(m),f(k)*f(q))/2/r
c=(((1-s)%1)*(r*2))