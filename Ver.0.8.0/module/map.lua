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
        local screenConnection = simulator:getTouchScreen(1)
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
    ThisModuleID   = 2
    ModuleID       = 2
    Map            = {}
    Map.DrawPointX = 0
    Map.DrawPointY = 0
    Map.ZoomStage  = Funk.Split(property.getText("ZoomStage"), ",")
    ZoomLevel=1
    mapX, mapY =0,0
    color          = {}
    color.player   = Funk.Split(property.getText("MapPlayerColor"), ",")
    color.another  = Funk.Split(property.getText("MapAnotherColor"), ",")
    DrawWayointMenu = false
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



end

function onDraw()
    flag = ModuleID == ThisModuleID

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



    ---move
    DrawCurrentLocationFlag = Touch.MomentaryCollisionDetection(13, 13, 6, 6) and true or DrawCurrentLocationFlag
    if DrawCurrentLocationFlag then
        mapX, mapY = Phys.GpsX, Phys.GpsY
    end

    local temp = DrawWayointMenu and 23 or 6
   
    if Touch.Bool and not (Touch.MomentaryCollisionDetection(00, 00, 5, 10) or--zoom button
                           Touch.MomentaryCollisionDetection(26, 00, 6, temp) or --weypointmenu
                           Touch.MomentaryCollisionDetection(13, 13, 6, 6)) then ----center and zoomlv == false then
        DrawCurrentLocationFlag = false
        mapX = (Touch.X - 16) * tonumber(Map.ZoomStage[ZoomLevel]) / 2 + mapX
        mapY = -(Touch.Y - 16) *tonumber(Map.ZoomStage[ZoomLevel]) / 2 + mapY
    end



    ---endmove

    screen.drawMap(mapX, mapY, Map.ZoomStage[ZoomLevel])

    

    if Touch.PalseCollisionDetection(27, 0, 5, 4) then
        DrawWayointMenu = not DrawWayointMenu
    end
    if DrawWayointMenu then --weypointmenu


        local temp = 0
        screen.setColor(5, 5, 5)
        screen.drawRectF(27, 6, 5, 16) --


        screen.setColor(20, 20, 20)

        screen.drawRect(27, 6, 4, 5)  --waypoint from keypad
        screen.drawRect(27, 11, 4, 5) --waypoint from wifi
        screen.drawRect(27, 16, 4, 6) --waypoint from Becon


        temp = Touch.MomentaryCollisionDetection(27, 6, 5, 4) and 100 or 255
        screen.setColor(temp, temp, temp)
        DrawNewFont(28, 6, "p") --waypoint from keypad

        temp = Wifi.Switch and 255 or 50
        temp = Touch.MomentaryCollisionDetection(27, 12, 5, 4) and 100 or temp
        screen.setColor(temp, temp, temp)
        screen.drawRectF(28, 13, 3, 2) --waypoint from keypad
        screen.drawLine(28, 13, 28, 16)

        temp = Touch.MomentaryCollisionDetection(27, 18, 5, 4) and 100 or 255
        screen.setColor(temp, temp, temp)
        DrawNewFont(28, 17, "B") --waypoint from keypad
    end



    --縮尺
    screen.setColor(0, 0, 0,130)
    DrawNewFont(0, 26, tostring(Map.ZoomStage[ZoomLevel]).."km")




    ---zoom
    screen.drawRect(0, 0, 4, 4) --Zoomボタン
    screen.drawRect(0, 5, 4, 4)
    screen.setColor(255, 255, 255)
    screen.drawText(1, 0, "+") --Zoomボタン
    screen.drawText(1, 5, "-")
    
    ZoomLevel = Touch.PalseCollisionDetection(0, 0, 5, 5) and ZoomLevel - 1 or
    Touch.PalseCollisionDetection(0, 6, 5, 5)and ZoomLevel + 1 or ZoomLevel
    ZoomLevel = Funk.Clamp(ZoomLevel, #Map.ZoomStage, 1)
    ---endzoom








    temp = Touch.MomentaryCollisionDetection(27, 0, 5, 4) and 100 or 255
    screen.setColor(temp, temp, temp)
    DrawNewFont(28, -1, "w") --waypointMenu


    if not DrawCurrentLocationFlag then
        local CurrentLocationX,CurrentLocationY= map.mapToScreen(mapX,mapY,Map.ZoomStage[ZoomLevel],32,32,Phys.GpsX,Phys.GpsY)
        screen.drawLine(16,16, CurrentLocationX,CurrentLocationY)
        --print("X:"..tostring(CurrentLocationX).."      Y:"..tostring(CurrentLocationY))
    end

    screen.setColor(255, 255, 255, 140)
    screen.drawCircle(16, 16, 4) --中心に戻る

end