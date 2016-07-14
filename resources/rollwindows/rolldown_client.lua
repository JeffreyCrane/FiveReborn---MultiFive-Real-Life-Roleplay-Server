RegisterNetEvent("RollDownWindow")
AddEventHandler("RollDownWindow", function(RollDownWindow)
  RollDownWindow(GetVehiclePedIsIn(GetPlayerPed(-1)), 1)
end)
