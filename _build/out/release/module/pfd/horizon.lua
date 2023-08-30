-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 687 (1052 with comment) chars

a=255
f=screen
i=f.setColor
j=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,B=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
s,l,q=g("SkyColor")D,l,q=g("LandColor")s,l,q=g("CenterLineColor")function onTick()b=j(1)-pi/2
C=j(2)p=j(3)*-360
end
function onDraw()r,y=f.getWidth(),f.getHeight()e=10
d=y/4
for c=-360//e,360//e do
u=cos(b)*(c+p)+r/2
A=sin(b)*(c+p)+r/2
k,n=cos(b)*c*e+u,sin(b)*c*e+A
o=b+pi/2
m=-b+pi/2
w,x=cos(o)*d+k,sin(o)*d+n
t,v=cos(m)*d+k,-sin(m)*d+n
if c==0 then
i(a,a,a)elseif c<0 then
i(10,a,10)else
i(10,10,a)end
f.drawLine(w,x,t,v)end
end
function g(z)local h=tonumber(property.getText(z),16)return(h>>16)& a,(h>>8)& a,h & a
end
