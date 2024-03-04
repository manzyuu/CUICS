---@section Phys
Phys = {
    GpsX = 0,
    GpsY = 0,

    Alt = 0,
    Spd = 0,
    CompassDeg = 0,
    CompassRad = 0,

    ---@section Update
    ---@return nil
    Update = function()
        GpsX = input.getNumber(10)
        GpsY = input.getNumber(11)
        Alt = input.getNumber(12)
        Spd = input.getNumber(13)
        CompassDeg = math.deg(input.getNumber(14) * (math.pi * 2))     -- -180~180 ((((1 - input.getNumber(14)) % 1) * (math.pi * 2)) / math.pi * 180)
        CompassRad = input.getNumber(14) * (math.pi * 2)               --  -pi~pi
    end,
    ---@endsection Update

    ---@section printData
    printData = function()
        print(GpsX)
        print(GpsY)
        print(Alt)
        print(Spd)
        print(CompassDeg)
        print(CompassRad)
    end,
    ---@endsection printData
}
---@endsection Phys



---@section Touch
Touch = {
    X = 0,
    Y = 0,
    Bool = false,
    ReloadTimer = 0,
    Palse = false,
    BeforTouch = false,
    Update = function()
        Touch.BeforTouch = Touch.Bool
        Touch.X = input.getNumber(1)
        Touch.Y = input.getNumber(2)
        Touch.Bool = input.getBool(1)
        Touch.Palse = not Touch.BeforTouch and Touch.Bool

        Touch.ReloadTimer = (Touch.Bool and (Touch.ReloadTimer == 0)) and 6 or
            Touch.ReloadTimer > 0 and Touch.ReloadTimer - 1 or 0
    end,

    ---@section PalseCollisionDetection
    PalseCollisionDetection = function(x, y, width, height)
        return Touch.Palse and x <= Touch.X and Touch.X <= x + width and y <= Touch.Y and Touch.Y <= y + height
    end,

    ---@endsection PalseCollisionDetection


    ---@section MomentaryCollisionDetection
    MomentaryCollisionDetection = function(x, y, width, height)
        return Touch.Bool and x <= Touch.X and Touch.X <= x + width and y <= Touch.Y and Touch.Y <= y + height
    end,

    ---@endsection MomentaryCollisionDetection

}
---@endsection Touch


