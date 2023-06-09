
function compassBar(targetangle)    --targetangle = degrees
    local compassBarSpase=300

    screen.setColor(5,5,5)
    screen.drawRectF(10,23,11,7)
    screen.drawRectF(9,24,13,5)

    screen.setColor(255, 255, 225)
    drawNewFont(10, 24, string.format("%03d", tonumber(math.floor(math.deg(compass_y)))))

    screen.setColor(5, 70, 5)
    for i = 0, 72, 1 do
        screen.drawLine(math.floor(((math.floor(math.deg(compass_y)-i*5+360)%360)/360)*compassBarSpase), 29+i%2,
                        math.floor(((math.floor(math.deg(compass_y)-i*5+360)%360)/360)*compassBarSpase), 33)
    end
    
    screen.setColor(250, 250, 40)
    screen.drawLine(math.floor(((math.floor(math.deg(compass_y)-targetangle+360)%360)/360)*compassBarSpase), 29,
                    math.floor(((math.floor(math.deg(compass_y)-targetangle+360)%360)/360)*compassBarSpase), 33)
end


local x = input.getNumber(4)
local y = input.getNumber(5)
local z = input.getNumber(6)

local compassSensor = -math.atan(math.sin(x) * math.sin(z) + math.cos(x) * math.sin(y) * math.cos(z),
math.cos(x) * math.cos(y)) / 2 / math.pi
compass_y = (((1 - compassSensor) % 1) * (math.pi * 2))