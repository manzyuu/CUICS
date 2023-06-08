if true then
-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
-- GitHub: <GithubLink>
-- Workshop: <WorkshopLink>
--
--- Developed using LifeBoatAPI - Stormworks Lua plugin for VSCode - https://code.visualstudio.com/download (search "Stormworks Lua with LifeboatAPI" extension)
--- If you have any issues, please report them here: https://github.com/nameouschangey/STORMWORKS_VSCodeExtension/issues - by Nameous Changey


--[====[ HOTKEYS ]====]
-- Press F6 to simulate this file
-- Press F7 to build the project, copy the output from /_build/out/ into the game to use
-- Remember to set your Author name etc. in the settings: CTRL+COMMA


--[====[ EDITABLE SIMULATOR CONFIG - *automatically removed from the F7 build output ]====]
---@section __LB_SIMULATOR_ONLY__
do
    ---@type Simulator -- Set properties and screen sizes here - will run once when the script is loaded
    simulator = simulator
    simulator:setScreen(1, "1x1")
    simulator:setScreen(2, "5x5")
    simulator:setProperty("F1","0000044404AA000AEAEA4E4E4A248A26E624800048884844480A4A004E400004800E000000422488EAAAEC444EE2E8EE2E2EAAE22E8E2EE8EAEE2244EAEAE")
    simulator:setProperty("F2","EAE2E0404004048248420E0E084248E26048CEC8EAEAAEACAEE888ECAAADE8C8EE8C88E8BBEBBEBBE444EE444CBBCBB8888EEEEBBBEEEBEAAAEEBE88EBBC6")
    simulator:setProperty("F3","EAECBE8E2EE4444AAAAEAAAA4AAEEAAA4AAAAE44E248EC888C88422622264A0000000E84000006AE88EAE00E8E22EAE00ECE64E446AE2E88EAA404444044C")
    simulator:setProperty("F4","88ACA44446008EE00E6600EAE0EAE80EAE2006880EC6E04E4400AAE00AA400AEE00A4A0AA480E6CE6484644444C424CEEEEE")
    simulator:setProperty("indicatorColor","200,100,100,100,200,100,100,100,200,255,255,255")
    simulator:setProperty("SkyColor", "2020FF")
    simulator:setProperty("LandColor", "20FF20")
    simulator:setProperty("CenterLineColor", "FFFFFF")
    simulator:setProperty("Altitude Unit", "1")
    simulator:setProperty("Speed Unit", 3.6)

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)

    end;
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!


-- Tick function that will be executed every logic tick
end

--m = math
--min,max,abs,cos,sin,tan,acos,asin,atan,pi,(math.pi * 2) = m.min,m.max,m.abs,m.cos,m.sin,m.tan,m.acos,m.asin,m.atan,m.pi,m.pi*2


--定義部---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Phys = {}





--数学系
function convert()
    
    -- This uses the game's basis. That is,
    --     vehicle   world   color
    -- x   right     east    red
    -- y   up        up      green
    -- z   forward   north   blue

    -- Get angles.
    Phys.x     = input.getNumber(1)
    Phys.alt   = input.getNumber(2)
    Phys.y     = input.getNumber(3)
    

    local phyX = input.getNumber(4)
    local phyY = input.getNumber(5)
    local phyZ = input.getNumber(6)
    
    -- Get global angular velocities.
    local phyAngX = input.getNumber(10)
    local phyAngY = input.getNumber(11)
    local phyAngZ = input.getNumber(12)

    -- sin, 'cos I like it.
    local cx, sx = math.cos(phyX), math.sin(phyX)
    local cy, sy = math.cos(phyY), math.sin(phyY)
    local cz, sz = math.cos(phyZ), math.sin(phyZ)

    -- Build matrix.
    local matrix00 =  cy*cz
    local matrix01 = -cx*sz + sx*sy*cz
    local matrix02 =  sx*sz + cx*sy*cz
    local matrix10 =  cy*sz
    local matrix11 =  cx*cz + sx*sy*sz
    local matrix12 = -sx*cz + cx*sy*sz
    local matrix20 = -sy
    local matrix21 =  sx*cy
    local matrix22 =  cx*cy
    -- Equally good alternative if you prefer.
    Phys.tilt_x = math.atan(matrix10, math.sqrt(matrix12*matrix12 + matrix11*matrix11)) / (math.pi * 2)
    Phys.tilt_y = math.atan(matrix11, math.sqrt(matrix10*matrix10 + matrix12*matrix12)) / (math.pi * 2)
    Phys.tilt_z = math.atan(matrix12, math.sqrt(matrix11*matrix11 + matrix10*matrix10)) / (math.pi * 2)

    -- Compute compasses.
    Phys.compass_x = math.atan(matrix00, matrix20) / -(math.pi * 2)
    Phys.compass_y = math.atan(matrix01, matrix21) / -(math.pi * 2)
    Phys.compass_z = math.atan(matrix02, matrix22) / -(math.pi * 2)

    --local compassSensor = -math.atan(sx * sz + cx * sy * cz,cx * cy) / 2 / math.pi
    temp = (((1 - Phys.compass_y) % 1) * (math.pi * 2))
    Phys.compass_y = isInteger(temp)
    --Phys.compass_y = type(temp) == "number" and temp or 0



    -- Transform them to the local frame.
    Phys.angular_x = matrix00*phyAngX + matrix10*phyAngY + matrix20*phyAngZ
    Phys.angular_y = matrix01*phyAngX + matrix11*phyAngY + matrix21*phyAngZ
    Phys.angular_z = matrix02*phyAngX + matrix12*phyAngY + matrix22*phyAngZ


    --Phys.compass_y   = Phys.compass_y
    Phys.roll  = math.atan(Phys.tilt_y, Phys.tilt_x)
    --Phys.roll = 0
    Phys.pitch = Phys.tilt_z
