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
g=e.setColor
h=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,C=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
t,q,k=j("SkyColor")B,q,k=j("LandColor")t,q,k=j("CenterLineColor")function onTick()c=h(1)-pi/2
D=h(2)r=h(3)*-360
end
function onDraw()m,v=e.getWidth(),e.getHeight()f=10
d=v/4
for b=-360//f,360//f do
A=cos(c)*(b+r)+m/2
y=sin(c)*(b+r)+m/2
p,n=cos(c)*b*f+A,sin(c)*b*f+y
o=c+pi/2
l=-c+pi/2
z,w=cos(o)*d+p,sin(o)*d+n
s,x=cos(l)*d+p,-sin(l)*d+n
if b==0 then
g(a,a,a)elseif b<0 then
g(10,a,10)else
g(10,10,a)end
e.drawLine(z,w,s,x)end
end
function j(u)local i=tonumber(property.getText(u),16)return(i>>16)& a,(i>>8)& a,i & a
end
