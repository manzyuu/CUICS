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
g=f.setColor
h=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,C=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
t,o,k=i("SkyColor")D,o,k=i("LandColor")t,o,k=i("CenterLineColor")function onTick()c=h(1)-pi/2
B=h(2)n=h(3)*-360
end
function onDraw()l,z=f.getWidth(),f.getHeight()d=10
e=z/4
for b=-360//d,360//d do
s=cos(c)*(b+n)+l/2
A=sin(c)*(b+n)+l/2
m,r=cos(c)*b*d+s,sin(c)*b*d+A
q=c+pi/2
p=-c+pi/2
y,x=cos(q)*e+m,sin(q)*e+r
v,w=cos(p)*e+m,-sin(p)*e+r
if b==0 then
g(a,a,a)elseif b<0 then
g(10,a,10)else
g(10,10,a)end
f.drawLine(y,x,v,w)end
end
function i(u)local j=tonumber(property.getText(u),16)return(j>>16)& a,(j>>8)& a,j & a
end
