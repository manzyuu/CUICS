
---@diagnostic disable: undefined-doc-param
-- Author: <Authorname> (Please change this in user settings, Ctrl+Comma)
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
    simulator:setScreen(1, "1x1")
	simulator:setScreen(2, "1x1")
    simulator:setProperty("F1","0000044404AA000AEAEA4E4E4A248A26E624800048884844480A4A004E400004800E000000422488EAAAEC444EE2E8EE2E2EAAE22E8E2EE8EAEE2244EAEAE")
	simulator:setProperty("F2","EAE2E0404004048248420E0E084248E26048CEC8EAEAAEACAEE888ECAAADE8C8EE8C88E8BBEBBEBBE444EE444CBBCBB8888EEEEBBBEEEBEAAAEEBE88EBBC6")
	simulator:setProperty("F3","EAECBE8E2EE4444AAAAEAAAA4AAEEAAA4AAAAE44E248EC888C88422622264A0000000E84000006AE88EAE00E8E22EAE00ECE64E446AE2E88EAA404444044C")
	simulator:setProperty("F4","88ACA44446008EE00E6600EAE0EAE80EAE2006880EC6E04E4400AAE00AA400AEE00A4A0AA480E6CE6484644444C424CEEEEE")

    -- Runs every tick just before onTick; allows you to simulate the inputs changing
    ---@param simulator Simulator Use simulator:<function>() to set inputs etc.
    ---@param ticks     number Number of ticks since simulator started
	function lerp(min, max, data)
		return (1 - data) * min  + data * max
	end
    function onLBSimulatorTick(simulator, ticks)

        -- touchscreen defaults
        local screenConnection1 = simulator:getTouchScreen(1)
		local screenConnection2 = simulator:getTouchScreen(2)
        simulator:setInputBool(1, screenConnection1.isTouched)
		simulator:setInputBool(2, screenConnection2.isTouched)
        simulator:setInputNumber(1,  screenConnection1.touchX)
        simulator:setInputNumber(2,  screenConnection1.touchY)
        simulator:setInputNumber(3,  screenConnection2.touchX)
        simulator:setInputNumber(4,  screenConnection2.touchY)
		simulator:setInputNumber(5,  lerp(    0,   50, simulator:getSlider(1)))	--Engine RPS
		simulator:setInputNumber(6,  lerp(    0,  120, simulator:getSlider(2)))	--Engine Temp
		simulator:setInputNumber(7,  lerp(    0,    1, simulator:getSlider(3)))	--Battery
		simulator:setInputNumber(8,  lerp(    0,  999, simulator:getSlider(4)))	--Fuel
		simulator:setInputNumber(9,  lerp( -0,  999, simulator:getSlider(5)))	--GPSX
		simulator:setInputNumber(10, lerp( -0,  999, simulator:getSlider(6)))	--GPSY
		simulator:setInputNumber(11, lerp(  -10, 9999, simulator:getSlider(7)))	--Altitude
		simulator:setInputNumber(12, 0)											--None
		simulator:setInputNumber(13, lerp(    1, 9999, simulator:getSlider(8)))	--Keypad B
		simulator:setInputNumber(14, lerp(    1,   10, simulator:getSlider(9)))	--N番目に格納されている受信チャンネル
		simulator:setInputNumber(15, lerp(    1,   10, simulator:getSlider(10)))--何番目の受信チャンネルか
		simulator:setInputNumber(16, lerp(    1, 9999, simulator:getSlider(11)))--Send Channel
		simulator:setInputNumber(17, lerp(  0.5, -0.5, simulator:getSlider(12)))--Compass
		simulator:setInputNumber(18, lerp(    0,  999, simulator:getSlider(13)))--Speed
		simulator:setInputNumber(19, 0)											--None
		simulator:setInputNumber(20, lerp(    0,  999, simulator:getSlider(14)))--何チャンネル目を受信しているか
		simulator:setInputNumber(21, lerp(    0,  999, simulator:getSlider(15)))--Receive Passcode
		simulator:setInputNumber(22, lerp(    0,  999, simulator:getSlider(16)))--Receive X
		simulator:setInputNumber(23, lerp(    0,  999, simulator:getSlider(17)))--Receive Y
		simulator:setInputNumber(24, lerp(    0,  999, simulator:getSlider(18)))--Receive Dir
		simulator:setInputNumber(25, lerp(    0,  999, simulator:getSlider(19)))--Receive Alt
		simulator:setInputNumber(26, lerp(    0,  999, simulator:getSlider(20)))--Receive Spd
		simulator:setInputNumber(27, lerp(    0,  999, simulator:getSlider(21)))--Receive WayX
		simulator:setInputNumber(28, lerp(    0,  999, simulator:getSlider(22)))--Receive WayY

		--[[
        -- NEW! button/slider options from the UI
        simulator:setInputBool(31, simulator:getIsClicked(1))       -- if button 1 is clicked, provide an ON pulse for input.getBool(31)
        simulator:setInputNumber(31, simulator:getSlider(1))        -- set input 31 to the value of slider 1

        simulator:setInputBool(32, simulator:getIsToggled(2))       -- make button 2 a toggle, for input.getBool(32)
        simulator:setInputNumber(32, simulator:getSlider(2) * 50)   -- set input 32 to the value from slider 2 * 50
		]]
	end
