-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

i=math
e=i.pi
p=i.sqrt
f=i.atan
n=i.sin
o=i.cos
a=input.getNumber
function I()_={}local t=a(4)local r=a(5)local A=a(6)local k,g=o(t),n(t)local m,j=o(r),n(r)local l,h=o(A),n(A)local v=m*l
local y=-k*h+g*j*l
local w=g*h+k*j*l
local c=m*h
local d=k*l+g*j*h
local b=-g*l+k*j*h
local x=-j
local C=g*m
local B=k*m
_.E=f(c,p(b*b+d*d))/e*2
_.D=f(d,p(c*c+b*b))/e*2
_.F=f(b,p(d*d+c*c))/e*2
_.N=f(v,x)/-e*2
_.z=f(y,C)/-e*2
_.M=f(w,B)/-e*2
local u=a(10)local s=a(11)local q=a(12)_.K=v*u+c*s+x*q
_.L=y*u+d*s+C*q
_.J=w*u+b*s+B*q
_.t=a(1)_.r=a(3)_.O=a(2)_.z=_.z
_.G=atan(_.D,_.E)_.H=_.F
end
