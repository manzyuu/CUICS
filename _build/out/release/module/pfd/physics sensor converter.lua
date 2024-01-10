-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

k=math
d=k.pi
u=k.sqrt
e=k.atan
r=k.sin
s=k.cos
a=input.getNumber
function K()_={}local o=a(4)local p=a(5)local x=a(6)local j,h=s(o),r(o)local m,g=s(p),r(p)local l,i=s(x),r(x)local y=m*l
local B=-j*i+h*g*l
local A=h*i+j*g*l
local c=m*i
local b=j*l+h*g*i
local f=-h*l+j*g*i
local z=-g
local w=h*m
local v=j*m
_.D=e(c,u(f*f+b*b))/d*2
_.E=e(b,u(c*c+f*f))/d*2
_.F=e(f,u(b*b+c*c))/d*2
_.M=e(y,z)/-d*2
_.C=e(B,w)/-d*2
_.O=e(A,v)/-d*2
local q=a(10)local n=a(11)local t=a(12)_.I=y*q+c*n+z*t
_.G=B*q+b*n+w*t
_.J=A*q+f*n+v*t
_.o=a(1)_.p=a(3)_.L=a(2)_.C=_.C
_.H=atan(_.E,_.D)_.N=_.F
end
