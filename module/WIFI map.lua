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
        simulator:setInputNumber(25, 00147)
        simulator:setInputNumber(26, 11111)
        simulator:setInputNumber(27, 22434)
        simulator:setInputNumber(28, 33756)
        simulator:setInputNumber(29, 44613)
        simulator:setInputNumber(30, 55603)
        simulator:setInputNumber(31, 66200)
        simulator:setInputNumber(32, 77700)
    end
end
---@endsection






do
    screenpower= true
    centering= true    
    monitorSwap=property.getBool("Monitor Swap")
    monitorID=false
    errorcheck=false
    moduleID=2

    mapX, mapY = 0, 0
    zoomlv, zoom = 1,10
    autopilotDist = 0

    Phys  = {}

    radio   = {}
    radio.sendch = 0
    radio.reciveFreq=0
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



    touch       = {}
    touch.X     = 0
    touch.Y     = 0
    touch.Bool  = false
    touch.flags = false
    pageNumber  = 1

    
end






--[[
    1~8 ReceiveData
    9~13 PhysData
    14~15 keypad
    16 RadioData
    17 pageNumber
    18~19 touch
    20 SendFREQ
    21 
    23 SelectModuleNumber
    24~32 FreqData




    1,MFMパスコード
    2,MFM X
    3,MFM Y
    4,MFMコンパス
    5,MFM高度
    6,MFM速度
    7,MFM WayX
    8,MFM WayY


    09,gpsx     1
    10,gpsy     3
    11,compass  17
    12,alt      2
    13,speed    13

    14,keypadX
    15,keypadY

]]






