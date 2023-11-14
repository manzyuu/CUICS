phys = {}
phys.altitude = 0
phys.oldAlt = 0

Receive = {}
clock = true
waypointX = 0
waypointY = 0
mfmSendFreq = 1
mfmReceiveFreq = 9999
passCode = property.getNumber("MFMPassCode")

--[[
1~8 MFM send data

11.levelling instrument(dial min=-2.0943951024 and max=2.0943951024)
12.altude
13.speed
14.compass(-degrees)
15.deltaAlt(m/s)


21.gpsX
22.gpsY
23.compass
24.waypointDistance(km)
25.waypointDirection
26.waypointAzimuthError(degrees if keypadA~=0 or keypadB~=0 then compass(-degrees))
]]
function onTick()
    clock = not clock
    phys.oldAlt = phys.altitude
    do --inputs
        phys.gpsX = input.getNumber(1)
        phys.altitude = input.getNumber(2)
        phys.gpsY = input.getNumber(3)
        phys.eulerX = input.getNumber(4)
        phys.eulerY = input.getNumber(5)
        phys.eulerZ = input.getNumber(6)
        phys.speed = input.getNumber(13)
        phys.deltaAlt = (phys.altitude - phys.oldAlt) * 60

        Receive.passCode = input.getNumber(21)
        Receive.gpsX = input.getNumber(22)
        Receive.gpsY = input.getNumber(23)
        Receive.compass = input.getNumber(24)
        Receive.altitude = input.getNumber(25)
        Receive.speed = input.getNumber(26)
        Receive.waypointX = input.getNumber(27)
        Receive.waypointY = input.getNumber(28)


        KeyPadA = input.getNumber(31)
        KeyPadB = input.getNumber(32)
    end

    do --matrix
        m10 = math.cos(phys.eulerY) * math.sin(phys.eulerZ)
        m11 = math.cos(phys.eulerX) * math.cos(phys.eulerZ) +
            math.sin(phys.eulerX) * math.sin(phys.eulerY) * math.sin(phys.eulerZ)
        m12 = -math.sin(phys.eulerX) * math.cos(phys.eulerZ) +
            math.cos(phys.eulerX) * math.sin(phys.eulerY) * math.sin(phys.eulerZ)


        tilt_x = math.atan(m10, math.sqrt(m12 * m12 + m11 * m11))
        tilt_y = math.atan(m11, math.sqrt(m10 * m10 + m12 * m12))
        tilt_z = math.atan(m12, math.sqrt(m11 * m11 + m10 * m10)) + math.pi / 2
        compassSensor = -math.atan(
            math.sin(phys.eulerX) * math.sin(phys.eulerZ) +
            math.cos(phys.eulerX) * math.sin(phys.eulerY) * math.cos(phys.eulerZ),
            math.cos(phys.eulerX) * math.cos(phys.eulerY)) / 2 / math.pi

        local flag = Receive.passCode == passCode and Receive.waypointX ~= 0 and Receive.waypointY ~= 0
        if KeyPadA == passCode and 0 < KeyPadB and KeyPadB < 10000 then
            mfmReceiveFreq = KeyPadB
        end

        if KeyPadA == passCode and flag then
            waypointX = Receive.waypointX
            waypointY = Receive.waypointY
        elseif KeyPadA == passCode + 0.1 and flag then
            waypointX = Receive.gpsX
            waypointY = Receive.gpsY
        elseif KeyPadA ~= 0 and KeyPadB ~= 0 then
            waypointX = KeyPadA
            waypointY = KeyPadB
        end

        if KeyPadA == -passCode and 0 < KeyPadB and KeyPadB < 10000 and mfmSendFreq ~= KeyPadB and property.getBool("Addon MFM send Freq setting system") then
            mfmSendFreq = KeyPadB
        end
    end

    do --Antenna
        output.setNumber(1, passCode)
        output.setNumber(2, phys.gpsX)
        output.setNumber(3, phys.gpsY)
        output.setNumber(4, compassSensor)
        output.setNumber(5, phys.altitude)
        output.setNumber(6, phys.speed)
        output.setNumber(7, KeyPadA)
        output.setNumber(8, KeyPadB)
        output.setNumber(9, mfmSendFreq)
        output.setNumber(10, mfmReceiveFreq)
    end


    do --Fight
        local pitch = clock and tilt_z or -tilt_z
        local roll = math.atan(-tilt_y, tilt_x) + math.pi / 2
        output.setNumber(11, pitch + roll)
        output.setNumber(12, input.getNumber(2) * property.getNumber("Alt Unit"))    --alt
        output.setNumber(13, input.getNumber(13) * property.getNumber("Speed Unit")) --spd
        output.setNumber(14, math.deg((((1 - compassSensor) % 1) * (math.pi * -2))))
        output.setNumber(15, phys.deltaAlt)
    end


    do --navigation
        local compass = math.deg((((1 - compassSensor) % 1) * (math.pi * 2)))

        local waypointDistance = (waypointX ~= 0 or waypointY ~= 0) and
            math.sqrt((waypointX - phys.gpsX) ^ 2 + (waypointY - phys.gpsY) ^ 2) or 0

        local waypointDirection = (waypointX ~= 0 or waypointY ~= 0) and
            (450 - math.deg(math.atan(waypointY - phys.gpsY, waypointX - phys.gpsX))) % 360 or 0

        local waypointAzimuthError = (waypointX ~= 0 or waypointY ~= 0) and
            (-compass + 90 - math.deg(math.atan(waypointY - phys.gpsY, waypointX - phys.gpsX))) % 360 or -compass



        output.setNumber(21, phys.gpsX)
        output.setNumber(22, phys.gpsY)
        output.setNumber(23, compass)
        output.setNumber(24, waypointDistance / 1000)
        output.setNumber(25, waypointDirection)
        output.setNumber(26, waypointAzimuthError)
    end
end
