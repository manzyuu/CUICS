aO="%04d"
aN="+"

l=255
m=false
g=true
aq=input
aw=math
ah=output
E=screen
Y=property
S=Y.getText
v=E.drawRectF
W=string.format
H=E.drawText
V=E.drawTriangleF
r=E.drawLine
j=E.setColor
J=ah.setNumber
B=ah.setBool
al=aw.floor
h=aq.getNumber
u=aq.getBool
D=Y.getNumber
do
L=10000
aJ=g
af=Y.getBool("Monitor Swap")ad=m
N=2
aF=D("Passcode")aG,aK=0,0
aL,aH=1,10
T={}i={}i.z=1
i.A=m
i.I=D("DefSendfreq")b={}b.y={}b.P={}b.x={}b.at={}b.ak={}b.q={}b.p={}b.ax={}b.ao={}f={}f.q=0
f.p=0
f.t=0
d={D("DefRecd.F.1"),D("DefRecd.F.2"),D("DefRecd.F.3"),D("DefRecd.F.4"),0,0,0,0}X=g
_={}_.q=0
_.p=0
_.F=10
_.G=m
_.o=g
_.au=m
_.R=m
w=1
Q=m
K=0
X=g
end
for c=1,8,1 do
b.y[d[c]]=d[c]~=0
end
function onTick()do
_.R=u(1)_.o=_.F==0 and u(1)and _.au
_.F=(u(1)and(_.F==0))and 5 or
_.F>0 and _.F-1 or 0
_.au=not u(1)ae=u(32)and not ae
K=ae and 6 or K>0 and K-1 or 0
av=not av
local e=d[i.z]if e~=0 and i.A and K==0 then
b.at[e]=h(1)b.q[e]=h(2)//1
b.p[e]=h(3)//1
b.ax[e]=h(7)//1
b.ao[e]=h(8)//1
end
T.ab=h(9)T.ac=h(10)T.aM=h(11)T.aI=h(12)Z=h(14)O=h(15)f.q=h(16)f.p=h(17)_.q=h(18)_.p=h(19)N=h(23)if _.F==0 then
i.I=h(20)or 0
i.A=u(20)w=h(24)for c=1,8,1 do
d[c]=al(h(24+c))%L or 0
b.ak[d[c]]=b.ak[d[c]]or m
if 0~=d[c]then
local aa=al(h(24+c)/L)b.y[d[c]]=aa & 1==1
b.P[d[c]]=aa & 2==2
b.x[d[c]]=aa & 4==4
end
end
end
for c=1,7,1 do
if d[c]==0 and d[c+1]~=0 then
for C=c,7,1 do
d[C]=d[C+1]end
end
end
end
do
if N==2 then
if n(27,0,5,6,_.o,g)and Z~=0 then
_.G=g
i.I=(Z//1)%L
end
if n(27,7,5,5,_.o,g)and i.I~=O then
for c=1,8,1 do
local e=d[c]if e==O then
break
end
if e==0 and O~=0 then
d[c]=(O//1)%L
b.y[d[c]]=g
break
end
end
_.G=g
end
for c=0,1,1 do
local e=d[w+c]local U=e~=0
if n(1,14+c*12,5,5,_.o,g)and U then
b.y[e]=not b.y[e]end
if n(7,14+c*12,5,5,_.o,g)and U then
b.P[e]=not b.P[e]end
if n(13,14+c*12,5,5,_.o,g)and U then
b.x[e]=not b.x[e]end
if n(20,15+c*12,3,2,_.o,g)and U then
f.t=e==f.t and 0 or d[w+c]end
if n(0,8+c*12,5,5,_.o,g)then
d[w+c]=0
end
_.G=_.ar
end
end
end
do
Q=N<=2 and _.o
do
if u(29)then
f.q=Z//1
f.p=O//1
Q=g
end
if u(30)and f.t~=0 then
f.q=b.x[f.t]and b.ax[f.t]or b.q[f.t]f.p=b.x[f.t]and b.ao[f.t]or b.p[f.t]Q=g
end
if u(31)then
f.q=h(21)f.p=h(22)Q=g
end
end
B(10,Q or X)X=m
B(11,n(27,27,5,5,_.o,g))B(12,n(27,20,5,5,_.o,g))B(13,n(27,14,5,5,_.o,g))B(14,K==2)B(32,av)J(16,f.q//1)J(17,f.p//1)J(20,aw.max(i.I,1))if i.A then
if ae then
i.z=(i.z==9 or d[i.z]==0)and 1 or i.z+1
end
J(21,d[i.z])end
for c=1,8,1 do
local e=d[c]J(24+c,(e+((b.y[e]and 1 or 0)+(b.P[e]and 2 or 0)+(b.x[e]and 4 or 0))*L)or 0)end
end
_.G=_.o and _.G or m
end
function onDraw()if ad then
ad=m
if af and N==2 then
ap()end
else
ad=g
if not af and N==2 then
ap()end
end
end
function ap()local a=0
j(10,10,10)E.drawClear()j(30,30,30)r(0,6,32,6)j(l,l,l)V(2,1,0,4,5,4)r(2,4,2,6)a=i.A and l or 80
j(a,a,a)H(6,1,W(aO,i.I//1))j(25,25,25)v(27,0,5,6)a=n(27,0,5,6,_.R,m)and l or 50
j(a,a,a)H(28,2,"^")j(25,25,25)v(27,14,5,5)v(27,20,5,5)v(27,7,5,5)v(27,27,5,5)a=n(27,7,5,5,_.R,m)and l or 50
j(a,a,a)H(28,7,aN)a=n(27,14,5,5,_.R,m)and l or 50
j(a,a,a)V(29,15,27,18,32,18)a=n(27,20,5,5,_.R,m)and l or 50
j(a,a,a)V(29,25,26,21,32,21)a=i.A and l or 50
j(a,a,a)r(28,29,28,31)r(29,28,31,28)r(30,30,30,31)an(d[w],0)an(d[w+1],1)j(100,100,100)ai(24,27,W("%01d",w%2+w//2))end
function an(s,k)s=s or 0
k=k*12
local a=s~=0 and 150 or 45
j(a,a,a)if b.at[s]==4000 and i.A then
j(50,l,50)end
H(6,8+k,W(aO,s//1))j(25,25,25)for c=0,3,1 do
v(1+6*c,14+k,5,5)end
a=s~=0 and l or 80
v(0,8+k,5,5)j(l,l,l)H(1,8+k,"-")a=b.y[s]and l or 50
j(a,a,a)ai(2,13+k,"v")a=b.P[s]and l or 50
j(a,a,a)r(8,15+k,10,15+k)r(10,16+k,10,17+k)r(8,17+k,10,17+k)r(8,16+k,8,17+k)a=b.x[s]and l or 50
j(a,a,a)H(14,14+k,aN)a=(f.t==s and s~=0)and l or 50
j(a,a,a)v(20,15+k,3,2)r(20,17+k,20,18+k)end
function n(ab,ac,aE,aD,ar,am)if ab<=_.q and
ab+aE>=_.q and
ac<=_.p and
ac+aD>=_.p and
ar then
if not _.G and am then
return g
elseif not am then
return g
end
else
return m
end
end
function ai(aB,aA,M)if type(M)=="number" then
M=tostring(M)end
aC=S("F1")..S("F2")..S("F3")..S("F4")for c=1,M:len()do
as=M:sub(c,c):byte()*5-159
for C=1,5 do
az="0x"..aC:sub(as,as+4):sub(C,C)for ay=1,3 do
if az & 2^(4-ay)>0 then
aj=aB+c*4+ay-5
ag=aA+C-1
r(aj,ag,aj+1,ag)end
end
end
end
end
