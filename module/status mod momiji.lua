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

    function onLBSimulatorTick(simulator, ticks)
        -- touchscreen defaults
        local screenConnection1 = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection1.isTouched)
        simulator:setInputNumber(30, screenConnection1.touchX)
        simulator:setInputNumber(31, screenConnection1.touchY)
        simulator:setInputNumber(32, 3)
    end
end
---@endsection

do
    monitorSwap = property.getBool("Monitor Swap")
    monitorID   = false
    errorcheck  = false

    touch       = {}
    touch.X     = 0
    touch.Y     = 0
    touch.bool  = false
    touch.flags = false

    
end

function onTick()
    errorcheck = not errorcheck
    output.setBool(32, errorcheck)

    rps=input.getNumber(1)
    temp=input.getNumber(2)
    fuel=input.getNumber(3)

    addrps=input.getNumber(4)

    touch.bool=input.getBool(1)
    touch.X   = input.getNumber(30)
    touch.Y   = input.getNumber(31)
    moduleID  = input.getNumber(32)

    output.setBool(1,button(25,1,5,5,false))--up
    output.setBool(2,button(25,7,5,5,false))--down



   
end

function onDraw()
    if monitorID then --[====[ 左のモニター用の描画 ]====]
        monitorID = false
        if monitorSwap and moduleID == 3 then
            moduleUnit()
        end
    else
        monitorID = true
        if not monitorSwap and moduleID == 3 then
            moduleUnit()
        end
    end
end


function moduleUnit()
    screen.setColor(10, 10, 10)
            screen.drawClear()

            screen.setColor(1, 1, 1)
            screen.drawLine(0,12,32,13)
            screen.setColor(7, 7, 7)
            screen.drawLine(0,20,32,20)
            screen.drawLine(0,26,32,26)

            screen.setColor(255, 255, 255)
            drawNewFont(0, 0, "ADD")
            drawNewFont(3, 6, "RPS")
            screen.drawText(18,7,string.format("%0d",addrps//1%10))

            screen.setColor(3, 3, 3)
            screen.drawRectF(24,0,7,13)

            screen.setColor(50, 50, 50)
            screen.drawRectF(25,1,5,5)
            screen.drawRectF(25,7,5,5)

            screen.setColor(255, 255, 255)
            screen.drawText(26,1,"+")
            screen.drawText(26,7,"-")




            screen.setColor(255, 255, 255)
            drawNewFont(0, 15, "RPS")
            drawNewFont(0, 21, "TEMP")
            drawNewFont(0, 27, "FUEL")

            drawNewFont(21,15,string.format("%03d",rps//1))
            drawNewFont(21,21,string.format("%03d",temp//1))
            drawNewFont(17,27,string.format("%04d",fuel//1))
end



function drawNewFont(NewFontX, NewFontY, text)
    if type(text) == "number" then
        text = tostring(text)
    end
    NewFontD = property.getText("F1") .. property.getText("F2") .. property.getText("F3") .. property.getText("F4")
    for i = 1, text:len() do
        NewFontC = text:sub(i, i):byte() * 5 - 159
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