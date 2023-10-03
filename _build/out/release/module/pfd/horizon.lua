-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 687 (1052 with comment) chars

a=255
d=screen
h=d.setColor
g=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,C=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
u,p,r=i("SkyColor")B,p,r=i("LandColor")u,p,r=i("CenterLineColor")function onTick()c=g(1)-pi/2
D=g(2)m=g(3)*-360
end
function onDraw()n,v=d.getWidth(),d.getHeight()e=10
f=v/4
for b=-360//e,360//e do
w=cos(c)*(b+m)+n/2
y=sin(c)*(b+m)+n/2
l,o=cos(c)*b*e+w,sin(c)*b*e+y
q=c+pi/2
k=-c+pi/2
z,x=cos(q)*f+l,sin(q)*f+o
s,t=cos(k)*f+l,-sin(k)*f+o
if b==0 then
h(a,a,a)elseif b<0 then
h(10,a,10)else
h(10,10,a)end
d.drawLine(z,x,s,t)end
end
function i(A)local j=tonumber(property.getText(A),16)return(j>>16)& a,(j>>8)& a,j & a
end
