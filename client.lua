--created by Catborisovv


local sw,sh = guiGetScreenSize()
local px,py = sw/1366,sh/768

local fontTitle = dxCreateFont('font.ttf',14*px)
local font = dxCreateFont('font.ttf',14*px)

setPlayerHudComponentVisible("health",false)
setPlayerHudComponentVisible("ammo",false)
setPlayerHudComponentVisible("weapon",false)
setPlayerHudComponentVisible("clock",false)
setPlayerHudComponentVisible("money",false)
setPlayerHudComponentVisible("breath",false)
setPlayerHudComponentVisible("wanted",false)
setPlayerHudComponentVisible("armour",false)

addEventHandler('onClientRender',root,function()
	local time = getTime()
	local timehour, timeminute = getTime()

	if timeminute < 10 then
		timeminute = '0'..timeminute
	end

		if timehour < 10 then
		 timehour = '0'..timehour
	end

	local hp = getElementHealth(localPlayer)
	local armor = getPedArmor(localPlayer)
	local perOneHp = 3.41


        dxDrawRectangle(989*px, 10*py, 373*px, 81*px, tocolor(37, 37, 37, 255), false)

        dxDrawRectangle(1005*px, 67*py, (hp*perOneHp)*px, 4*py, tocolor(215, 5, 79, 255), false)
        dxDrawRectangle(1005*px, 81*py, (armor*perOneHp)*px, 4*py, tocolor(255, 255, 255, 255), false)

        dxDrawImage(1011*px, 33*py, 25*px, 24*py, ":huddgs/money.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText('#179965'..getPlayerMoney(localplayer), 1041*px, 32*py, 1334*px, 71*py, tocolor(29, 166, 125, 255), 1.00, font, "left", "top", false, false, false, true, false)
    	dxDrawText(timehour..':'..timeminute, 1287*px, 32*py, 1406*px, 71*py, tocolor(255, 255, 255, 255), 1.00, font, "left", "top", false, false, false, false, false)
end)


