local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")

vRP = Proxy.getInterface("vRP")

vRPclient = Tunnel.getInterface("vRP","gift-hediyeal")

local	randomPay = {
	1000, 10000
}

RegisterServerEvent('gift:playerGift')
AddEventHandler('gift:playerGift', function(source)
	local user_id = vRP.getUserId({source})
	math.randomseed(os.time())
    if user_id ~= nil then
		local _randomPay = math.random(1, 2)
		if _randomPay == 1 then
			_randomPay = math.random(1000, 5000)
			vRP.giveMoney({user_id,_randomPay})
			--TR
			TriggerClientEvent('esx:showNotification',source, "Tebrikler, oyunda 1 saat aktif olduğunuz için " .. _randomPay .. "$ ikramiyenizi aldınız.")
			--EN
			--TriggerClientEvent('esx:showNotification', xPlayer.source, "Congratulations for your active 1 hour in the game " .. _randomPay .. "$ you have received your bonus.")
		else
			_randomPay = math.random(5000, 10000)
			vRP.giveMoney({user_id,_randomPay})
			--TR
			TriggerClientEvent('esx:showNotification',source, "Tebrikler, oyunda 1 saat aktif olduğunuz için " .. _randomPay .. "$ ikramiyenizi aldınız.")
			--EN
			--TriggerClientEvent('esx:showNotification', xPlayer.source, "Congratulations for your active 1 hour in the game " .. _randomPay .. "$ you have received your bonus.")
		end
	end	
end)