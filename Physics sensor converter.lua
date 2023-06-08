function convert()
    Phys = {}
    -- This uses the game's basis. That is,
    --     vehicle   world   color
    -- x   right     east    red
    -- y   up        up      green
    -- z   forward   north   blue

    -- Get angles.
    local x = input.getNumber(4)
    local y = input.getNumber(5)
    local z = input.getNumber(6)

    -- sin, 'cos I like it.
    local cx, sx = math.cos(x), math.sin(x)
    local cy, sy = math.cos(y), math.sin(y)
    local cz, sz = math.cos(z), math.sin(z)

    -- Build matrix.
    local m00 =  cy*cz
    local m01 = -cx*sz + sx*sy*cz
    local m02 =  sx*sz + cx*sy*cz
    local m10 =  cy*sz
    local m11 =  cx*cz + sx*sy*sz
    local m12 = -sx*cz + cx*sy*sz
    local m20 = -sy
    local m21 =  sx*cy
    local m22 =  cx*cy
    --[[
    -- Compute tilts. Less stable near gimbal lock. m11 and m12 can exceed asin's domain.
    Phys.tilt_x = math.asin(m10) / math.pi * 2
    Phys.tilt_y = math.asin(m11) / math.pi * 2
    Phys.tilt_z = math.asin(m12) / math.pi * 2

    -- Alternatively, compute tilts stably.
    Phys.tilt_x = math.atan(m10, math.sqrt(m00*m00 + m20*m20)) / math.pi * 2
    Phys.tilt_y = math.atan(m11, math.sqrt(m01*m01 + m21*m21)) / math.pi * 2
    Phys.tilt_z = math.atan(m12, math.sqrt(m02*m02 + m22*m22)) / math.pi * 2
    ]]
    -- Equally good alternative if you prefer.
    Phys.tilt_x = math.atan(m10, math.sqrt(m12*m12 + m11*m11)) / math.pi * 2
    Phys.tilt_y = math.atan(m11, math.sqrt(m10*m10 + m12*m12)) / math.pi * 2
    Phys.tilt_z = math.atan(m12, math.sqrt(m11*m11 + m10*m10)) / math.pi * 2

    -- Compute compasses.
    Phys.compass_x = math.atan(m00, m20) / -math.pi * 2
    Phys.compass_y = math.atan(m01, m21) / -math.pi * 2
    Phys.compass_z = math.atan(m02, m22) / -math.pi * 2

    -- Get global angular velocities.
    local ax = input.getNumber(10)
    local ay = input.getNumber(11)
    local az = input.getNumber(12)

    -- Transform them to the local frame.
    Phys.angular_x = m00*ax + m10*ay + m20*az
    Phys.angular_y = m01*ax + m11*ay + m21*az
    Phys.angular_z = m02*ax + m12*ay + m22*az

    Phys.x     = input.getNumber(1)
    Phys.y     = input.getNumber(3)
    Phys.alt   = input.getNumber(2)
    Phys.compass_y   = Phys.compass_y
    ---@diagnostic disable-next-line: redundant-parameter
    Phys.roll  = atan(Phys.tilt_y, Phys.tilt_x)
    Phys.pitch = Phys.tilt_z
end