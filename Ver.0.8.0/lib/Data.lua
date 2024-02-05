---@section PhysData
Phys = {
    ---@section Update
    ---@return nil
    Update = function()
        GpsX = input.getNumber(10)
        GpsY = input.getNumber(11)
        Alt = input.getNumber(12)
        Spd = input.getNumber(13)
        CompassDeg = ((((1 - input.getNumber(14)) % 1) * (math.pi * 2)) / math.pi * 180)
        CompassRad = input.getNumber(14) * math.pi * 2
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

---@endsection PhysData


BeforTouch=false
---@section Touch
Touch = {
    X = 0,
    Y = 0,
    Bool = false,
    ReloadTimer = 0,
    Palse = false,
    Update = function()
        BeforTouch = Touch.Bool
        Touch.X = input.getNumber(1)
        Touch.Y = input.getNumber(2)
        Touch.Bool = input.getBool(1)
        Touch.Palse = not BeforTouch and Touch.Bool

        Touch.ReloadTimer = (Touch.Bool and (Touch.ReloadTimer == 0)) and 6 or
            Touch.ReloadTimer > 0 and Touch.ReloadTimer - 1 or 0
        
    end,


}
---@endsection Touch
interval = 10000

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
    SendFreq=0,
    ListKey = 1,
    Clockcount = 0,
    Switch = false,

    ---@section Update
    Update = function()
        Wifi.Switch = input.getBool(10)
        local number = Wifi.FreqList[Wifi.ListKey]
        if number ~= 0 and Wifi.Switch and Wifi.clockcount == 0 then
            Wifi.Passcode[number]  = input.getNumber(11)
            Wifi.CurrentX[number]  = input.getNumber(12) // 1
            Wifi.CurrentY[number]  = input.getNumber(13) // 1
            Wifi.Direction[number] = input.getNumber(14)
            Wifi.WaypointX[number] = input.getNumber(15) // 1
            Wifi.WaypointY[number] = input.getNumber(16) // 1
        end

        if Touch.ReloadTimer == 0 then
            Wifi.SendFreq=input.getNumber(23)
            for i = 1, 8, 1 do
                Wifi.FreqList[i] = math.floor(input.getNumber(24 + i)) % interval or 0
                --receive.dispflag[Wifi.FreqList[i]] = receive.dispflag[Wifi.FreqList[i]] or false
                if 0 ~= Wifi.FreqList[i] then --設定情報更新
                    local settingdata = math.floor(input.getNumber(24 + i) / interval)
                    Wifi.Receiveing = (settingdata & 1 == 1) and Wifi.FreqList[i] or Wifi.Receiveing
                    Wifi.Visible[Wifi.FreqList[i]] = settingdata & 2 == 2
                    Wifi.DrawDirection[Wifi.FreqList[i]] = settingdata & 4 == 4
                    Wifi.DrawWaypoint[Wifi.FreqList[i]] = settingdata & 8 == 8
                end
            end
        end
    end,
    ---@endsection Update


    ---@section AddFreq
    ---field freq number 0001~9999
    AddFreq = function(freq)
        freq=math.floor(freq)
        if (0 < freq and freq < 10000) then
            for i = 1, 8, 1 do
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
        for i = key, 8, 1 do
            Wifi.FreqList[i] = Wifi.FreqList[i + 1]
        end
    end,
    ---@endsection RemoveFreq


    ---@section SetSendFreq
    SetSendFreq=function (freq)
        if (0 < freq and freq < 10000) then
            Wifi.SendFreq=freq
        end
    end,
    ---@endsection SetSendFreq



    ---@section Output
    Output=function ()
        output.setNumber(23,Wifi.SendFreq)
        for i = 1, 8, 1 do
            local number=Wifi.FreqList[i]
            local temp=((Wifi.Visible[number] and 2 or 0) + (Wifi.DrawDirection[number] and 4 or 0) + (receive.way[number] and 8 or 0)) * interval
            output.setNumber(24 + i, number+temp)
        end
    end,
    ---@endsection output
}
---@endsection Wifi











---@section DrawNewFont
function DrawNewFont(NewFontX, NewFontY, NewFontText)
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
end
---@endsection DrawNewFont


---@section PalseCollisionDetection
function PalseCollisionDetection(x, y, height, width, Touch)
    return Touch.Palse and x <= Touch.X and Touch.X <= x + width and y <= Touch.Y and Touch.Y <= y + height
end
---@endsection PalseCollisionDetection


---@section MomentaryCollisionDetection
function MomentaryCollisionDetection(x, y, height, width, Touch)
    return Touch.Bool and x <= Touch.X and Touch.X <= x + width and y <= Touch.Y and Touch.Y <= y + height
end
---@endsection MomentaryCollisionDetection