end
---@endsection


--[====[ IN-GAME CODE ]====]

-- try require("Folder.Filename") to include code from another file in this, so you can store code in libraries
-- the "LifeBoatAPI" is included by default in /_build/libs/ - you can use require("LifeBoatAPI") to get this, and use all the LifeBoatAPI.<functions>!




screenpower = true
centering   = false

RMonitorID    = 2
MaxVS         = 20
mapX, mapY    = 0, 0
zoom          = 10
autopilotDist = 0

engine = {}
Phys = {}
Phys.alt    = 0
Phys.oldalt = 0
radio        = {
  ["sendch"] = 0
}
receive    = {
  ["vis"]  = {},
  ["dir"]  = {},
  ["way"]  = {},
  ["way2"] = {},
  ["X"]    = {},
  ["Y"]    = {},
  ["Dir"]  = {},
  ["Alt"]  = {},
  ["Spd"]  = {},
  ["WayX"] = {},
  ["WayY"] = {}
}
touch       = {
  ["x"]     = {},
  ["y"]     = {},
  ["touch"] = {},
}




firstTick = true
function onTick()					--[====[ onTick ]====]--
	if firstTick then
		Phys.x = input.getNumber(9)
		Phys.y = input.getNumber(10)
		firstTick = false
	end
	output.setBool(13, screenpower)
	output.setBool(14, input.getBool(1)or input.getBool(2))
	if screenpower == false then
		return
	end


	screenpower = false
	monitorID = 1
	touch["x"][1], touch["y"][1], touch["touch"][1] = input.getNumber(1),input.getNumber(2),input.getBool(1)
	touch["x"][2], touch["y"][2], touch["touch"][2] = input.getNumber(3),input.getNumber(4),input.getBool(2)

	engine.rps, engine.temp = input.getNumber(5),input.getNumber(6)
	battery, fuel = input.getNumber(7),input.getNumber(8)

	Phys.oldalt = Phys.alt

	Phys.x = input.getNumber(9)
	Phys.y = input.getNumber(10)
	Phys.alt = input.getNumber(11)
	Phys.VS = (input.getNumber(11) - Phys.oldalt) * 60
	Phys.compass_y = input.getNumber(17)
	Phys.SPD = input.getNumber(18)

	KeypadX = input.getNumber(29)
	KeypadY = input.getNumber(30)

	radioswitch = input.getBool(3)
	autopilot = input.getBool(4)

	receivekeypad = input.getNumber(13)
	receivelist = input.getNumber(14)
	radioselect	= input.getNumber(15)
	radio.sendch = input.getNumber(16)

	receive["vis"][radioselect]  = input.getBool(5)
	receive["dir"][radioselect]  = input.getBool(6)
	receive["way"][radioselect]  = input.getBool(7)
	receive["way2"][radioselect] = input.getBool(8)



	if (button(22,20,4,6,1) == false) then							--右のモニターをどの表示にするか選択
		if touch["touch"][1]   then RMonitorID = 0 end--reset
		if button(0,12,12,6,1) then RMonitorID = 1 end--Map
		if button(14,12,8,6,1) then RMonitorID = 2 end--Ch
		if button(0,20,20,6,1) then RMonitorID = 3 end--Engine
	end



	if (RMonitorID == 1) then										--MAPのタッチ操作
		if (centering) then	mapX, mapY = Phys.x, Phys.y end
		if button(13,13,6,6,2) then
			centering = true
		else
			if (touch["touch"][2]) then
				mapX = -(touch["x"][2] - 16) * zoom / 2 + mapX
				mapY = -(touch["y"][2] - 16) * zoom / 2 + mapY
				centering = false
			end
		end
	end



	if (RMonitorID == 2) then										--MFM無線操作
		output.setBool(1,button(27,0,5,6,2))--送信チャンネル設定ボタン
		output.setBool(2,button(27,7,5,5,2))--受信チャンネル追加
		output.setBool(3,button(2,14,5,5,2))--vision
		output.setBool(4,button(8,14,5,5,2))--direction
		output.setBool(5,button(14,14,5,5,2))--waypoint
		output.setBool(6,button(20,14,5,5,2))--waiypoint2
		output.setBool(7,button(27,14,5,5,2))--チャンネル上
		output.setBool(8,button(27,20,5,5,2))--チャンネル下
		output.setBool(9,button(0,20,5,5,2))--チャンネル削除
		output.setBool(10,button(27,27,5,5,2))--無線ON/OFF
		output.setBool(11,button(0,26,9,6,2))--受信チャンネル全削除
	end	output.setBool(12,button(22,20,4,6,1))--オートパイロット



	if (input.getNumber(21) == property.getNumber("Passcode")) then	--MFMの受信
		temp = input.getNumber(20)
		receive["X"][temp]    = input.getNumber(22)
		receive["Y"][temp]    = input.getNumber(22)
		receive["Dir"][temp]  = input.getNumber(22)
		receive["Alt"][temp]  = input.getNumber(22)
		receive["Spd"][temp]  = input.getNumber(22)
		receive["WayX"][temp] = input.getNumber(22)
		receive["WayY"][temp] = input.getNumber(22)
	end
