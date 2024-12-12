RegisterCommand("repairveh", 
function(source, args, rawCommand)
local ped = PlayerPedId()
local vehicle = GetVehiclePedIsIn(ped, false)

if IsPedInAnyVehicle(ped, false) then
    SetVehicleEngineHealth(vehicle, 1000)
    SetVehicleBodyHealth(vehicle, 1000)

end,
false)