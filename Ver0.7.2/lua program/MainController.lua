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
			local screenConnection2 = simulator:getTouchScreen(2)
			simulator:setInputBool(1, screenConnection1.isTouched)
			simulator:setInputBool(2, screenConnection2.isTouched)
			simulator:setInputNumber(1, screenConnection1.touchX)
			simulator:setInputNumber(2, screenConnection1.touchY)
			simulator:setInputNumber(3, screenConnection2.touchX)
			simulator:setInputNumber(4, screenConnection2.touchY)
			simulator:setInputNumber(5, lerp(0, 50, simulator:getSlider(1))) --Engine RPS
			simulator:setInputNumber(6, lerp(0, 120, simulator:getSlider(2))) --Engine Temp
			simulator:setInputNumber(7, lerp(0, 1, simulator:getSlider(3))) --Battery
			simulator:setInputNumber(8, lerp(0, 999, simulator:getSlider(4))) --Fuel
			simulator:setInputNumber(9, lerp(-0, 999, simulator:getSlider(5))) --GPSX
			simulator:setInputNumber(10, lerp(-0, 999, simulator:getSlider(6))) --GPSY
			simulator:setInputNumber(11, lerp(-10, 9999, simulator:getSlider(7))) --Altitude
			simulator:setInputNumber(12, 0)                                --None
			simulator:setInputNumber(13, lerp(1, 9999, simulator:getSlider(8))) --Keypad B
			simulator:setInputNumber(14, lerp(1, 10, simulator:getSlider(9))) --N番目に格納されている受信チャンネル
			simulator:setInputNumber(15, lerp(1, 10, simulator:getSlider(10))) --何番目の受信チャンネルか
			simulator:setInputNumber(16, lerp(1, 9999, simulator:getSlider(11))) --Send Channel
			simulator:setInputNumber(17, lerp(0.5, -0.5, simulator:getSlider(12))) --Compass
			simulator:setInputNumber(18, lerp(0, 999, simulator:getSlider(13))) --Speed
			simulator:setInputNumber(19, 0)                                --None
			simulator:setInputNumber(20, lerp(0, 999, simulator:getSlider(14))) --何チャンネル目を受信しているか
			simulator:setInputNumber(21, lerp(0, 999, simulator:getSlider(15))) --Receive Passcode
			simulator:setInputNumber(22, lerp(0, 999, simulator:getSlider(16))) --Receive X
			simulator:setInputNumber(23, lerp(0, 999, simulator:getSlider(17))) --Receive Y
			simulator:setInputNumber(24, lerp(0, 999, simulator:getSlider(18))) --Receive Dir
			simulator:setInputNumber(25, lerp(0, 999, simulator:getSlider(19))) --Receive Alt
			simulator:setInputNumber(26, lerp(0, 999, simulator:getSlider(20))) --Receive Spd
			simulator:setInputNumber(27, lerp(0, 999, simulator:getSlider(21))) --Receive WayX
			simulator:setInputNumber(28, lerp(0, 999, simulator:getSlider(22))) --Receive WayY
		end
	end
	---@endsection

















do	
	screenpower,
	centering,
	monitorSwap   = true,true,property.getBool("Monitor Swap")

	moduleID    = 2
	MaxVS         = 20
	mapX, mapY    = 0, 0
	zoomlv,zoom   = 1, 10
	autopilotDist = 0

	engine        = {}
	Phys          = {}
	Phys.alt      = 0
	Phys.oldalt   = 0
	radio        = {}
	radio.sendch = 0
	target   = {}
	target.x = 0
	target.y = 0
	receive = {}
	receive.vis,
	receive.dir,
	receive.way,
	receive.way2,
	receive.X,
	receive.Y,
	receive.Dir,
	receive.Alt,
	receive.Spd,
	receive.WayX,
	receive.WayY = {},{},{},{},{},{},{},{},{},{},{}
	touch         = {
		["x"]     = {},
		["y"]     = {},
		["touch"] = {}
	}
end

