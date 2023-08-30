b_="Y"
aZ="-"
aY="+"
aX="vis"
aW="way2"
aV="x"
aU="%04d"
aT="touch"
aS="X"
aR="y"
aQ="way"
aP="dir"
aO="%02d"
aN="%03d"

a=255
m=false
x=true
ae=input
I=math
u=screen
V=property
K=V.getText
R=u.drawTriangleF
w=u.drawRect
h=u.drawRectF
g=u.drawLine
n=u.drawText
L=I.abs
p=string.format
O=u.drawClear
_=u.setColor
N=I.max
B=I.min
o=ae.getBool
j=output.setBool
b=ae.getNumber
do
G,S,P=x,x,V.getBool("Monitor Swap")v=2
aH=20
H,F=0,0
q,y=1,10
D=0
C={}f={}f.ah=0
f.W=0
l={}l.ad=0
J={}J.t=0
J.s=0
c={}c.aD,c.ay,c.au,c.at,c.aC,c.aw,c.av,c.aE,c.aB,c.aL,c.ax={},{},{},{},{},{},{},{},{},{},{}k={[aV]={},[aR]={},[aT]={}}end
function onTick()if G==m then return end
G=m
f.t,f.s=b(9),b(10)D=I.sqrt((J.t-f.t)^2+(J.s-f.s)^2)j(13,G)j(14,o(1)or o(2))z=m
k[aV][1],k[aR][1],k[aT][1]=b(1),b(2),o(1)k[aV][2],k[aR][2],k[aT][2]=b(3),b(4),o(2)C.ak,C.d=b(5),b(6)aM,aK=b(7),b(8)f.W=f.ah
f.t=b(9)f.s=b(10)f.ah=b(11)f.aG=(b(11)-f.W)*60
f.aI=b(17)f.aJ=b(18)az=b(29)aA=b(30)as=o(3)am=o(4)ao=b(13)aj=b(14)l.r=b(15)l.ad=b(16)c[aX][l.r]=o(5)c[aP][l.r]=o(6)c[aQ][l.r]=o(7)c[aW][l.r]=o(8)do
if k[aT][1]then
v=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if v==1 then
if S then
H,F=f.t,f.s
end
if k[aT][2]==m then
E=m
end
if e(0,0,5,5,2)then
if E==m then
q=q+1
end
E=x
end
if e(0,6,5,5,2)then
if E==m then
q=q-1
end
E=x
end
q=B(N(q,1),22)y=B(q-5,0)/5+B(N(q-4,1),10)+B(N(q-14,0),8)*5
if e(13,13,6,6,2)then
S=x
else
if k[aT][2]and q==m then
H=-(k[aV][2]-16)*y/2+H
F=-(k[aR][2]-16)*y/2+F
S=m
end
end
end
if v==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==V.getNumber("Passcode"))then
d=b(20)c[aS][d]=b(22)c[b_][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()G=x
if U(z==m,P)then
_(10,10,10)O()_(200,50,20)i(29,1,aS)i(17,1,p(aN,L(f.t//100)))_(20,50,200)i(29,7,b_)i(17,7,p(aN,L(f.s//100)))_(a,a,a)i(0,1,p(aO,B(L(D//1000),99)))n(7,1,".")i(10,1,p("%01d",L(D)//100%10))i(8,7,"KM")aF(D)_(5,5,5)g(15,0,15,13)_(1,1,1)g(0,13,32,13)_(30,30,30)h(0,15,13,7)_(50,50,50)w(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)h(15,15,7,7)_(50,50,50)w(15,15,6,6)_(a,a,a)g(16,19,16,21)g(16,19,19,16)g(19,16,21,16)g(18,19,18,21)g(19,18,21,18)g(20,20,21,20)if am then
_(70,70,70)h(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,20,50)else
_(30,30,30)h(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)h(0,24,13,7)_(50,50,50)w(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)h(16,24,17,7)_(50,50,50)w(15,24,16,6)_(a,a,a)i(16,25,"EXTE")z=U(z==m,P)else
if v==0 then
elseif v==1 then
u.drawMap(H,F,y)i(0,26,y)_(5,5,5)h(0,0,5,10)_(20,20,20)w(0,0,4,4)w(0,5,4,4)_(a,a,a)n(1,0,aY)n(1,5,aZ)u.drawCircle(16,16,4)elseif v==2 then
_(10,10,10)O()_(a,a,a)R(2,1,0,4,5,4)g(2,4,2,6)n(6,1,p(aU,l.ad//1))n(6,8,p(aU,ao//1))_(30,30,30)g(0,6,32,6)_(50,50,50)n(6,20,p(aU,aj//1))_(25,25,25)h(27,0,5,6)h(27,7,5,5)h(2,14,5,5)h(8,14,5,5)h(14,14,5,5)h(20,14,5,5)h(27,14,5,5)h(27,20,5,5)h(0,20,5,5)h(27,27,5,5)h(0,26,13,6)_(a,a,a)n(28,2,"^")n(28,7,aY)d=c[aX][l.r]or 50
_(d,d,d)i(3,13,"v")d=c[aP][l.r]and a or 50
_(d,d,d)g(9,15,11,15)g(11,16,11,17)g(9,17,11,17)g(9,16,9,17)d=c[aQ][l.r]and a or 50
_(d,d,d)n(15,14,aY)if(c[aW][l.r])then
_(a,a,a)else
_(50,50,50)end
h(21,15,3,2)g(21,17,21,18)_(a,a,a)R(29,15,27,18,32,18)R(29,25,26,21,32,21)n(1,20,aZ)if(as)then _(a,a,a)else _(50,50,50)end
g(28,29,28,31)g(29,28,31,28)g(30,30,30,31)i(1,27,"DEL")if l.r==11 then
i(15,27,"EMG")else
i(19,27,p(aO,l.r//1))end
elseif(v==3)then
_(10,10,10)O()_(a,30,60)i(0,0,"RPS :"..p(aN,C.ak//1))if(C.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..p(aN,C.d//1))elseif(v==4)then
end
z=U(z,P)end
end
function e(t,s,ap,an,T)aa,ac=k[aV][T],k[aR][T]if t<=aa and
t+ap>=aa and
s<=ac and
s+an>=ac and
k[aT][T]then
return x
else
return m
end
end
function i(ai,aq,A)if type(A)=="number" then
A=tostring(A)end
ar=K("F1")..K("F2")..K("F3")..K("F4")for Q=1,A:len()do
af=A:sub(Q,Q):byte()*5-159
for M=1,5 do
al="0x"..ar:sub(af,af+4):sub(M,M)for ag=1,3 do
if al & 2^(4-ag)>0 then
Y=ai+Q*4+ag-5
X=aq+M-1
g(Y,X,Y+1,X)end
end
end
end
end
function U(Z,ab)return Z or ab and(Z and ab)==m
end