function onTick() --[====[ onTick ]====]
    --if screenpower == false then return end
    --screenpower = false


    --[[
        output.setBool(13, screenpower)
        output.setBool(14, touch.flags)



        monitorID             = false
        touch.Bool            = input.getBool(1)
        touch.X               = input.getNumber(1)
        touch.Y               = input.getNumber(2)

        Phys.x                = input.getNumber(9)
        Phys.y                = input.getNumber(10)
        Phys.compass          = input.getNumber(17)
        Phys.SPD              = input.getNumber(18)

        KeypadX               = input.getNumber(29)
        KeypadY               = input.getNumber(30)

        receivekeypad         = input.getNumber(13)
        receivechlist         = input.getNumber(14)
        radio.reciveFreq      = input.getNumber(15)
        radio.sendFreq        = input.getNumber(16)

        radioswitch           = input.getBool(3)
        becon                 = input.getBool(4)

        autopilotDist         = math.sqrt((target.x - Phys.x) ^ 2 + (target.y - Phys.y) ^ 2)
    ]]
    


    do--input data
        touch.Bool            = input.getBool(1)
        
        errorcheck=not errorcheck

        receive.code[freqlist[radio.Channelnumber]] = input.getNumber(1)
        
        if input.getNumber(1)==property.getNumber("Passcode") then--1~8 ReceiveData
                receive.X   [freqlist[radio.Channelnumber]] = input.getNumber(2)
                receive.Y   [freqlist[radio.Channelnumber]] = input.getNumber(3)
                receive.Dir [freqlist[radio.Channelnumber]] = input.getNumber(4)
                receive.Alt [freqlist[radio.Channelnumber]] = input.getNumber(5)
                receive.Spd [freqlist[radio.Channelnumber]] = input.getNumber(6)
                receive.WayX[freqlist[radio.Channelnumber]] = input.getNumber(7)
                receive.WayY[freqlist[radio.Channelnumber]] = input.getNumber(8)



        end

        --9~13 PhysData
        Phys.x=input.getNumber(9)
        Phys.y=input.getNumber(10)
        Phys.compass=input.getNumber(11)
        Phys.alt=input.getNumber(12)
        Phys.spd=input.getNumber(13)

        --14~15 keypad
        KeypadX=input.getNumber(14)
        KeypadY=input.getNumber(15)


        touch.X               = input.getNumber(18)
        touch.Y               = input.getNumber(19)
        radio.reciveFreq      = input.getNumber(21)

        if not touch.Bool then
            radio.sendFreq    = input.getNumber(20)
            radio.switch       = input.getBool(20)
            for i = 1, 8, 1 do--FreqData
                
                freqlist[i] = math.floor(input.getNumber(24 + i))%10000 and math.floor(input.getNumber(24 + i))%10000 or 0

                if 0 < freqlist[i] then --設定情報更新
                    local settingdata = math.floor(input.getNumber(24 + i)/10000)
                    receive.vis[freqlist[i]]=settingdata & 1 == 1
                    receive.dir[freqlist[i]]=settingdata & 2 == 2
                    receive.way[freqlist[i]]=settingdata & 4 == 4
                end
            end
        end


        for i = 1, 7, 1 do
            if freqlist[i] == 0 and freqlist[i+1] ~= 0 then --0削除
                for j = i, 7, 1 do
                    freqlist[j] = freqlist[j + 1]
                end
            end

            for j = 1, 8, 1 do --重複削除
                if i ~= j and freqlist[i] == freqlist[j] and i < j then
                    freqlist[j] = 0
                elseif i ~= j and freqlist[i] == freqlist[j] and i > j then
                    freqlist[i] = 0
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
    
            if button(13, 13, 6, 6, true) then
                touch.flags=true
                mapX, mapY = Phys.x, Phys.y
            elseif touch.Bool and not button(0, 0, 5, 11,false) then--and zoomlv == false then
                    mapX = -(touch.X - 16) * zoom / 2 + mapX
                    mapY = -(touch.Y - 16) * zoom / 2 + mapY
            end
        end
        if moduleID==2 then--wifi
                
            
            -------------ページ移動-------------------------------------------------
            if button(27, 20, 5, 5,true) and pageNumber < 7 then
                touch.flags = true
                pageNumber = pageNumber + 2
            elseif button(27, 14, 5, 5,true) and pageNumber > 1 then
                touch.flags = true
                pageNumber = pageNumber - 2
            end


            --------------------------------------------------------------------------
            if button(27, 0, 5, 6,true)  and KeypadX~=0 then --送信チャンネル設定ボタン
                touch.flags=true
                radio.sendFreq = KeypadX
            end


            if button(27, 7, 5, 5,true) then --受信チャンネル追加
                for i = 1, 8, 1 do
                    if freqlist[i]==KeypadY then
                        touch.flags=true
                        break
                    end
                    if freqlist[i] == 0  and KeypadY~=0 then
                        touch.flags=true
                        freqlist[i] = KeypadY
                        break
                    end
                end
            end



            for i = 0, 1, 1 do--設定更新
                if button( 2, 14+i*12, 5, 5,true) and freqlist[pageNumber+i]~=0 then
                    touch.flags=true
                    receive.vis[freqlist[pageNumber+i]]=not receive.vis[freqlist[pageNumber+i]]
                end

                if button( 8, 14+i*12, 5, 5,true) then
                    touch.flags=true
                    receive.dir[freqlist[pageNumber+i]]=not receive.dir[freqlist[pageNumber+i]]
                end

                if button(14, 14+i*12, 5, 5,true) then
                    touch.flags=true
                    receive.way[freqlist[pageNumber+i]]=not receive.way[freqlist[pageNumber+i]]
                end

                if button(0, 8+i*12, 5, 5,true) then--受信チャンネル削除
                    touch.flags=true
                    freqlist[pageNumber+i]=0
                end


            end


            if button(27, 27, 5, 5,true)  then--無線ONOFF
                touch.flags=true
                radio.switch=not radio.switch
            end
        end

    end

    do --outputdata
        output.setNumber(1,receive.X[freqlist[1]])
        output.setNumber(2,receive.Y[freqlist[1]])
        output.setNumber(3,receive.Dir[freqlist[1]])
        output.setNumber(4,receive.Alt[freqlist[1]])
        output.setNumber(5,receive.Spd[freqlist[1]])
        output.setNumber(6,receive.WayX[freqlist[1]])
        output.setNumber(7,receive.WayY[freqlist[1]])
        
        output.setBool(20,radio.switch)
        output.setBool(32,touch.Bool)

        output.setNumber(17,pageNumber)

        if input.getBool(32) then
            radio.Channelnumber=radio.Channelnumber+1
        end
        if radio.Channelnumber==9 then
            radio.Channelnumber=1
        end

        output.setNumber(20,radio.sendFreq)
        output.setNumber(21,freqlist[radio.Channelnumber])

        for i = 1, 8, 1 do--FreqData
            local settingdata = 0
            local tempvis = receive.vis[freqlist[i]] and 1 or 0
            local tempdir = receive.dir[freqlist[i]] and 2 or 0
            local tempway = receive.way[freqlist[i]] and 4 or 0
            settingdata = (tempvis+tempdir+tempway)*10000
            output.setNumber(24 + i,(freqlist[i]+settingdata))
        end
    end



    monitorID=false









end -------------------------------------------onTick終わり-------------------------------------------

