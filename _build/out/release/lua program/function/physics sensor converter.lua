-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

i=math
b=i.pi
r=i.sqrt
c=i.atan
t=i.sin
p=i.cos
a=input.getNumber
function J()_={}local s=a(4)local u=a(5)local x=a(6)local l,j=p(s),t(s)local m,h=p(u),t(u)local k,g=p(x),t(x)local w=m*k
local y=-l*g+j*h*k
local z=j*g+l*h*k
local f=m*g
local e=l*k+j*h*g
local d=-j*k+l*h*g
local A=-h
local C=j*m
local B=l*m
_.E=c(f,r(d*d+e*e))/b*2
_.D=c(e,r(f*f+d*d))/b*2
_.F=c(d,r(e*e+f*f))/b*2
_.N=c(w,A)/-b*2
_.v=c(y,C)/-b*2
_.O=c(z,B)/-b*2
local q=a(10)local o=a(11)local n=a(12)_.K=w*q+f*o+A*n
_.M=y*q+e*o+C*n
_.I=z*q+d*o+B*n
_.s=a(1)_.u=a(3)_.G=a(2)_.v=_.v
_.L=atan(_.D,_.E)_.H=_.F
end
