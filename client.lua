function Notify(message, type)
    if Config.NotificationSystem == "mythic_notify" then
        -- Mythic Notify
        exports['mythic_notify']:DoHudText(type, message)
    elseif Config.NotificationSystem == "qb_notify" then
        -- QB Notify
        TriggerEvent('QBCore:Notify', message, type)
    else
        -- Default FiveM notification
        BeginTextCommandDisplayHelp("STRING")
        AddTextComponentSubstringPlayerName(message)
        EndTextCommandDisplayHelp(0, false, true, 5000) 
    end
end


RegisterCommand("repairveh", 
function(source, args, rawCommand)
local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)

if IsPedInAnyVehicle(ped, false) then
    SetVehicleFixed(vehicle)
    SetVehicleDirtLevel(vehicle, 0.0)

    Notify("Your vehicle has been repaired!", "success")
end
end,
false)