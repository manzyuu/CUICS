aP="%04d"
aO="+"

k=255
l=false
f=true
av=input
ah=output
A=screen
aa=property
S=aa.getText
w=A.drawRectF
Y=string.format
D=A.drawText
ab=A.drawTriangleF
r=A.drawLine
h=A.setColor
C=ah.setNumber
E=ah.setBool
at=math.floor
g=av.getNumber
t=av.getBool
do
L=10000
aL=f
ap=aa.getBool("Monitor Swap")U=l
O=2
aI=aa.getNumber("Passcode")aH,aJ=0,0
aG,aN=1,10
Q={}e={}e.m=1
e.M=l
e.G=0
d={}d.z={}d.H={}d.K={}d.ao={}d.as={}d.ad={}d.au={}i={}i.u=0
i.v=0
i.y=0
c={0,0,0,0,0,0,0,0}V=f
_={}_.u=0
_.v=0
_.B=10
_.s=l
_.p=f
_.an=l
_.J=l
n=1
F=l
T=0
V=f
end
function onTick()do
_.J=t(1)_.p=_.B==0 and t(1)and _.an
_.B=(t(1)and(_.B==0))and 5 or
_.B>0 and _.B-1 or 0
_.an=not t(1)aq=t(32)T=aq and 6 or T>0 and T-1 or 0
ar=not ar
if c[e.m]~=0 and e.M and T==0 then
d.ao[c[e.m]]=g(1)d.ad[c[e.m]]=g(7)//1
d.au[c[e.m]]=g(8)//1
end
Q.X=g(9)Q.ac=g(10)Q.aK=g(11)Q.aM=g(12)W=g(14)N=g(15)i.u=g(16)i.v=g(17)_.u=g(18)_.v=g(19)O=g(23)if _.B==0 then
e.G=g(20)or 0
e.M=t(20)n=g(24)for b=1,8,1 do
c[b]=at(g(24+b))%L or 0
d.as[c[b]]=d.as[c[b]]or l
if 0~=c[b]then
local Z=at(g(24+b)/L)d.z[c[b]]=Z & 1==1
d.H[c[b]]=Z & 2==2
d.K[c[b]]=Z & 4==4
end
end
end
for b=1,7,1 do
if c[b]==0 and c[b+1]~=0 then
for x=b,7,1 do
c[x]=c[x+1]end
end
end
end
do
if O==2 then
if o(27,0,5,6,_.p,f)and W~=0 then
_.s=f
e.G=(W//1)%L
end
if o(27,7,5,5,_.p,f)then
for b=1,8,1 do
if c[b]==N or e.G==N then
break
end
if c[b]==0 and N~=0 then
c[b]=(N//1)%L
d.z[c[b]]=f
break
end
end
_.s=f
end
for b=0,1,1 do
local R=c[n+b]~=0
if o(1,14+b*12,5,5,_.p,f)and R then
_.s=f
d.z[c[n+b]]=not d.z[c[n+b]]end
if o(7,14+b*12,5,5,_.p,f)and R then
_.s=f
d.H[c[n+b]]=not d.H[c[n+b]]end
if o(13,14+b*12,5,5,_.p,f)and R then
_.s=f
d.K[c[n+b]]=not d.K[c[n+b]]end
if o(20,15+b*12,3,2,_.p,f)and R then
_.s=f
i.y=c[n+b]==i.y and 0 or c[n+b]end
if o(0,8+b*12,5,5,_.p,f)then
_.s=f
c[n+b]=0
end
end
end
end
do
F=O<=2 and _.p
do
if t(29)then
i.u=W//1
i.v=N//1
F=f
end
if t(30)and i.y~=0 then
i.u=d.ad[i.y]or 0
i.v=d.au[i.y]or 0
F=f
end
if t(31)then
i.u=g(21)i.v=g(22)F=f
end
end
E(10,F or V)V=l
E(11,o(27,27,5,5,_.p,f))E(12,o(27,20,5,5,_.p,f))E(13,o(27,14,5,5,_.p,f))E(32,ar)e.m=aq and e.m+1 or e.m
e.m=e.m==9 and 1 or e.m
e.m=c[e.m]==0 and 1 or e.m
C(16,i.u//1)C(17,i.v//1)C(20,e.G)C(13,c[e.m])C(21,c[e.m])for b=1,8,1 do
local ay=d.z[c[b]]and 1 or 0
local aC=d.H[c[b]]and 2 or 0
local aB=d.K[c[b]]and 4 or 0
C(24+b,(c[b]+(ay+aC+aB)*L))end
end
_.s=_.p and _.s or l
end
function onDraw()if U then
U=l
if ap and O==2 then
al()end
else
U=f
if not ap and O==2 then
al()end
end
end
function al()local a=0
h(10,10,10)A.drawClear()h(30,30,30)r(0,6,32,6)h(k,k,k)ab(2,1,0,4,5,4)r(2,4,2,6)a=e.M and k or 80
h(a,a,a)D(6,1,Y(aP,e.G//1))h(25,25,25)w(27,0,5,6)a=o(27,0,5,6,_.J,l)and k or 50
h(a,a,a)D(28,2,"^")h(25,25,25)w(27,14,5,5)w(27,20,5,5)w(27,7,5,5)w(27,27,5,5)a=o(27,7,5,5,_.J,l)and k or 50
h(a,a,a)D(28,7,aO)a=o(27,14,5,5,_.J,l)and k or 50
h(a,a,a)ab(29,15,27,18,32,18)a=o(27,20,5,5,_.J,l)and k or 50
h(a,a,a)ab(29,25,26,21,32,21)a=e.M and k or 50
h(a,a,a)r(28,29,28,31)r(29,28,31,28)r(30,30,30,31)am(c[n],0)am(c[n+1],1)h(100,100,100)ak(24,27,Y("%01d",n%2+n//2))end
function am(q,j)q=q or 0
local a=0
j=j*12
a=q~=0 and 150 or 45
h(a,a,a)if d.ao[q]==4000 and e.M then
h(50,k,50)end
D(6,8+j,Y(aP,q//1))h(25,25,25)for b=0,3,1 do
w(1+6*b,14+j,5,5)end
a=q~=0 and k or 80
w(0,8+j,5,5)h(k,k,k)D(1,8+j,"-")a=d.z[q]and k or 50
h(a,a,a)ak(2,13+j,"v")a=d.H[q]and k or 50
h(a,a,a)r(8,15+j,10,15+j)r(10,16+j,10,17+j)r(8,17+j,10,17+j)r(8,16+j,8,17+j)a=d.K[q]and k or 50
h(a,a,a)D(14,14+j,aO)a=(i.y==q and q~=0)and k or 50
h(a,a,a)w(20,15+j,3,2)r(20,17+j,20,18+j)end
function o(X,ac,aD,aw,az,aj)local P=l
if X<=_.u and
X+aD>=_.u and
ac<=_.v and
ac+aw>=_.v and
az then
if not _.s and aj then
P=f
elseif not aj then
P=f
end
else
P=l
end
return P
end
function ak(aE,aF,I)if type(I)=="number" then
I=tostring(I)end
ax=S("F1")..S("F2")..S("F3")..S("F4")for b=1,I:len()do
ai=I:sub(b,b):byte()*5-159
for x=1,5 do
aA="0x"..ax:sub(ai,ai+4):sub(x,x)for ae=1,3 do
if aA & 2^(4-ae)>0 then
af=aE+b*4+ae-5
ag=aF+x-1
r(af,ag,af+1,ag)end
end
end
end
end