end

--処理系---------------------------------------------------

function split(str, delim)
    if string.find(str, delim) == nil then
        return { str }
    end

    local result = {}
    local pat = "(.-)" .. delim .. "()"
    local lastPos
    for part, pos in string.gmatch(str, pat) do
        table.insert(result, part)
        lastPos = pos
    end
    table.insert(result, string.sub(str, lastPos))
    return result
end
function Colorconv16(name)	--16進数のカラーコードをRGBに変換する
	local Color = tonumber(property.getText(name),16)
	return (Color>>16) & 0xff, (Color>>8) & 0xff, Color & 0xff --R,G,B
end
function lerp(MIN,MAX,X)        --  0~1  f(x)と同じ挙動
    return (1 - X) * MIN + X * MAX
end
function isInteger(inVal)
    local temp
    if type(inVal)~="number" then
        temp = false
    else
        temp = inVal%1 ..""=="0"
    end
    if temp then
        return inVal
    else
        return 0
    end
end

--Font---------------------------------------------------

function drawNewFont(NewFontX,NewFontY,NewFontZ)
	local NewFontC,NewFontD,NewFontF,NewFontP,NewFontQ
	if type(NewFontZ)=="number"then
		NewFontZ=tostring(NewFontZ)
	end
	NewFontD=property.getText("F1")..property.getText("F2")..property.getText("F3")..property.getText("F4")
	for i=1,NewFontZ:len()do
		NewFontC=NewFontZ:sub(i,i):byte()*5-159
		for j=1,5 do
			NewFontF="0x"..NewFontD:sub(NewFontC,NewFontC+4):sub(j,j)
				for k=1,3 do
				if NewFontF&2^(4-k)>0 then
					NewFontP=NewFontX+i*4+k-5
					NewFontQ=NewFontY+j-1
					screen.drawLine(NewFontP,NewFontQ,NewFontP+1,NewFontQ)
				end
			end
		end
	end
end
--描画系---------------------------------------------------

function horizon()  --水平儀
    local roll  = Phys.roll * (math.pi * 2)
    local pitch = Phys.pitch * (math.pi * 2)

    local XPos = 0
    local YPos = 0

    local lineangle = 10 									--何度ごとに線を描画するかの指定
    local maxlinelength = 8							    	--↑の線の幅を指定
    for i=-360 // lineangle, 360 // lineangle do	        --lineangleに合わせた線を引くためのfor文
        local offsetX = math.cos(roll) * (i + pitch) + w / 2		--┬─ピッチ方向に線を動かすためのやつ
        local offsetY = math.sin(roll) * (i + pitch) + h / 2		--┘
        local X, Y = math.cos(roll) * i * lineangle + offsetX, math.sin(roll) * i * lineangle + offsetY    
                                                            --画面中心からロール角分傾けた線を描画したい線の半径まで引く
        local line1 =  roll + math.pi / 2						--┬─↑でひいた線の先端に垂直な線の角度　左右分。
        local line2 = -roll + math.pi / 2						--┘

        local linelength = math.cos(lerp(0, math.pi/2, (i + pitch) / 360 * h)) * maxlinelength  --端に行くほど線が短くなる

        if i == 0 then								        --水平線の色
            screen.setColor(255,255,255)
            local linelength = 20
        elseif i < 0 then							        --地面の色
            screen.setColor(50,255,50)
        else									        	--空の色
            screen.setColor(50,50,255)
        end

        local pixelX_1, pixelY_1 = math.cos(line1) * linelength + X,  math.sin(line1) * linelength + Y    --┬─描画する線の座標計算
        local pixelX_2, pixelY_2 = math.cos(line2) * linelength + X, -math.sin(line2) * linelength + Y    --┘
        
        screen.drawLine(pixelX_1 + XPos, pixelY_1 + YPos, pixelX_2 + XPos, pixelY_2 + YPos)	--線を描画する
        --screen.setColor(255,0,0,100)
        --screen.drawText(X,Y,i)
    end
    --screen.setColor(0,0,0)
    --screen.drawRectF(0,0,4,32)
    screen.setColor(255,255,255)
    screen.drawText(16,25,tostring(pitch))
