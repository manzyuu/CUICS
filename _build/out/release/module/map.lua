-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>

bd=","

y=255
r=100
e=false
f=true
ab=string
af=property
aF=input
B=math
v=screen
az=v.drawText
F=v.drawRect
ak=B.cos
aA=B.sin
T=B.pi
x=v.drawRectF
E=v.drawLine
g=v.setColor
A=map.mapToScreen
V=output.setBool
ad=B.max
M=B.min
a=aF.getNumber
aa=aF.getBool
G=af.getText
at=table.insert
function av(S,ar)if ab.find(S,ar)==nil then
return{S}end
local Y={}local aM="(.-)"..ar.."()"
local aC
for aL,aW in ab.gmatch(S,aM)do
at(Y,aL)aC=aW
end
at(Y,ab.sub(S,aC))return Y
end
do
an=10000
aX=f
au=af.getBool("Monitor Swap")U=e
ai=e
z=1
aH=af.getNumber("Passcode")q,s=0,0
t,l=1,10
o={}J={}J.bc=1
J.ac=e
_={}_.aD={}_.am={}_.aB={}_.aK={}_.n={}_.m={}_.O={}_.aG={}_.aR={}_.al={}_.ap={}h={0,0,0,0,0,0,0,0}D={}D.n=0
D.m=0
w={}w.n=0
w.m=0
u={}u.ae=av(G("MapPlayerColor"),bd)u.ah=av(G("MapAnotherColor"),bd)bb=f
d={}d.H=e
b_=1
K=e
R=f
U=e
ao=0
N=0
end
function onTick()do
d.C=aa(1)ai=not ai
for b=1,8,1 do
h[b]=B.floor(a(24+b))%an or 0
if 0~=h[b]then
local Z=(a(24+b)//an)_.aD[h[b]]=Z & 1==1
_.am[h[b]]=Z & 2==2
_.aB[h[b]]=Z & 4==4
end
end
local p=a(13)N=p~=ao and 4 or N>0 and N-1 or 0
ao=p
if a(1)==aH and N==0 and p~=0 then
_.aK[p]=a(1)_.n[p]=a(2)//1
_.m[p]=a(3)//1
_.O[p]=a(4)_.aG[p]=a(5)//1
_.aR[p]=a(6)//1
_.al[p]=a(7)//1
_.ap[p]=a(8)//1
end
o.j=a(9)o.i=a(10)o.P=a(11)o.aZ=a(12)ba=a(14)aY=a(15)D.n=a(16)D.m=a(17)d.n=a(18)d.m=a(19)w.n=a(21)w.m=a(22)z=a(23)J.ac=aa(20)w.aS=aa(21)end
do
if z==1 then
do
if k(0,0,5,5,f)then
d.H=f
t=t-1
end
if k(0,6,5,5,f)then
d.H=f
t=t+1
end
t=M(ad(t,1),22)l=M(t-5,0)/5+M(ad(t-4,1),10)+M(ad(t-14,0),8)*5
end
do
R=k(13,13,6,6,e)and f or R
if R then
q,s=o.j,o.i
end
local c=K and 23 or 6
if d.C and not(k(0,0,5,11,e)or k(26,0,6,c,e)or k(13,13,6,6,e))then
R=e
q=(d.n-16)*l/2+q
s=-(d.m-16)*l/2+s
end
if k(27,0,5,4,f)then
d.H=f
K=not K
end
end
end
end
do
V(1,k(27,6,5,5,f)and z==1)V(2,k(27,12,5,5,f)and z==1)V(3,k(27,18,5,5,f)and z==1)V(32,ai)end
d.H=d.C and d.H or e
end
function onDraw()if U then
U=e
if au and z==1 then
aw()end
else
U=f
if not au and z==1 then
aw()end
end
end
function aw()v.drawMap(q,s,l)if K then
local j,i=A(q,s,l,32,32,o.j,o.i)local aN,aU=A(q,s,l,32,32,D.n,D.m)g(r,10,r)E(j,i,aN,aU)end
for b=1,8,1 do
if h[b]==0 then
break
end
if _.aD[h[b]]and J.ac then
local L,Q=A(q,s,l,32,32,_.n[h[b]],_.m[h[b]])g(u.ah[1],u.ah[2],u.ah[3])x(L-1,Q-1,3,3)if _.am[h[b]]then
_.O[h[b]]=_.O[h[b]]or 0
local P=((_.O[h[b]]+1.75)%1-.5)*2*T+T/2
E(L,Q,aA(P)*8+L,ak(P)*8+Q)end
if _.aB[h[b]]then
local ag,aO=A(q,s,l,32,32,_.al[h[b]],_.ap[h[b]])g(150,150,r)E(L,Q,ag,aO)x(ag-1,ag-1,3,3)end
end
end
do
local j,i=A(q,s,l,32,32,o.j,o.i)local ay=((o.P+1.75)%1-.5)*2*T+T/2
g(u.ae[1],u.ae[2],u.ae[3])x(j-1,i-1,3,3)E(j,i,aA(ay)*8+j,ak(ay)*8+i)end
if w.aS then
g(150,150,0,70)local j,i=A(q,s,l,32,32,w.n,w.m)v.drawCircleF(j,i,10/l)end
if K then
local c=0
g(5,5,5)x(27,6,5,16)g(20,20,20)F(27,6,4,5)F(27,11,4,5)F(27,16,4,6)c=k(27,6,5,4,e)and r or y
g(c,c,c)W(28,6,"p")c=J.ac and y or 50
c=k(27,12,5,4,e)and r or c
g(c,c,c)x(28,13,3,2)E(28,13,28,16)c=k(27,18,5,4,e)and r or y
g(c,c,c)W(28,17,"B")end
do
g(r,r,r)W(0,26,l)g(5,5,5)x(0,0,5,10)x(27,0,4,4)g(20,20,20)F(0,0,4,4)F(0,5,4,4)F(27,0,4,4)g(y,y,y)az(1,0,"+")az(1,5,"-")c=k(27,0,5,4,e)and r or y
g(c,c,c)W(28,-1,"w")g(200,200,200,200)v.drawCircle(16,16,4)end
end
function k(j,i,aT,aQ,C)local X=e
if j<=d.n and
j+aT>=d.n and
i<=d.m and
i+aQ>=d.m and
d.C then
if not d.H and C then
X=f
elseif not C then
X=f
end
else
X=e
end
return X
end
function W(aP,aI,I)if type(I)=="number" then
I=tostring(I)end
aJ=G("F1")..G("F2")..G("F3")..G("F4")for b=1,I:len()do
as=I:sub(b,b):byte()*5-159
for aj=1,5 do
aV="0x"..aJ:sub(as,as+4):sub(aj,aj)for ax=1,3 do
if aV & 2^(4-ax)>0 then
aq=aP+b*4+ax-5
aE=aI+aj-1
E(aq,aE,aq+1,aE)end
end
end
end
end
