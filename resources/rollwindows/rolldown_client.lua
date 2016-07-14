RegisterNetEvent("RollDownWindow")
AddEventHandler("RollDownWindow", function(toggle)
  RollDownWindow(GetVehiclePedIsIn(GetPlayerPed(-1)), 1)
end)
