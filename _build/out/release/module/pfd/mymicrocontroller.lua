aZ="Y"
aY="-"
aX="x"
aW="+"
aV="vis"
aU="way2"
aT="WayX"
aS="Dir"
aR="%04d"
aQ="X"
aP="touch"
aO="WayY"
aN="Alt"
aM="y"
aL="Spd"
aK="way"
aJ="dir"
aI="%02d"
aH="%03d"

a=255
l=false
r=true
ai=input
O=string
D=math
q=screen
N=property
C=N.getText
K=q.drawTriangleF
t=q.drawRect
f=q.drawRectF
e=q.drawLine
p=q.drawText
G=D.abs
s=O.format
T=q.drawClear
_=q.setColor
R=D.max
w=D.min
n=ai.getBool
j=output.setBool
b=ai.getNumber
ag=q.drawCircle
ah=0
function onTick()ah=ah+1
end
function onDraw()ag(16,16,5)end
do H=r;U=r;S=N.getBool("Monitor Swap")u=2;az=20;F,I=0,0;o=1;z=10;J=0;B={}g={}g.aj=0;g.af=0;ac={["sendch"]=0}Y={[aX]=0,[aM]=0}i={[aV]={},[aJ]={},[aK]={},[aU]={},[aQ]={},[aZ]={},[aS]={},[aN]={},[aL]={},[aT]={},[aO]={}}k={[aX]={},[aM]={},[aP]={}}end;function onTick()if H==l then return end;H=l;g.x,g.y=b(9),b(10)J=D.sqrt((Y.x-g.x)^2+(Y.y-g.y)^2)j(13,H)j(14,n(1)or n(2))A=l;k[aX][1],k[aM][1],k[aP][1]=b(1),b(2),n(1)k[aX][2],k[aM][2],k[aP][2]=b(3),b(4),n(2)B.aw,B.c=b(5),b(6)aF,aG=b(7),b(8)g.af=g.aj;g.x=b(9)g.y=b(10)g.aj=b(11)g.aB=(b(11)-g.af)*60;g.ay=b(17)g.aC=b(18)aE=b(29)aD=b(30)am=n(3)aq=n(4)at=b(13)ax=b(14)m=b(15)ac.av=b(16)i[aV][m]=n(5)i[aJ][m]=n(6)i[aK][m]=n(7)i[aU][m]=n(8)do if k[aP][1]then u=d(0,15,12,6,1)and 1 or d(15,15,6,6,1)and 2 or d(0,24,16,6,1)and 3 or d(15,24,16,6,1)and 4 or 0 end;j(13,d(15,24,16,6,1))end;if u==1 then if U then F,I=g.x,g.y end;if k[aP][2]==l then E=l end;if d(0,0,5,5,2)then if E==l then o=o+1 end;E=r end;if d(0,6,5,5,2)then if E==l then o=o-1 end;E=r end;o=w(R(o,1),22)z=w(o-5,0)/5+w(R(o-4,1),10)+w(R(o-14,0),8)*5;if d(13,13,6,6,2)then U=r else if k[aP][2]and o==l then F=-(k[aX][2]-16)*z/2+F;I=-(k[aM][2]-16)*z/2+I;U=l end end end;if u==2 then j(1,d(27,0,5,6,2))j(2,d(27,7,5,5,2))j(3,d(2,14,5,5,2))j(4,d(8,14,5,5,2))j(5,d(14,14,5,5,2))j(6,d(20,14,5,5,2))j(7,d(27,14,5,5,2))j(8,d(27,20,5,5,2))j(9,d(0,20,5,5,2))j(10,d(27,27,5,5,2))j(11,d(0,26,9,6,2))j(12,d(22,20,4,6,1))end;if b(21)==N.getNumber("Passcode")then c=b(20)i[aQ][c]=b(22)i[aZ][c]=b(22)i[aS][c]=b(22)i[aN][c]=b(22)i[aL][c]=b(22)i[aT][c]=b(22)i[aO][c]=b(22)end end;function onDraw()H=r;if P(A==l,S)then _(10,10,10)T()_(200,50,20)h(29,1,aQ)h(17,1,s(aH,G(g.x//100)))_(20,50,200)h(29,7,aZ)h(17,7,s(aH,G(g.y//100)))_(a,a,a)h(0,1,s(aI,w(G(J//1000),99)))p(7,1,".")h(10,1,s("%01d",G(J)//100%10))h(8,7,"KM")aA(J)_(5,5,5)e(15,0,15,13)_(1,1,1)e(0,13,32,13)_(30,30,30)f(0,15,13,7)_(50,50,50)t(0,15,12,6)_(a,a,a)h(1,16,"MAP")_(30,30,30)f(15,15,7,7)_(50,50,50)t(15,15,6,6)_(a,a,a)e(16,19,16,21)e(16,19,19,16)e(19,16,21,16)e(18,19,18,21)e(19,18,21,18)e(20,20,21,20)if aq then _(70,70,70)f(23,15,8,7)_(50,50,50)t(23,15,8,6)_(a,20,50)else _(30,30,30)f(23,15,8,7)_(50,50,50)t(23,15,8,6)_(a,a,a)end;h(24,16,"Be")_(30,30,30)f(0,24,13,7)_(50,50,50)t(0,24,12,6)_(a,a,a)h(1,25,"STA")_(30,30,30)f(16,24,17,7)_(50,50,50)t(15,24,16,6)_(a,a,a)h(16,25,"EXTE")A=P(A==l,S)else if u==0 then elseif u==1 then q.drawMap(F,I,z)h(0,26,z)_(5,5,5)f(0,0,5,10)_(20,20,20)t(0,0,4,4)t(0,5,4,4)_(a,a,a)p(1,0,aW)p(1,5,aY)ag(16,16,4)elseif u==2 then _(10,10,10)T()_(a,a,a)K(2,1,0,4,5,4)e(2,4,2,6)p(6,1,s(aR,ac.av//1))p(6,8,s(aR,at//1))_(30,30,30)e(0,6,32,6)_(50,50,50)p(6,20,s(aR,ax//1))_(25,25,25)f(27,0,5,6)f(27,7,5,5)f(2,14,5,5)f(8,14,5,5)f(14,14,5,5)f(20,14,5,5)f(27,14,5,5)f(27,20,5,5)f(0,20,5,5)f(27,27,5,5)f(0,26,13,6)_(a,a,a)p(28,2,"^")p(28,7,aW)c=i[aV][m]or 50;_(c,c,c)h(3,13,"v")c=i[aJ][m]and a or 50;_(c,c,c)e(9,15,11,15)e(11,16,11,17)e(9,17,11,17)e(9,16,9,17)c=i[aK][m]and a or 50;_(c,c,c)p(15,14,aW)if i[aU][m]then _(a,a,a)else _(50,50,50)end;f(21,15,3,2)e(21,17,21,18)_(a,a,a)K(29,15,27,18,32,18)K(29,25,26,21,32,21)p(1,20,aY)if am then _(a,a,a)else _(50,50,50)end;e(28,29,28,31)e(29,28,31,28)e(30,30,30,31)h(1,27,"DEL")if m==11 then h(15,27,"EMG")else h(19,27,s(aI,m//1))end elseif u==3 then _(10,10,10)T()_(a,30,60)h(0,0,"RPS :"..O.format(aH,B.aw//1))if B.c>100 then _(a,0,10)end;h(0,6,"TEMP:"..O.format(aH,B.c//1))elseif u==4 then end;A=P(A,S)end end;function d(al,Z,ap,an,M)W,V=k[aX][M],k[aM][M]if al<=W and al+ap>=W and Z<=V and Z+an>=V and r==k[aP][M]then return r else return l end end;function h(ao,au,v)if type(v)=="number"then v=tostring(v)end;ar=C("F1")..C("F2")..C("F3")..C("F4")for L=1,v:len()do aa=v:sub(L,L):byte()*5-159;for Q=1,5 do as="0x"..ar:sub(aa,aa+4):sub(Q,Q)for ak=1,3 do if as&2^(4-ak)>0 then X=ao+L*4+ak-5;ad=au+Q-1;e(X,ad,X+1,ad)end end end end end;function P(ab,ae)return ab or ae and(ab and ae)==l end