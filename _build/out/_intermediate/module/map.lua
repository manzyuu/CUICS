
--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

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

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@diagnostic disable-next-line: undefined-doc-param
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@diagnostic disable-next-line: undefined-doc-param
    ---@param ticks     number Number of ticks since simulator started
    local function lerp(min, max, data)
        return (1 - data) * min + data * max
    end

    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection1 = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection1.isTouched)
        simulator:setInputNumber(18, screenConnection1.touchX)
        simulator:setInputNumber(19, screenConnection1.touchY)--[[
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
        simulator:setInputNumber(16, lerp(1, 9999, simulator:getSlider(11)))   --Send Channel
        simulator:setInputNumber(17, lerp(0.5, -0.5, simulator:getSlider(12))) --Compass
        simulator:setInputNumber(18, lerp(0, 999, simulator:getSlider(13)))    --Speed
        simulator:setInputNumber(19, 0)                                        --None
        simulator:setInputNumber(20, lerp(0, 999, simulator:getSlider(14)))    --何チャンネル目を受信しているか
        simulator:setInputNumber(21, lerp(0, 999, simulator:getSlider(15)))    --Receive Passcode
        simulator:setInputNumber(22, lerp(0, 999, simulator:getSlider(16)))    --Receive X
        simulator:setInputNumber(23, lerp(0, 999, simulator:getSlider(17)))    --Receive Y
        simulator:setInputNumber(24, lerp(0, 999, simulator:getSlider(18)))    --Receive Dir
        simulator:setInputNumber(25, lerp(0, 999, simulator:getSlider(19)))    --Receive Alt
        simulator:setInputNumber(26, lerp(0, 999, simulator:getSlider(20)))    --Receive Spd
        simulator:setInputNumber(27, lerp(0, 999, simulator:getSlider(21)))    --Receive WayX
        simulator:setInputNumber(28, lerp(0, 999, simulator:getSlider(22)))    --Receive WayY
]]

        simulator:setInputNumber(1, 4000)
        simulator:setInputNumber(23, 1)
        simulator:setInputNumber(25, 00147)
        simulator:setInputNumber(26, 11111)
        simulator:setInputNumber(27, 22434)
        simulator:setInputNumber(28, 33756)
        simulator:setInputNumber(29, 44613)
        simulator:setInputNumber(30, 55603)
        simulator:setInputNumber(31, 66200)
    end
end
---@endsection


do
    interval=10000
    --screenpower= true
    centering= true
    monitorSwap=property.getBool("Monitor Swap")
    monitorID=false
    errorcheck=false
    moduleID=1
    Passcode=property.getNumber("Passcode")

    mapX, mapY = 0, 0
    zoomlv, zoom = 1,10
    Phys  = {}

    radio   = {}
    radio.Channelnumber=1
    radio.switch=false

    receive         = {}
    receive.vis     = {}
	receive.dir     = {}
	receive.way     = {}

    receive.code    = {}
    receive.X       = {}
    receive.Y       = {}
    receive.Dir     = {}
    receive.Alt     = {}
    receive.Spd     = {}
    receive.WayX    = {}
    receive.WayY    = {}


    freqlist     = { 0, 0, 0, 0, 0, 0, 0, 0 }

    farstflag=true

    touch       = {}
    touch.flags = false
    pageNumber  = 1
    
    
end





