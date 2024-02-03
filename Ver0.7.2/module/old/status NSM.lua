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
        simulator:setInputNumber(9, 1)
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
    maxSquat=4
    Passcode=4989


    touch       = {}
    touch.X     = 0
    touch.Y     = 0
    touch.bool  = false
    touch.flags = false

    SquatData={}
    SquatData.Passcode=0
    SquatData.mySquatNumber=1
    SquatData.selectNumber=1
    SquatData.MissionNumber={}
    SquatData.CurrentVitalData={}
    SquatData.VitalSheet={}
    SquatData.VitalSheet[00]={r=100,g=100,b=100,t="x"}
    SquatData.VitalSheet[01]={r=  0,g= 32,b=  0,blink=false,t="INBASE"}
    SquatData.VitalSheet[02]={r=  0,g= 64,b=  0,blink= true,t="F-WAIT"}
    SquatData.VitalSheet[03]={r=128,g= 64,b=  0,blink= true,t="ORDER"}
    SquatData.VitalSheet[04]={r=128,g= 64,b=  0,blink=false,t="DEP"}
    SquatData.VitalSheet[05]={r=  0,g= 64,b= 64,blink=false,t="SEARCH"}
    SquatData.VitalSheet[06]={r=  0,g= 64,b= 64,blink=false,t="WORK"}
    SquatData.VitalSheet[07]={r=  0,g= 64,b=  0,blink=false,t="RTB"}
    SquatData.VitalSheet[08]={r= 32,g= 32,b= 32,blink=false,t="MAINT"}
    SquatData.VitalSheet[09]={r= 64,g=  0,b=  0,blink=false,t="FAIL"}
    SquatData.CycleMode=false
    SquatData.oldCycleMode=false
    timer=0
end


function onTick()
    errorcheck = not errorcheck
    output.setBool(32, errorcheck)
    touch.bool=input.getBool(1)
    touch.X   = input.getNumber(30)
    touch.Y   = input.getNumber(31)
    moduleID  = input.getNumber(32)

    do--nsm
        SquatData.CycleMode=input.getBool(2)
        clock=input.getBool(3)
        local temp=input.getNumber(9)-1000
        SquatData.mySquatNumber=(temp>0 and temp<=maxSquat) and temp or 0
        SquatData.Passcode=input.getNumber(10)
        if SquatData.Passcode==Passcode then
            for i = 1, maxSquat, 1 do
                buffer=input.getNumber(10+i)
                SquatData.CurrentVitalData[i]=(buffer//100) or 0
                SquatData.MissionNumber[i]=(buffer%100)//1
            end
        end

        if moduleID==3 then
            if SquatData.CycleMode then
                timer =SquatData.CycleMode~=SquatData.oldCycleMode and 0 or timer
                timer=timer==0 and 100 or timer>0 and timer-1 or timer
                SquatData.selectNumber=(timer==0 and SquatData.selectNumber>=maxSquat) and 1 or 
                                       (timer==0) and SquatData.selectNumber+1 or SquatData.selectNumber
            else
                SquatData.selectNumber=(button(23,2,7,5,true) and SquatData.selectNumber<maxSquat) and SquatData.selectNumber+1 or
                                       (button(23,8,7,5,true) and SquatData.selectNumber>1       ) and SquatData.selectNumber-1 or 
                                       (timer==0 and SquatData.mySquatNumber~=SquatData.selectNumber)and SquatData.mySquatNumber or SquatData.selectNumber

                timer=(SquatData.mySquatNumber~=SquatData.selectNumber and touch.bool) and 800 or (timer>0 and SquatData.mySquatNumber~=0) and timer-1 or timer 
                
            end
            output.setBool(1,button(0,0,9,9,false))
        end

            SquatData.oldCycleMode=SquatData.CycleMode

        touch.flags=button(0,0,32,20,false) and true or touch.flags
        --print(SquatData.selectNumber)
        --print(touch.flags)
        --print(timer)
        touch.flags=touch.bool and touch.flags or false
    end

    do--statas
    temp=input.getNumber(2)
    fuel=input.getNumber(3)
    end

end

function onDraw()
    if monitorID then --[====[ 左のモニター用の描画 ]====]
        monitorID = false
        if monitorSwap and moduleID==3 then
            moduleUnit()
            
        end
    else
        monitorID = true
        if not monitorSwap and moduleID == 3 then --WIFI
            moduleUnit()
        end
    end
end



function moduleUnit()
    screen.setColor(10, 10, 10)
    screen.drawClear()
    do--nsm
        local buffer=SquatData.mySquatNumber==SquatData.selectNumber and 20 or 10
        screen.setColor(buffer,buffer,buffer)
        screen.drawRectF(0,0,24,7)
        local SquatInfo=SquatData.CurrentVitalData[SquatData.selectNumber] or 0
        screen.setColor(200,200,200)
        DrawNewFont(9,1,"SQ:")
        local label=SquatData.selectNumber>0 and tostring(SquatData.selectNumber) or "x"
        DrawNewFont(20,1,label)

        screen.setColor(3, 3, 3)
        screen.drawRectF(25,1,7,13)
        screen.drawRectF(0,0,7,7)

        screen.setColor(50, 50, 50)
        screen.drawRectF(26,2,5,5)
        screen.drawRectF(26,8,5,5)
        screen.drawRectF(1,1,5,5)

        screen.setColor(255, 255, 255)
        screen.drawText(27,2,"+")
        screen.drawText(27,8,"-")

        local temp=SquatData.CycleMode and 200 or 30
        screen.setColor(temp, temp, temp)
        screen.drawRect(2,2,2,2)

        temp=(SquatData.VitalSheet[SquatInfo].blink and clock) and 192 or 255
        screen.setColor(SquatData.VitalSheet[SquatInfo].r,SquatData.VitalSheet[SquatInfo].g,SquatData.VitalSheet[SquatInfo].b,temp)
        DrawNewFont(1,7,SquatData.VitalSheet[SquatInfo].t)

        --screen.setColor(200,200,200)

        DrawNewFont(1,14,"M'No.")
        DrawNewFont(20,14,string.format("%d",SquatData.MissionNumber[SquatData.selectNumber]or 0))
    end
    screen.setColor(1, 1, 1)
    screen.drawLine(0,19,32,19)
    do --statas

        screen.setColor(7, 7, 7)
        
        screen.drawLine(0,26,32,26)

        screen.setColor(255, 255, 255)
        DrawNewFont(0, 21, "TEMP")
        DrawNewFont(0, 27, "FUEL")

        DrawNewFont(21,21,string.format("%03d",temp//1))
        DrawNewFont(17,27,string.format("%04d",fuel//1))
    end
end

function DrawNewFont(NewFontX, NewFontY, text)
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
