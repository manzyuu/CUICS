b_="touch"
aZ="way2"
aY="x"
aX="way"
aW="%03d"
aV="%04d"
aU="Y"
aT="vis"
aS="%02d"
aR="y"
aQ="dir"
aP="X"
aO="-"
aN="+"

a=255
m=false
x=true
W=input
E=math
t=screen
M=property
F=M.getText
Q=t.drawTriangleF
v=t.drawRect
h=t.drawRectF
f=t.drawLine
n=t.drawText
D=E.abs
p=string.format
N=t.drawClear
_=t.setColor
P=E.max
y=E.min
q=W.getBool
j=output.setBool
b=W.getNumber
do
J,R,T=x,x,M.getBool("Monitor Swap")w=2
aM=20
L,I=0,0
o,C=1,10
K=0
B={}g={}g.ac=0
g.X=0
l={}l.af=0
H={}H.s=0
H.u=0
c={}c.av,c.aB,c.aF,c.at,c.au,c.az,c.aK,c.aG,c.ax,c.aw,c.aE={},{},{},{},{},{},{},{},{},{},{}k={[aY]={},[aR]={},[b_]={}}end
function onTick()if J==m then return end
J=m
g.s,g.u=b(9),b(10)K=E.sqrt((H.s-g.s)^2+(H.u-g.u)^2)j(13,J)j(14,q(1)or q(2))z=m
k[aY][1],k[aR][1],k[b_][1]=b(1),b(2),q(1)k[aY][2],k[aR][2],k[b_][2]=b(3),b(4),q(2)B.ap,B.d=b(5),b(6)ay,aC=b(7),b(8)g.X=g.ac
g.s=b(9)g.u=b(10)g.ac=b(11)g.aH=(b(11)-g.X)*60
g.aL=b(17)g.aA=b(18)aJ=b(29)aD=b(30)ar=q(3)ak=q(4)an=b(13)aq=b(14)l.r=b(15)l.af=b(16)c[aT][l.r]=q(5)c[aQ][l.r]=q(6)c[aX][l.r]=q(7)c[aZ][l.r]=q(8)do
if k[b_][1]then
w=e(0,15,12,6,1)and 1 or
e(15,15,6,6,1)and 2 or
e(0,24,16,6,1)and 3 or
e(15,24,16,6,1)and 4 or 0
end
j(13,e(15,24,16,6,1))end
if w==1 then
if R then
L,I=g.s,g.u
end
if k[b_][2]==m then
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
o=y(P(o,1),22)C=y(o-5,0)/5+y(P(o-4,1),10)+y(P(o-14,0),8)*5
if e(13,13,6,6,2)then
R=x
else
if k[b_][2]and o==m then
L=-(k[aY][2]-16)*C/2+L
I=-(k[aR][2]-16)*C/2+I
R=m
end
end
end
if w==2 then
j(1,e(27,0,5,6,2))j(2,e(27,7,5,5,2))j(3,e(2,14,5,5,2))j(4,e(8,14,5,5,2))j(5,e(14,14,5,5,2))j(6,e(20,14,5,5,2))j(7,e(27,14,5,5,2))j(8,e(27,20,5,5,2))j(9,e(0,20,5,5,2))j(10,e(27,27,5,5,2))j(11,e(0,26,9,6,2))j(12,e(22,20,4,6,1))end
if(b(21)==M.getNumber("Passcode"))then
d=b(20)c[aP][d]=b(22)c[aU][d]=b(22)c["Dir"][d]=b(22)c["Alt"][d]=b(22)c["Spd"][d]=b(22)c["WayX"][d]=b(22)c["WayY"][d]=b(22)end
end
function onDraw()J=x
if S(z==m,T)then
_(10,10,10)N()_(200,50,20)i(29,1,aP)i(17,1,p(aW,D(g.s//100)))_(20,50,200)i(29,7,aU)i(17,7,p(aW,D(g.u//100)))_(a,a,a)i(0,1,p(aS,y(D(K//1000),99)))n(7,1,".")i(10,1,p("%01d",D(K)//100%10))i(8,7,"KM")aI(K)_(5,5,5)f(15,0,15,13)_(1,1,1)f(0,13,32,13)_(30,30,30)h(0,15,13,7)_(50,50,50)v(0,15,12,6)_(a,a,a)i(1,16,"MAP")_(30,30,30)h(15,15,7,7)_(50,50,50)v(15,15,6,6)_(a,a,a)f(16,19,16,21)f(16,19,19,16)f(19,16,21,16)f(18,19,18,21)f(19,18,21,18)f(20,20,21,20)if ak then
_(70,70,70)h(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,20,50)else
_(30,30,30)h(23,15,8,7)_(50,50,50)v(23,15,8,6)_(a,a,a)end
i(24,16,"Be")_(30,30,30)h(0,24,13,7)_(50,50,50)v(0,24,12,6)_(a,a,a)i(1,25,"STA")_(30,30,30)h(16,24,17,7)_(50,50,50)v(15,24,16,6)_(a,a,a)i(16,25,"EXTE")z=S(z==m,T)else
if w==0 then
elseif w==1 then
t.drawMap(L,I,C)i(0,26,C)_(5,5,5)h(0,0,5,10)_(20,20,20)v(0,0,4,4)v(0,5,4,4)_(a,a,a)n(1,0,aN)n(1,5,aO)t.drawCircle(16,16,4)elseif w==2 then
_(10,10,10)N()_(a,a,a)Q(2,1,0,4,5,4)f(2,4,2,6)n(6,1,p(aV,l.af//1))n(6,8,p(aV,an//1))_(30,30,30)f(0,6,32,6)_(50,50,50)n(6,20,p(aV,aq//1))_(25,25,25)h(27,0,5,6)h(27,7,5,5)h(2,14,5,5)h(8,14,5,5)h(14,14,5,5)h(20,14,5,5)h(27,14,5,5)h(27,20,5,5)h(0,20,5,5)h(27,27,5,5)h(0,26,13,6)_(a,a,a)n(28,2,"^")n(28,7,aN)d=c[aT][l.r]or 50
_(d,d,d)i(3,13,"v")d=c[aQ][l.r]and a or 50
_(d,d,d)f(9,15,11,15)f(11,16,11,17)f(9,17,11,17)f(9,16,9,17)d=c[aX][l.r]and a or 50
_(d,d,d)n(15,14,aN)if(c[aZ][l.r])then
_(a,a,a)else
_(50,50,50)end
h(21,15,3,2)f(21,17,21,18)_(a,a,a)Q(29,15,27,18,32,18)Q(29,25,26,21,32,21)n(1,20,aO)if(ar)then _(a,a,a)else _(50,50,50)end
f(28,29,28,31)f(29,28,31,28)f(30,30,30,31)i(1,27,"DEL")if l.r==11 then
i(15,27,"EMG")else
i(19,27,p(aS,l.r//1))end
elseif(w==3)then
_(10,10,10)N()_(a,30,60)i(0,0,"RPS :"..p(aW,B.ap//1))if(B.d>100)then
_(a,0,10)end
i(0,6,"TEMP:"..p(aW,B.d//1))elseif(w==4)then
end
z=S(z,T)end
end
function e(s,u,ao,ai,V)Y,Z=k[aY][V],k[aR][V]if s<=Y and
s+ao>=Y and
u<=Z and
u+ai>=Z and
k[b_][V]then
return x
else
return m
end
end
function i(as,am,A)if type(A)=="number" then
A=tostring(A)end
aj=F("F1")..F("F2")..F("F3")..F("F4")for U=1,A:len()do
ah=A:sub(U,U):byte()*5-159
for O=1,5 do
al="0x"..aj:sub(ah,ah+4):sub(O,O)for ad=1,3 do
if al & 2^(4-ad)>0 then
ae=as+U*4+ad-5
ab=am+O-1
f(ae,ab,ae+1,ab)end
end
end
end
end
function S(aa,ag)return aa or ag and(aa and ag)==m
end
