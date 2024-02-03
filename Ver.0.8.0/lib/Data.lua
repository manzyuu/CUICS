---@section PhysData
Phys = {
    ---@section update
    ---@return nil
    update = function()
        GpsX = input.getNumber(10)
        GpsY = input.getNumber(11)
        Alt = input.getNumber(12)
        Spd = input.getNumber(13)
        CompassDeg = ((((1 - input.getNumber(14)) % 1) * (math.pi * 2)) / math.pi * 180)
        CompassRad = input.getNumber(14) * math.pi * 2
    end,
    ---@endsection update

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



---@section Touch
Touch = {
    X = 0,
    Y = 0,
    Bool = false,
    ReloadTimer = 0,
    Palse = false,
    update = function()
        local beforTouch = false
        beforTouch = Bool
        Palse = not beforTouch and Bool
        X = input.getNumber(1)
        Y = input.getNumber(2)
        Bool = input.getBool(1)

        ReloadTimer = (Bool and (ReloadTimer == 0)) and 5 or
            ReloadTimer > 0 and ReloadTimer - 1 or 0
    end,


}
---@endsection Touch
interval = 10000

---@section Wifi
---@class Wifi
---@field Passcode number
---@field CurrentX number

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
    ListKey = 1,
    Clockcount = 0,
    switch = false,

    ---@section update
    Update = function()
        switch = input.getBool(1)
        local number = Wifi.FreqList[Wifi.ListKey]
        if number ~= 0 and Wifi.switch and Wifi.clockcount == 0 then
            Wifi.Passcode[number]  = input.getNumber(11)
            Wifi.CurrentX[number]  = input.getNumber(12) // 1
            Wifi.CurrentY[number]  = input.getNumber(13) // 1
            Wifi.Direction[number] = input.getNumber(14)
            Wifi.WaypointX[number] = input.getNumber(15) // 1
            Wifi.WaypointY[number] = input.getNumber(16) // 1
        end

        if Touch.ReloadTimer == 0 then
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
    ---@endsection update


    ---@section AddFreq
    ---field freq number 0001~9999
    AddFreq=function (freq)
        if (0<freq and freq<10000)then
            for i = 1, 8, 1 do
                if Wifi.FreqList[i]==0 then
                    Wifi.FreqList[i]=freq
                    break
                end
            end
        end
    end,
    ---@endsection AddFreq

    ---@section RemoveFreq
    RemoveFreq=function (freq)
        for i = 1, 8, 1 do
            if Wifi.FreqList[i]==freq then
                for j = i, 8, 1 do
                    Wifi.FreqList[j]=Wifi.FreqList[j+1]
                end
                break
            end
        end
    end,
    ---@endsection RemoveFreq
}
---@endsection Wifi












function DrawNewFont(NewFontX, NewFontY, NewFontZ)
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





---@section CollisionDetection
function CollisionDetection(x,y,height,width,Touch)
    return x+width<Touch.X and Touch.X<x and y+height<Touch.Y and Touch.Y<y 
end