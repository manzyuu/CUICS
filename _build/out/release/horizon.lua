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
g=d.setColor
h=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,D=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
v,p,n=i("SkyColor")B,p,n=i("LandColor")v,p,n=i("CenterLineColor")function onTick()b=h(1)-pi/2
C=h(2)l=h(3)*-360
end
function onDraw()k,t=d.getWidth(),d.getHeight()e=10
f=t/4
for c=-360//e,360//e do
u=cos(b)*(c+l)+k/2
z=sin(b)*(c+l)+k/2
o,m=cos(b)*c*e+u,sin(b)*c*e+z
q=b+pi/2
r=-b+pi/2
y,w=cos(q)*f+o,sin(q)*f+m
x,A=cos(r)*f+o,-sin(r)*f+m
if c==0 then
g(a,a,a)elseif c<0 then
g(10,a,10)else
g(10,10,a)end
d.drawLine(y,w,x,A)end
end
function i(s)local j=tonumber(property.getText(s),16)return(j>>16)& a,(j>>8)& a,j & a
end
