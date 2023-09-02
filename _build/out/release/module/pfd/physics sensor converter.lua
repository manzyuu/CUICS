-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

g=math
f=g.pi
o=g.sqrt
b=g.atan
u=g.sin
n=g.cos
a=input.getNumber
function J()_={}local t=a(4)local q=a(5)local C=a(6)local i,l=n(t),u(t)local m,h=n(q),u(q)local j,k=n(C),u(C)local z=m*j
local B=-i*k+l*h*j
local y=l*k+i*h*j
local e=m*k
local d=i*j+l*h*k
local c=-l*j+i*h*k
local x=-h
local w=l*m
local v=i*m
_.F=b(e,o(c*c+d*d))/f*2
_.D=b(d,o(e*e+c*c))/f*2
_.E=b(c,o(d*d+e*e))/f*2
_.O=b(z,x)/-f*2
_.A=b(B,w)/-f*2
_.K=b(y,v)/-f*2
local p=a(10)local s=a(11)local r=a(12)_.G=z*p+e*s+x*r
_.L=B*p+d*s+w*r
_.N=y*p+c*s+v*r
_.t=a(1)_.q=a(3)_.M=a(2)_.A=_.A
_.H=atan(_.D,_.F)_.I=_.E
end
