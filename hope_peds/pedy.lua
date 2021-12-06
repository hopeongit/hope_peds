-------------!hope#0928---------------

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	Citizen.Wait(5000)
	PlayerData = ESX.GetPlayerData()
end)

Citizen.CreateThread(function()
    RequestModel(GetHashKey("csb_cop"))
    while not HasModelLoaded(GetHashKey("csb_cop")) do
      Wait(155)
    end
      local ped =  CreatePed(4, GetHashKey("csb_cop"), 363.68, -1592.10, 28.31, 10.0, false, true)
      FreezeEntityPosition(ped, true)
      SetEntityInvincible(ped, true)
      SetBlockingOfNonTemporaryEvents(ped, true)
end)


-- Just edit 'ped' to 'ped2' etc. and change the ped hash
--[[Citizen.CreateThread(function()
    RequestModel(GetHashKey("s_m_y_sheriff_01"))
    while not HasModelLoaded(GetHashKey("s_m_y_sheriff_01")) do
      Wait(155)
    end
      local ped2 =  CreatePed(4, GetHashKey("s_m_y_sheriff_01"), 362.09, -1614.09, 28.31, 48.09, false, true)
      FreezeEntityPosition(ped2, true)
      SetEntityInvincible(ped2, true)
      SetBlockingOfNonTemporaryEvents(ped2, true)
end) ]]
