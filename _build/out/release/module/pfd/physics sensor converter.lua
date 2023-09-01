-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 577 (942 with comment) chars

h=math
d=h.pi
q=h.sqrt
b=h.atan
o=h.sin
p=h.cos
a=input.getNumber
function H()_={}local n=a(4)local u=a(5)local B=a(6)local k,l=p(n),o(n)local m,j=p(u),o(u)local i,g=p(B),o(B)local z=m*i
local w=-k*g+l*j*i
local x=l*g+k*j*i
local e=m*g
local c=k*i+l*j*g
local f=-l*i+k*j*g
local A=-j
local v=l*m
local y=k*m
_.F=b(e,q(f*f+c*c))/d*2
_.D=b(c,q(e*e+f*f))/d*2
_.E=b(f,q(c*c+e*e))/d*2
_.O=b(z,A)/-d*2
_.C=b(w,v)/-d*2
_.M=b(x,y)/-d*2
local r=a(10)local s=a(11)local t=a(12)_.J=z*r+e*s+A*t
_.I=w*r+c*s+v*t
_.L=x*r+f*s+y*t
_.n=a(1)_.u=a(3)_.G=a(2)_.C=_.C
_.N=atan(_.D,_.F)_.K=_.E
end
