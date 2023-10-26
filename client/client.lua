ESX = nil

Citizen.CreateThread(function()
	while ESX == nil do
	  TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	  Citizen.Wait(0)
	  PlayerData = ESX.GetPlayerData()
    end
end)

RegisterCommand("stromausfall" , function (source, args, rawCommand)
  TriggerServerEvent('InteractSound_SV:PlayOnAll', 'eas', 100.0)
  ExecuteCommand("firesiren fd2")
  TriggerServerEvent("ultra_utility:eas:send")
end)

RegisterCommand("erdbeben" , function (source, args, rawCommand)
  TriggerServerEvent('InteractSound_SV:PlayOnAll', 'eas', 100.0)
  ExecuteCommand("firesiren fd2")
  ExecuteCommand("spawndisaster 1")
end)

RegisterCommand("debug" , function (source, args, rawCommand)
  TriggerServerEvent("ultra_utility:eas:send")
end)