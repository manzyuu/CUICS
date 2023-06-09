-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 523 (888 with comment) chars

_=360
j=screen
b=math
m=b.pi
g=b.cos
l=b.sin
k=input.getNumber
p=j.drawLine
d=b.deg
a=b.floor
r=j.drawRectF
f=j.setColor
function u(o)local e=300
f(5,5,5)r(10,23,11,7)r(9,24,13,5)f(255,255,225)t(10,24,string.format("%03d",tonumber(a(d(c)))))f(5,70,5)for i=0,72,1 do
p(a(((a(d(c)-i*5+_)%_)/_)*e),29+i%2,a(((a(d(c)-i*5+_)%_)/_)*e),33)end
f(250,250,40)p(a(((a(d(c)-o+_)%_)/_)*e),29,a(((a(d(c)-o+_)%_)/_)*e),33)end
local h=k(4)local q=k(5)local n=k(6)local s=-b.atan(l(h)*l(n)+g(h)*l(q)*g(n),g(h)*g(q))/2/m
c=(((1-s)%1)*(m*2))