function onDraw()
    if monitorID ~= monitorSwap then --[====[ 左のモニター用の描画 ]====]
        monitorID = true
        return
    else
        monitorID=true
        if moduleID==1 then--map
			screen.drawMap(mapX, mapY, zoom)
			drawNewFont(0, 26, zoom)

			screen.setColor(5, 5, 5) --Zoomボタン
			screen.drawRectF(0, 0, 5, 10)
			screen.setColor(20, 20, 20)
			screen.drawRect(0, 0, 4, 4)
			screen.drawRect(0, 5, 4, 4)
			screen.setColor(255, 255, 255)
			screen.drawText(1, 0, "+")
			screen.drawText(1, 5, "-")

			screen.drawCircle(16, 16, 4) --中心に戻る

            for i = 1, 8, 1 do
                if receive.vis[freqlist[i]] and freqlist[i]~=0 then

                    if receive.dir[freqlist[i]] then
                        
                    end
                    if receive.way[freqlist[i]] then
                        
                    end
                end
            end
        end
        if moduleID==2 then  --WIFI     
            local temp=0
            screen.setColor(10, 10, 10)
            screen.drawClear()
            screen.setColor(30, 30, 30) --送信チャンネルの下の線
            screen.drawLine(0, 6, 32, 6)



            -------------------------------------------------Send-------------------------------------------------
            
            screen.setColor(255, 255, 255)
            screen.drawTriangleF(2, 1, 0, 4, 5, 4) --左の送信矢印
            screen.drawLine(2, 4, 2, 6)
            temp = radio.switch and 255 or 80
            screen.setColor(temp, temp, temp)
            screen.drawText(6, 1, string.format("%04d", radio.sendFreq // 1)) --送信チャンネル

            screen.setColor(25, 25, 25)
            screen.drawRectF(27, 0, 5, 6) --送信ボタン

            temp = button(27, 0, 5, 6,false) and 255 or 50
            screen.setColor(temp, temp, temp)
            screen.drawText(28, 2, "^") --送信ボタン


            --------------------receive-------------------------------------------------------------------------

            screen.setColor(25, 25, 25)
            screen.drawRectF(27, 14, 5, 5) --チャンネル上
            screen.drawRectF(27, 20, 5, 5) --チャンネル下
            screen.drawRectF(27, 7, 5, 5)  --受信チャンネル追加
            screen.drawRectF(27, 27, 5, 5) --無線ON/OFF

            temp = button(27, 7, 5, 5,false) and 255 or 50
            screen.setColor(temp, temp, temp)
            screen.drawText(28, 7, "+")                  --受信チャンネル追加

            temp = button(27, 14, 5, 5,false) and 255 or 50
            screen.setColor(temp, temp, temp)
            screen.drawTriangleF(29, 15, 27, 18, 32, 18) --チャンネル上
            temp = button(27, 20, 5, 5,false) and 255 or 50
            screen.setColor(temp, temp, temp)
            screen.drawTriangleF(29, 25, 26, 21, 32, 21) --チャンネル下

            temp = radio.switch and 255 or 50
            screen.setColor(temp, temp, temp)
            screen.drawLine(28, 29, 28, 31)
            screen.drawLine(29, 28, 31, 28)
            screen.drawLine(30, 30, 30, 31) --無線ON/OFF


            receiveunit(freqlist[pageNumber], 0)
            receiveunit(freqlist[pageNumber + 1], 1)

            screen.setColor(100, 100, 100)
            drawNewFont(22, 27, string.format("%01d", pageNumber%2+pageNumber//2))
        end
        
    end
end

function receiveunit(ch, num)
    local temp=0

    temp = ch ~= 0 and 180 or 80 --freq
    screen.setColor(temp, receive.code==4000 and 255 or temp, temp)
    screen.drawText(6, 8 + num * 12, string.format("%04d", ch // 1))

    screen.setColor(25, 25, 25)

    for i = 0, 2, 1 do
        screen.drawRectF(2 + 6 * i, 14 + num * 12, 5, 5) --base
    end

    local temp = ch ~= 0 and 255 or 80
    screen.drawRectF(0, 8 + num * 12, 5, 5) --チャンネル削除
    screen.setColor(255, 255, 255)
    screen.drawText(1, 8 + num * 12, "-")

    temp = receive.vis[ch] and 255 or 50 --vision
    screen.setColor(temp, temp, temp)
    drawNewFont(3, 13 + num * 12, "v")

    temp = receive.dir[ch] and 255 or 50 --direction
    screen.setColor(temp, temp, temp)
    screen.drawLine(9, 15 + num * 12, 11, 15 + num * 12)
    screen.drawLine(11, 16 + num * 12, 11, 17 + num * 12)
    screen.drawLine(9, 17 + num * 12, 11, 17 + num * 12)
    screen.drawLine(9, 16 + num * 12, 9, 17 + num * 12)

    temp = receive.way[ch] and 255 or 50 --waypoint
    screen.setColor(temp, temp, temp)
    screen.drawText(15, 14 + num * 12, "+")


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




