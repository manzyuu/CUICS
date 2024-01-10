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
    simulator:setProperty("MapPlayerColor", "255,0,0")
    simulator:setProperty("MapAnotherColor", "20,50,50")

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
        simulator:setInputNumber(19, screenConnection1.touchY) --[[
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
        simulator:setInputBool(20, true)
        simulator:setInputBool(21, false)

        simulator:setInputNumber(1, 4000)
        simulator:setInputNumber(23, 1)
        simulator:setInputNumber(25, 10147)
        simulator:setInputNumber(26, 11111)
        simulator:setInputNumber(27, 22434)
        simulator:setInputNumber(28, 0)
        simulator:setInputNumber(29, 0)
        simulator:setInputNumber(30, 0)
        simulator:setInputNumber(31, 0)
    end
end
---@endsection




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

do
    interval            = 10000
    --screenpower= true
    centering           = true
    monitorSwap         = property.getBool("Monitor Swap")
    monitorID           = false
    errorcheck          = false
    moduleID            = 1
    Passcode            = property.getNumber("Passcode")

    mapX, mapY          = 0, 0
    zoomlv, zoom        = 1, 10
    Phys                = {}

    radio               = {}
    radio.Channelnumber = 1
    radio.switch        = false

    receive             = {}
    receive.vis         = {}
    receive.dir         = {}
    receive.way         = {}

    receive.code        = {}
    receive.X           = {}
    receive.Y           = {}
    receive.Dir         = {}
    receive.Alt         = {}
    receive.Spd         = {}
    receive.WayX        = {}
    receive.WayY        = {}


    freqlist   = { 0, 0, 0, 0, 0, 0, 0, 0 }

    waypoint   = {}
    waypoint.X = 0
    waypoint.Y = 0


    beconSignal    = {}
    beconSignal.X  = 0
    beconSignal.Y  = 0

    color          = {}
    color.player   = split(property.getText("MapPlayerColor"), ",")
    color.another  = split(property.getText("MapAnotherColor"), ",")
    farstflag      = true

    touch          = {}
    touch.flags    = false

    pageNumber     = 1

    waypointmenu   = false
    moveflag       = true
    monitorID      = false

    oldReceiveFreq = 0

    clockcount     = 0
end





function onTick() --[====[ onTick ]====]
    --if screenpower == false then return end
    --screenpower = false



    do --input data
        touch.palse = input.getBool(1)

        errorcheck = not errorcheck

        --clockcount=input.getBool(32) and 6 or 0 timing > 0 and timing-1 or 0


        for i = 1, 8, 1 do --FreqData
            freqlist[i] = math.floor(input.getNumber(24 + i)) % interval or 0

            if 0 ~= freqlist[i] then --設定情報更新
                local settingdata = (input.getNumber(24 + i) // interval)
                receive.vis[freqlist[i]] = settingdata & 1 == 1
                receive.dir[freqlist[i]] = settingdata & 2 == 2
                receive.way[freqlist[i]] = settingdata & 4 == 4
            end
        end

        --1~8 ReceiveData
        local selectFreqNumber = input.getNumber(13)
        clockcount = selectFreqNumber ~= oldReceiveFreq and 4 or clockcount > 0 and clockcount - 1 or 0
        oldReceiveFreq = selectFreqNumber
        if input.getNumber(1) == Passcode and clockcount == 0 and selectFreqNumber ~= 0 then
            receive.code[selectFreqNumber] = input.getNumber(1)
            receive.X[selectFreqNumber] = input.getNumber(2) // 1
            receive.Y[selectFreqNumber] = input.getNumber(3) // 1
            receive.Dir[selectFreqNumber] = input.getNumber(4)
            receive.Alt[selectFreqNumber] = input.getNumber(5) // 1
            receive.Spd[selectFreqNumber] = input.getNumber(6) // 1
            receive.WayX[selectFreqNumber] = input.getNumber(7) // 1
            receive.WayY[selectFreqNumber] = input.getNumber(8) // 1
        end




        --9~13 PhysData
        Phys.x       = input.getNumber(9)
        Phys.y       = input.getNumber(10)
        Phys.compass = input.getNumber(11)
        Phys.alt     = input.getNumber(12)
        --Phys.spd     = input.getNumber(13)

        --14~15 keypad
        KeypadX      = input.getNumber(14)
        KeypadY      = input.getNumber(15)

        waypoint.X   = input.getNumber(16)
        waypoint.Y   = input.getNumber(17)

        touch.X      = input.getNumber(18)
        touch.Y      = input.getNumber(19)


        beconSignal.X = input.getNumber(21)
        beconSignal.Y = input.getNumber(22)
        moduleID      = input.getNumber(23)


        radio.switch = input.getBool(20)
        beconSignal.bool = input.getBool(21)
    end

    do                        --updatadata
        if moduleID == 1 then --map
            do                --zoom
                if button(0, 0, 5, 5, true) then
                    touch.flags = true
                    zoomlv = zoomlv - 1
                end
                if button(0, 6, 5, 5, true) then
                    touch.flags = true
                    zoomlv = zoomlv + 1
                end

                zoomlv = math.min(math.max(zoomlv, 1), 22)
                zoom = math.min(zoomlv - 5, 0) / 5 +          --0.2 ~  1.0
                    math.min(math.max(zoomlv - 4, 1), 10) +   --1.0 ~  5.0
                    math.min(math.max(zoomlv - 14, 0), 8) * 5 --5.0 ~ 50.0
            end

            do --move
                moveflag = button(13, 13, 6, 6, false) and true or moveflag
                if moveflag then
                    mapX, mapY = Phys.x, Phys.y
                end
                local temp = waypointmenu and 23 or 6
                if touch.palse and not (button(0, 0, 5, 11, false) or button(26, 0, 6, temp, false) or button(13, 13, 6, 6, false)) then --and zoomlv == false then
                    moveflag = false
                    mapX = (touch.X - 16) * zoom / 2 + mapX
                    mapY = -(touch.Y - 16) * zoom / 2 + mapY
                end


                if button(27, 0, 5, 4, true) then
                    touch.flags = true
                    waypointmenu = not waypointmenu
                end
            end
        end
    end

    do --output
        output.setBool(1, button(27, 6, 5, 5, true) and moduleID == 1)
        output.setBool(2, button(27, 12, 5, 5, true) and moduleID == 1)
        output.setBool(3, button(27, 18, 5, 5, true) and moduleID == 1)
        output.setBool(32, errorcheck)

        --touch.flags=button(27,0,5,10,false) and true or touch.flags
    


--[[

        do
            local temp=freqlist[i]
            for i = 1, 8, 1 do
                output.setNumber(i, receive.code[temp])
            end

            output.setNumber(10, receive.code[temp])
            output.setNumber(11, receive.X[temp])
            output.setNumber(12, receive.Y[temp])
            output.setNumber(13, receive.Dir[temp])
            output.setNumber(14, receive.Alt[temp])
            output.setNumber(15, receive.Spd[temp])
            output.setNumber(16, input.getNumber(13))
            end
]]
    end









    touch.flags = touch.palse and touch.flags or false
end -------------------------------------------onTick終わり-------------------------------------------

function onDraw()
    if monitorID then --[====[ 左のモニター用の描画 ]====]
        monitorID = false
        if monitorSwap and moduleID == 1 then
            moduleUnit()
        end
    else
        monitorID = true
        if not monitorSwap and moduleID == 1 then --map
            moduleUnit()
        end
    end
end

function moduleUnit()

    screen.drawMap(mapX, mapY, zoom)


    if waypointmenu then --weypointmenu
        local x, y = map.mapToScreen(mapX, mapY, zoom, 32, 32, Phys.x, Phys.y)
        local wayx, wayy = map.mapToScreen(mapX, mapY, zoom, 32, 32, waypoint.X, waypoint.Y)
        screen.setColor(100, 10, 100)
        screen.drawLine(x, y, wayx, wayy)
    end

    for i = 1, 8, 1 do --draw wifi data
        --print(i,freqlist[i])
        if freqlist[i] == 0 then
            break
        end
        if receive.vis[freqlist[i]] and radio.switch then
            local pixelX, pixelY = map.mapToScreen(mapX, mapY, zoom, 32, 32, receive.X[freqlist[i]], receive.Y[freqlist[i]])
            screen.setColor(color.another[1],color.another[2],color.another[3])
            screen.drawRectF(pixelX - 1, pixelY - 1, 3, 3)

            if receive.dir[freqlist[i]] then
                receive.Dir[freqlist[i]] = receive.Dir[freqlist[i]] or 0
                local compass = ((receive.Dir[freqlist[i]] + 1.75) % 1 - 0.5) * 2 * math.pi + math.pi / 2
                screen.drawLine(pixelX, pixelY, math.sin(compass) * 8 + pixelX, math.cos(compass) * 8 + pixelY)
            end
            if receive.way[freqlist[i]] then
                local waypointX, waypointY = map.mapToScreen(mapX, mapY, zoom, 32, 32, receive.WayX[freqlist[i]],
                    receive.WayY[freqlist[i]])
                screen.setColor(150, 150, 100)
                screen.drawLine(pixelX, pixelY, waypointX, waypointY)
                screen.drawRectF(waypointX - 1, waypointX - 1, 3, 3)
            end
        end
    end


    
    do --draw me
        local x, y = map.mapToScreen(mapX, mapY, zoom, 32, 32, Phys.x, Phys.y)
        local mycompass = ((Phys.compass + 1.75) % 1 - 0.5) * 2 * math.pi + math.pi / 2
        screen.setColor(color.player[1],color.player[2],color.player[3])
        screen.drawRectF(x - 1, y - 1, 3, 3)
        screen.drawLine(x, y, math.sin(mycompass) * 8 + x, math.cos(mycompass) * 8 + y)
    end


    if beconSignal.bool then
        screen.setColor(150, 150, 0, 70)
        local x, y = map.mapToScreen(mapX, mapY, zoom, 32, 32, beconSignal.X, beconSignal.Y)
        screen.drawCircleF(x, y, 10 / zoom)
    end

    if waypointmenu then --weypointmenu


        local temp = 0
        screen.setColor(5, 5, 5)
        screen.drawRectF(27, 6, 5, 16) --


        screen.setColor(20, 20, 20)

        screen.drawRect(27, 6, 4, 5)  --waypoint from keypad
        screen.drawRect(27, 11, 4, 5) --waypoint from wifi
        screen.drawRect(27, 16, 4, 6) --waypoint from Becon


        temp = button(27, 6, 5, 4, false) and 100 or 255
        screen.setColor(temp, temp, temp)
        drawNewFont(28, 6, "p") --waypoint from keypad

        temp = radio.switch and 255 or 50
        temp = button(27, 12, 5, 4, false) and 100 or temp
        screen.setColor(temp, temp, temp)
        screen.drawRectF(28, 13, 3, 2) --waypoint from keypad
        screen.drawLine(28, 13, 28, 16)

        temp = button(27, 18, 5, 4, false) and 100 or 255
        screen.setColor(temp, temp, temp)
        drawNewFont(28, 17, "B") --waypoint from keypad
    end
    do --draw button
        screen.setColor(100, 100, 100)
        drawNewFont(0, 26, zoom)


        screen.setColor(5, 5, 5)
        screen.drawRectF(0, 0, 5, 10) --Zoomボタン
        screen.drawRectF(27, 0, 4, 4) --waypoint from keypad


        screen.setColor(20, 20, 20)
        screen.drawRect(0, 0, 4, 4) --Zoomボタン
        screen.drawRect(0, 5, 4, 4)

        screen.drawRect(27, 0, 4, 4)

        screen.setColor(255, 255, 255)
        screen.drawText(1, 0, "+") --Zoomボタン
        screen.drawText(1, 5, "-")

        temp = button(27, 0, 5, 4, false) and 100 or 255
        screen.setColor(temp, temp, temp)
        drawNewFont(28, -1, "w") --waypoint from keypad



        screen.setColor(200, 200, 200, 200)
        screen.drawCircle(16, 16, 4) --中心に戻る
    end
end

function button(x, y, w, h, palse)
    local returnvalue = false
    if x <= touch.X and
        x + w >= touch.X and
        y <= touch.Y and
        y + h >= touch.Y and
        touch.palse then
        if not touch.flags and palse then
            returnvalue = true
        elseif not palse then
            returnvalue = true
        end
    else
        returnvalue = false
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