function onTick() --[====[ onTick ]====]
    --if screenpower == false then return end
    --screenpower = false




    do--input data
        touch.Bool = input.getBool(1)
        
        errorcheck=not errorcheck
        output.setBool(32,errorcheck)
        
        --1~8 ReceiveData
        receive.code[freqlist[radio.Channelnumber]] = input.getNumber(1) or 0
        receive.X   [freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(2) or 0
        receive.Y   [freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(3) or 0
        receive.Dir [freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(4) or 0
        receive.Alt [freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(5) or 0
        receive.Spd [freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(6) or 0
        receive.WayX[freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(7) or 0
        receive.WayY[freqlist[radio.Channelnumber]] = input.getNumber(1)==Passcode and input.getNumber(8) or 0
        


        --9~13 PhysData
        Phys.x       = input.getNumber(9)
        Phys.y       = input.getNumber(10)
        Phys.compass = input.getNumber(11)
        Phys.alt     = input.getNumber(12)
        Phys.spd     = input.getNumber(13)

        --14~15 keypad
        KeypadX=input.getNumber(14)
        KeypadY=input.getNumber(15)


        touch.X               = input.getNumber(18)
        touch.Y               = input.getNumber(19)

        moduleID              = input.getNumber(23)

        if not touch.Bool then
            radio.sendFreq    = input.getNumber(20)
            radio.switch      = input.getBool(20)
            for i = 1, 8, 1 do--FreqData
                
                freqlist[i] = math.floor(input.getNumber(24 + i))%interval and math.floor(input.getNumber(24 + i))%interval or 0

                if 0 < freqlist[i] then --設定情報更新
                    local settingdata = math.floor(input.getNumber(24 + i)/interval)
                    receive.vis[freqlist[i]]=settingdata & 1 == 1
                    receive.dir[freqlist[i]]=settingdata & 2 == 2
                    receive.way[freqlist[i]]=settingdata & 4 == 4
                end
            end
        end 
    end

    do--updatadata
        if moduleID==1 then--map
            if button(0, 0, 5, 5,true) then
                touch.flags=true
                zoomlv = zoomlv -1
            end
            if button(0, 6, 5, 5,true) then
                touch.flags=true
                zoomlv = zoomlv + 1
            end
    
            zoomlv = math.min(math.max(zoomlv, 1), 22)
            zoom = math.min(zoomlv - 5, 0) / 5 +	         --0.2 ~  1.0
                   math.min(math.max(zoomlv - 4, 1), 10) +   --1.0 ~  5.0
                   math.min(math.max(zoomlv - 14, 0), 8) * 5 --5.0 ~ 50.0
    
            if button(13, 13, 6, 6, false) or (farstflag and Phys.x~=0) then
                farstflag=false
                touch.flags=true
                mapX, mapY = Phys.x, Phys.y
            elseif touch.Bool and not button(0, 0, 5, 11,false) then--and zoomlv == false then
                    mapX = (touch.X - 16) * zoom / 2 + mapX
                    mapY = -(touch.Y - 16) * zoom / 2 + mapY
            end
        end

    end



    monitorID=false

    







end -------------------------------------------onTick終わり-------------------------------------------

function onDraw()
    if monitorID ~= monitorSwap then --[====[ 左のモニター用の描画 ]====]
        monitorID = true
    else
        monitorID=true
        if moduleID==1 then--map
			screen.drawMap(mapX, mapY, zoom)
			drawNewFont(0, 26, zoom)

            for i = 1, 8, 1 do
                if receive.vis[freqlist[i]] and freqlist[i]~=0 then
                    local pixelX, pixelY = map.mapToScreen(mapX, mapY, zoom, 32, 32,receive.X[freqlist[i]], receive.Y[freqlist[i]] )
                    screen.setColor(150,50,150)
                    screen.drawRectF(pixelX-1,pixelY,3,3)
                    if receive.dir[freqlist[i]] then
                        receive.Dir[freqlist[i]]=receive.Dir[freqlist[i]] or 0
                        local compass=((receive.Dir[freqlist[i]] + 1.75) % 1 - 0.5) * 2 * math.pi
                        screen.drawLine(pixelX,pixelY,math.sin(compass)*8+pixelX,-math.cos(compass)*8+pixelY)
                    end
                    if receive.way[freqlist[i]] then
                        local waypointX,waypointY= map.mapToScreen(mapX, mapY, zoom, 32, 32,receive.WayX[freqlist[i]], receive.WayY[freqlist[i]] )
                        screen.setColor(150,150,100)
                        screen.drawLine(pixelX,pixelY,waypointX,waypointY)
                    end
                end
            end


			screen.setColor(5, 5, 5) --Zoomボタン
			screen.drawRectF(0, 0, 5, 10)
			screen.setColor(20, 20, 20)
			screen.drawRect(0, 0, 4, 4)
			screen.drawRect(0, 5, 4, 4)
			screen.setColor(255, 255, 255)
			screen.drawText(1, 0, "+")
			screen.drawText(1, 5, "-")

			screen.drawCircle(16, 16, 4) --中心に戻る


        end
        
    end
end



function button(x, y, w, h,palse)
    local returnvalue=false
    if x <= touch.X and
        x + w >= touch.X and
        y <= touch.Y and
        y + h >= touch.Y and
        touch.Bool then
            if not touch.flags and palse then
                returnvalue=true
            elseif not palse then
                returnvalue=true
            end
        
    elseif not touch.Bool then
        touch.flags = false
        returnvalue=false
    else
        returnvalue=false
    end
    return returnvalue
end

function drawNewFont(NewFontX, NewFontY, NewFontZ)
    if type(NewFontZ) == "number" then
        NewFontZ = tostring(NewFontZ)
    end
    NewFontD = property.getText("F1") .. property.getText("F2") .. property.getText("F3") .. property.getText("F4")
    for i = 1, NewFontZ:len() do
        NewFontC = NewFontZ:sub(i, i):byte() * 5 - 159
        for j = 1, 5 do
            NewFontF = "0x" .. NewFontD:sub(NewFontC, NewFontC + 4):sub(j, j)
            for k = 1, 3 do
                if NewFontF & 2 ^ (4 - k) > 0 then
                    NewFontP = NewFontX + i * 4 + k - 5
                    NewFontQ = NewFontY + j - 1
                    screen.drawLine(NewFontP, NewFontQ, NewFontP + 1, NewFontQ)
                end
            end
        end
    end
end




