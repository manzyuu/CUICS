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
j=f.setColor
h=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,B=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
v,p,n=g("SkyColor")C,p,n=g("LandColor")v,p,n=g("CenterLineColor")function onTick()b=h(1)-pi/2
D=h(2)k=h(3)*-360
end
function onDraw()r,y=f.getWidth(),f.getHeight()d=10
e=y/4
for c=-360//d,360//d do
s=cos(b)*(c+k)+r/2
u=sin(b)*(c+k)+r/2
l,o=cos(b)*c*d+s,sin(b)*c*d+u
q=b+pi/2
m=-b+pi/2
x,w=cos(q)*e+l,sin(q)*e+o
t,A=cos(m)*e+l,-sin(m)*e+o
if c==0 then
j(a,a,a)elseif c<0 then
j(10,a,10)else
j(10,10,a)end
f.drawLine(x,w,t,A)end
end
function g(z)local i=tonumber(property.getText(z),16)return(i>>16)& a,(i>>8)& a,i & a
end
