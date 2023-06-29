-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

l=math
f=l.pi
r=l.sqrt
d=l.atan
q=l.sin
o=l.cos
a=input.getNumber
function J()_={}local s=a(4)local n=a(5)local x=a(6)local i,k=o(s),q(s)local m,j=o(n),q(n)local h,g=o(x),q(x)local w=m*h
local A=-i*g+k*j*h
local y=k*g+i*j*h
local e=m*g
local b=i*h+k*j*g
local c=-k*h+i*j*g
local v=-j
local B=k*m
local C=i*m
_.D=d(e,r(c*c+b*b))/f*2
_.E=d(b,r(e*e+c*c))/f*2
_.F=d(c,r(b*b+e*e))/f*2
_.I=d(w,v)/-f*2
_.z=d(A,B)/-f*2
_.N=d(y,C)/-f*2
local u=a(10)local p=a(11)local t=a(12)_.O=w*u+e*p+v*t
_.M=A*u+b*p+B*t
_.G=y*u+c*p+C*t
_.s=a(1)_.n=a(3)_.K=a(2)_.z=_.z
_.H=atan(_.E,_.D)_.L=_.F
end
