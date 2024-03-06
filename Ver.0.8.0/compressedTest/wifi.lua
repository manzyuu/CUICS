-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3370 (3737 with comment) chars
---@section __LB_SIMULATOR_ONLY__
do
    ---@type Simulator -- Set properties and screen sizes here - will run once when the script is loaded
    simulator = simulator
    simulator:setScreen(1, "1x1")
    simulator:setScreen(2, "1x1")
    simulator:setProperty("F1",
        "0000044404AA000AEAEA4E4E4A248A26E624800048884844480A4A004E400004800E000000422488EAAAEC444EE2E8EE2E2EAAE22E8E2EE8EAEE2244EAEAE")
    simulator:setProperty("F2",
        "EAE2E0404004048248420E0E084248E26048CEC8EAEAAEACAEE888ECAAADE8C8EE8C88E8BBEBBEBBE444EE444CBBCBB8888EEEEBBBEEEBEAAAEEBE88EBBC6")
    simulator:setProperty("F3",
        "EAECBE8E2EE4444AAAAEAAAA4AAEEAAA4AAAAE44E248EC888C88422622264A0000000E84000006AE88EAE00E8E22EAE00ECE64E446AE2E88EAA404444044C")
    simulator:setProperty("F4",
        "88ACA44446008EE00E6600EAE0EAE80EAE2006880EC6E04E4400AAE00AA400AEE00A4A0AA480E6CE6484644444C424CEEEEE")
    simulator:setProperty("Monitor Swap", false)
    simulator:setProperty("MFMPassCode", 5000)
    simulator:setProperty("DefRecd.F.1", 1)
    simulator:setProperty("DefRecd.F.2", 2)
    simulator:setProperty("DefRecd.F.3", 3)
    simulator:setProperty("DefRecd.F.4", 4)

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        local function lerp(min, max, data)
            return (1 - data) * min + data * max
        end
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputBool(10, simulator:getIsToggled(1))
        simulator:setInputNumber(1, screenConnection.touchX)
        simulator:setInputNumber(2, screenConnection.touchY)
        simulator:setInputNumber(3, 1)
        simulator:setInputNumber(4, lerp(5000, 5001, simulator:getSlider(1)))
        simulator:setInputNumber(5, lerp(0, 50, simulator:getSlider(1)))       --Engine RPS
        simulator:setInputNumber(6, lerp(0, 120, simulator:getSlider(2)))      --Engine Temp
        simulator:setInputNumber(7, lerp(0, 1, simulator:getSlider(3)))        --Battery
        simulator:setInputNumber(8, lerp(0, 999, simulator:getSlider(4)))      --Fuel
        simulator:setInputNumber(9, lerp(-0, 999, simulator:getSlider(5)))     --GPSX
        simulator:setInputNumber(10, lerp(-0, 999, simulator:getSlider(6)))    --GPSY
        simulator:setInputNumber(11, lerp(-10, 9999, simulator:getSlider(7)))  --Altitude
        simulator:setInputNumber(12, 0)                                        --None
        simulator:setInputNumber(13, lerp(1, 9999, simulator:getSlider(8)))    --Keypad B
        simulator:setInputNumber(14, lerp(1, 10, simulator:getSlider(9)))      --N番目に格納されている受信チャンネル
        simulator:setInputNumber(15, lerp(1, 10, simulator:getSlider(10)))     --何番目の受信チャンネルか
        simulator:setInputNumber(16, lerp(1, 9999, simulator:getSlider(10)))   --Send Channel
        simulator:setInputNumber(17, lerp(0.5, -0.5, simulator:getSlider(12))) --Compass
        simulator:setInputNumber(18, lerp(0, 999, simulator:getSlider(13)))    --Speed
        simulator:setInputNumber(19, 0)                                        --None
        simulator:setInputNumber(20, lerp(0, 999, simulator:getSlider(14)))    --何チャンネル目を受信しているか
        simulator:setInputNumber(21, lerp(0, 999, simulator:getSlider(15)))    --Receive Passcode
        simulator:setInputNumber(22, lerp(0, 999, simulator:getSlider(16)))    --Receive X
        simulator:setInputNumber(23, 2)
        simulator:setInputNumber(24, (simulator:getSlider(1) * 6 + 1) // 1)
        simulator:setInputNumber(25, 000147)
        simulator:setInputNumber(26, 021111)
        simulator:setInputNumber(27, 042434)
        simulator:setInputNumber(28, 063756)
        simulator:setInputNumber(29, 084613)
        simulator:setInputNumber(30, 105603)
        simulator:setInputNumber(31, 146200)
    end;
end
---@endsection

-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
-- Developed & Minimized using LifeBoatAPI - Stormworks Lua plugin for VSCode
-- https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--      By Nameous Changey
-- Minimized Size: 3428 (3795 with comment) chars
aI="+"
aH="%04d"

i=255
Y=property
s=false
ah=input
x=math
V=output
t=screen
aj=string.format
u=t.drawText
P=t.drawTriangleF
q=t.drawRectF
k=t.drawLine
d=t.setColor
T=V.setNumber
M=x.floor
Z=ah.getBool
aa=x.pi
f=ah.getNumber
ax={av=0,aE=0,ar=0,aq=0,ap=0,aB=0,y=function()av=f(10)aE=f(11)ar=f(12)aq=f(13)ap=x.deg(f(14)*(aa*2))aB=f(14)*(aa*2)end}a={G=0,w=0,B=s,E=0,ag=s,ac=s,y=function()a.ac=a.B
a.G=f(1)a.w=f(2)a.B=Z(1)a.ag=not a.ac and a.B
a.E=(a.B and(a.E==0))and 6 or
a.E>0 and a.E-1 or 0
end,o=function(v,A,U,S)return a.ag and v<=a.G and a.G<=v+U and A<=a.w and a.w<=A+S
end,I=function(v,A,U,S)return a.B and v<=a.G and a.G<=v+U and A<=a.w and a.w<=A+S
end}_={ai={},au={},aw={},an={},am={},as={},j={},ae=0,F={},D={},z={},H=0,K=0,p=1,aG=0,C=s,r=0,R=10000,y=function()_.C=Z(10)if a.E==0 then
_.K=f(23)for e=1,8,1 do
_.j[e]=M(f(24+e))%_.R or 0
if 0~=_.j[e]then
local L=M(f(24+e)/_.R)_.ae=(L & 1==1)and _.j[e]or _.ae
_.F[_.j[e]]=L & 2==2
_.D[_.j[e]]=L & 4==4
_.z[_.j[e]]=L & 8==8
end
end
end
local l=_.j[_.p]if l~=0 and _.C and _.r==0 then
_.ai[l]=f(4)_.au[l]=f(5)//1
_.aw[l]=f(6)//1
_.an[l]=f(7)_.am[l]=f(8)//1
_.as[l]=f(9)//1
end
_.r=_.r==0 and 8 or
_.r>0 and _.r-1 or _.r
_.p=_.r==0 and _.p+1 or _.p
_.p=_.p>8 and 1 or _.p
end,ao=function(n)n=M(n)if(0<n and n<10000)then
for e=1,8,1 do
if _.j[e]==n then
break
end
if _.j[e]==0 then
_.j[e]=n
break
end
end
end
end,az=function(J)for e=J,7,1 do
_.j[e]=_.j[e+1]end
end,ay=function(n)if(0<n and n<10000)then
_.K=n
end
end,aD=function()T(22,_.j[_.p])T(23,_.K)for e=1,8,1 do
local l=_.j[e]local c=((_.H==l and 1 or 0)+(_.F[l]and 2 or 0)+(_.D[l]and 4 or 0)+(_.z[l]and 8 or 0))*_.R
T(24+e,l+c)end
end}al={ak=function(at,max,min)return x.min(x.max(at,min),max)end}do
Q=Y.getBool("Monitor Swap")aC=Y.getNumber("MFMPassCode")O=s
N=s
aA=1
X=1
m=1
end
function onTick()N=not N
V.setBool(32,N)X=f(3)ax.y()_.y()a.y()aF=f(15)af=f(16)_.aD()end
function onDraw()ab=X==aA
if O~=Q then
O=s
if Q and ab then
ad()end
else
O=true
if not Q and ab then
ad()end
end
end
function ad()d(10,10,10)t.drawClear()d(30,30,30)k(0,6,32,6)d(25,25,25)q(27,14,5,5)q(27,20,5,5)q(27,7,5,5)q(27,27,5,5)d(i,i,i)P(2,1,0,4,5,4)k(2,4,2,6)c=_.C and i or 80
d(c,c,c)u(6,1,aj(aH,_.K//1))d(25,25,25)q(27,0,5,6)c=a.I(27,0,5,5)and i or 50
if a.o(27,0,5,6)then
_.ay(af)end
d(c,c,c)u(28,2,"^")c=a.I(27,7,5,5)and i or 50
if a.o(27,7,5,5)then
_.ao(af)end
d(c,c,c)u(28,7,aI)c=a.I(27,14,5,5)and i or 50
m=a.o(27,14,5,5)and m-1 or m
d(c,c,c)P(29,15,27,18,32,18)c=a.I(27,20,5,5)and i or 50
m=a.o(27,20,5,5)and m+1 or m
d(c,c,c)P(29,25,26,21,32,21)al.ak(m,4,1)d(3,5,3)k(26,7,26,31)d(200,100,200)k(26,1+m*6,26,7+m*6)c=_.C and i or 50
d(c,c,c)k(28,29,28,31)k(29,28,31,28)k(30,30,30,31)W(m*2-1,0,_)W(m*2,1,_)end
function W(J,b,_)h=_.j[J]or 0
b=b*12
local g=h~=0 and 150 or 45
d(g,g,g)if _.ai[h]==aC and _.C and h~=0 then
d(50,i,50)end
u(6,8+b,aj(aH,h//1))d(25,25,25)for e=0,3,1 do
q(1+6*e,14+b,5,5)end
g=h~=0 and i or 80
q(0,8+b,5,5)d(i,i,i)u(1,8+b,"-")if a.o(0,8+b,5,5)then
_.az(J)end
g=_.F[h]and i or 50
d(g,g,g)k(2,15+b,2,17+b)k(3,17+b,3,18+b)k(4,15+b,4,17+b)if a.o(1,13+b,5,5)then
_.F[h]=not _.F[h]end
g=_.D[h]and i or 50
d(g,g,g)k(8,15+b,10,15+b)k(9,18+b,11,16+b)k(8,16+b,8,18+b)if a.o(7,13+b,5,5)then
_.D[h]=not _.D[h]end
g=_.z[h]and i or 50
d(g,g,g)u(14,14+b,aI)if a.o(13,13+b,5,5)then
_.z[h]=not _.z[h]end
g=(_.H==h and h~=0)and i or 50
d(g,g,g)q(20,15+b,3,2)k(20,17+b,20,18+b)if a.o(19,13+b,5,5)then
_.H=(h~=_.H)and h or 0
end
end
