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
    simulator:setProperty("MFMPassCode", 5000)
    simulator:setProperty("DefRecd.F.1", 1)
    simulator:setProperty("DefRecd.F.2", 2)
    simulator:setProperty("DefRecd.F.3", 3)
    simulator:setProperty("DefRecd.F.4", 4)
    simulator:setProperty("ZoomStage", "0.1,0.2,0.5,1,2,4,5,10,15,20,30,40")
    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        local function lerp(min, max, data)
            return (1 - data) * min + data * max
        end
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(2)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputBool(10, simulator:getIsToggled(1))
        simulator:setInputNumber(1, screenConnection.touchX)
        simulator:setInputNumber(2, screenConnection.touchY)
        simulator:setInputNumber(3, 2)
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


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

do
    require("Ver.0.8.0.lib.Data")
    monitorSwap    = property.getBool("Monitor Swap")
    MFMPassCode    = property.getNumber("MFMPassCode")
    monitorID      = false
    errorcheck     = false
    ModuleID       = 2
    viewDataNumver = 0
    autopilotDist  = 0
    OldModuleID    = 1
end


function onTick()
    ------ErrorcheckClockSignal
    errorcheck = not errorcheck
    output.setBool(32, errorcheck)
    ------endErrorcheckClockSignal

    ModuleID = input.getNumber(3)


    Phys.Update()
    Wifi.Update()
    Touch.Update()

    autopilotDist = math.sqrt((Phys.GpsX - input.getNumber(20)) ^ 2 + (Phys.GpsY - input.getNumber(21)) ^ 2)


    OldModuleID = moduleID ~= 0 and moduleID or OldModuleID

    moduleID = (moduleID == 0 and Touch.Palse) and OldModuleID or
        moduleID~=0 and ( 
            Touch.PalseCollisionDetection(10, 0, 22, 15) and 0 or
            Touch.PalseCollisionDetection(00, 15, 12, 6) and 1 or
            Touch.PalseCollisionDetection(15, 15, 06, 6) and 2 or
            Touch.PalseCollisionDetection(00, 24, 16, 6) and 3 or
            Touch.PalseCollisionDetection(15, 24, 16, 6) and 4 ) or moduleID


    output.setNumber(3, moduleID)
end

function onDraw()
    if monitorID then
        monitorID = false

        if not monitorSwap then
            screen.setColor(10, 10, 10)
            screen.drawClear()
            drawdata()
            drawbutton()
        end
    else
        monitorID = true
        if monitorSwap then
            screen.setColor(10, 10, 10)
            screen.drawClear()
            drawdata()
            drawbutton()
        end
    end
end

function drawdata()
    screen.setColor(1, 1, 1)
    screen.drawLine(0, 13, 32, 13)

    screen.setColor(50, 50, 50)
    screen.drawRectF(0, 0, 3, 13)
    screen.setColor(150, 150, 150)
    screen.drawTriangleF(0, 3, 3, 7, 0, 11)

    viewDataNumver = (Touch.PalseCollisionDetection(0, 0, 4, 15) and viewDataNumver + 1 or viewDataNumver) % 3
    if viewDataNumver == 0 then
        DrawNewFont(3, 1, "ALT")
        DrawNewFont(16, 1, string.format("%04d", Phys.Alt // 1))
        DrawNewFont(3, 7, "SPD")
        DrawNewFont(16, 7, string.format("%04d", Phys.Spd // 1))
    elseif viewDataNumver == 1 then --GPSX,Y座標表示
        screen.setColor(200, 50, 20)
        DrawNewFont(8, 1, "X")
        if Phys.GpsX < 0 then
            DrawNewFont(12, 1, "-")
        end

        DrawNewFont(16, 1, string.format("%03d", math.abs(Phys.GpsX // 100))) --3桁表示し左を0埋め
        screen.drawLine(28, 5, 29, 5)
        screen.drawLine(30, 5, 31, 5)


        screen.setColor(20, 50, 200)
        DrawNewFont(8, 7, "Y")
        if Phys.GpsY < 0 then
            DrawNewFont(12, 7, "-")
        end
        DrawNewFont(16, 7, string.format("%03d", math.abs(Phys.GpsY // 100)))
        screen.drawLine(28, 11, 29, 11)
        screen.drawLine(30, 11, 31, 11)
    else --Target Distance
        screen.setColor(255, 255, 255)
        DrawNewFont(7, 1, string.format("%03d", math.min(math.abs(autopilotDist // 1000), 999)))
        screen.drawText(18, 1, ".")
        DrawNewFont(21, 1, string.format("%01d", math.abs(autopilotDist) // 100 % 10))
        DrawNewFont(23, 7, "KM")
    end
end

function drawbutton()
    local temp = 0
    --右モニタ操作用ボタン
    --マップ
    screen.setColor(30, 30, 30)
    screen.drawRectF(0, 15, 13, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(0, 15, 12, 6)
    temp = Touch.MomentaryCollisionDetection(0, 15, 12, 6) and 100 or 255
    screen.setColor(temp, temp, temp)
    DrawNewFont(1, 16, "MAP")

    --チャンネル設定
    temp = radioswitch and 50 or 30
    screen.setColor(30, temp, 30)
    screen.drawRectF(15, 15, 7, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(15, 15, 6, 6)

    temp = Touch.MomentaryCollisionDetection(15, 15, 6, 6) and 100 or 255
    screen.setColor(temp, temp, temp)
    screen.drawLine(16, 19, 16, 21)
    screen.drawLine(16, 19, 19, 16)
    screen.drawLine(19, 16, 21, 16)

    screen.drawLine(18, 19, 18, 21)
    screen.drawLine(19, 18, 21, 18)

    screen.drawLine(20, 20, 21, 20)

    screen.setColor(30, 30, 30)
    screen.drawRectF(0, 24, 13, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(0, 24, 12, 6)
    temp = Touch.MomentaryCollisionDetection(0, 24, 16, 6) and 100 or 255
    screen.setColor(temp, temp, temp)
    DrawNewFont(1, 25, "STA")

    screen.setColor(30, 30, 30)
    screen.drawRectF(16, 24, 17, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(15, 24, 16, 6)
    temp = Touch.MomentaryCollisionDetection(15, 24, 16, 6) and 100 or 255
    screen.setColor(temp, temp, temp)
    DrawNewFont(16, 25, "EXTE")
end
