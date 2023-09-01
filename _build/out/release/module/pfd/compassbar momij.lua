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
n=b.pi
e=b.cos
j=b.sin
k=input.getNumber
r=l.drawLine
d=b.deg
a=b.floor
q=l.drawRectF
f=l.setColor
function u(p)local g=300
f(5,5,5)q(10,23,11,7)q(9,24,13,5)f(255,255,225)t(10,24,string.format("%03d",tonumber(a(d(c)))))f(5,70,5)for i=0,72,1 do
r(a(((a(d(c)-i*5+_)%_)/_)*g),29+i%2,a(((a(d(c)-i*5+_)%_)/_)*g),33)end
f(250,250,40)r(a(((a(d(c)-p+_)%_)/_)*g),29,a(((a(d(c)-p+_)%_)/_)*g),33)end
local h=k(4)local m=k(5)local o=k(6)local s=-b.atan(j(h)*j(o)+e(h)*j(m)*e(o),e(h)*e(m))/2/n
c=(((1-s)%1)*(n*2))