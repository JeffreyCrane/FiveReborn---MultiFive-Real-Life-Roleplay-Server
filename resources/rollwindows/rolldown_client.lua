
function RollDownWindow(vehicle, windowIndex)
  AddEventHandler('chatCommandEntered', function(fullcommand)
  if(command[1] == "/rolldown") then
    RollDownWindow(GetVehiclePedIsIn(GetPlayerPed(-1)), 0)
    TriggerClientEvent("RollDownWindow", vehicle, command[2]) then
  print (.. playerName .. "Rolls down his window.")
end
