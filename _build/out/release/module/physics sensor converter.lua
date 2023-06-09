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
r=i.sqrt
c=i.atan
u=i.sin
n=i.cos
a=input.getNumber
function G()_={}local p=a(4)local q=a(5)local z=a(6)local k,j=n(p),u(p)local m,g=n(q),u(q)local h,l=n(z),u(z)local v=m*h
local B=-k*l+j*g*h
local x=j*l+k*g*h
local b=m*l
local d=k*h+j*g*l
local f=-j*h+k*g*l
local w=-g
local A=j*m
local C=k*m
_.F=c(b,r(f*f+d*d))/e*2
_.D=c(d,r(b*b+f*f))/e*2
_.E=c(f,r(d*d+b*b))/e*2
_.M=c(v,w)/-e*2
_.y=c(B,A)/-e*2
_.N=c(x,C)/-e*2
local o=a(10)local s=a(11)local t=a(12)_.L=v*o+b*s+w*t
_.K=B*o+d*s+A*t
_.H=x*o+f*s+C*t
_.p=a(1)_.q=a(3)_.O=a(2)_.y=_.y
_.I=atan(_.D,_.F)_.J=_.E
end