end-------------------------------------------onTick終わり-------------------------------------------




function onDraw()					--[====[ onDraw ]====]--
	screenpower = true
							--monitorID = 2 --debug = -- : not debug = 1
	if (monitorID == 1) then		--[====[ 左のモニター用の描画 ]====]--
		screen.setColor(10,10,10)
		screen.drawClear()
		--GPS
		if (Phys.x < 0) then screen.setColor(255,10,20)screen.drawLine(0,2,2,2)else screen.setColor(20,50,200)end
		drawNewFont(2,0,string.format("%03d",math.abs(math.floor(Phys.x / 100))))--3桁表示し左を0埋め
		if (Phys.y < 0) then screen.setColor(255,10,20)screen.drawLine(0,8,2,8)else screen.setColor(20,50,200)end
		drawNewFont(2,6,string.format("%03d",math.abs(math.floor(Phys.y / 100))))
		
		screen.setColor(20,255,20)
		drawNewFont(14,0,"X")
		drawNewFont(14,6,"Y")
		

		--Target Distance
		drawNewFont(20,0,string.format("%03d",math.abs(math.floor(autopilotDist / 100))))

		--[[Target Pos
		if (Phy.x < 0) then screen.setColor(255,10,20)screen.drawLine(18,2,20,2)else screen.setColor(20,50,200)end
		drawNewFont(20,0,string.format("%03d",math.abs(math.floor(Phy.x / 100))))--3桁表示し左を0埋め
		if (Phy.y < 0) then screen.setColor(255,10,20)screen.drawLine(18,8,20,8)else screen.setColor(20,50,200)end
		drawNewFont(20,6,string.format("%03d",math.abs(math.floor(Phy.y / 100))))
		]]
		
		--右モニタ操作用ボタン
		screen.setColor(30,30,30)						--マップ
		screen.drawRectF(0,12,13,7)
		screen.setColor(50,50,50)
		screen.drawRect(0,12,12,6)
		screen.setColor(255,255,255)
		drawNewFont(1,13,"MAP")
	
	
		
		screen.setColor(30,30,30)
		screen.drawRectF(14,12,9,7)
		screen.setColor(50,50,50)
		screen.drawRect(14,12,8,6)
		screen.setColor(255,255,255)
		drawNewFont(15,13,"CH")
		
		
		
		screen.setColor(30,30,30)						--エンジン、バッテリ、燃料
		screen.drawRectF(0,20,21,7)
		screen.setColor(50,50,50)
		screen.drawRect(0,20,20,6)
		screen.setColor(255,255,255)
		drawNewFont(1,21,"STATE")
		
		
		
		if (autopilot) then							--オートパイロット
			screen.setColor(255,180,10)				
			screen.drawLine(24,22,24,26)
			screen.setColor(10,10,10)
			drawNewFont(23,21,"A")
			screen.setColor(255,180,10)
			screen.drawRect(22,20,4,6)
		else
			screen.setColor(30,30,30)
			screen.drawLine(24,22,24,26)
			screen.setColor(255,255,255)
			drawNewFont(23,21,"A")
			screen.setColor(50,50,50)
			screen.drawRect(22,20,4,6)
		end
		
		
		
		screen.setColor(255,255,255)						--高度計、昇降速度計
		screen.drawLine(31,14,31,29)
		screen.setColor(255,10,20)
		temp = math.min(math.max(-Phys.VS / MaxVS / 2 * 15 + 21, 13), 32)
		screen.drawTriangleF(31,temp,28,temp-3,28,temp+3)
		screen.setColor(100,100,100)
		drawNewFont(3,27,string.format("%06.2f",math.floor(Phys.alt*100)/100))
		

		
		
								monitorID = 2 --debug = 1 : not debug = 2
	else							--[====[ 右のモニター用の描画 ]====]--




		if (RMonitorID == 1) then	--MAP
			screen.drawMap(mapX,mapY,zoom)
			--screen.drawMap(Phy.x,Phy.y,zoom)
			--screen.drawText(1,1,centering and "true" or "false")
			screen.drawCircle(16, 16, 4)
		end


		if (RMonitorID == 2) then	--MFMのアンテナチャンネル設定
			screen.setColor(10,10,10)
			screen.drawClear()
			
			screen.setColor(255,255,255)
			screen.drawTriangleF(2,1, 0,4, 5,4)		--左の送信矢印
			screen.drawLine(2,4,2,6)
			screen.drawText(6,1,string.format("%04d",math.floor(radio.sendch)))--送信チャンネル
			screen.drawText(6,8,string.format("%04d",math.floor(receivekeypad)))
			
			screen.setColor(30,30,30)		--送信チャンネルの下の線
			screen.drawLine(0,6,32,6)
			
			screen.setColor(50,50,50)
			screen.drawText(6,20,string.format("%04d",math.floor(receivelist)))
			
			screen.setColor(25,25,25)
			screen.drawRectF(27,0,5,6)--送信ボタン
			screen.drawRectF(27,7,5,5)--受信チャンネル追加
			--screen.drawRectF(0,8,5,5)--
			screen.drawRectF(2,14,5,5)--vision
			screen.drawRectF(8,14,5,5)--direction
			screen.drawRectF(14,14,5,5)--waypoint
			screen.drawRectF(20,14,5,5)--waypoint2
			screen.drawRectF(27,14,5,5)--チャンネル上
			screen.drawRectF(27,20,5,5)--チャンネル下
			screen.drawRectF(0,20,5,5)--チャンネル削除
			screen.drawRectF(27,27,5,5)--無線ON/OFF
			screen.drawRectF(0,26,13,6)--受信チャンネル全削除
			
			
			screen.setColor(255,255,255)
			screen.drawText(28,2,"^")	--送信ボタン
			screen.drawText(28,7,"+")	--受信チャンネル追加
	
			if (receive["vis"][radioselect]) then	--vision
				screen.setColor(255,255,255)else screen.setColor(50,50,50)
			end	drawNewFont(3,13,"v")
			
			if (receive["dir"][radioselect]) then	--direction
				screen.setColor(255,255,255)else screen.setColor(50,50,50)
			end	screen.drawLine(9,15,11,15)screen.drawLine(11,16,11,17)screen.drawLine(9,17,11,17)screen.drawLine(9,16,9,17)
			
			if (receive["way"][radioselect]) then	--waypoint
				screen.setColor(255,255,255)else screen.setColor(50,50,50)
			end	screen.drawText(15,14,"+")
			
			if (receive["way2"][radioselect]) then	--waypoint2
				screen.setColor(255,255,255)else screen.setColor(50,50,50)
			end screen.drawRectF(21,15,3,2)screen.drawLine(21,17,21,18)
			
			screen.setColor(255,255,255)
			screen.drawTriangleF(29,15,27,18,32,18)--チャンネル上
			screen.drawTriangleF(29,25,26,21,32,21)--チャンネル下
			screen.drawText(1,20,"-")	--チャンネル削除
			if (radioswitch) then screen.setColor(255,255,255)else screen.setColor(50,50,50)end
			screen.drawLine(28,29,28,31)screen.drawLine(29,28,31,28)screen.drawLine(30,30,30,31)--無線ON/OFF
			drawNewFont(1,27,"DEL")		--全削除ボタン
			
			if radioselect == 11 then
				drawNewFont(15,27,"EMG")
			else
				drawNewFont(19,27,string.format("%02d",math.floor(radioselect)))
			end
		end


		if (RMonitorID == 3) then	--エンジンとかの機体ステータス表示
			screen.setColor(255,30,60)
			drawNewFont(0,0,"RPS :"..string.format("%03d",math.floor(engine.rps )))
			if (engine.temp > 100) then
				screen.setColor(255,0,10)
			end
			drawNewFont(0,6,"TEMP:"..string.format("%03d",math.floor(engine.temp)))
		end
	end
end-------------------------------------------onDraw終わり-------------------------------------------




function button(x, y, w, h, lr)
	if  x    <= touch["x"][lr] and
		x+w  >= touch["x"][lr] and
		y    <= touch["y"][lr] and
		y+h  >= touch["y"][lr] and
		true == touch["touch"][lr] then return true
	else
		return false
	end
end
function drawNewFont(NewFontX,NewFontY,NewFontZ)
	local NewFontC,NewFontD,NewFontF,NewFontP,NewFontQ
	if type(NewFontZ)=="number"then
		NewFontZ=tostring(NewFontZ)
	end
	NewFontD=property.getText("F1")..property.getText("F2")..property.getText("F3")..property.getText("F4")
	for i=1,NewFontZ:len()do
		NewFontC=NewFontZ:sub(i,i):byte()*5-159
		for j=1,5 do
			NewFontF="0x"..NewFontD:sub(NewFontC,NewFontC+4):sub(j,j)
				for k=1,3 do
				if NewFontF&2^(4-k)>0 then
					NewFontP=NewFontX+i*4+k-5
					NewFontQ=NewFontY+j-1
					screen.drawLine(NewFontP,NewFontQ,NewFontP+1,NewFontQ)
				end
			end
		end
	end
end