---@section Wifi
Wifi = {
    Passcode = {},
    CurrentX = {},
    CurrentY = {},
    Direction = {},
    WaypointX = {},
    WaypointY = {},
    FreqList = {},
    Receiveing = 0,
    Visible = {},
    DrawDirection = {},
    DrawWaypoint = {},
    SetWaypointFreq = 0,
    SendFreq = 0,
    ListKey = 1,
    Clockcount = 0,
    Switch = false,
    ReceiveFreqChangeTimer = 0,
    interval = 10000,
    ---@section Update
    Update = function()
        Wifi.Switch = input.getBool(10)
        if Touch.ReloadTimer == 0 then
            Wifi.SendFreq = input.getNumber(23)
            for i = 1, 8, 1 do
                Wifi.FreqList[i] = math.floor(input.getNumber(24 + i)) % interval or 0
                --receive.dispflag[Wifi.FreqList[i]] = receive.dispflag[Wifi.FreqList[i]] or false
                if 0 ~= Wifi.FreqList[i] then     --設定情報更新
                    local settingdata = math.floor(input.getNumber(24 + i) / interval)
                    Wifi.Receiveing = (settingdata & 1 == 1) and Wifi.FreqList[i] or Wifi.Receiveing
                    Wifi.Visible[Wifi.FreqList[i]] = settingdata & 2 == 2
                    Wifi.DrawDirection[Wifi.FreqList[i]] = settingdata & 4 == 4
                    Wifi.DrawWaypoint[Wifi.FreqList[i]] = settingdata & 8 == 8
                end
            end
        end
        local number = Wifi.FreqList[Wifi.ListKey]
        if number ~= 0 and Wifi.Switch and Wifi.ReceiveFreqChangeTimer == 0 then
            Wifi.Passcode[number]  = input.getNumber(4)
            Wifi.CurrentX[number]  = input.getNumber(5) // 1
            Wifi.CurrentY[number]  = input.getNumber(6) // 1
            Wifi.Direction[number] = input.getNumber(7)
            Wifi.WaypointX[number] = input.getNumber(8) // 1
            Wifi.WaypointY[number] = input.getNumber(9) // 1
        end


        Wifi.ReceiveFreqChangeTimer = Wifi.ReceiveFreqChangeTimer == 0 and 8 or
            Wifi.ReceiveFreqChangeTimer > 0 and Wifi.ReceiveFreqChangeTimer - 1 or Wifi.ReceiveFreqChangeTimer
        Wifi.ListKey = Wifi.ReceiveFreqChangeTimer == 0 and Wifi.ListKey + 1 or Wifi.ListKey
        Wifi.ListKey = Wifi.ListKey > 8 and 1 or Wifi.ListKey
    end,
    ---@endsection Update


    ---@section AddFreq
    ---field freq number 0001~9999
    AddFreq = function(freq)
        freq = math.floor(freq)
        if (0 < freq and freq < 10000) then
            for i = 1, 8, 1 do
                if Wifi.FreqList[i] == freq then
                    break
                end
                if Wifi.FreqList[i] == 0 then
                    Wifi.FreqList[i] = freq
                    break
                end
            end
        end
    end,
    ---@endsection AddFreq

    ---@section RemoveFreq
    RemoveFreq = function(key)
        for i = key, 7, 1 do
            Wifi.FreqList[i] = Wifi.FreqList[i + 1]
        end
    end,
    ---@endsection RemoveFreq


    ---@section SetSendFreq
    SetSendFreq = function(freq)
        if (0 < freq and freq < 10000) then
            Wifi.SendFreq = freq
        end
    end,
    ---@endsection SetSendFreq



    ---@section Output
    Output = function()
        output.setNumber(22, Wifi.FreqList[Wifi.ListKey])
        output.setNumber(23, Wifi.SendFreq)
        for i = 1, 8, 1 do
            local number = Wifi.FreqList[i]
            local temp = ((Wifi.SetWaypointFreq == number and 1 or 0) + (Wifi.Visible[number] and 2 or 0) + (Wifi.DrawDirection[number] and 4 or 0) + (Wifi.DrawWaypoint[number] and 8 or 0)) *
                interval
            output.setNumber(24 + i, number + temp)
        end
    end,
    ---@endsection Output
}
---@endsection Wifi







Funk = {



    ---@section DrawNewFont
    DrawNewFont = function(NewFontX, NewFontY, NewFontText)
        if type(NewFontText) == "number" then
            NewFontText = tostring(NewFontText)
        end
        NewFontD = property.getText("F1") .. property.getText("F2") .. property.getText("F3") .. property.getText("F4")
        for i = 1, NewFontText:len() do
            NewFontC = NewFontText:sub(i, i):byte() * 5 - 159
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
    end,
    ---@endsection DrawNewFont




    ---@section Clamp
    Clamp = function(value, max, min)
        return math.min(math.max(value, min), max)
    end,

    ---@endsection Clamp


    ---@section Split
    Split = function(str, delim)
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
    end,

    ---@endsection Split




    ---@section Colorconv16
    Colorconv16 = function(name)                                       --16進数のカラーコードをRGBに変換する
        local Color = tonumber(property.getText(name), 16) or 0
        return (Color >> 16) & 0xff, (Color >> 8) & 0xff, Color & 0xff --R,G,B
    end,

    ---@endsection Colorconv16



    ---@section lerp
    lerp = function(MIN, MAX, X) --  0~1  f(x)と同じ挙動
        return (1 - X) * MIN + X * MAX
    end,

    ---@endsection lerp


    ---@section Sign
    Sign = function(x)
        if x < 0 then
            return -1
        elseif x >= 0 then
            return 1
        else
            return 0
        end
    end,

    ---@endsection Sign
}
