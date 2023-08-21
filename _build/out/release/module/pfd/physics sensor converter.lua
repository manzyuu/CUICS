-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

h=math
b=h.pi
s=h.sqrt
d=h.atan
u=h.sin
t=h.cos
a=input.getNumber
function J()_={}local q=a(4)local r=a(5)local C=a(6)local j,g=t(q),u(q)local m,i=t(r),u(r)local k,l=t(C),u(C)local y=m*k
local w=-j*l+g*i*k
local A=g*l+j*i*k
local f=m*l
local e=j*k+g*i*l
local c=-g*k+j*i*l
local B=-i
local z=g*m
local x=j*m
_.D=d(f,s(c*c+e*e))/b*2
_.E=d(e,s(f*f+c*c))/b*2
_.F=d(c,s(e*e+f*f))/b*2
_.K=d(y,B)/-b*2
_.v=d(w,z)/-b*2
_.O=d(A,x)/-b*2
local p=a(10)local n=a(11)local o=a(12)_.G=y*p+f*n+B*o
_.M=w*p+e*n+z*o
_.I=A*p+c*n+x*o
_.q=a(1)_.r=a(3)_.N=a(2)_.v=_.v
_.L=atan(_.E,_.D)_.H=_.F
end
