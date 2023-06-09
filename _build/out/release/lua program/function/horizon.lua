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
j=d.setColor
i=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,B=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
z,m,l=h("SkyColor")D,m,l=h("LandColor")z,m,l=h("CenterLineColor")function onTick()c=i(1)-pi/2
C=i(2)k=i(3)*-360
end
function onDraw()o,x=d.getWidth(),d.getHeight()f=10
e=x/4
for b=-360//f,360//f do
v=cos(c)*(b+k)+o/2
y=sin(c)*(b+k)+o/2
n,r=cos(c)*b*f+v,sin(c)*b*f+y
q=c+pi/2
p=-c+pi/2
w,t=cos(q)*e+n,sin(q)*e+r
A,s=cos(p)*e+n,-sin(p)*e+r
if b==0 then
j(a,a,a)elseif b<0 then
j(10,a,10)else
j(10,10,a)end
d.drawLine(w,t,A,s)end
end
function h(u)local g=tonumber(property.getText(u),16)return(g>>16)& a,(g>>8)& a,g & a
end
