RegisterCommand("repairveh", 
function(source, args, rawCommand)
local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)

if IsPedInAnyVehicle(ped, false) then
    SetVehicleFixed(vehicle)
    SetVehicleDirtLevel(vehicle, 0.0)

    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName("Your vehicle has been repaired!")
    EndTextCommandDisplayHelp(0, false, true, 5000)
end,
false)