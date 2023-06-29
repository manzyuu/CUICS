b_="way2"
aZ="Y"
aY="way"
aX="+"
aW="%04d"
aV="y"
aU="dir"
aT="X"
aS="-"
aR="%03d"
aQ="touch"
aP="%02d"
aO="vis"
aN="x"

a=255
m=false
x=true
Z=input
J=math
t=screen
O=property
E=O.getText
V=t.drawTriangleF
v=t.drawRect
g=t.drawRectF
h=t.drawLine
r=t.drawText
I=J.abs
o=string.format
R=t.drawClear
_=t.setColor
N=J.max
B=J.min
p=Z.getBool
j=output.setBool
b=Z.getNumber
do
D,T,Q=x,x,O.getBool("Monitor Swap")w=2
aH=20
H,F=0,0
n,C=1,10
L=0
y={}f={}f.ad=0
f.ac=0
k={}k.ah=0
G={}G.u=0
G.s=0
c={}c.ay,c.aL,c.aI,c.at,c.aw,c.aG,c.aB,c.aJ,c.aA,c.az,c.au={},{},{},{},{},{},{},{},{},{},{}l={[aN]={},[aV]={},[aQ]={}}end
function onTick()if D==m then return end
D=m
f.u,f.s=b(9),b(10)L=J.sqrt((G.u-f.u)^2+(G.s-f.s)^2)j(13,D)j(14,p(1)or p(2))A=m
l[aN][1],l[aV][1],l[aQ][1]=b(1),b(2),p(1)l[aN][2],l[aV][2],l[aQ][2]=b(3),b(4),p(2)y.aj,y.d=b(5),b(6)aM,aK=b(7),b(8)f.ac=f.ad
f.u=b(9)f.s=b(10)f.ad=b(11)f.av=(b(11)-f.ac)*60
f.aE=b(17)f.aD=b(18)ax=b(29)aF=b(30)am=p(3)al=p(4)ai=b(13)as=b(14)k.q=b(15)k.ah=b(16)c[aO][k.q]=p(5)c[aU][k.q]=p(6)c[aY][k.q]=p(7)c[b_][k.q]=p(8)do
if l[aQ][1]then
w=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if w==1 then
if T then
H,F=f.u,f.s
end
if l[aQ][2]==m then
K=m
end
if e(0,0,5,5,2)then
if K==m then
n=n+1
end
K=x
end
if e(0,6,5,5,2)then
if K==m then
n=n-1
end
K=x
end
n=B(N(n,1),22)C=B(n-5,0)/5+B(N(n-4,1),10)+B(N(n-14,0),8)*5
if e(13,13,6,6,2)then
T=x
else
if l[aQ][2]and n==m then
H=-(l[aN][2]-16)*C/2+H
F=-(l[aV][2]-16)*C/2+F
T=m
end
end
end
if w==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==O.getNumber("Passcode"))then
d=b(20)c[aT][d]=b(22)c[aZ][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()D=x
if P(A==m,Q)then
_(10,10,10)R()_(200,50,20)i(29,1,aT)i(17,1,o(aR,I(f.u//100)))_(20,50,200)i(29,7,aZ)i(17,7,o(aR,I(f.s//100)))_(a,a,a)i(0,1,o(aP,B(I(L//1000),99)))r(7,1,".")i(10,1,o("%01d",I(L)//100%10))i(8,7,"KM")aC(L)_(5,5,5)h(15,0,15,13)_(1,1,1)h(0,13,32,13)_(30,30,30)g(0,15,13,7)_(50,50,50)v(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)g(15,15,7,7)_(50,50,50)v(15,15,6,6)_(a,a,a)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)if al then
_(70,70,70)g(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,20,50)else
_(30,30,30)g(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)g(0,24,13,7)_(50,50,50)v(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)g(16,24,17,7)_(50,50,50)v(15,24,16,6)_(a,a,a)i(16,25,"EXTE")A=P(A==m,Q)else
if w==0 then
elseif w==1 then
t.drawMap(H,F,C)i(0,26,C)_(5,5,5)g(0,0,5,10)_(20,20,20)v(0,0,4,4)v(0,5,4,4)_(a,a,a)r(1,0,aX)r(1,5,aS)t.drawCircle(16,16,4)elseif w==2 then
_(10,10,10)R()_(a,a,a)V(2,1,0,4,5,4)h(2,4,2,6)r(6,1,o(aW,k.ah//1))r(6,8,o(aW,ai//1))_(30,30,30)h(0,6,32,6)_(50,50,50)r(6,20,o(aW,as//1))_(25,25,25)g(27,0,5,6)g(27,7,5,5)g(2,14,5,5)g(8,14,5,5)g(14,14,5,5)g(20,14,5,5)g(27,14,5,5)g(27,20,5,5)g(0,20,5,5)g(27,27,5,5)g(0,26,13,6)_(a,a,a)r(28,2,"^")r(28,7,aX)d=c[aO][k.q]or 50
_(d,d,d)i(3,13,"v")d=c[aU][k.q]and a or 50
_(d,d,d)h(9,15,11,15)h(11,16,11,17)h(9,17,11,17)h(9,16,9,17)d=c[aY][k.q]and a or 50
_(d,d,d)r(15,14,aX)if(c[b_][k.q])then
_(a,a,a)else
_(50,50,50)end
g(21,15,3,2)h(21,17,21,18)_(a,a,a)V(29,15,27,18,32,18)V(29,25,26,21,32,21)r(1,20,aS)if(am)then _(a,a,a)else _(50,50,50)end
h(28,29,28,31)h(29,28,31,28)h(30,30,30,31)i(1,27,"DEL")if k.q==11 then
i(15,27,"EMG")else
i(19,27,o(aP,k.q//1))end
elseif(w==3)then
_(10,10,10)R()_(a,30,60)i(0,0,"RPS :"..o(aR,y.aj//1))if(y.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..o(aR,y.d//1))elseif(w==4)then
end
A=P(A,Q)end
end
function e(u,s,aq,ap,M)af,ab=l[aN][M],l[aV][M]if u<=af and
u+aq>=af and
s<=ab and
s+ap>=ab and
l[aQ][M]then
return x
else
return m
end
end
function i(ar,ak,z)if type(z)=="number" then
z=tostring(z)end
ao=E("F1")..E("F2")..E("F3")..E("F4")for U=1,z:len()do
ag=z:sub(U,U):byte()*5-159
for S=1,5 do
an="0x"..ao:sub(ag,ag+4):sub(S,S)for aa=1,3 do
if an & 2^(4-aa)>0 then
W=ar+U*4+aa-5
Y=ak+S-1
h(W,Y,W+1,Y)end
end
end
end
end
function P(ae,X)return ae or X and(ae and X)==m
end
