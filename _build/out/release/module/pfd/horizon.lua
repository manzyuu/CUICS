-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 687 (1052 with comment) chars

a=255
e=screen
j=e.setColor
h=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,C=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
y,k,q=g("SkyColor")D,k,q=g("LandColor")y,k,q=g("CenterLineColor")function onTick()c=h(1)-pi/2
B=h(2)o=h(3)*-360
end
function onDraw()n,v=e.getWidth(),e.getHeight()f=10
d=v/4
for b=-360//f,360//f do
u=cos(c)*(b+o)+n/2
z=sin(c)*(b+o)+n/2
m,r=cos(c)*b*f+u,sin(c)*b*f+z
l=c+pi/2
p=-c+pi/2
A,t=cos(l)*d+m,sin(l)*d+r
s,x=cos(p)*d+m,-sin(p)*d+r
if b==0 then
j(a,a,a)elseif b<0 then
j(10,a,10)else
j(10,10,a)end
e.drawLine(A,t,s,x)end
end
function g(w)local i=tonumber(property.getText(w),16)return(i>>16)& a,(i>>8)& a,i & a
end
