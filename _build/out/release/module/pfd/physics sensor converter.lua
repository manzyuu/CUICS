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
u=g.sqrt
b=g.atan
q=g.sin
s=g.cos
a=input.getNumber
function N()_={}local r=a(4)local t=a(5)local B=a(6)local j,i=s(r),q(r)local m,k=s(t),q(t)local l,h=s(B),q(B)local z=m*l
local x=-j*h+i*k*l
local C=i*h+j*k*l
local e=m*h
local f=j*l+i*k*h
local d=-i*l+j*k*h
local y=-k
local A=i*m
local w=j*m
_.E=b(e,u(d*d+f*f))/c*2
_.F=b(f,u(e*e+d*d))/c*2
_.D=b(d,u(f*f+e*e))/c*2
_.J=b(z,y)/-c*2
_.v=b(x,A)/-c*2
_.M=b(C,w)/-c*2
local o=a(10)local p=a(11)local n=a(12)_.L=z*o+e*p+y*n
_.K=x*o+f*p+A*n
_.G=C*o+d*p+w*n
_.r=a(1)_.t=a(3)_.O=a(2)_.v=_.v
_.I=atan(_.F,_.E)_.H=_.D
end
