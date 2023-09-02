b_="way"
aZ="vis"
aY="+"
aX="X"
aW="-"
aV="touch"
aU="dir"
aT="x"
aS="%04d"
aR="%03d"
aQ="Y"
aP="y"
aO="%02d"
aN="way2"

a=255
m=false
x=true
aa=input
I=math
t=screen
V=property
H=V.getText
S=t.drawTriangleF
w=t.drawRect
f=t.drawRectF
h=t.drawLine
p=t.drawText
L=I.abs
q=string.format
T=t.drawClear
_=t.setColor
N=I.max
C=I.min
r=aa.getBool
j=output.setBool
b=aa.getNumber
do
K,Q,O=x,x,V.getBool("Monitor Swap")v=2
aJ=20
D,E=0,0
n,y=1,10
F=0
z={}g={}g.ah=0
g.ac=0
k={}k.ab=0
G={}G.u=0
G.s=0
c={}c.aB,c.aC,c.aI,c.az,c.av,c.aH,c.at,c.aE,c.aD,c.aG,c.ax={},{},{},{},{},{},{},{},{},{},{}l={[aT]={},[aP]={},[aV]={}}end
function onTick()if K==m then return end
K=m
g.u,g.s=b(9),b(10)F=I.sqrt((G.u-g.u)^2+(G.s-g.s)^2)j(13,K)j(14,r(1)or r(2))B=m
l[aT][1],l[aP][1],l[aV][1]=b(1),b(2),r(1)l[aT][2],l[aP][2],l[aV][2]=b(3),b(4),r(2)z.ai,z.d=b(5),b(6)aM,au=b(7),b(8)g.ac=g.ah
g.u=b(9)g.s=b(10)g.ah=b(11)g.aL=(b(11)-g.ac)*60
g.aK=b(17)g.aw=b(18)aA=b(29)aF=b(30)as=r(3)am=r(4)aj=b(13)ao=b(14)k.o=b(15)k.ab=b(16)c[aZ][k.o]=r(5)c[aU][k.o]=r(6)c[b_][k.o]=r(7)c[aN][k.o]=r(8)do
if l[aV][1]then
v=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if v==1 then
if Q then
D,E=g.u,g.s
end
if l[aV][2]==m then
J=m
end
if e(0,0,5,5,2)then
if J==m then
n=n+1
end
J=x
end
if e(0,6,5,5,2)then
if J==m then
n=n-1
end
J=x
end
n=C(N(n,1),22)y=C(n-5,0)/5+C(N(n-4,1),10)+C(N(n-14,0),8)*5
if e(13,13,6,6,2)then
Q=x
else
if l[aV][2]and n==m then
D=-(l[aT][2]-16)*y/2+D
E=-(l[aP][2]-16)*y/2+E
Q=m
end
end
end
if v==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==V.getNumber("Passcode"))then
d=b(20)c[aX][d]=b(22)c[aQ][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()K=x
if M(B==m,O)then
_(10,10,10)T()_(200,50,20)i(29,1,aX)i(17,1,q(aR,L(g.u//100)))_(20,50,200)i(29,7,aQ)i(17,7,q(aR,L(g.s//100)))_(a,a,a)i(0,1,q(aO,C(L(F//1000),99)))p(7,1,".")i(10,1,q("%01d",L(F)//100%10))i(8,7,"KM")ay(F)_(5,5,5)h(15,0,15,13)_(1,1,1)h(0,13,32,13)_(30,30,30)f(0,15,13,7)_(50,50,50)w(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)f(15,15,7,7)_(50,50,50)w(15,15,6,6)_(a,a,a)h(16,19,16,21)h(16,19,19,16)h(19,16,21,16)h(18,19,18,21)h(19,18,21,18)h(20,20,21,20)if am then
_(70,70,70)f(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,20,50)else
_(30,30,30)f(23,15,8,7)_(50,50,50)w(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)f(0,24,13,7)_(50,50,50)w(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)f(16,24,17,7)_(50,50,50)w(15,24,16,6)_(a,a,a)i(16,25,"EXTE")B=M(B==m,O)else
if v==0 then
elseif v==1 then
t.drawMap(D,E,y)i(0,26,y)_(5,5,5)f(0,0,5,10)_(20,20,20)w(0,0,4,4)w(0,5,4,4)_(a,a,a)p(1,0,aY)p(1,5,aW)t.drawCircle(16,16,4)elseif v==2 then
_(10,10,10)T()_(a,a,a)S(2,1,0,4,5,4)h(2,4,2,6)p(6,1,q(aS,k.ab//1))p(6,8,q(aS,aj//1))_(30,30,30)h(0,6,32,6)_(50,50,50)p(6,20,q(aS,ao//1))_(25,25,25)f(27,0,5,6)f(27,7,5,5)f(2,14,5,5)f(8,14,5,5)f(14,14,5,5)f(20,14,5,5)f(27,14,5,5)f(27,20,5,5)f(0,20,5,5)f(27,27,5,5)f(0,26,13,6)_(a,a,a)p(28,2,"^")p(28,7,aY)d=c[aZ][k.o]or 50
_(d,d,d)i(3,13,"v")d=c[aU][k.o]and a or 50
_(d,d,d)h(9,15,11,15)h(11,16,11,17)h(9,17,11,17)h(9,16,9,17)d=c[b_][k.o]and a or 50
_(d,d,d)p(15,14,aY)if(c[aN][k.o])then
_(a,a,a)else
_(50,50,50)end
f(21,15,3,2)h(21,17,21,18)_(a,a,a)S(29,15,27,18,32,18)S(29,25,26,21,32,21)p(1,20,aW)if(as)then _(a,a,a)else _(50,50,50)end
h(28,29,28,31)h(29,28,31,28)h(30,30,30,31)i(1,27,"DEL")if k.o==11 then
i(15,27,"EMG")else
i(19,27,q(aO,k.o//1))end
elseif(v==3)then
_(10,10,10)T()_(a,30,60)i(0,0,"RPS :"..q(aR,z.ai//1))if(z.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..q(aR,z.d//1))elseif(v==4)then
end
B=M(B,O)end
end
function e(u,s,ak,al,R)af,ag=l[aT][R],l[aP][R]if u<=af and
u+ak>=af and
s<=ag and
s+al>=ag and
l[aV][R]then
return x
else
return m
end
end
function i(ap,an,A)if type(A)=="number" then
A=tostring(A)end
ar=H("F1")..H("F2")..H("F3")..H("F4")for U=1,A:len()do
ae=A:sub(U,U):byte()*5-159
for P=1,5 do
aq="0x"..ar:sub(ae,ae+4):sub(P,P)for ad=1,3 do
if aq & 2^(4-ad)>0 then
Y=ap+U*4+ad-5
W=an+P-1
h(Y,W,Y+1,W)end
end
end
end
end
function M(Z,X)return Z or X and(Z and X)==m
end
