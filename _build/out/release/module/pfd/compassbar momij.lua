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
g=b.cos
i=b.sin
h=input.getNumber
p=l.drawLine
d=b.deg
a=b.floor
q=l.drawRectF
f=l.setColor
function t(n)local e=300
f(5,5,5)q(10,23,11,7)q(9,24,13,5)f(255,255,225)u(10,24,string.format("%03d",tonumber(a(d(c)))))f(5,70,5)for k=0,72,1 do
p(a(((a(d(c)-k*5+_)%_)/_)*e),29+k%2,a(((a(d(c)-k*5+_)%_)/_)*e),33)end
f(250,250,40)p(a(((a(d(c)-n+_)%_)/_)*e),29,a(((a(d(c)-n+_)%_)/_)*e),33)end
local j=h(4)local o=h(5)local m=h(6)local s=-b.atan(i(j)*i(m)+g(j)*i(o)*g(m),g(j)*g(o))/2/r
c=(((1-s)%1)*(r*2))