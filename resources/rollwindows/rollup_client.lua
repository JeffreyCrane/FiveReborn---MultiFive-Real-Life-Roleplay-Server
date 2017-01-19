RegisterNetEvent("RollUpWindow")
AddEventHandler("RollUpWindow", function(RollUpWindow)
    
function RollUpWindow(commandEntered, vehicle, playerPed)
    RollUpWindow(GetVehiclePedIsIn(GetPlayerPed(-1)), 1)
end)
