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
    simulator:setScreen(2, "1x1")
    simulator:setScreen(1, "1x1")
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
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(2)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputNumber(1, screenConnection.width)
        simulator:setInputNumber(2, screenConnection.height)
        simulator:setInputNumber(31, screenConnection.touchX)
        simulator:setInputNumber(32, screenConnection.touchY)

        -- NEW! button/slider options from the UI
        simulator:setInputBool(31, simulator:getIsClicked(1)) -- if button 1 is clicked, provide an ON pulse for input.getBool(31)
        --simulator:setInputNumber(31, simulator:getSlider(1))      -- set input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2)) -- make button 2 a toggle, for input.getBool(32)
        --simulator:setInputNumber(32, simulator:getSlider(2) * 50) -- set input 32 to the value from slider 2 * 50
    end

    ;
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!







do
    --screenpower= true
    --luaerror= true
    --centering= true
    monitorSwap = property.getBool("Monitor Swap")

    moduleID    = 2
    MaxVS       = 20


    Phys          = {}
    Phys.speed    = 0
    Phys.alt      = 0
    Phys.oldalt   = 0

    target        = {}
    target.x      = 0
    target.y      = 0

    touch         = {}
    touch.X       = 0
    touch.Y       = 0
    touch.bool    = false
    touch.flags   = false

    errorcheck    = false

    distmenu      = false

    autopilotDist = 0
end



function onTick()
    touch.X      = input.getNumber(21)
    touch.Y      = input.getNumber(22)
    touch.bool   = input.getBool(1)

    Phys.oldalt  = Phys.alt

    Phys.x       = input.getNumber(1)
    Phys.y       = input.getNumber(3)

    autopilotDist=((input.getNumber(23)-Phys.x)^2+(input.getNumber(24)-Phys.y)^2)^0.5

    errorcheck   = not errorcheck
    beconmode    = input.getBool(2)
    radioswitch  = input.getBool(3)
    beconSignal  = input.getBool(4)
    beconConfirm = input.getBool(5)




    if button(0, 0, 3, 13, true) then
        distmenu=not distmenu
        touch.flags=true
    end



    if touch.bool and not touch.flags then
        moduleID =
            (button(5, 0, 32, 13, false) and moduleID ~= 0) and 0 or --pfd
            button(0, 15, 12, 6, false) and 1 or                     --Map
            button(15, 15, 6, 6, false) and 2 or                     --Ch
            button(0, 24, 16, 6, false) and 3 or                     --State
            button(15, 24, 16, 6, false) and 4 or                    --Ex
            moduleID == 0 and 1 or moduleID
        touch.flags = true
    end



    monitorID = false
    output.setBool(1, touch.bool)
    output.setBool(2, button(23, 15, 8, 7, false)) --becon

    output.setNumber(1, moduleID)
    output.setBool(32, errorcheck)
    touch.flags = touch.bool and touch.flags or false
end

function onDraw() --[====[ onDraw ]====]
    if monitorID ~= monitorSwap then --[====[ 左のモニター用の描画 ]====]
        monitorID = true
        if moduleID ~= 0 then
            screen.setColor(10, 10, 10)
            screen.drawClear()
            drawdata()
            drawbutton()
        end
    else
        monitorID = true
    end
end -------------------------------------------onDraw終わり-------------------------------------------

function drawdata()
    screen.setColor(1, 1, 1)
    screen.drawLine(0, 13, 32, 13)
    do --GPSX,Y座標表示
        screen.setColor(200, 50, 20)
        drawNewFont(8, 1, "X")
        if Phys.x < 0 then
            drawNewFont(12, 1, "-")
        end

        drawNewFont(16, 1, string.format("%03d", math.abs(Phys.x // 100))) --3桁表示し左を0埋め
        screen.drawLine(28, 5, 29, 5)
        screen.drawLine(30, 5, 31, 5)


        screen.setColor(20, 50, 200)
        drawNewFont(8, 7, "Y")
        if Phys.y < 0 then
            drawNewFont(12, 7, "-")
        end
        drawNewFont(16, 7, string.format("%03d", math.abs(Phys.y // 100)))
        screen.drawLine(28, 11, 29, 11)
        screen.drawLine(30, 11, 31, 11)
    end

    screen.setColor(50, 50, 50)
    screen.drawRectF(0, 0, 3, 13)
    if distmenu then --Target Distance
        screen.setColor(150, 150, 150)
        screen.drawTriangleF(3,3,0,7,3,11)

        screen.setColor(20, 20, 20)
        screen.drawRectF(3, 0, 22, 13)
        screen.setColor(255, 255, 255)
        drawNewFont(5, 1, string.format("%03d", math.min(math.abs(autopilotDist // 1000), 999)))
        screen.drawText(16, 1, ".")
        drawNewFont(19, 1, string.format("%01d", math.abs(autopilotDist) // 100 % 10))
        drawNewFont(16, 7, "KM")
    else
        screen.setColor(150, 150, 150)
        screen.drawTriangleF(0,3,3,7,0,11)
    end

    --[[


    screen.setColor(5, 5, 5)
    screen.drawLine(15, 0, 15, 13)
]]
end

function drawbutton()
    local temp = 0
    --右モニタ操作用ボタン
    --マップ
    screen.setColor(30, 30, 30)
    screen.drawRectF(0, 15, 13, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(0, 15, 12, 6)
    temp = button(0, 15, 12, 6, false) and 100 or 255
    screen.setColor(temp, temp, temp)
    drawNewFont(1, 16, "MAP")

    --チャンネル設定
    temp = radioswitch and 50 or 30
    screen.setColor(30, temp, 30)
    screen.drawRectF(15, 15, 7, 7)
    temp = button(15, 15, 6, 6, false) and 100 or 255
    screen.setColor(temp, temp, temp)
    screen.setColor(50, 50, 50)
    screen.drawRect(15, 15, 6, 6)

    temp = button(15, 15, 6, 6, false) and 100 or 255
    screen.setColor(temp, temp, temp)
    screen.drawLine(16, 19, 16, 21)
    screen.drawLine(16, 19, 19, 16)
    screen.drawLine(19, 16, 21, 16)

    screen.drawLine(18, 19, 18, 21)
    screen.drawLine(19, 18, 21, 18)

    screen.drawLine(20, 20, 21, 20)

    --ビーコン
    temp = beconSignal and 70 or beconConfirm and 0 or 30
    screen.setColor(temp, temp, 30)
    screen.drawRectF(23, 15, 8, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(23, 15, 8, 6)
    temp = beconmode and 255 or 100
    screen.setColor(temp, temp, temp)
    drawNewFont(24, 16, "Be")


    --エンジン、バッテリ、燃料
    screen.setColor(30, 30, 30)
    screen.drawRectF(0, 24, 13, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(0, 24, 12, 6)
    temp = button(0, 24, 16, 6, false) and 100 or 255
    screen.setColor(temp, temp, temp)
    drawNewFont(1, 25, "STA")

    --外部映像
    screen.setColor(30, 30, 30)
    screen.drawRectF(16, 24, 17, 7)
    screen.setColor(50, 50, 50)
    screen.drawRect(15, 24, 16, 6)
    temp = button(15, 24, 16, 6, false) and 100 or 255
    screen.setColor(temp, temp, temp)
    drawNewFont(16, 25, "EXTE")
end

function button(x, y, w, h, palse)
    local returnvalue = false
    if x <= touch.X and
        x + w >= touch.X and
        y <= touch.Y and
        y + h >= touch.Y and
        touch.bool then
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