function onTick() --[====[ onTick ]====]
	if screenpower == false then return end
	screenpower = false

	Phys.x, Phys.y = input.getNumber(9), input.getNumber(10)

	autopilotDist = math.sqrt((target.x - Phys.x) ^ 2 + (target.y - Phys.y) ^ 2)
	output.setBool(13, screenpower)
	output.setBool(14, input.getBool(1) or input.getBool(2))



	monitorID                                       = false
	touch["x"][1], touch["y"][1], touch["touch"][1] = input.getNumber(1), input.getNumber(2), input.getBool(1)
	touch["x"][2], touch["y"][2], touch["touch"][2] = input.getNumber(3), input.getNumber(4), input.getBool(2)

	engine.rps, engine.temp                         = input.getNumber(5), input.getNumber(6)
	battery, fuel                                   = input.getNumber(7), input.getNumber(8)

	Phys.oldalt                                     = Phys.alt

	Phys.x                                          = input.getNumber(9)
	Phys.y                                          = input.getNumber(10)
	Phys.alt                                        = input.getNumber(11)
	Phys.VS                                         = (input.getNumber(11) - Phys.oldalt) * 60
	Phys.compass_y                                  = input.getNumber(17)
	Phys.SPD                                        = input.getNumber(18)

	KeypadX                                         = input.getNumber(29)
	KeypadY                                         = input.getNumber(30)

	radioswitch                                     = input.getBool(3)
	beconSignal                                           = input.getBool(4)

	receivekeypad                                   = input.getNumber(13)
	receivechlist                                     = input.getNumber(14)
	radio.recivefrequency                                     = input.getNumber(15)
	radio.sendch                                    = input.getNumber(16)

	receive["vis"][radio.recivefrequency]                     = input.getBool(5)
	receive["dir"][radio.recivefrequency]                     = input.getBool(6)
	receive["way"][radio.recivefrequency]                     = input.getBool(7)
	receive["way2"][radio.recivefrequency]                    = input.getBool(8)



	do                                            --右のモニターをどの表示にするか選択
		if touch["touch"][1] then
			moduleID =  		   					--reset
				button(0, 15, 12, 6, 1) and 1 or    --Map
				button(15, 15, 6, 6, 1) and 2 or    --Ch
				button(0, 24, 16, 6, 1) and 3 or    --State
				button(15, 24, 16, 6, 1) and 4 or 0 --Ex
		end
		output.setBool(13, button(15, 24, 16, 6, 1))
	end


	if moduleID == 1 then --MAPのタッチ操作
		if centering then
			mapX, mapY = Phys.x, Phys.y
		end

		if touch["touch"][2] == false then
			zooming = false
		end
		if button(0, 0, 5, 5, 2) then
			if zooming == false then
				zoomlv = zoomlv + 1
			end
			zooming = true
		end
		if button(0, 6, 5, 5, 2) then
			if zooming == false then
				zoomlv = zoomlv - 1
			end
			zooming = true
		end

		zoomlv = math.min(math.max(zoomlv, 1), 22)
		zoom = math.min(zoomlv - 5, 0) / 5 +	         --0.2 ~  1.0
			   math.min(math.max(zoomlv - 4, 1), 10) +   --1.0 ~  5.0
			   math.min(math.max(zoomlv - 14, 0), 8) * 5 --5.0 ~ 50.0

		if button(13, 13, 6, 6, 2) then
			centering = true
		else
			if touch["touch"][2] and zoomlv == false then
				mapX = -(touch["x"][2] - 16) * zoom / 2 + mapX
				mapY = -(touch["y"][2] - 16) * zoom / 2 + mapY
				centering = false
			end
		end
	end


	if moduleID == 2 then             --MFM無線操作
		output.setBool(1, button(27, 0, 5, 6, 2)) --送信チャンネル設定ボタン
		output.setBool(2, button(27, 7, 5, 5, 2)) --受信チャンネル追加
		output.setBool(3, button(2, 14, 5, 5, 2)) --vision
		output.setBool(4, button(8, 14, 5, 5, 2)) --direction
		output.setBool(5, button(14, 14, 5, 5, 2)) --waypoint
		output.setBool(6, button(20, 14, 5, 5, 2)) --waiypoint2
		output.setBool(7, button(27, 14, 5, 5, 2)) --チャンネル上
		output.setBool(8, button(27, 20, 5, 5, 2)) --チャンネル下
		output.setBool(9, button(0, 20, 5, 5, 2)) --チャンネル削除
		output.setBool(10, button(27, 27, 5, 5, 2)) --無線ON/OFF
		output.setBool(11, button(0, 26, 9, 6, 2)) --受信チャンネル全削除
		output.setBool(12, button(22, 20, 4, 6, 1)) --オートパイロット
	end

	if (input.getNumber(21) == property.getNumber("Passcode")) then --MFMの受信
		temp                  = input.getNumber(20)
		receive["X"][temp]    = input.getNumber(22)
		receive["Y"][temp]    = input.getNumber(22)
		receive["Dir"][temp]  = input.getNumber(22)
		receive["Alt"][temp]  = input.getNumber(22)
		receive["Spd"][temp]  = input.getNumber(22)
		receive["WayX"][temp] = input.getNumber(22)
		receive["WayY"][temp] = input.getNumber(22)
	end
end -------------------------------------------onTick終わり-------------------------------------------

