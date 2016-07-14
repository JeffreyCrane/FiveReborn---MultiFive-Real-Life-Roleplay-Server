--Roll Down Window Script by Cody196--

function RollDownWindow(vehicle, windowIndex)
  AddEventHandler('chatCommandEntered', function(fullcommand)
  if(command[1] == "/rolldown") then
    TriggerClientEvent("RollDownWindow", vehicle, command[2]) then
  print (.. playerName .. "Rolls down his window.")
end
