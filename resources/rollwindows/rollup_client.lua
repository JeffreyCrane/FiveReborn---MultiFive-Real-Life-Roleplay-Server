RegisterNetEvent("RollUpWindow")
AddEventHandler("RollUpWindow", function(RollUpWindow)
  RollUpWindow(GetVehiclePedIsIn(GetPlayerPed(-1)), 1)
end)
