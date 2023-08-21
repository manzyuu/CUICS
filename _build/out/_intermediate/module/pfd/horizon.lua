
m = math
min,max,abs,cos,sin,tan,acos,asin,atan,pi,pi2 = m.min,m.max,m.abs,m.cos,m.sin,m.tan,m.acos,m.asin,m.tan,m.pi,m.pi*2

SkyColorR,SkyColorG,SkyColorB = Colorconv16("SkyColor")
LandColorR,SkyColorG,SkyColorB = Colorconv16("LandColor")
SkyColorR,SkyColorG,SkyColorB = Colorconv16("CenterLineColor")
function onTick()
	roll  = input.getNumber(1)-pi/2	--90度オフセット
	top   = input.getNumber(2)
	pitch = input.getNumber(3)*-360	--lineangleで指定するのが度数法なので360掛けてる
end
function onDraw()
	w, h = screen.getWidth(), screen.getHeight()	--画面の縦横を取得
	lineangle = 10									--何度ごとに線を描画するかの指定
	linelength = h / 4								--↑の線の幅を指定
	for i=-360 // lineangle, 360 // lineangle do	--lineangleに合わせた線を引くためのfor文
		offsetX = cos(roll) * (i+pitch) + w / 2		--┬─ピッチ方向に線を動かすためのやつ
		offsetY = sin(roll) * (i+pitch) + w / 2		--┘
		X, Y = cos(roll) * i * lineangle + offsetX, sin(roll) * i * lineangle + offsetY    --画面中心からロール角分傾けた線を描画したい線の半径まで引く
		line1 =  roll + pi / 2						--┬─↑でひいた線の先端に垂直な線の角度　左右分。
		line2 = -roll + pi / 2						--┘
		
		pixelX_1, pixelY_1 = cos(line1) * linelength + X,  sin(line1) * linelength+Y	--┬─描画する線の座標計算
		pixelX_2, pixelY_2 = cos(line2) * linelength + X, -sin(line2) * linelength+Y	--┘

		if i == 0 then								--水平線の色
			screen.setColor(255,255,255)
		elseif i < 0 then							--地面の色
			screen.setColor(10,255,10)
		else										--空の色
			screen.setColor(10,10,255)
		end
		screen.drawLine(pixelX_1,pixelY_1,pixelX_2,pixelY_2)	--線を描画する
	end
end

function Colorconv16(name)	--16進数のカラーコードをRGBに変換する
	local Color = tonumber(property.getText(name),16)
	return (Color>>16) & 0xff, (Color>>8) & 0xff, Color & 0xff --R,G,B
end