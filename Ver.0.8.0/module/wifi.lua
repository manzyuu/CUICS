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
        simulator:setInputBool(10, true)
        simulator:setInputNumber(1, screenConnection.touchX)
        simulator:setInputNumber(2, screenConnection.touchY)
        simulator:setInputNumber(3, 5000)
        simulator:setInputNumber(4, 0)
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


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!


do
    require("Ver.0.8.0.lib.Data")
    monitorSwap  = property.getBool("Monitor Swap")
    MFMPassCode  = property.getNumber("MFMPassCode")
    monitorID    = false
    ThisModuleID = 1
    moduleID     = 1
    DrawListKey  = 1
end

function onTick()
    Phys.Update()
    Wifi.Update()
    Touch.Update()

    KeypadX=input.getNumber(15)
    KeypadY=input.getNumber(16)

    Wifi.Output()
end

function onDraw()
    flag = moduleID == ThisModuleID

    if monitorID ~= monitorSwap then
        monitorID = false
        if monitorSwap and flag then
            moduleUnit()
        end
    else
        monitorID = true
        if not monitorSwap and flag then
            moduleUnit()
        end
    end
end

function moduleUnit()
    ---------layout
    screen.setColor(10, 10, 10)
    screen.drawClear()
    screen.setColor(30, 30, 30) --送信チャンネルの下の線
    screen.drawLine(0, 6, 32, 6)


    screen.setColor(25, 25, 25)
    screen.drawRectF(27, 14, 5, 5) --チャンネル上
    screen.drawRectF(27, 20, 5, 5) --チャンネル下
    screen.drawRectF(27, 7, 5, 5)  --受信チャンネル追加
    screen.drawRectF(27, 27, 5, 5) --無線ON/OFF
    ----------end layout



    -------------SendSetting
    screen.setColor(255, 255, 255)
    screen.drawTriangleF(2, 1, 0, 4, 5, 4) --左の送信矢印
    screen.drawLine(2, 4, 2, 6)
    temp = Wifi.Switch and 255 or 80
    screen.setColor(temp, temp, temp)
    screen.drawText(6, 1, string.format("%04d", Wifi.SendFreq // 1)) --送信チャンネル

    screen.setColor(25, 25, 25)
    screen.drawRectF(27, 0, 5, 6) --送信ボタン

    temp =MomentaryCollisionDetection(27, 0, 5, 5, Touch)and 255 or 50
    if PalseCollisionDetection(27, 0, 5, 6, Touch)  then
        Wifi.SetSendFreq(KeypadY)
    end
    
    screen.setColor(temp, temp, temp)
    screen.drawText(28, 2, "^") --送信ボタン


    -------------EndSendSetting

    ---------------AddReceiveFreq
    temp =MomentaryCollisionDetection(27, 7, 5, 5, Touch)and 255 or 50
    if PalseCollisionDetection(27, 7, 5, 5, Touch) then
        Wifi.AddFreq(KeypadY)
    end
    screen.setColor(temp, temp, temp)
    screen.drawText(28, 7, "+") --受信チャンネル追加
    ---------------EndAddReceiveFreq



    --------------ListUpDown
    temp = MomentaryCollisionDetection(27, 14, 5, 5, Touch) and 255 or 50
    DrawListKey = (PalseCollisionDetection(27, 14, 5, 5, Touch) and DrawListKey > 1) and DrawListKey - 1 or DrawListKey
    screen.setColor(temp, temp, temp)
    screen.drawTriangleF(29, 15, 27, 18, 32, 18) --チャンネル上


    temp = MomentaryCollisionDetection(27, 20, 5, 5, Touch) and 255 or 50
    DrawListKey = (PalseCollisionDetection(27, 20, 5, 5, Touch) and DrawListKey < 4) and DrawListKey + 1 or DrawListKey
    screen.setColor(temp, temp, temp)
    screen.drawTriangleF(29, 25, 26, 21, 32, 21) --チャンネル下
    --------------EndListUpDown




    ---------------DrawScrollBar
    screen.setColor(3, 5, 3)
    screen.drawLine(26, 7, 26, 31)

    screen.setColor(200, 100, 200)
    screen.drawLine(26, 1 + DrawListKey * 6, 26, 7 + DrawListKey * 6)
    ---------------EndDrawScrollBar



    --------------SwittingWifi
    temp = Wifi.Switch and 255 or 50
    screen.setColor(temp, temp, temp)
    screen.drawLine(28, 29, 28, 31)
    screen.drawLine(29, 28, 31, 28)
    screen.drawLine(30, 30, 30, 31) --無線ON/OFF

    --------------EndSwittingWifi


    receiveunit(DrawListKey * 2 - 1, 0, Wifi)
    receiveunit(DrawListKey * 2, 1, Wifi)
end

function receiveunit(key, UnitNumber, Wifi)
    --draw
    Freq = Wifi.FreqList[key] or 0

    UnitNumber = UnitNumber * 12
    local drawColorTemp = Freq ~= 0 and 150 or 45 --freq
    screen.setColor(drawColorTemp, drawColorTemp, drawColorTemp)


    if Wifi.Passcode[Freq] == MFMPassCode and Wifi.switch then --ReciveingCheck
        screen.setColor(50, 255, 50)
    end

    screen.drawText(6, 8 + UnitNumber, string.format("%04d", Freq // 1)) --drawFreq

    screen.setColor(25, 25, 25)

    for i = 0, 3, 1 do
        screen.drawRectF(1 + 6 * i, 14 + UnitNumber, 5, 5) --base
    end

    -------------------Delete
    drawColorTemp = Freq ~= 0 and 255 or 80
    screen.drawRectF(0, 8 + UnitNumber, 5, 5)
    screen.setColor(255, 255, 255)
    screen.drawText(1, 8 + UnitNumber, "-")

    if PalseCollisionDetection(0, 8 + UnitNumber, 5, 5, Touch) then
        Wifi.RemoveFreq(key)
    end
    ----------------EndDelete


    ----------------Vision
    drawColorTemp = Wifi.Visible[Freq] and 255 or 50 --vision
    screen.setColor(drawColorTemp, drawColorTemp, drawColorTemp)
    screen.drawLine(2, 15 + UnitNumber, 2, 17 + UnitNumber)
    screen.drawLine(3, 17 + UnitNumber, 3, 18 + UnitNumber)
    screen.drawLine(4, 15 + UnitNumber, 4, 17 + UnitNumber)
    --DrawNewFont(2, 13 + UnitNumber, "v")
    if PalseCollisionDetection(1, 13 + UnitNumber, 5, 5, Touch) then
        Wifi.Visible[Freq] = not Wifi.Visible[Freq]
    end
    ----------------EndVision


    ----------------Direction
    drawColorTemp = Wifi.DrawDirection[Freq] and 255 or 50 --direction
    screen.setColor(drawColorTemp, drawColorTemp, drawColorTemp)
    screen.drawLine(8, 15 + UnitNumber, 10, 15 + UnitNumber)
    screen.drawLine(9, 18 + UnitNumber, 11, 16 + UnitNumber)
    screen.drawLine(8, 16 + UnitNumber, 8, 18 + UnitNumber)
    if PalseCollisionDetection(7, 13 + UnitNumber, 5, 5, Touch) then
        Wifi.DrawDirection[Freq] = not Wifi.DrawDirection[Freq]
    end
    ----------------Direction

    ----------------DrawWaypoint
    drawColorTemp = Wifi.DrawWaypoint[Freq] and 255 or 50 --DrawWaypoint
    screen.setColor(drawColorTemp, drawColorTemp, drawColorTemp)
    screen.drawText(14, 14 + UnitNumber, "+")
    if PalseCollisionDetection(13, 13 + UnitNumber, 5, 5, Touch) then
        Wifi.DrawWaypoint[Freq] = not Wifi.DrawWaypoint[Freq]
    end
    ----------------EndDrawWaypoint

    ----------------Set waypoint from wifi
    drawColorTemp = (Wifi.SetWaypointFreq == Freq and Freq ~= 0) and 255 or 50 --Set waypoint from wifi
    screen.setColor(drawColorTemp, drawColorTemp, drawColorTemp)
    screen.drawRectF(20, 15 + UnitNumber, 3, 2)
    screen.drawLine(20, 17 + UnitNumber, 20, 18 + UnitNumber)
    if PalseCollisionDetection(19, 13 + UnitNumber, 5, 5, Touch) then
        Wifi.SetWaypointFreq = (Freq ~= Wifi.SetWaypointFreq) and Freq or 0
    end
    ----------------End Set waypoint from wifi


    --endDraw
end
