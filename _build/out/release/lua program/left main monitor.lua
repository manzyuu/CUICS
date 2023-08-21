-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3212 (3579 with comment) chars
aR="X"
aQ="1"
aP="touch"
aO="%03d"
aN="x"
aM="0"
aL="y"
aK="Y"

d=255
i=false
k=true
R=output
U=input
B=math
s=screen
D=property
y=D.getText
r=s.drawRect
q=s.drawRectF
o=s.drawLine
z=B.abs
A=string.format
a=s.setColor
O=B.max
t=B.min
n=U.getBool
_=U.getNumber
h=R.setBool
do
x,al,M,aj=k,k,k,D.getBool("Monitor Swap")I=i
N=2
ao=20
J,F=0,0
l,K=1,10
H=0
T={}e={}e.V=0
e.Z=0
w={}w.p=0
w.m=0
c={}c.aH,c.av,c.ap,c.ay,c.ar,c.az,c.aG,c.aA,c.aB,c.au={},{},{},{},{},{},{},{},{},{}L={}L.ag=0
g={[aN]={},[aL]={},[aP]={}}end
function onTick()if x==i then return end
x=i
I=not I
h(32,I)e.p,e.m=_(9),_(10)H=B.sqrt((w.p-e.p)^2+(w.m-e.m)^2)h(13,x)h(14,n(1)or n(2))Q=i
g[aN][1],g[aL][1],g[aP][1]=_(1),_(2),n(1)g[aN][2],g[aL][2],g[aP][2]=_(3),_(4),n(2)T.aD,T.b=_(5),_(6)ax,as=_(7),_(8)e.Z=e.V
e.p=_(9)e.m=_(10)e.V=_(11)e.aq=(_(11)-e.Z)*60
e.at=_(17)e.aI=_(18)aw=_(29)an=_(30)aC=n(3)ae=n(4)am=_(13)aF=_(14)G=_(15)aE=_(16)c["vis"][G]=n(5)c["dir"][G]=n(6)c["way"][G]=n(7)if g[aP][1]then
N=f(0,15,12,6,1)and 1 or
f(15,15,6,6,1)and 2 or
f(0,24,16,6,1)and 3 or
f(15,24,16,6,1)and 4 or 0
end
h(13,f(15,24,16,6,1))if N==1 then
if M then
J,F=e.p,e.m
end
if g[aP][2]==i then
C=i
end
if f(0,0,5,5,2)then
if C==i then
l=l+1
end
C=k
end
if f(0,6,5,5,2)then
if C==i then
l=l-1
end
C=k
end
l=t(O(l,1),22)K=t(l-5,0)/5+t(O(l-4,1),10)+t(O(l-14,0),8)*5
if f(13,13,6,6,2)then
M=k
else
if g[aP][2]and l==i then
J=-(g[aN][2]-16)*K/2+J
F=-(g[aL][2]-16)*K/2+F
M=i
end
end
end
if N==2 then
if f(27,0,5,6,2)then
b=""
if f(2,14,5,5,2)then
b=aQ
else
b=aM
end
if f(8,14,5,5,2)then
b=b..aQ
else
b=b..aM
end
if f(14,14,5,5,2)then
b=b..aQ
else
b=b..aM
end
L.ag=tonumber(b)R.setNumber(2,L.aJ)h(2,f(27,7,5,5,2))h(7,f(27,14,5,5,2))h(8,f(27,20,5,5,2))h(9,f(0,20,5,5,2))h(10,f(27,27,5,5,2))h(11,f(0,26,9,6,2))h(12,f(22,20,4,6,1))end
h(13,k)else
for u=1,13 do
h(u,i)end
end
if(_(21)==D.getNumber("Passcode"))then
b=_(20)c[aR][b]=_(22)c[aK][b]=_(22)c["Dir"][b]=_(22)c["Alt"][b]=_(22)c["Spd"][b]=_(22)c["WayX"][b]=_(22)c["WayY"][b]=_(22)end
end
function onDraw()x=k
if Q~=aj then
Q=k
return
else
Q=k
a(10,10,10)s.drawClear()a(200,50,20)j(29,1,aR)j(17,1,A(aO,z(e.p//100)))a(20,50,200)j(29,7,aK)j(17,7,A(aO,z(e.m//100)))a(d,d,d)j(0,1,A("%02d",t(z(H//1000),99)))s.drawText(7,1,".")j(10,1,A("%01d",z(H)//100%10))j(8,7,"KM")a(5,5,5)o(15,0,15,13)a(1,1,1)o(0,13,32,13)a(30,30,30)q(0,15,13,7)a(50,50,50)r(0,15,12,6)a(d,d,d)j(1,16,"MAP")a(30,30,30)q(15,15,7,7)a(50,50,50)r(15,15,6,6)a(d,d,d)o(16,19,16,21)o(16,19,19,16)o(19,16,21,16)o(18,19,18,21)o(19,18,21,18)o(20,20,21,20)if ae then
a(70,70,70)q(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,20,50)else
a(30,30,30)q(23,15,8,7)a(50,50,50)r(23,15,8,6)a(d,d,d)end
j(24,16,"Be")a(30,30,30)q(0,24,13,7)a(50,50,50)r(0,24,12,6)a(d,d,d)j(1,25,"STA")a(30,30,30)q(16,24,17,7)a(50,50,50)r(15,24,16,6)a(d,d,d)j(16,25,"EXTE")end
end
function f(p,m,af,ad,E)X,S=g[aN][E],g[aL][E]if p<=X and
p+af>=X and
m<=S and
m+ad>=S and
g[aP][E]then
return k
else
return i
end
end
function j(ah,ak,v)if type(v)=="number" then
v=tostring(v)end
ac=y("F1")..y("F2")..y("F3")..y("F4")for u=1,v:len()do
Y=v:sub(u,u):byte()*5-159
for P=1,5 do
ai="0x"..ac:sub(Y,Y+4):sub(P,P)for W=1,3 do
if ai & 2^(4-W)>0 then
aa=ah+u*4+W-5
ab=ak+P-1
o(aa,ab,aa+1,ab)end
end
end
end
end
