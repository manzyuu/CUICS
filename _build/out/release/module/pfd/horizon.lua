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
min,max,abs,cos,sin,tan,acos,asin,atan,pi,D=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
w,p,q=h("SkyColor")B,p,q=h("LandColor")w,p,q=h("CenterLineColor")function onTick()c=j(1)-pi/2
C=j(2)r=j(3)*-360
end
function onDraw()n,y=f.getWidth(),f.getHeight()e=10
d=y/4
for b=-360//e,360//e do
v=cos(c)*(b+r)+n/2
t=sin(c)*(b+r)+n/2
k,o=cos(c)*b*e+v,sin(c)*b*e+t
l=c+pi/2
m=-c+pi/2
A,u=cos(l)*d+k,sin(l)*d+o
s,x=cos(m)*d+k,-sin(m)*d+o
if b==0 then
i(a,a,a)elseif b<0 then
i(10,a,10)else
i(10,10,a)end
f.drawLine(A,u,s,x)end
end
function h(z)local g=tonumber(property.getText(z),16)return(g>>16)& a,(g>>8)& a,g & a
end
