b_="-"
aZ="way2"
aY="touch"
aX="%03d"
aW="dir"
aV="%02d"
aU="+"
aT="x"
aS="%04d"
aR="X"
aQ="way"
aP="vis"
aO="y"
aN="Y"

a=255
m=false
x=true
aa=input
K=math
s=screen
P=property
J=P.getText
U=s.drawTriangleF
w=s.drawRect
g=s.drawRectF
h=s.drawLine
p=s.drawText
L=K.abs
q=string.format
T=s.drawClear
_=s.setColor
O=K.max
z=K.min
r=aa.getBool
j=output.setBool
b=aa.getNumber
do
D,N,R=x,x,P.getBool("Monitor Swap")v=2
av=20
I,E=0,0
o,y=1,10
F=0
B={}f={}f.ab=0
f.X=0
k={}k.Y=0
H={}H.t=0
H.u=0
c={}c.aG,c.aE,c.aL,c.aA,c.aD,c.aF,c.au,c.ax,c.aK,c.aH,c.aw={},{},{},{},{},{},{},{},{},{},{}l={[aT]={},[aO]={},[aY]={}}end
function onTick()if D==m then return end
D=m
f.t,f.u=b(9),b(10)F=K.sqrt((H.t-f.t)^2+(H.u-f.u)^2)j(13,D)j(14,r(1)or r(2))C=m
l[aT][1],l[aO][1],l[aY][1]=b(1),b(2),r(1)l[aT][2],l[aO][2],l[aY][2]=b(3),b(4),r(2)B.am,B.d=b(5),b(6)aC,aJ=b(7),b(8)f.X=f.ab
f.t=b(9)f.u=b(10)f.ab=b(11)f.aM=(b(11)-f.X)*60
f.ay=b(17)f.aB=b(18)at=b(29)aI=b(30)ak=r(3)ao=r(4)ai=b(13)ar=b(14)k.n=b(15)k.Y=b(16)c[aP][k.n]=r(5)c[aW][k.n]=r(6)c[aQ][k.n]=r(7)c[aZ][k.n]=r(8)do
if l[aY][1]then
v=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if v==1 then
if N then
I,E=f.t,f.u
end
if l[aY][2]==m then
G=m
end
if e(0,0,5,5,2)then
if G==m then
o=o+1
end
G=x
end
if e(0,6,5,5,2)then
if G==m then
o=o-1
end
G=x
end
o=z(O(o,1),22)y=z(o-5,0)/5+z(O(o-4,1),10)+z(O(o-14,0),8)*5
if e(13,13,6,6,2)then
N=x
else
if l[aY][2]and o==m then
I=-(l[aT][2]-16)*y/2+I
E=-(l[aO][2]-16)*y/2+E
N=m
end
end
end
if v==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==P.getNumber("Passcode"))then
d=b(20)c[aR][d]=b(22)c[aN][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()D=x
if Q(C==m,R)then
_(10,10,10)T()_(200,50,20)i(29,1,aR)i(17,1,q(aX,L(f.t//100)))_(20,50,200)i(29,7,aN)i(17,7,q(aX,L(f.u//100)))_(a,a,a)i(0,1,q(aV,z(L(F//1000),99)))p(7,1,".")i(10,1,q("%01d",L(F)//100%10))i(8,7,"KM")az(F)_(5,5,5)h(15,0,15,13)_(1,1,1)h(0,13,32,13)_(30,30,30)g(0,15,13,7)_(50,50,50)w(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)g(15,15,7,7)_(50,50,50)w(15,15,6,6)_(a,a,a)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)if ao then
_(70,70,70)g(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,20,50)else
_(30,30,30)g(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)g(0,24,13,7)_(50,50,50)w(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)g(16,24,17,7)_(50,50,50)w(15,24,16,6)_(a,a,a)i(16,25,"EXTE")C=Q(C==m,R)else
if v==0 then
elseif v==1 then
s.drawMap(I,E,y)i(0,26,y)_(5,5,5)g(0,0,5,10)_(20,20,20)w(0,0,4,4)w(0,5,4,4)_(a,a,a)p(1,0,aU)p(1,5,b_)s.drawCircle(16,16,4)elseif v==2 then
_(10,10,10)T()_(a,a,a)U(2,1,0,4,5,4)h(2,4,2,6)p(6,1,q(aS,k.Y//1))p(6,8,q(aS,ai//1))_(30,30,30)h(0,6,32,6)_(50,50,50)p(6,20,q(aS,ar//1))_(25,25,25)g(27,0,5,6)g(27,7,5,5)g(2,14,5,5)g(8,14,5,5)g(14,14,5,5)g(20,14,5,5)g(27,14,5,5)g(27,20,5,5)g(0,20,5,5)g(27,27,5,5)g(0,26,13,6)_(a,a,a)p(28,2,"^")p(28,7,aU)d=c[aP][k.n]or 50
_(d,d,d)i(3,13,"v")d=c[aW][k.n]and a or 50
_(d,d,d)h(9,15,11,15)h(11,16,11,17)h(9,17,11,17)h(9,16,9,17)d=c[aQ][k.n]and a or 50
_(d,d,d)p(15,14,aU)if(c[aZ][k.n])then
_(a,a,a)else
_(50,50,50)end
g(21,15,3,2)h(21,17,21,18)_(a,a,a)U(29,15,27,18,32,18)U(29,25,26,21,32,21)p(1,20,b_)if(ak)then _(a,a,a)else _(50,50,50)end
h(28,29,28,31)h(29,28,31,28)h(30,30,30,31)i(1,27,"DEL")if k.n==11 then
i(15,27,"EMG")else
i(19,27,q(aV,k.n//1))end
elseif(v==3)then
_(10,10,10)T()_(a,30,60)i(0,0,"RPS :"..q(aX,B.am//1))if(B.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..q(aX,B.d//1))elseif(v==4)then
end
C=Q(C,R)end
end
function e(t,u,ap,aq,M)ae,ac=l[aT][M],l[aO][M]if t<=ae and
t+ap>=ae and
u<=ac and
u+aq>=ac and
l[aY][M]then
return x
else
return m
end
end
function i(as,an,A)if type(A)=="number" then
A=tostring(A)end
aj=J("F1")..J("F2")..J("F3")..J("F4")for V=1,A:len()do
Z=A:sub(V,V):byte()*5-159
for S=1,5 do
al="0x"..aj:sub(Z,Z+4):sub(S,S)for ag=1,3 do
if al & 2^(4-ag)>0 then
ad=as+V*4+ag-5
W=an+S-1
h(ad,W,ad+1,W)end
end
end
end
end
function Q(af,ah)return af or ah and(af and ah)==m
end