end
function compassBar(targetangle)    --targetangle = degrees
    local compassBarSpase = 300

    screen.setColor(5,5,5)
    screen.drawRectF(10,23,11,7)
    screen.drawRectF(9,24,13,5)

    screen.setColor(255, 255, 225)
    --print(tonumber(math.floor(math.deg(Phys.compass_y))))
    drawNewFont(10, 24, string.format("%03d", tonumber(math.floor(math.deg(Phys.compass_y)))))

    screen.setColor(5, 70, 5)
    for i = 0, 72, 1 do
        screen.drawLine(math.floor(((math.floor(math.deg(Phys.compass_y)-i*5+360)%360)/360)*compassBarSpase), 29+i%2,
                        math.floor(((math.floor(math.deg(Phys.compass_y)-i*5+360)%360)/360)*compassBarSpase), 33)
    end
    
    screen.setColor(250, 250, 40)
    screen.drawLine(math.floor(((math.floor(math.deg(Phys.compass_y)-targetangle+360)%360)/360)*compassBarSpase), 29,
                    math.floor(((math.floor(math.deg(Phys.compass_y)-targetangle+360)%360)/360)*compassBarSpase), 33)
end
function Indicator(boolA,boolB,boolC,boolD) --四角4つ
    colorTable=split(indicatorColor,",")
    if boolA then
        screen.setColor(tonumber(colorTable[1]),tonumber(colorTable[2]),tonumber(colorTable[3]))
    else
        screen.setColor(10,10,10)
    end
    screen.drawRectF(0,4,4,3)--
    
    
    
    if boolB then
        screen.setColor(tonumber(colorTable[4]),tonumber(colorTable[5]),tonumber(colorTable[6]))
    else
        screen.setColor(10,10,10)
    end
    screen.drawRectF(0,10,4,3)--
    
    
    
    if boolC then
        screen.setColor(tonumber(colorTable[7]),tonumber(colorTable[8]),tonumber(colorTable[9]))
    else
        screen.setColor(10,10,10)
    end
    screen.drawRectF(0,16,4,3)--




    if boolD then
        screen.setColor(tonumber(colorTable[7]),tonumber(colorTable[8]),tonumber(colorTable[9]))
    else
        screen.setColor(10,10,10)
    end
    screen.drawRectF(0,22,4,3)--
end
function altimeter()
    screen.setColor(255,10,50,100)  --背景
    screen.drawRectF(0,12,32,7)
    
    screen.setColor(255,255,255)
    screen.drawLine(2,0,2,32)

    screen.setColor(255,190,0)  --左の四角
    screen.drawRectF(0,13,4,5)
    screen.drawLine(4,14,4,17)
    screen.drawLine(5,15,8,15)

    screen.drawTriangleF(30,16,32,13,32,19)  --右の三角

    screen.setColor(255,255,255)    --高度の数字
    screen.drawTextBox(6, 0, 26, 32, string.format("%04d", math.floor(Phys.alt * altunit)), 0, 0)
end





--------------実行部------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
SkyColorR,SkyColorG,SkyColorB = Colorconv16("SkyColor")
LandColorR,SkyColorG,SkyColorB = Colorconv16("LandColor")
SkyColorR,SkyColorG,SkyColorB = Colorconv16("CenterLineColor")

indicatorColor = property.getText("indicatorColor")
--indicatorColor = "200,100,100,100,200,100,100,100,200,255,255,255"

altunit = property.getNumber("Altitude Unit")
spdunit = property.getNumber("Speed Unit")

firstTick = true
monitorPower = true

indicatorbool = {false, false, false, false}

function onTick()					--[====[ onTick ]====]--
    if firstTick then
        
        firstTick = false
    end
    if monitorPower == false then return end
    monitorID = 1

    convert()
    monitorPower = false
end-------------------------------------------onTick終わり-------------------------------------------


function onDraw()					--[====[ onDraw ]====]--
    if (monitorID == 1) then		--[====[ 左のモニター用の描画 ]====]--
        if monitorPower == true then return end
        monitorPower = true
        w, h = 32, 32	--画面の縦横を取得

        compassBar(0)
        
        Indicator(indicatorbool[1], indicatorbool[2], indicatorbool[3], indicatorbool[4])
        
                                                monitorID = 2
    else							--[====[ 右のモニター用の描画 ]====]--

        horizon()
        altimeter()
    end
end-------------------------------------------onDraw終わり-------------------------------------------

--compass_y = compass_y == nil and 0