function onDraw() --[====[ onDraw ]====]
	                                                                       --
	screenpower = true
	if xor(monitorID == false, monitorSwap) then --[====[ 左のモニター用の描画 ]====]
		                                                                   --
		screen.setColor(10, 10, 10)
		screen.drawClear()

		--GPSX,Y座標表示
			screen.setColor(200, 50, 20)
			DrawNewFont(29, 1, "X")
			DrawNewFont(17, 1, string.format("%03d", math.abs(Phys.x // 100))) --3桁表示し左を0埋め

			screen.setColor(20, 50, 200)
			DrawNewFont(29, 7, "Y")
			DrawNewFont(17, 7, string.format("%03d", math.abs(Phys.y // 100)))

		--Target Distance
			screen.setColor(255, 255, 255)
			DrawNewFont(0, 1, string.format("%02d", math.min(math.abs(autopilotDist // 1000), 99)))
			screen.drawText(7, 1, ".")
			DrawNewFont(10, 1, string.format("%01d", math.abs(autopilotDist) // 100 % 10))
			DrawNewFont(8, 7, "KM")
			print(autopilotDist)

		screen.setColor(5, 5, 5)
		screen.drawLine(15, 0, 15, 13)
		screen.setColor(1, 1, 1)
		screen.drawLine(0, 13, 32, 13)

		--右モニタ操作用ボタン
		--マップ
			screen.setColor(30, 30, 30)
			screen.drawRectF(0, 15, 13, 7)
			screen.setColor(50, 50, 50)
			screen.drawRect(0, 15, 12, 6)
			screen.setColor(255, 255, 255)
			DrawNewFont(1, 16, "MAP")
		
		--チャンネル設定
			screen.setColor(30, 30, 30)
			screen.drawRectF(15, 15, 7, 7)
			screen.setColor(50, 50, 50)
			screen.drawRect(15, 15, 6, 6)
			screen.setColor(255, 255, 255)
			screen.drawLine(16, 19, 16, 21)
			screen.drawLine(16, 19, 19, 16)
			screen.drawLine(19, 16, 21, 16)

			screen.drawLine(18, 19, 18, 21)
			screen.drawLine(19, 18, 21, 18)

			screen.drawLine(20, 20, 21, 20)

        --ビーコン
			if beconSignal then --オートパイロット
				screen.setColor(70, 70, 70)
				screen.drawRectF(23, 15, 8, 7)
				screen.setColor(50, 50, 50)
				screen.drawRect(23, 15, 8, 6)
				screen.setColor(255, 20, 50)
			else
				screen.setColor(30, 30, 30)
				screen.drawRectF(23, 15, 8, 7)
				screen.setColor(50, 50, 50)
				screen.drawRect(23, 15, 8, 6)
				screen.setColor(255, 255, 255)
			end
			DrawNewFont(24, 16, "Be")


		--エンジン、バッテリ、燃料
			screen.setColor(30, 30, 30)
			screen.drawRectF(0, 24, 13, 7)
			screen.setColor(50, 50, 50)
			screen.drawRect(0, 24, 12, 6)
			screen.setColor(255, 255, 255)
			DrawNewFont(1, 25, "STA")

		--外部映像
			screen.setColor(30, 30, 30)
			screen.drawRectF(16, 24, 17, 7)
			screen.setColor(50, 50, 50)
			screen.drawRect(15, 24, 16, 6)
			screen.setColor(255, 255, 255)
			DrawNewFont(16, 25, "EXTE")

		--[[
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
		
													--高度計、昇降速度計
		screen.setColor(255,255,255)
		screen.drawLine(31,14,31,29)
		screen.setColor(255,10,20)
		temp = math.min(math.max(-Phys.VS / MaxVS / 2 * 15 + 21, 13), 32)
		screen.drawTriangleF(31,temp,28,temp-3,28,temp+3)
		screen.setColor(100,100,100)
		drawNewFont(3,27,string.format("%06.2f", Phys.alt * 100) // 100)
		]]

		monitorID = xor(monitorID == false, monitorSwap)
	else --[====[ 右のモニター用の描画 ]====]
		                               --

		if moduleID == 0 then	--PFD

		elseif moduleID == 1 then --MAP
			screen.drawMap(mapX, mapY, zoom)
			DrawNewFont(0, 26, zoom)

			screen.setColor(5, 5, 5) --Zoomボタン
			screen.drawRectF(0, 0, 5, 10)
			screen.setColor(20, 20, 20)
			screen.drawRect(0, 0, 4, 4)
			screen.drawRect(0, 5, 4, 4)
			screen.setColor(255, 255, 255)
			screen.drawText(1, 0, "+")
			screen.drawText(1, 5, "-")

			screen.drawCircle(16, 16, 4) --中心に戻る
		elseif moduleID == 2 then --MFMのアンテナチャンネル設定
			screen.setColor(10, 10, 10)
			screen.drawClear()

			screen.setColor(255, 255, 255)
			screen.drawTriangleF(2, 1, 0, 4, 5, 4)                     --左の送信矢印
			screen.drawLine(2, 4, 2, 6)
			screen.drawText(6, 1, string.format("%04d", radio.sendch // 1)) --送信チャンネル
			screen.drawText(6, 8, string.format("%04d", receivekeypad // 1))

			screen.setColor(30, 30, 30) --送信チャンネルの下の線
			screen.drawLine(0, 6, 32, 6)

			screen.setColor(50, 50, 50)
			screen.drawText(6, 20, string.format("%04d", receivechlist//1))

			screen.setColor(25, 25, 25)
			screen.drawRectF(27, 0, 5, 6) --送信ボタン
			screen.drawRectF(27, 7, 5, 5) --受信チャンネル追加
			screen.drawRectF(2, 14, 5, 5) --vision
			screen.drawRectF(8, 14, 5, 5) --direction
			screen.drawRectF(14, 14, 5, 5) --waypoint
			screen.drawRectF(20, 14, 5, 5) --waypoint2
			screen.drawRectF(27, 14, 5, 5) --チャンネル上
			screen.drawRectF(27, 20, 5, 5) --チャンネル下
			screen.drawRectF(0, 20, 5, 5) --チャンネル削除
			screen.drawRectF(27, 27, 5, 5) --無線ON/OFF
			screen.drawRectF(0, 26, 13, 6) --受信チャンネル全削除


			screen.setColor(255, 255, 255)
			screen.drawText(28, 2, "^")  --送信ボタン
			screen.drawText(28, 7, "+")  --受信チャンネル追加

			
			temp = receive["vis"][radio.recivefrequency] or 50 --vision
			screen.setColor(temp, temp, temp)
			DrawNewFont(3, 13, "v")

			
			temp = receive["dir"][radio.recivefrequency] and 255 or 50 --direction
			screen.setColor(temp, temp, temp)
			screen.drawLine(9, 15, 11, 15)
			screen.drawLine(11, 16, 11, 17)
			screen.drawLine(9, 17, 11, 17)
			screen.drawLine(9, 16, 9, 17)


			temp = receive["way"][radio.recivefrequency] and 255 or 50 --waypoint
			screen.setColor(temp, temp, temp)
			screen.drawText(15, 14, "+")

			if (receive["way2"][radio.recivefrequency]) then --waypoint2
				screen.setColor(255, 255, 255)
			else
				screen.setColor(50, 50, 50)
			end
			screen.drawRectF(21, 15, 3, 2)
			screen.drawLine(21, 17, 21, 18)

			screen.setColor(255, 255, 255)
			screen.drawTriangleF(29, 15, 27, 18, 32, 18)                                --チャンネル上
			screen.drawTriangleF(29, 25, 26, 21, 32, 21)                                --チャンネル下
			screen.drawText(1, 20, "-")                                                 --チャンネル削除
			if (radioswitch) then screen.setColor(255, 255, 255) else screen.setColor(50, 50, 50) end
			screen.drawLine(28, 29, 28, 31)
			screen.drawLine(29, 28, 31, 28)
			screen.drawLine(30, 30, 30, 31)                                             --無線ON/OFF
			DrawNewFont(1, 27, "DEL")                                                   --全削除ボタン

			if radio.recivefrequency == 11 then
				DrawNewFont(15, 27, "EMG")
			else
				DrawNewFont(19, 27, string.format("%02d", radio.recivefrequency // 1))
			end
		elseif (moduleID == 3) then --エンジンとかの機体ステータス表示
			screen.setColor(10, 10, 10)
			screen.drawClear()

			screen.setColor(255, 30, 60)
			DrawNewFont(0, 0, "RPS :" .. string.format("%03d", engine.rps // 1))
			if (engine.temp > 100) then
				screen.setColor(255, 0, 10)
			end
			DrawNewFont(0, 6, "TEMP:" .. string.format("%03d", engine.temp // 1))
		elseif (moduleID == 4) then

		end

		monitorID = xor(monitorID, monitorSwap)
	end
end -------------------------------------------onDraw終わり-------------------------------------------

function button(x, y, w, h, lr)
	xlr, ylr = touch["x"][lr], touch["y"][lr]
	if x <= xlr and
		x + w >= xlr and
		y <= ylr and
		y + h >= ylr and
		touch["touch"][lr] then
		return true
	else
		return false
	end
end

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

function xor(a, b)
	return a or b and (a and b) == false
end