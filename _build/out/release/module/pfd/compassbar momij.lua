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
f=b.cos
h=b.sin
l=input.getNumber
p=k.drawLine
d=b.deg
a=b.floor
m=k.drawRectF
e=k.setColor
function u(o)local g=300
e(5,5,5)m(10,23,11,7)m(9,24,13,5)e(255,255,225)t(10,24,string.format("%03d",tonumber(a(d(c)))))e(5,70,5)for j=0,72,1 do
p(a(((a(d(c)-j*5+_)%_)/_)*g),29+j%2,a(((a(d(c)-j*5+_)%_)/_)*g),33)end
e(250,250,40)p(a(((a(d(c)-o+_)%_)/_)*g),29,a(((a(d(c)-o+_)%_)/_)*g),33)end
local i=l(4)local q=l(5)local r=l(6)local s=-b.atan(h(i)*h(r)+f(i)*h(q)*f(r),f(i)*f(q))/2/n
c=(((1-s)%1)*(n*2))