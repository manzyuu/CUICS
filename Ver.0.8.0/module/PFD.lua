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
        simulator:setProperty("indicatorColor", "200,100,100,100,200,100,100,100,200,255,255,255")
        simulator:setProperty("SkyColor", "2020FF")
        simulator:setProperty("LandColor", "20FF20")
        simulator:setProperty("CenterLineColor", "FFFFFF")
        simulator:setProperty("Altitude Unit", "1")
        simulator:setProperty("Speed Unit", 3.6)


        -- Runs every tick just before onTick; allows you to simulate the inputs changing
        ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
        ---@param ticks     number Number of ticks since simulator started
        function onLBSimulatorTick(simulator, ticks)
            simulator:setInputNumber(14, simulator:getSlider(4) -0.5) --* 2 - math.pi)
            simulator:setInputNumber(5, simulator:getSlider(5) * math.pi / 2) --* 2 - math.pi)
            simulator:setInputNumber(6, simulator:getSlider(6) * math.pi)     --* 2 - math.pi)
        end

        ;
    end
    ---@endsection


    --[====[ IN-GAME CODE ]====]

    -- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
    -- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!


    -- Tick function that will be executed every logic tick
end

---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

do
    require("Ver.0.8.0.lib.Data")
    monitorSwap  = property.getBool("Monitor Swap")
    altunit      = property.getNumber("Altitude Unit")
    spdunit      = property.getNumber("Speed Unit")
    monitorID    = false
    errorcheck   = false
    ThisModuleID = 1
    ModuleID     = 1
    targetAngle=0
end


function onTick()
    ------ErrorcheckClockSignal
    errorcheck = not errorcheck
    output.setBool(32, errorcheck)
    ------endErrorcheckClockSignal

    ModuleID = input.getNumber(3)

    Phys.Update()

    Phys.printData()
end

function onDraw()
    screen.setColor(10, 10, 10)
    screen.drawClear()

    if monitorID then
        monitorID = false
        Horizon()
        AltiMeter()

    else
        monitorID = true
        CompassBar(targetAngle)
        SpeedMeter()
    end
end

function CompassBar(TargetBearing)           --targetangle = degrees
    local temp = 0
    --local targetangle = math.rad(targetangle)
    local NESWdetadeg={0,math.pi*0.5,math.pi,math.pi*1.5}
    local NESWdetacharacter={"N","E","S","W"}

    screen.setColor(5, 70, 5)--↓らは線の上にNESWを表示する
    for i=1,4,1 do
        temp = (math.deg(-Phys.CompassRad+NESWdetadeg[i]+math.pi)%360-180)*0.6+15
        screen.drawText(temp - 1, 24,NESWdetacharacter[i])
    end

    screen.setColor(3, 2, 2)
    screen.drawRectF(0, 29, 32, 3)
    screen.drawRectF(10, 23, 11, 7) --現在方位表示の背景
    screen.drawRectF(9, 24, 13, 5)

    screen.setColor(255, 255, 225)
    DrawNewFont(10, 24, string.format("%03d", (math.floor(Phys.CompassDeg)))) --現在方位を三桁表示

    screen.setColor(5, 70, 5)

    for i=-72,72,1 do
        if math.abs(i)%18==0 then
            screen.setColor(50, 70, 50)
        else
            screen.setColor(5, 70, 5)
        end
        local temp = (3*i+15) -(math.deg(Phys.CompassRad+math.pi)%360-180)*0.6
        screen.drawLine(temp, 29 + i % 2, temp, 33)
        
    end
    screen.setColor(250, 30, 40) --目標の角度
    local temp = -(math.deg(-TargetBearing+Phys.CompassRad+math.pi)%360-180)*0.6 + 15
    screen.drawLine(temp, 29, temp, 33)
end


function SpeedMeter()
    
end

function Horizon()

end


function AltiMeter()
    
end