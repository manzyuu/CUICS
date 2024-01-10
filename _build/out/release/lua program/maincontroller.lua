b_="way"
aZ="+"
aY="touch"
aX="x"
aW="%04d"
aV="-"
aU="Y"
aT="way2"
aS="%02d"
aR="vis"
aQ="dir"
aP="X"
aO="y"
aN="%03d"

a=255
m=false
x=true
W=input
I=math
s=screen
O=property
J=O.getText
R=s.drawTriangleF
v=s.drawRect
h=s.drawRectF
g=s.drawLine
o=s.drawText
F=I.abs
q=string.format
N=s.drawClear
_=s.setColor
P=I.max
C=I.min
n=W.getBool
j=output.setBool
b=W.getNumber
do
E,V,U=x,x,O.getBool("Monitor Swap")w=2
ay=20
D,H=0,0
r,A=1,10
K=0
z={}f={}f.Y=0
f.ab=0
k={}k.X=0
L={}L.u=0
L.t=0
c={}c.aG,c.aD,c.aK,c.aB,c.aL,c.au,c.ax,c.aC,c.aw,c.av,c.aM={},{},{},{},{},{},{},{},{},{},{}l={[aX]={},[aO]={},[aY]={}}end
function onTick()if E==m then return end
E=m
f.u,f.t=b(9),b(10)K=I.sqrt((L.u-f.u)^2+(L.t-f.t)^2)j(13,E)j(14,n(1)or n(2))y=m
l[aX][1],l[aO][1],l[aY][1]=b(1),b(2),n(1)l[aX][2],l[aO][2],l[aY][2]=b(3),b(4),n(2)z.aq,z.d=b(5),b(6)aE,aF=b(7),b(8)f.ab=f.Y
f.u=b(9)f.t=b(10)f.Y=b(11)f.aJ=(b(11)-f.ab)*60
f.aA=b(17)f.aH=b(18)at=b(29)aI=b(30)aj=n(3)ar=n(4)ak=b(13)ao=b(14)k.p=b(15)k.X=b(16)c[aR][k.p]=n(5)c[aQ][k.p]=n(6)c[b_][k.p]=n(7)c[aT][k.p]=n(8)do
if l[aY][1]then
w=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if w==1 then
if V then
D,H=f.u,f.t
end
if l[aY][2]==m then
G=m
end
if e(0,0,5,5,2)then
if G==m then
r=r+1
end
G=x
end
if e(0,6,5,5,2)then
if G==m then
r=r-1
end
G=x
end
r=C(P(r,1),22)A=C(r-5,0)/5+C(P(r-4,1),10)+C(P(r-14,0),8)*5
if e(13,13,6,6,2)then
V=x
else
if l[aY][2]and r==m then
D=-(l[aX][2]-16)*A/2+D
H=-(l[aO][2]-16)*A/2+H
V=m
end
end
end
if w==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==O.getNumber("Passcode"))then
d=b(20)c[aP][d]=b(22)c[aU][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()E=x
if Q(y==m,U)then
_(10,10,10)N()_(200,50,20)i(29,1,aP)i(17,1,q(aN,F(f.u//100)))_(20,50,200)i(29,7,aU)i(17,7,q(aN,F(f.t//100)))_(a,a,a)i(0,1,q(aS,C(F(K//1000),99)))o(7,1,".")i(10,1,q("%01d",F(K)//100%10))i(8,7,"KM")az(K)_(5,5,5)g(15,0,15,13)_(1,1,1)g(0,13,32,13)_(30,30,30)h(0,15,13,7)_(50,50,50)v(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)h(15,15,7,7)_(50,50,50)v(15,15,6,6)_(a,a,a)g(16,19,16,21)g(16,19,19,16)g(19,16,21,16)g(18,19,18,21)g(19,18,21,18)g(20,20,21,20)if ar then
_(70,70,70)h(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,20,50)else
_(30,30,30)h(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)h(0,24,13,7)_(50,50,50)v(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)h(16,24,17,7)_(50,50,50)v(15,24,16,6)_(a,a,a)i(16,25,"EXTE")y=Q(y==m,U)else
if w==0 then
elseif w==1 then
s.drawMap(D,H,A)i(0,26,A)_(5,5,5)h(0,0,5,10)_(20,20,20)v(0,0,4,4)v(0,5,4,4)_(a,a,a)o(1,0,aZ)o(1,5,aV)s.drawCircle(16,16,4)elseif w==2 then
_(10,10,10)N()_(a,a,a)R(2,1,0,4,5,4)g(2,4,2,6)o(6,1,q(aW,k.X//1))o(6,8,q(aW,ak//1))_(30,30,30)g(0,6,32,6)_(50,50,50)o(6,20,q(aW,ao//1))_(25,25,25)h(27,0,5,6)h(27,7,5,5)h(2,14,5,5)h(8,14,5,5)h(14,14,5,5)h(20,14,5,5)h(27,14,5,5)h(27,20,5,5)h(0,20,5,5)h(27,27,5,5)h(0,26,13,6)_(a,a,a)o(28,2,"^")o(28,7,aZ)d=c[aR][k.p]or 50
_(d,d,d)i(3,13,"v")d=c[aQ][k.p]and a or 50
_(d,d,d)g(9,15,11,15)g(11,16,11,17)g(9,17,11,17)g(9,16,9,17)d=c[b_][k.p]and a or 50
_(d,d,d)o(15,14,aZ)if(c[aT][k.p])then
_(a,a,a)else
_(50,50,50)end
h(21,15,3,2)g(21,17,21,18)_(a,a,a)R(29,15,27,18,32,18)R(29,25,26,21,32,21)o(1,20,aV)if(aj)then _(a,a,a)else _(50,50,50)end
g(28,29,28,31)g(29,28,31,28)g(30,30,30,31)i(1,27,"DEL")if k.p==11 then
i(15,27,"EMG")else
i(19,27,q(aS,k.p//1))end
elseif(w==3)then
_(10,10,10)N()_(a,30,60)i(0,0,"RPS :"..q(aN,z.aq//1))if(z.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..q(aN,z.d//1))elseif(w==4)then
end
y=Q(y,U)end
end
function e(u,t,al,ai,T)ah,ag=l[aX][T],l[aO][T]if u<=ah and
u+al>=ah and
t<=ag and
t+ai>=ag and
l[aY][T]then
return x
else
return m
end
end
function i(am,an,B)if type(B)=="number" then
B=tostring(B)end
as=J("F1")..J("F2")..J("F3")..J("F4")for S=1,B:len()do
af=B:sub(S,S):byte()*5-159
for M=1,5 do
ap="0x"..as:sub(af,af+4):sub(M,M)for aa=1,3 do
if ap & 2^(4-aa)>0 then
ac=am+S*4+aa-5
ad=an+M-1
g(ac,ad,ac+1,ad)end
end
end
end
end
function Q(ae,Z)return ae or Z and(ae and Z)==m
end
