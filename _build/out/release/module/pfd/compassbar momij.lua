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
m=b.pi
g=b.cos
h=b.sin
i=input.getNumber
r=l.drawLine
c=b.deg
a=b.floor
o=l.drawRectF
e=l.setColor
function t(p)local f=300
e(5,5,5)o(10,23,11,7)o(9,24,13,5)e(255,255,225)u(10,24,string.format("%03d",tonumber(a(c(d)))))e(5,70,5)for k=0,72,1 do
r(a(((a(c(d)-k*5+_)%_)/_)*f),29+k%2,a(((a(c(d)-k*5+_)%_)/_)*f),33)end
e(250,250,40)r(a(((a(c(d)-p+_)%_)/_)*f),29,a(((a(c(d)-p+_)%_)/_)*f),33)end
local j=i(4)local q=i(5)local n=i(6)local s=-b.atan(h(j)*h(n)+g(j)*h(q)*g(n),g(j)*g(q))/2/m
d=(((1-s)%1)*(m*2))