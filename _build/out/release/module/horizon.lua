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
i=input.getNumber
_=math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,C=_.min,_.max,_.abs,_.cos,_.sin,_.tan,_.acos,_.asin,_.tan,_.pi,_.pi*2
w,n,o=g("SkyColor")D,n,o=g("LandColor")w,n,o=g("CenterLineColor")function onTick()c=i(1)-pi/2
B=i(2)q=i(3)*-360
end
function onDraw()l,t=e.getWidth(),e.getHeight()d=10
f=t/4
for b=-360//d,360//d do
z=cos(c)*(b+q)+l/2
y=sin(c)*(b+q)+l/2
m,k=cos(c)*b*d+z,sin(c)*b*d+y
p=c+pi/2
r=-c+pi/2
v,u=cos(p)*f+m,sin(p)*f+k
x,s=cos(r)*f+m,-sin(r)*f+k
if b==0 then
j(a,a,a)elseif b<0 then
j(10,a,10)else
j(10,10,a)end
e.drawLine(v,u,x,s)end
end
function g(A)local h=tonumber(property.getText(A),16)return(h>>16)& a,(h>>8)& a,h & a
end
