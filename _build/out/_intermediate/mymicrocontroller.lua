
-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)currentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCHcurrentradioselectCH
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
    simulator:setScreen(1, "3x3")
    simulator:setProperty("ExampleNumberProperty", 123)

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
    function onLBSimulatorTick(simulator, ticks)

        -- touchscreen defaults
        local screenConnection = simulator:getTouchScreen(1)
        simulator:setInputBool(1, screenConnection.isTouched)
        simulator:setInputNumber(1, screenConnection.width)
        simulator:setInputNumber(2, screenConnection.height)
        simulator:setInputNumber(3, screenConnection.touchX)
        simulator:setInputNumber(4, screenConnection.touchY)

        -- NEW! button/slider options from the UI
        simulator:setInputBool(31, simulator:getIsClicked(1))       -- if button 1 is clicked, provide an ON pulse for input.getBool(31)
        simulator:setInputNumber(31, simulator:getSlider(1))        -- set input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2))       -- make button 2 a toggle, for input.getBool(32)
        simulator:setInputNumber(32, simulator:getSlider(2) * 50)   -- set input 32 to the value from slider 2 * 50
    end;
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!

ticks = 0
function onTick()
    ticks = ticks + 1
end

function onDraw()
    screen.drawCircle(16,16,5)
end
do screenpower=true;centering=true;monitorSwap=property.getBool("Monitor Swap")moduleID=2;MaxVS=20;mapX,mapY=0,0;zoomlv=1;zoom=10;autopilotDist=0;engine={}Phys={}Phys.alt=0;Phys.oldalt=0;radio={["sendch"]=0}target={["x"]=0,["y"]=0}receive={["vis"]={},["dir"]={},["way"]={},["way2"]={},["X"]={},["Y"]={},["Dir"]={},["Alt"]={},["Spd"]={},["WayX"]={},["WayY"]={}}touch={["x"]={},["y"]={},["touch"]={}}end;function onTick()if screenpower==false then return end;screenpower=false;Phys.x,Phys.y=input.getNumber(9),input.getNumber(10)autopilotDist=math.sqrt((target.x-Phys.x)^2+(target.y-Phys.y)^2)output.setBool(13,screenpower)output.setBool(14,input.getBool(1)or input.getBool(2))monitorID=false;touch["x"][1],touch["y"][1],touch["touch"][1]=input.getNumber(1),input.getNumber(2),input.getBool(1)touch["x"][2],touch["y"][2],touch["touch"][2]=input.getNumber(3),input.getNumber(4),input.getBool(2)engine.rps,engine.temp=input.getNumber(5),input.getNumber(6)battery,fuel=input.getNumber(7),input.getNumber(8)Phys.oldalt=Phys.alt;Phys.x=input.getNumber(9)Phys.y=input.getNumber(10)Phys.alt=input.getNumber(11)Phys.VS=(input.getNumber(11)-Phys.oldalt)*60;Phys.compass_y=input.getNumber(17)Phys.SPD=input.getNumber(18)KeypadX=input.getNumber(29)KeypadY=input.getNumber(30)radioswitch=input.getBool(3)beconSignal=input.getBool(4)receivekeypad=input.getNumber(13)receivechlist=input.getNumber(14)radioselect=input.getNumber(15)radio.sendch=input.getNumber(16)receive["vis"][radioselect]=input.getBool(5)receive["dir"][radioselect]=input.getBool(6)receive["way"][radioselect]=input.getBool(7)receive["way2"][radioselect]=input.getBool(8)do if touch["touch"][1]then moduleID=button(0,15,12,6,1)and 1 or button(15,15,6,6,1)and 2 or button(0,24,16,6,1)and 3 or button(15,24,16,6,1)and 4 or 0 end;output.setBool(13,button(15,24,16,6,1))end;if moduleID==1 then if centering then mapX,mapY=Phys.x,Phys.y end;if touch["touch"][2]==false then zooming=false end;if button(0,0,5,5,2)then if zooming==false then zoomlv=zoomlv+1 end;zooming=true end;if button(0,6,5,5,2)then if zooming==false then zoomlv=zoomlv-1 end;zooming=true end;zoomlv=math.min(math.max(zoomlv,1),22)zoom=math.min(zoomlv-5,0)/5+math.min(math.max(zoomlv-4,1),10)+math.min(math.max(zoomlv-14,0),8)*5;if button(13,13,6,6,2)then centering=true else if touch["touch"][2]and zoomlv==false then mapX=-(touch["x"][2]-16)*zoom/2+mapX;mapY=-(touch["y"][2]-16)*zoom/2+mapY;centering=false end end end;if moduleID==2 then output.setBool(1,button(27,0,5,6,2))output.setBool(2,button(27,7,5,5,2))output.setBool(3,button(2,14,5,5,2))output.setBool(4,button(8,14,5,5,2))output.setBool(5,button(14,14,5,5,2))output.setBool(6,button(20,14,5,5,2))output.setBool(7,button(27,14,5,5,2))output.setBool(8,button(27,20,5,5,2))output.setBool(9,button(0,20,5,5,2))output.setBool(10,button(27,27,5,5,2))output.setBool(11,button(0,26,9,6,2))output.setBool(12,button(22,20,4,6,1))end;if input.getNumber(21)==property.getNumber("Passcode")then temp=input.getNumber(20)receive["X"][temp]=input.getNumber(22)receive["Y"][temp]=input.getNumber(22)receive["Dir"][temp]=input.getNumber(22)receive["Alt"][temp]=input.getNumber(22)receive["Spd"][temp]=input.getNumber(22)receive["WayX"][temp]=input.getNumber(22)receive["WayY"][temp]=input.getNumber(22)end end;function onDraw()screenpower=true;if xor(monitorID==false,monitorSwap)then screen.setColor(10,10,10)screen.drawClear()screen.setColor(200,50,20)drawNewFont(29,1,"X")drawNewFont(17,1,string.format("%03d",math.abs(Phys.x//100)))screen.setColor(20,50,200)drawNewFont(29,7,"Y")drawNewFont(17,7,string.format("%03d",math.abs(Phys.y//100)))screen.setColor(255,255,255)drawNewFont(0,1,string.format("%02d",math.min(math.abs(autopilotDist//1000),99)))screen.drawText(7,1,".")drawNewFont(10,1,string.format("%01d",math.abs(autopilotDist)//100%10))drawNewFont(8,7,"KM")print(autopilotDist)screen.setColor(5,5,5)screen.drawLine(15,0,15,13)screen.setColor(1,1,1)screen.drawLine(0,13,32,13)screen.setColor(30,30,30)screen.drawRectF(0,15,13,7)screen.setColor(50,50,50)screen.drawRect(0,15,12,6)screen.setColor(255,255,255)drawNewFont(1,16,"MAP")screen.setColor(30,30,30)screen.drawRectF(15,15,7,7)screen.setColor(50,50,50)screen.drawRect(15,15,6,6)screen.setColor(255,255,255)screen.drawLine(16,19,16,21)screen.drawLine(16,19,19,16)screen.drawLine(19,16,21,16)screen.drawLine(18,19,18,21)screen.drawLine(19,18,21,18)screen.drawLine(20,20,21,20)if beconSignal then screen.setColor(70,70,70)screen.drawRectF(23,15,8,7)screen.setColor(50,50,50)screen.drawRect(23,15,8,6)screen.setColor(255,20,50)else screen.setColor(30,30,30)screen.drawRectF(23,15,8,7)screen.setColor(50,50,50)screen.drawRect(23,15,8,6)screen.setColor(255,255,255)end;drawNewFont(24,16,"Be")screen.setColor(30,30,30)screen.drawRectF(0,24,13,7)screen.setColor(50,50,50)screen.drawRect(0,24,12,6)screen.setColor(255,255,255)drawNewFont(1,25,"STA")screen.setColor(30,30,30)screen.drawRectF(16,24,17,7)screen.setColor(50,50,50)screen.drawRect(15,24,16,6)screen.setColor(255,255,255)drawNewFont(16,25,"EXTE")monitorID=xor(monitorID==false,monitorSwap)else if moduleID==0 then elseif moduleID==1 then screen.drawMap(mapX,mapY,zoom)drawNewFont(0,26,zoom)screen.setColor(5,5,5)screen.drawRectF(0,0,5,10)screen.setColor(20,20,20)screen.drawRect(0,0,4,4)screen.drawRect(0,5,4,4)screen.setColor(255,255,255)screen.drawText(1,0,"+")screen.drawText(1,5,"-")screen.drawCircle(16,16,4)elseif moduleID==2 then screen.setColor(10,10,10)screen.drawClear()screen.setColor(255,255,255)screen.drawTriangleF(2,1,0,4,5,4)screen.drawLine(2,4,2,6)screen.drawText(6,1,string.format("%04d",radio.sendch//1))screen.drawText(6,8,string.format("%04d",receivekeypad//1))screen.setColor(30,30,30)screen.drawLine(0,6,32,6)screen.setColor(50,50,50)screen.drawText(6,20,string.format("%04d",receivechlist//1))screen.setColor(25,25,25)screen.drawRectF(27,0,5,6)screen.drawRectF(27,7,5,5)screen.drawRectF(2,14,5,5)screen.drawRectF(8,14,5,5)screen.drawRectF(14,14,5,5)screen.drawRectF(20,14,5,5)screen.drawRectF(27,14,5,5)screen.drawRectF(27,20,5,5)screen.drawRectF(0,20,5,5)screen.drawRectF(27,27,5,5)screen.drawRectF(0,26,13,6)screen.setColor(255,255,255)screen.drawText(28,2,"^")screen.drawText(28,7,"+")temp=receive["vis"][radioselect]or 50;screen.setColor(temp,temp,temp)drawNewFont(3,13,"v")temp=receive["dir"][radioselect]and 255 or 50;screen.setColor(temp,temp,temp)screen.drawLine(9,15,11,15)screen.drawLine(11,16,11,17)screen.drawLine(9,17,11,17)screen.drawLine(9,16,9,17)temp=receive["way"][radioselect]and 255 or 50;screen.setColor(temp,temp,temp)screen.drawText(15,14,"+")if receive["way2"][radioselect]then screen.setColor(255,255,255)else screen.setColor(50,50,50)end;screen.drawRectF(21,15,3,2)screen.drawLine(21,17,21,18)screen.setColor(255,255,255)screen.drawTriangleF(29,15,27,18,32,18)screen.drawTriangleF(29,25,26,21,32,21)screen.drawText(1,20,"-")if radioswitch then screen.setColor(255,255,255)else screen.setColor(50,50,50)end;screen.drawLine(28,29,28,31)screen.drawLine(29,28,31,28)screen.drawLine(30,30,30,31)drawNewFont(1,27,"DEL")if radioselect==11 then drawNewFont(15,27,"EMG")else drawNewFont(19,27,string.format("%02d",radioselect//1))end elseif moduleID==3 then screen.setColor(10,10,10)screen.drawClear()screen.setColor(255,30,60)drawNewFont(0,0,"RPS :"..string.format("%03d",engine.rps//1))if engine.temp>100 then screen.setColor(255,0,10)end;drawNewFont(0,6,"TEMP:"..string.format("%03d",engine.temp//1))elseif moduleID==4 then end;monitorID=xor(monitorID,monitorSwap)end end;function button(a,b,c,d,e)xlr,ylr=touch["x"][e],touch["y"][e]if a<=xlr and a+c>=xlr and b<=ylr and b+d>=ylr and true==touch["touch"][e]then return true else return false end end;function drawNewFont(f,g,h)if type(h)=="number"then h=tostring(h)end;NewFontD=property.getText("F1")..property.getText("F2")..property.getText("F3")..property.getText("F4")for i=1,h:len()do NewFontC=h:sub(i,i):byte()*5-159;for j=1,5 do NewFontF="0x"..NewFontD:sub(NewFontC,NewFontC+4):sub(j,j)for k=1,3 do if NewFontF&2^(4-k)>0 then NewFontP=f+i*4+k-5;NewFontQ=g+j-1;screen.drawLine(NewFontP,NewFontQ,NewFontP+1,NewFontQ)end end end end end;function xor(l,m)return l or m and(l and m)==false end