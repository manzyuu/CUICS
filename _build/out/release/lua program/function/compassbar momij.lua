-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 523 (888 with comment) chars

_=360
k=screen
b=math
n=b.pi
g=b.cos
l=b.sin
j=input.getNumber
r=k.drawLine
d=b.deg
a=b.floor
o=k.drawRectF
f=k.setColor
function t(q)local e=300
f(5,5,5)o(10,23,11,7)o(9,24,13,5)f(255,255,225)u(10,24,string.format("%03d",tonumber(a(d(c)))))f(5,70,5)for i=0,72,1 do
r(a(((a(d(c)-i*5+_)%_)/_)*e),29+i%2,a(((a(d(c)-i*5+_)%_)/_)*e),33)end
f(250,250,40)r(a(((a(d(c)-q+_)%_)/_)*e),29,a(((a(d(c)-q+_)%_)/_)*e),33)end
local h=j(4)local p=j(5)local m=j(6)local s=-b.atan(l(h)*l(m)+g(h)*l(p)*g(m),g(h)*g(p))/2/n
c=(((1-s)%1)*(n*2))