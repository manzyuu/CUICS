
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

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputBool(2, screenConnection.isTouched)
        --simulator:setInputNumber(1, screenConnection.width)
        --simulator:setInputNumber(2, screenConnection.height)
        simulator:setInputNumber(1, screenConnection.touchX)
        simulator:setInputNumber(2, screenConnection.touchY)
        simulator:setInputNumber(3, screenConnection.touchX)
        simulator:setInputNumber(4, screenConnection.touchY)

        -- NEW! button/slider options from the UI
        simulator:setInputBool(31, simulator:getIsClicked(1))     -- if button 1 is clicked, provide an ON pulse for input.getBool(31)
        simulator:setInputNumber(31, simulator:getSlider(1))      -- set input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2))     -- make button 2 a toggle, for input.getBool(32)
        simulator:setInputNumber(32, simulator:getSlider(2) * 50) -- set input 32 to the value from slider 2 * 50
    end

    ;
end
---@endsection


--[====[ IN-GAME CODE ]====]
-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

ticks = 0










ticks = 0
cutFlag = false

function onTick()
    if input.getBool(1) or input.getBool(2) or not input.getBool(3) then
        cutFlag = true
        ticks = 0
        return
    else
        ticks = ticks + 1
    end





    monitorID = 1
end

function onDraw()
    if cutFlag then
        return
    end
    

    if monitorID == 1 then ------LeftMonitor
        --drawNewFont(2,2,monitorID)
        if ticks<60 then
            screen.setColor(100,100,100)
            screen.drawLine(0,0,32,32)
            screen.drawLine(0,32,32,0)
        elseif ticks<120 then
            screen.setColor(100,100,100)
            drawRectF((ticks-90)/60*128,15,(ticks-60)/60*128,16)
        elseif ticks<245 then
            screen.setColor(100,100,100)
            screen.setColor(clamp(ticks-120,0,128)/16,clamp(ticks-120,0,128)/16,clamp(ticks-120,0,128)/16)
            screen.drawCircleF(33,15,(ticks-120)*4)
            --drawRectF(0,0,32,32)

            screen.setColor(0,0,0)
            drawNewFont(7,14,"CUICS")
        elseif ticks<350 then
            screen.setColor(10,10,10)
            drawRectF(0,0,32,32)
            screen.setColor(0,0,0)
            drawNewFont(7,14,"CUICS")
            drawNewFont(17,25,"Cpl.")
        elseif ticks<410 then
            screen.setColor(10,10,10,255-clamp(ticks-350,0,60)/60*255)
            drawRectF(0,0,32,32)
            screen.setColor(0,0,0,255-clamp(ticks-350,0,60)/60*255)
            drawNewFont(7,14,"CUICS")
            drawNewFont(17,25,"Cpl.")
        else
            cutFlag=true
        end

        



        monitorID = 2
    else ----------------------RightMonitor
        --drawNewFont(2,2,monitorID)
        if ticks<60 then
            screen.setColor(100,100,100)
            screen.drawLine(0,0,32,32)
            screen.drawLine(0,32,32,0)
        elseif ticks<120 then
            screen.setColor(100,100,100)
            drawRectF((ticks-105)/60*128,15,(ticks-75)/60*128,16)
        elseif ticks<245 then
            screen.setColor(100,100,100)
            screen.setColor(clamp(ticks-120,0,128)/16,clamp(ticks-120,0,128)/16,clamp(ticks-120,0,128)/16)
            screen.drawCircleF(-1,15,(ticks-120)*4)
            --drawRectF(0,0,32,32)

            screen.setColor(0,0,0)
            drawNewFont(7,14,"CUICS")

        elseif ticks<350 then
            screen.setColor(10,10,10)
            drawRectF(0,0,32,32)
            screen.setColor(0,0,0)
            drawNewFont(3,3,"Var,1.0")
            drawNewFont(1,19,"Powerd")
            drawNewFont(2,25,"ByMAKKI")
        elseif ticks<410 then
            screen.setColor(10,10,10,255-clamp(ticks-350,0,60)/60*255)
            drawRectF(0,0,32,32)
            screen.setColor(0,0,0,255-clamp(ticks-350,0,60)/60*255)
            drawNewFont(3,3,"Var,1.0")
            drawNewFont(1,19,"Powerd")
            drawNewFont(2,25,"ByMAKKI")
        end
    end



    screen.setColor(100,100,100)
    screen.drawRect(-1,-1,33,33)
    screen.setColor(0,10,0)
    screen.drawRectF(0,35,35,477)
    screen.drawRectF(35,0,477,256)
    screen.setColor(100,0,0)
    drawNewFont(0,34,"ONLYCAN")
    drawNewFont(0,40,"USE 1*1")
    drawNewFont(34,2,"ONLYCAN")
    drawNewFont(34,8,"USE 1*1")
    screen.setColor(100,100,100)
    if cutFlag then
        screen.drawClear()
    end
end







function drawNewFont(NewFontX, NewFontY, NewFontTextValue)
    local NewFontC, NewFontD, NewFontF, NewFontP, NewFontQ
    if type(NewFontTextValue) == "number" then
        NewFontTextValue = tostring(NewFontTextValue)
    end
    NewFontD = property.getText("F1") .. property.getText("F2") .. property.getText("F3") .. property.getText("F4")
    for i = 1, NewFontTextValue:len() do
        NewFontC = NewFontTextValue:sub(i, i):byte() * 5 - 159
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


function drawRectF(startX,startY,endX,endY)
    screen.drawRectF(startX,startY,math.abs(startX-endX)+1,math.abs(startY-endY)+1)
    
end

function clamp(x, min_val, max_val)
    local value=math.min(math.max(x, min_val), max_val)
    if value~=value then
        return 0
    else
        return value
    end 
end