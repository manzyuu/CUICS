-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

g=math
c=g.pi
t=g.sqrt
f=g.atan
n=g.sin
o=g.cos
a=input.getNumber
function O()_={}local q=a(4)local p=a(5)local x=a(6)local j,h=o(q),n(q)local m,l=o(p),n(p)local k,i=o(x),n(x)local A=m*k
local w=-j*i+h*l*k
local v=h*i+j*l*k
local b=m*i
local d=j*k+h*l*i
local e=-h*k+j*l*i
local y=-l
local C=h*m
local z=j*m
_.F=f(b,t(e*e+d*d))/c*2
_.D=f(d,t(b*b+e*e))/c*2
_.E=f(e,t(d*d+b*b))/c*2
_.L=f(A,y)/-c*2
_.B=f(w,C)/-c*2
_.I=f(v,z)/-c*2
local r=a(10)local s=a(11)local u=a(12)_.N=A*r+b*s+y*u
_.H=w*r+d*s+C*u
_.M=v*r+e*s+z*u
_.q=a(1)_.p=a(3)_.K=a(2)_.B=_.B
_.G=atan(_.D,_.F)_.J=_.E
end
