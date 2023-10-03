-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 523 (888 with comment) chars

_=360
i=screen
b=math
m=b.pi
g=b.cos
k=b.sin
h=input.getNumber
q=i.drawLine
c=b.deg
a=b.floor
n=i.drawRectF
f=i.setColor
function u(p)local e=300
f(5,5,5)n(10,23,11,7)n(9,24,13,5)f(255,255,225)t(10,24,string.format("%03d",tonumber(a(c(d)))))f(5,70,5)for l=0,72,1 do
q(a(((a(c(d)-l*5+_)%_)/_)*e),29+l%2,a(((a(c(d)-l*5+_)%_)/_)*e),33)end
f(250,250,40)q(a(((a(c(d)-p+_)%_)/_)*e),29,a(((a(c(d)-p+_)%_)/_)*e),33)end
local j=h(4)local r=h(5)local o=h(6)local s=-b.atan(k(j)*k(o)+g(j)*k(r)*g(o),g(j)*g(r))/2/m
d=(((1-s)%1)*(m*2))