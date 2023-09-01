b_="x"
aZ="%03d"
aY="X"
aX="touch"
aW="vis"
aV="y"
aU="way"
aT="Y"
aS="+"
aR="dir"
aQ="way2"
aP="%04d"
aO="-"
aN="%02d"

a=255
m=false
x=true
ah=input
K=math
t=screen
P=property
L=P.getText
T=t.drawTriangleF
v=t.drawRect
g=t.drawRectF
f=t.drawLine
o=t.drawText
G=K.abs
r=string.format
V=t.drawClear
_=t.setColor
Q=K.max
B=K.min
p=ah.getBool
j=output.setBool
b=ah.getNumber
do
H,N,R=x,x,P.getBool("Monitor Swap")w=2
aw=20
E,I=0,0
n,z=1,10
J=0
y={}h={}h.ae=0
h.af=0
k={}k.Z=0
D={}D.s=0
D.u=0
c={}c.aA,c.aD,c.aL,c.aF,c.au,c.ax,c.av,c.aG,c.aB,c.ay,c.aJ={},{},{},{},{},{},{},{},{},{},{}l={[b_]={},[aV]={},[aX]={}}end
function onTick()if H==m then return end
H=m
h.s,h.u=b(9),b(10)J=K.sqrt((D.s-h.s)^2+(D.u-h.u)^2)j(13,H)j(14,p(1)or p(2))C=m
l[b_][1],l[aV][1],l[aX][1]=b(1),b(2),p(1)l[b_][2],l[aV][2],l[aX][2]=b(3),b(4),p(2)y.ak,y.d=b(5),b(6)aK,aH=b(7),b(8)h.af=h.ae
h.s=b(9)h.u=b(10)h.ae=b(11)h.at=(b(11)-h.af)*60
h.aC=b(17)h.aE=b(18)az=b(29)aI=b(30)al=p(3)as=p(4)ao=b(13)aj=b(14)k.q=b(15)k.Z=b(16)c[aW][k.q]=p(5)c[aR][k.q]=p(6)c[aU][k.q]=p(7)c[aQ][k.q]=p(8)do
if l[aX][1]then
w=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if w==1 then
if N then
E,I=h.s,h.u
end
if l[aX][2]==m then
F=m
end
if e(0,0,5,5,2)then
if F==m then
n=n+1
end
F=x
end
if e(0,6,5,5,2)then
if F==m then
n=n-1
end
F=x
end
n=B(Q(n,1),22)z=B(n-5,0)/5+B(Q(n-4,1),10)+B(Q(n-14,0),8)*5
if e(13,13,6,6,2)then
N=x
else
if l[aX][2]and n==m then
E=-(l[b_][2]-16)*z/2+E
I=-(l[aV][2]-16)*z/2+I
N=m
end
end
end
if w==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==P.getNumber("Passcode"))then
d=b(20)c[aY][d]=b(22)c[aT][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()H=x
if M(C==m,R)then
_(10,10,10)V()_(200,50,20)i(29,1,aY)i(17,1,r(aZ,G(h.s//100)))_(20,50,200)i(29,7,aT)i(17,7,r(aZ,G(h.u//100)))_(a,a,a)i(0,1,r(aN,B(G(J//1000),99)))o(7,1,".")i(10,1,r("%01d",G(J)//100%10))i(8,7,"KM")aM(J)_(5,5,5)f(15,0,15,13)_(1,1,1)f(0,13,32,13)_(30,30,30)g(0,15,13,7)_(50,50,50)v(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)g(15,15,7,7)_(50,50,50)v(15,15,6,6)_(a,a,a)f(16,19,16,21)f(16,19,19,16)f(19,16,21,16)f(18,19,18,21)f(19,18,21,18)f(20,20,21,20)if as then
_(70,70,70)g(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,20,50)else
_(30,30,30)g(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)g(0,24,13,7)_(50,50,50)v(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)g(16,24,17,7)_(50,50,50)v(15,24,16,6)_(a,a,a)i(16,25,"EXTE")C=M(C==m,R)else
if w==0 then
elseif w==1 then
t.drawMap(E,I,z)i(0,26,z)_(5,5,5)g(0,0,5,10)_(20,20,20)v(0,0,4,4)v(0,5,4,4)_(a,a,a)o(1,0,aS)o(1,5,aO)t.drawCircle(16,16,4)elseif w==2 then
_(10,10,10)V()_(a,a,a)T(2,1,0,4,5,4)f(2,4,2,6)o(6,1,r(aP,k.Z//1))o(6,8,r(aP,ao//1))_(30,30,30)f(0,6,32,6)_(50,50,50)o(6,20,r(aP,aj//1))_(25,25,25)g(27,0,5,6)g(27,7,5,5)g(2,14,5,5)g(8,14,5,5)g(14,14,5,5)g(20,14,5,5)g(27,14,5,5)g(27,20,5,5)g(0,20,5,5)g(27,27,5,5)g(0,26,13,6)_(a,a,a)o(28,2,"^")o(28,7,aS)d=c[aW][k.q]or 50
_(d,d,d)i(3,13,"v")d=c[aR][k.q]and a or 50
_(d,d,d)f(9,15,11,15)f(11,16,11,17)f(9,17,11,17)f(9,16,9,17)d=c[aU][k.q]and a or 50
_(d,d,d)o(15,14,aS)if(c[aQ][k.q])then
_(a,a,a)else
_(50,50,50)end
g(21,15,3,2)f(21,17,21,18)_(a,a,a)T(29,15,27,18,32,18)T(29,25,26,21,32,21)o(1,20,aO)if(al)then _(a,a,a)else _(50,50,50)end
f(28,29,28,31)f(29,28,31,28)f(30,30,30,31)i(1,27,"DEL")if k.q==11 then
i(15,27,"EMG")else
i(19,27,r(aN,k.q//1))end
elseif(w==3)then
_(10,10,10)V()_(a,30,60)i(0,0,"RPS :"..r(aZ,y.ak//1))if(y.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..r(aZ,y.d//1))elseif(w==4)then
end
C=M(C,R)end
end
function e(s,u,ap,aq,U)aa,ab=l[b_][U],l[aV][U]if s<=aa and
s+ap>=aa and
u<=ab and
u+aq>=ab and
l[aX][U]then
return x
else
return m
end
end
function i(ar,am,A)if type(A)=="number" then
A=tostring(A)end
ai=L("F1")..L("F2")..L("F3")..L("F4")for S=1,A:len()do
W=A:sub(S,S):byte()*5-159
for O=1,5 do
an="0x"..ai:sub(W,W+4):sub(O,O)for ac=1,3 do
if an & 2^(4-ac)>0 then
X=ar+S*4+ac-5
Y=am+O-1
f(X,Y,X+1,Y)end
end
end
end
end
function M(ag,ad)return ag or ad and(ag and ad)==m
end
